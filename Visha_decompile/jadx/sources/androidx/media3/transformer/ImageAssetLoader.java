package androidx.media3.transformer;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.common.util.ConstantRateTimestampIterator;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.Futures;
import defpackage.im5;
import defpackage.j94;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@UnstableApi
public final class ImageAssetLoader implements AssetLoader {
    private static final int QUEUE_BITMAP_INTERVAL_MS = 10;
    private final BitmapLoader bitmapLoader;
    private final Context context;
    private final EditedMediaItem editedMediaItem;
    private final AssetLoader.Listener listener;
    private volatile int progress;
    private int progressState;
    private final boolean retainHdrFromUltraHdrImage;

    @Nullable
    private SampleConsumer sampleConsumer;
    private final ScheduledExecutorService scheduledExecutorService;

    public class AnonymousClass1 implements j94 {
        public AnonymousClass1() {
        }

        public void lambda$onSuccess$0(Bitmap bitmap, Format format) {
            ImageAssetLoader.this.lambda$queueBitmapInternal$1(bitmap, format);
        }

        @Override
        public void onFailure(Throwable th) {
            ImageAssetLoader.this.listener.onError(ExportException.createForAssetLoader(th, 2000));
        }

        @Override
        public void onSuccess(final Bitmap bitmap) {
            ImageAssetLoader.this.progress = 50;
            Format formatBuild = new Format.Builder().setHeight(bitmap.getHeight()).setWidth(bitmap.getWidth()).setSampleMimeType(MimeTypes.IMAGE_RAW).setColorInfo(ColorInfo.SRGB_BT709_FULL).build();
            final Format formatBuild2 = (ImageAssetLoader.this.retainHdrFromUltraHdrImage && Util.SDK_INT >= 34 && bitmap.hasGainmap()) ? formatBuild.buildUpon().setSampleMimeType(MimeTypes.IMAGE_JPEG_R).build() : formatBuild;
            try {
                ImageAssetLoader.this.listener.onTrackAdded(formatBuild, 2);
                ImageAssetLoader.this.scheduledExecutorService.submit(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$onSuccess$0(bitmap, formatBuild2);
                    }
                });
            } catch (RuntimeException e) {
                ImageAssetLoader.this.listener.onError(ExportException.createForAssetLoader(e, 1000));
            }
        }
    }

    public static final class Factory implements AssetLoader.Factory {
        private final BitmapLoader bitmapLoader;
        private final Context context;

        public Factory(Context context, BitmapLoader bitmapLoader) {
            this.context = context;
            this.bitmapLoader = bitmapLoader;
        }

        @Override
        public AssetLoader createAssetLoader(EditedMediaItem editedMediaItem, Looper looper, AssetLoader.Listener listener, AssetLoader.CompositionSettings compositionSettings) {
            return new ImageAssetLoader(this.context, editedMediaItem, listener, this.bitmapLoader, compositionSettings.retainHdrFromUltraHdrImage, null);
        }
    }

    public ImageAssetLoader(Context context, EditedMediaItem editedMediaItem, AssetLoader.Listener listener, BitmapLoader bitmapLoader, boolean z, AnonymousClass1 anonymousClass1) {
        this(context, editedMediaItem, listener, bitmapLoader, z);
    }

    public void lambda$queueBitmapInternal$1(final Bitmap bitmap, final Format format) {
        try {
            SampleConsumer sampleConsumer = this.sampleConsumer;
            if (sampleConsumer == null) {
                this.sampleConsumer = this.listener.onOutputFormat(format);
                this.scheduledExecutorService.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$queueBitmapInternal$0(bitmap, format);
                    }
                }, 10L, TimeUnit.MILLISECONDS);
                return;
            }
            EditedMediaItem editedMediaItem = this.editedMediaItem;
            int iQueueInputBitmap = sampleConsumer.queueInputBitmap(bitmap, new ConstantRateTimestampIterator(editedMediaItem.durationUs, editedMediaItem.frameRate));
            if (iQueueInputBitmap == 1) {
                this.progress = 100;
                this.sampleConsumer.signalEndOfVideoInput();
            } else if (iQueueInputBitmap == 2) {
                this.scheduledExecutorService.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$queueBitmapInternal$1(bitmap, format);
                    }
                }, 10L, TimeUnit.MILLISECONDS);
            } else {
                if (iQueueInputBitmap != 3) {
                    throw new IllegalStateException();
                }
                this.progress = 100;
            }
        } catch (ExportException e) {
            this.listener.onError(e);
        } catch (RuntimeException e2) {
            this.listener.onError(ExportException.createForAssetLoader(e2, 1000));
        }
    }

    @Override
    public ImmutableMap<Integer, String> getDecoderNames() {
        return ImmutableMap.of();
    }

    @Override
    public int getProgress(ProgressHolder progressHolder) {
        if (this.progressState == 2) {
            progressHolder.progress = this.progress;
        }
        return this.progressState;
    }

    @Override
    public void release() {
        this.progressState = 0;
        this.scheduledExecutorService.shutdownNow();
    }

    @Override
    public void start() {
        im5 im5VarG;
        this.progressState = 2;
        this.listener.onDurationUs(this.editedMediaItem.durationUs);
        this.listener.onTrackCount(1);
        String imageMimeType = TransformerUtil.getImageMimeType(this.context, this.editedMediaItem.mediaItem);
        if (imageMimeType == null || !this.bitmapLoader.supportsMimeType(imageMimeType)) {
            im5VarG = Futures.g(ParserException.createForUnsupportedContainerFeature("Attempted to load a Bitmap from unsupported MIME type: " + imageMimeType));
        } else {
            im5VarG = this.bitmapLoader.loadBitmap(((MediaItem.LocalConfiguration) Assertions.checkNotNull(this.editedMediaItem.mediaItem.localConfiguration)).uri);
        }
        Futures.a(im5VarG, new AnonymousClass1(), this.scheduledExecutorService);
    }

    private ImageAssetLoader(Context context, EditedMediaItem editedMediaItem, AssetLoader.Listener listener, BitmapLoader bitmapLoader, boolean z) {
        Assertions.checkState(editedMediaItem.durationUs != C.TIME_UNSET);
        Assertions.checkState(editedMediaItem.frameRate != -2147483647);
        this.context = context;
        this.editedMediaItem = editedMediaItem;
        this.listener = listener;
        this.bitmapLoader = bitmapLoader;
        this.retainHdrFromUltraHdrImage = z;
        this.scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
        this.progressState = 0;
    }
}

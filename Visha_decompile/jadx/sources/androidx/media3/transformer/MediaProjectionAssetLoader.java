package androidx.media3.transformer;

import android.graphics.Rect;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableMap;

@UnstableApi
public final class MediaProjectionAssetLoader implements AssetLoader {
    private static final String VIRTUAL_DISPLAY_NAME = "MediaProjectionAssetLoader";
    private final int densityDpi;
    private final Handler handler;
    private final AssetLoader.Listener listener;
    private final MediaProjection mediaProjection;
    private final Format screenCaptureFormat;
    private final SurfaceAssetLoader surfaceAssetLoader;

    @Nullable
    private Format videoFormat;

    @Nullable
    private VirtualDisplay virtualDisplay;

    public final class ComponentListener implements SurfaceAssetLoader.Callback, AssetLoader.Listener {
        private ComponentListener() {
        }

        public void lambda$onSurfaceReady$0(Surface surface) {
            MediaProjectionAssetLoader.this.startCapture(surface);
        }

        @Override
        public void onDurationUs(long j) {
        }

        @Override
        public void onError(ExportException exportException) {
            MediaProjectionAssetLoader.this.listener.onError(exportException);
        }

        @Override
        @Nullable
        public SampleConsumer onOutputFormat(Format format) throws ExportException {
            if (MediaProjectionAssetLoader.this.videoFormat == null) {
                return null;
            }
            return MediaProjectionAssetLoader.this.listener.onOutputFormat(format);
        }

        @Override
        public void onSurfaceAssetLoaderCreated(SurfaceAssetLoader surfaceAssetLoader) {
        }

        @Override
        public void onSurfaceReady(final Surface surface, EditedMediaItem editedMediaItem) {
            MediaProjectionAssetLoader.this.handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onSurfaceReady$0(surface);
                }
            });
        }

        @Override
        public boolean onTrackAdded(Format format, int i) {
            if (MimeTypes.isVideo(format.sampleMimeType)) {
                MediaProjectionAssetLoader.this.videoFormat = format;
                MediaProjectionAssetLoader.this.listener.onDurationUs(C.TIME_UNSET);
                MediaProjectionAssetLoader.this.listener.onTrackCount(1);
                MediaProjectionAssetLoader.this.listener.onTrackAdded(format, 2);
            }
            return true;
        }

        @Override
        public void onTrackCount(int i) {
        }
    }

    public static final class Factory implements AssetLoader.Factory {
        private final Rect bounds;
        private final int densityDpi;
        private final MediaProjection mediaProjection;

        public Factory(MediaProjection mediaProjection, Rect rect, int i) {
            this.mediaProjection = mediaProjection;
            this.bounds = rect;
            this.densityDpi = i;
        }

        @Override
        public MediaProjectionAssetLoader createAssetLoader(EditedMediaItem editedMediaItem, Looper looper, AssetLoader.Listener listener, AssetLoader.CompositionSettings compositionSettings) {
            return new MediaProjectionAssetLoader(this.mediaProjection, this.bounds, this.densityDpi, editedMediaItem, looper, listener, compositionSettings);
        }
    }

    public void startCapture(Surface surface) {
        this.mediaProjection.registerCallback(new MediaProjection.Callback() {
            @Override
            public void onStop() {
                super.onStop();
                if (MediaProjectionAssetLoader.this.virtualDisplay != null) {
                    MediaProjectionAssetLoader.this.virtualDisplay.setSurface(null);
                    MediaProjectionAssetLoader.this.virtualDisplay.release();
                }
                MediaProjectionAssetLoader.this.surfaceAssetLoader.signalEndOfInput();
            }
        }, new Handler());
        this.virtualDisplay = ((MediaProjection) Assertions.checkNotNull(this.mediaProjection)).createVirtualDisplay(VIRTUAL_DISPLAY_NAME, ((Format) Assertions.checkNotNull(this.screenCaptureFormat)).width, this.screenCaptureFormat.height, this.densityDpi, 16, surface, null, null);
    }

    @Override
    public ImmutableMap<Integer, String> getDecoderNames() {
        return this.surfaceAssetLoader.getDecoderNames();
    }

    @Override
    public int getProgress(ProgressHolder progressHolder) {
        return this.surfaceAssetLoader.getProgress(progressHolder);
    }

    @Override
    public void release() {
        this.surfaceAssetLoader.release();
    }

    @Override
    public void start() {
        this.surfaceAssetLoader.start();
    }

    private MediaProjectionAssetLoader(MediaProjection mediaProjection, Rect rect, int i, EditedMediaItem editedMediaItem, Looper looper, AssetLoader.Listener listener, AssetLoader.CompositionSettings compositionSettings) {
        this.mediaProjection = mediaProjection;
        Format formatBuild = new Format.Builder().setSampleMimeType("video/raw").setWidth(rect.width()).setHeight(rect.height()).setColorInfo(ColorInfo.SRGB_BT709_FULL).build();
        this.screenCaptureFormat = formatBuild;
        this.densityDpi = i;
        this.listener = listener;
        this.handler = new Handler(Looper.getMainLooper());
        ComponentListener componentListener = new ComponentListener();
        SurfaceAssetLoader surfaceAssetLoaderCreateAssetLoader = new SurfaceAssetLoader.Factory(componentListener).createAssetLoader(editedMediaItem, looper, (AssetLoader.Listener) componentListener, compositionSettings);
        this.surfaceAssetLoader = surfaceAssetLoaderCreateAssetLoader;
        surfaceAssetLoaderCreateAssetLoader.setContentFormat(formatBuild);
    }
}

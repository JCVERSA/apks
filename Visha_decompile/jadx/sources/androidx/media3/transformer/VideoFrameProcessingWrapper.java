package androidx.media3.transformer;

import android.graphics.Bitmap;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.TimestampIterator;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

final class VideoFrameProcessingWrapper implements GraphInput {
    private final long initialTimestampOffsetUs;
    private final AtomicLong mediaItemOffsetUs = new AtomicLong();
    private final List<Effect> postProcessingEffects;
    private final VideoFrameProcessor videoFrameProcessor;

    public VideoFrameProcessingWrapper(VideoFrameProcessor videoFrameProcessor, List<Effect> list, long j) {
        this.videoFrameProcessor = videoFrameProcessor;
        this.postProcessingEffects = list;
        this.initialTimestampOffsetUs = j;
    }

    private static Format applyDecoderRotation(Format format) {
        return format.rotationDegrees % 180 == 0 ? format : format.buildUpon().setWidth(format.height).setHeight(format.width).setRotationDegrees(0).build();
    }

    private static int getInputTypeForMimeType(String str) {
        if (MimeTypes.isImage(str)) {
            return 2;
        }
        if (str.equals("video/raw")) {
            return 3;
        }
        if (MimeTypes.isVideo(str)) {
            return 1;
        }
        throw new IllegalArgumentException("MIME type not supported " + str);
    }

    private static boolean isMediaItemForSurfaceAssetLoader(EditedMediaItem editedMediaItem) {
        String scheme;
        MediaItem.LocalConfiguration localConfiguration = editedMediaItem.mediaItem.localConfiguration;
        if (localConfiguration == null || (scheme = localConfiguration.uri.getScheme()) == null) {
            return false;
        }
        return scheme.equals(SurfaceAssetLoader.MEDIA_ITEM_URI_SCHEME);
    }

    @Override
    public Surface getInputSurface() {
        return this.videoFrameProcessor.getInputSurface();
    }

    @Override
    public int getPendingVideoFrameCount() {
        return this.videoFrameProcessor.getPendingInputFrameCount();
    }

    @Override
    public void onMediaItemChanged(EditedMediaItem editedMediaItem, long j, @Nullable Format format, boolean z) {
        Assertions.checkArgument(!editedMediaItem.isGap());
        boolean zIsMediaItemForSurfaceAssetLoader = isMediaItemForSurfaceAssetLoader(editedMediaItem);
        long durationAfterEffectsApplied = editedMediaItem.getDurationAfterEffectsApplied(j);
        if (format != null) {
            Format formatApplyDecoderRotation = applyDecoderRotation(format);
            this.videoFrameProcessor.registerInputStream(zIsMediaItemForSurfaceAssetLoader ? 4 : getInputTypeForMimeType((String) Assertions.checkNotNull(formatApplyDecoderRotation.sampleMimeType)), formatApplyDecoderRotation, new ImmutableList.a().l(editedMediaItem.effects.videoEffects).l(this.postProcessingEffects).e(), this.mediaItemOffsetUs.get() + this.initialTimestampOffsetUs);
        }
        this.mediaItemOffsetUs.addAndGet(durationAfterEffectsApplied);
    }

    @Override
    public int queueInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
        return this.videoFrameProcessor.queueInputBitmap(bitmap, timestampIterator) ? 1 : 2;
    }

    @Override
    public int queueInputTexture(int i, long j) {
        return this.videoFrameProcessor.queueInputTexture(i, j) ? 1 : 2;
    }

    @Override
    public boolean registerVideoFrame(long j) {
        return this.videoFrameProcessor.registerInputFrame();
    }

    public void release() {
        this.videoFrameProcessor.release();
    }

    @Override
    public void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener) {
        this.videoFrameProcessor.setOnInputFrameProcessedListener(onInputFrameProcessedListener);
    }

    @Override
    public void setOnInputSurfaceReadyListener(Runnable runnable) {
        this.videoFrameProcessor.setOnInputSurfaceReadyListener(runnable);
    }

    @Override
    public void signalEndOfVideoInput() {
        this.videoFrameProcessor.signalEndOfInput();
    }
}

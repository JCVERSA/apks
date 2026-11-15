package androidx.media3.effect;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlRect;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import defpackage.im5;
import java.nio.ByteBuffer;

@UnstableApi
public class ByteBufferGlEffect<T> implements GlEffect {
    private static final int DEFAULT_PENDING_PIXEL_BUFFER_QUEUE_SIZE = 1;
    private static final int DEFAULT_QUEUE_SIZE = 6;
    private final Processor<T> processor;

    public static class Image {
        public final int height;
        public final ByteBuffer pixelBuffer;
        public final int width;

        public Image(int i, int i2, ByteBuffer byteBuffer) {
            Assertions.checkArgument(byteBuffer.capacity() == (i * i2) * 4);
            this.width = i;
            this.height = i2;
            this.pixelBuffer = byteBuffer;
        }

        public Bitmap copyToBitmap() {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.copyPixelsFromBuffer(this.pixelBuffer);
            Matrix matrix = new Matrix();
            matrix.setScale(1.0f, -1.0f);
            return Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
        }
    }

    public interface Processor<T> {
        Size configure(int i, int i2) throws VideoFrameProcessingException;

        void finishProcessingAndBlend(GlTextureInfo glTextureInfo, long j, T t) throws VideoFrameProcessingException;

        GlRect getScaledRegion(long j);

        im5 processImage(Image image, long j);

        void release() throws VideoFrameProcessingException;
    }

    public ByteBufferGlEffect(Processor<T> processor) {
        this.processor = processor;
    }

    @Override
    public GlShaderProgram toGlShaderProgram(Context context, boolean z) throws VideoFrameProcessingException {
        Assertions.checkArgument(!z, "HDR support not yet implemented.");
        return new QueuingGlShaderProgram(z, 6, new ByteBufferConcurrentEffect(1, this.processor));
    }
}

package androidx.media3.effect;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public abstract class CanvasOverlay extends BitmapOverlay {
    private volatile int height;
    private Bitmap lastBitmap;
    private Canvas lastCanvas;
    private final boolean useInputFrameSize;
    private volatile int width;

    public CanvasOverlay(boolean z) {
        this.useInputFrameSize = z;
    }

    @Override
    public void configure(Size size) {
        super.configure(size);
        if (this.useInputFrameSize) {
            setCanvasSize(size.getWidth(), size.getHeight());
        }
    }

    @Override
    public Bitmap getBitmap(long j) {
        Bitmap bitmap = this.lastBitmap;
        if (bitmap == null || bitmap.getWidth() != this.width || this.lastBitmap.getHeight() != this.height) {
            this.lastBitmap = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
            this.lastCanvas = new Canvas(this.lastBitmap);
        }
        onDraw((Canvas) Assertions.checkNotNull(this.lastCanvas), j);
        return this.lastBitmap;
    }

    public abstract void onDraw(Canvas canvas, long j);

    @Override
    public void release() throws VideoFrameProcessingException {
        super.release();
        Bitmap bitmap = this.lastBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    public void setCanvasSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }
}

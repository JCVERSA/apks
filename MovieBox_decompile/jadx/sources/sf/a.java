package sf;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

public class a extends BitmapTransformation {

    private final int f72057a;

    private final int f72058b;

    private boolean f72059c;

    public a() {
        this(25, 1);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.f72057a == this.f72057a && aVar.f72058b == this.f72058b) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 589067571 + (this.f72057a * 1000) + (this.f72058b * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.f72057a + ", sampling=" + this.f72058b + ")";
    }

    @Override
    protected Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i10, int i11) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i12 = this.f72058b;
        Bitmap bitmap2 = bitmapPool.get(width / i12, height / i12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int i13 = this.f72058b;
        canvas.scale(1.0f / i13, 1.0f / i13);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return this.f72059c ? b.a(bitmap2, this.f72057a, true) : ImageUtils.a(bitmap2, 1.0f, this.f72057a);
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("BlurTransformation.1" + this.f72057a + this.f72058b).getBytes(Key.CHARSET));
    }

    public a(int i10, int i11) {
        this.f72059c = false;
        this.f72057a = i10;
        this.f72058b = i11;
    }

    public a(int i10, int i11, boolean z10) {
        this.f72057a = i10;
        this.f72058b = i11;
        this.f72059c = z10;
    }
}

package ei;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

public class a extends BitmapTransformation {

    private final int f59704a;

    private final int f59705b;

    private boolean f59706c;

    public a() {
        this(25, 1);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.f59704a == this.f59704a && aVar.f59705b == this.f59705b) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 589067571 + (this.f59704a * 1000) + (this.f59705b * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.f59704a + ", sampling=" + this.f59705b + ")";
    }

    @Override
    protected Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i10, int i11) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i12 = this.f59705b;
        Bitmap bitmap2 = bitmapPool.get(width / i12, height / i12, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        int i13 = this.f59705b;
        canvas.scale(1.0f / i13, 1.0f / i13);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return this.f59706c ? b.a(bitmap2, this.f59704a, true) : ImageUtils.a(bitmap2, 1.0f, this.f59704a);
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("BlurTransformation.1" + this.f59704a + this.f59705b).getBytes(Key.CHARSET));
    }

    public a(int i10) {
        this(i10, 1);
    }

    public a(int i10, int i11) {
        this.f59706c = false;
        this.f59704a = i10;
        this.f59705b = i11;
    }

    public a(int i10, int i11, boolean z10) {
        this.f59704a = i10;
        this.f59705b = i11;
        this.f59706c = z10;
    }
}

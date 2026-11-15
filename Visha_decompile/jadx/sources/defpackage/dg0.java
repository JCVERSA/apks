package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.RSRuntimeException;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

public class dg0 extends if0 {
    public final int a;
    public final int b;

    public dg0(int i) {
        this(i, 1);
    }

    @Override
    public Bitmap b(Context context, BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i3 = this.b;
        Bitmap bitmap2 = bitmapPool.get(width / i3, height / i3, Bitmap.Config.ARGB_8888);
        a(bitmap, bitmap2);
        Canvas canvas = new Canvas(bitmap2);
        int i4 = this.b;
        canvas.scale(1.0f / i4, 1.0f / i4);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        try {
            return jn8.a(context, bitmap2, this.a);
        } catch (RSRuntimeException unused) {
            return fp3.a(bitmap2, this.a, true);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof dg0) {
            dg0 dg0Var = (dg0) obj;
            if (dg0Var.a == this.a && dg0Var.b == this.b) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 737513610 + (this.a * 1000) + (this.b * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.a + ", sampling=" + this.b + ")";
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("jp.wasabeef.glide.transformations.BlurTransformation.1" + this.a + this.b).getBytes(Key.CHARSET));
    }

    public dg0(int i, int i2) {
        this.a = i;
        this.b = i2;
    }
}

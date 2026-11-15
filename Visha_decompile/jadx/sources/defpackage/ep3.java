package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class ep3 extends Drawable {
    public Bitmap b;
    public int d;
    public int e;
    public final Paint a = new Paint(2);
    public int c = 255;

    public ep3(Bitmap bitmap) {
        b(bitmap);
    }

    public Bitmap a() {
        return this.b;
    }

    public void b(Bitmap bitmap) {
        this.b = bitmap;
        if (bitmap != null) {
            this.d = bitmap.getWidth();
            this.e = this.b.getHeight();
        } else {
            this.e = 0;
            this.d = 0;
        }
    }

    @Override
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.b, (Rect) null, getBounds(), this.a);
    }

    @Override
    public int getAlpha() {
        return this.c;
    }

    @Override
    public int getIntrinsicHeight() {
        return this.e;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.d;
    }

    @Override
    public int getMinimumHeight() {
        return this.e;
    }

    @Override
    public int getMinimumWidth() {
        return this.d;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i) {
        this.c = i;
        this.a.setAlpha(i);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }

    @Override
    public void setFilterBitmap(boolean z) {
        this.a.setFilterBitmap(z);
    }
}

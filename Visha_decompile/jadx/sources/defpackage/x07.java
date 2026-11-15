package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class x07 extends Drawable {
    public static final a h = new a(null);
    public int a;
    public int b;
    public int c;
    public int d;
    public Bitmap e;
    public NinePatch f;
    public final Paint g = new Paint(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final NinePatch a(Bitmap bitmap) {
        return new NinePatch(bitmap, b(bitmap.getWidth(), bitmap.getHeight(), this.a, this.b, this.c, this.d));
    }

    public final byte[] b(int i, int i2, int i3, int i4, int i5, int i6) {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
        byteBufferOrder.put((byte) 1);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 2);
        byteBufferOrder.put((byte) 9);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putInt(i4);
        byteBufferOrder.putInt(i - i5);
        byteBufferOrder.putInt(i6);
        byteBufferOrder.putInt(i2 - i3);
        for (int i7 = 0; i7 < 9; i7++) {
            byteBufferOrder.putInt(1);
        }
        byte[] bArrArray = byteBufferOrder.array();
        y45.i(bArrArray, "allocate(allocationSize)…   }\n            .array()");
        return bArrArray;
    }

    public final void c(Bitmap bitmap) {
        this.e = bitmap;
        this.f = bitmap != null ? a(bitmap) : null;
        invalidateSelf();
    }

    public final void d(int i) {
        this.a = i;
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        NinePatch ninePatch = this.f;
        if (ninePatch != null) {
            ninePatch.draw(canvas, new Rect(0, 0, getBounds().width(), getBounds().height()), this.g);
        }
    }

    public final void e(int i) {
        this.b = i;
        invalidateSelf();
    }

    public final void f(int i) {
        this.c = i;
        invalidateSelf();
    }

    public final void g(int i) {
        this.d = i;
        invalidateSelf();
    }

    @Override
    public int getOpacity() {
        return this.g.getAlpha();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        y45.j(rect, "bounds");
        super.onBoundsChange(rect);
        invalidateSelf();
    }

    @Override
    public void setAlpha(int i) {
        this.g.setAlpha(i);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}

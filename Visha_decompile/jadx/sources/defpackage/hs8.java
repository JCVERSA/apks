package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;

public class hs8 implements yf0 {
    public int b;
    public int c;
    public yf0 e;
    public Context f;
    public final RenderNode a = new RenderNode("BlurViewNode");
    public float d = 1.0f;

    @Override
    public Bitmap.Config a() {
        return Bitmap.Config.ARGB_8888;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public float c() {
        return 6.0f;
    }

    @Override
    public void d(Canvas canvas, Bitmap bitmap) {
        if (canvas.isHardwareAccelerated()) {
            canvas.drawRenderNode(this.a);
            return;
        }
        if (this.e == null) {
            this.e = new js8(this.f);
        }
        this.e.e(bitmap, this.d);
        this.e.d(canvas, bitmap);
    }

    @Override
    public void destroy() {
        this.a.discardDisplayList();
        yf0 yf0Var = this.e;
        if (yf0Var != null) {
            yf0Var.destroy();
        }
    }

    @Override
    public Bitmap e(Bitmap bitmap, float f) {
        this.d = f;
        if (bitmap.getHeight() != this.b || bitmap.getWidth() != this.c) {
            this.b = bitmap.getHeight();
            int width = bitmap.getWidth();
            this.c = width;
            this.a.setPosition(0, 0, width, this.b);
        }
        this.a.beginRecording().drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.a.endRecording();
        this.a.setRenderEffect(RenderEffect.createBlurEffect(f, f, Shader.TileMode.MIRROR));
        return bitmap;
    }

    public void f(Context context) {
        this.f = context;
    }
}

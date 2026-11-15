package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

public class js8 implements yf0 {
    public final RenderScript b;
    public final ScriptIntrinsicBlur c;
    public Allocation d;
    public final Paint a = new Paint(2);
    public int e = -1;
    public int f = -1;

    public js8(Context context) {
        RenderScript renderScriptCreate = RenderScript.create(context);
        this.b = renderScriptCreate;
        this.c = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
    }

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
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.a);
    }

    @Override
    public final void destroy() {
        this.c.destroy();
        this.b.destroy();
        Allocation allocation = this.d;
        if (allocation != null) {
            allocation.destroy();
        }
    }

    @Override
    public Bitmap e(Bitmap bitmap, float f) {
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.b, bitmap);
        if (!f(bitmap)) {
            Allocation allocation = this.d;
            if (allocation != null) {
                allocation.destroy();
            }
            this.d = Allocation.createTyped(this.b, allocationCreateFromBitmap.getType());
            this.e = bitmap.getWidth();
            this.f = bitmap.getHeight();
        }
        this.c.setRadius(f);
        this.c.setInput(allocationCreateFromBitmap);
        this.c.forEach(this.d);
        this.d.copyTo(bitmap);
        allocationCreateFromBitmap.destroy();
        return bitmap;
    }

    public final boolean f(Bitmap bitmap) {
        return bitmap.getHeight() == this.f && bitmap.getWidth() == this.e;
    }
}

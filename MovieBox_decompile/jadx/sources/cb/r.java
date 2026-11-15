package cb;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;

public abstract class r {

    n f16921c;

    boolean f16919a = false;

    boolean f16920b = false;

    RectF f16922d = new RectF();

    final Path f16923e = new Path();

    public static r a(View view) {
        return Build.VERSION.SDK_INT >= 33 ? new t(view) : new s(view);
    }

    private boolean d() {
        RectF rectF = this.f16922d;
        return rectF.left <= rectF.right && rectF.top <= rectF.bottom;
    }

    private void k() {
        if (!d() || this.f16921c == null) {
            return;
        }
        o.k().d(this.f16921c, 1.0f, this.f16922d, this.f16923e);
    }

    abstract void b(View view);

    public boolean c() {
        return this.f16919a;
    }

    public void e(Canvas canvas, ra.a.InterfaceC0869a interfaceC0869a) {
        if (!j() || this.f16923e.isEmpty()) {
            interfaceC0869a.a(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.f16923e);
        interfaceC0869a.a(canvas);
        canvas.restore();
    }

    public void f(View view, RectF rectF) {
        this.f16922d = rectF;
        k();
        b(view);
    }

    public void g(View view, n nVar) {
        this.f16921c = nVar;
        k();
        b(view);
    }

    public void h(View view, boolean z10) {
        if (z10 != this.f16919a) {
            this.f16919a = z10;
            b(view);
        }
    }

    public void i(View view, boolean z10) {
        this.f16920b = z10;
        b(view);
    }

    abstract boolean j();
}

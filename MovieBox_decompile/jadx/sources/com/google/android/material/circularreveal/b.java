package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

public class b {

    public static final int f27917j = 2;

    private final a f27918a;

    private final View f27919b;

    private final Path f27920c;

    private final Paint f27921d;

    private final Paint f27922e;

    private c.e f27923f;

    private Drawable f27924g;

    private boolean f27925h;

    private boolean f27926i;

    public interface a {
        void actualDraw(Canvas canvas);

        boolean actualIsOpaque();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f27918a = aVar;
        View view = (View) aVar;
        this.f27919b = view;
        view.setWillNotDraw(false);
        this.f27920c = new Path();
        this.f27921d = new Paint(7);
        Paint paint = new Paint(1);
        this.f27922e = paint;
        paint.setColor(0);
    }

    private void d(Canvas canvas) {
        if (o()) {
            Rect bounds = this.f27924g.getBounds();
            float fWidth = this.f27923f.f27931a - (bounds.width() / 2.0f);
            float fHeight = this.f27923f.f27932b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.f27924g.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    private float g(c.e eVar) {
        return xa.a.b(eVar.f27931a, eVar.f27932b, 0.0f, 0.0f, this.f27919b.getWidth(), this.f27919b.getHeight());
    }

    private void i() {
        if (f27917j == 1) {
            this.f27920c.rewind();
            c.e eVar = this.f27923f;
            if (eVar != null) {
                this.f27920c.addCircle(eVar.f27931a, eVar.f27932b, eVar.f27933c, Path.Direction.CW);
            }
        }
        this.f27919b.invalidate();
    }

    private boolean n() {
        c.e eVar = this.f27923f;
        boolean z10 = eVar == null || eVar.a();
        if (f27917j == 0) {
            return !z10 && this.f27926i;
        }
        return !z10;
    }

    private boolean o() {
        return (this.f27925h || this.f27924g == null || this.f27923f == null) ? false : true;
    }

    private boolean p() {
        return (this.f27925h || Color.alpha(this.f27922e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f27917j == 0) {
            this.f27925h = true;
            this.f27926i = false;
            this.f27919b.buildDrawingCache();
            Bitmap drawingCache = this.f27919b.getDrawingCache();
            if (drawingCache == null && this.f27919b.getWidth() != 0 && this.f27919b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f27919b.getWidth(), this.f27919b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f27919b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f27921d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f27925h = false;
            this.f27926i = true;
        }
    }

    public void b() {
        if (f27917j == 0) {
            this.f27926i = false;
            this.f27919b.destroyDrawingCache();
            this.f27921d.setShader(null);
            this.f27919b.invalidate();
        }
    }

    public void c(Canvas canvas) {
        if (n()) {
            int i10 = f27917j;
            if (i10 == 0) {
                c.e eVar = this.f27923f;
                canvas.drawCircle(eVar.f27931a, eVar.f27932b, eVar.f27933c, this.f27921d);
                if (p()) {
                    c.e eVar2 = this.f27923f;
                    canvas.drawCircle(eVar2.f27931a, eVar2.f27932b, eVar2.f27933c, this.f27922e);
                }
            } else if (i10 == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f27920c);
                this.f27918a.actualDraw(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f27919b.getWidth(), this.f27919b.getHeight(), this.f27922e);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i10);
                }
                this.f27918a.actualDraw(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f27919b.getWidth(), this.f27919b.getHeight(), this.f27922e);
                }
            }
        } else {
            this.f27918a.actualDraw(canvas);
            if (p()) {
                canvas.drawRect(0.0f, 0.0f, this.f27919b.getWidth(), this.f27919b.getHeight(), this.f27922e);
            }
        }
        d(canvas);
    }

    public Drawable e() {
        return this.f27924g;
    }

    public int f() {
        return this.f27922e.getColor();
    }

    public c.e h() {
        c.e eVar = this.f27923f;
        if (eVar == null) {
            return null;
        }
        c.e eVar2 = new c.e(eVar);
        if (eVar2.a()) {
            eVar2.f27933c = g(eVar2);
        }
        return eVar2;
    }

    public boolean j() {
        return this.f27918a.actualIsOpaque() && !n();
    }

    public void k(Drawable drawable) {
        this.f27924g = drawable;
        this.f27919b.invalidate();
    }

    public void l(int i10) {
        this.f27922e.setColor(i10);
        this.f27919b.invalidate();
    }

    public void m(c.e eVar) {
        if (eVar == null) {
            this.f27923f = null;
        } else {
            c.e eVar2 = this.f27923f;
            if (eVar2 == null) {
                this.f27923f = new c.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (xa.a.c(eVar.f27933c, g(eVar), 1.0E-4f)) {
                this.f27923f.f27933c = Float.MAX_VALUE;
            }
        }
        i();
    }
}

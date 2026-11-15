package r4;

import android.graphics.PointF;

public class a {

    private final PointF f70818a;

    private final PointF f70819b;

    private final PointF f70820c;

    public a() {
        this.f70818a = new PointF();
        this.f70819b = new PointF();
        this.f70820c = new PointF();
    }

    public PointF a() {
        return this.f70818a;
    }

    public PointF b() {
        return this.f70819b;
    }

    public PointF c() {
        return this.f70820c;
    }

    public void d(float f10, float f11) {
        this.f70818a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f70819b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f70820c.set(f10, f11);
    }

    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f70820c.x), Float.valueOf(this.f70820c.y), Float.valueOf(this.f70818a.x), Float.valueOf(this.f70818a.y), Float.valueOf(this.f70819b.x), Float.valueOf(this.f70819b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f70818a = pointF;
        this.f70819b = pointF2;
        this.f70820c = pointF3;
    }
}

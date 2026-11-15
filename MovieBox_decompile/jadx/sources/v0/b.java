package v0;

import androidx.constraintlayout.core.motion.utils.j;
import androidx.constraintlayout.core.motion.utils.l;
import androidx.constraintlayout.core.motion.utils.m;
import androidx.constraintlayout.motion.widget.n;

public class b extends n {

    private m f73416a;

    private j f73417b;

    private l f73418c;

    public b() {
        m mVar = new m();
        this.f73416a = mVar;
        this.f73418c = mVar;
    }

    @Override
    public float a() {
        return this.f73418c.a();
    }

    public void b(float f10, float f11, float f12, float f13, float f14, float f15) {
        m mVar = this.f73416a;
        this.f73418c = mVar;
        mVar.c(f10, f11, f12, f13, f14, f15);
    }

    public boolean c() {
        return this.f73418c.isStopped();
    }

    public void d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i10) {
        if (this.f73417b == null) {
            this.f73417b = new j();
        }
        j jVar = this.f73417b;
        this.f73418c = jVar;
        jVar.c(f10, f11, f12, f13, f14, f15, f16, i10);
    }

    @Override
    public float getInterpolation(float f10) {
        return this.f73418c.getInterpolation(f10);
    }
}

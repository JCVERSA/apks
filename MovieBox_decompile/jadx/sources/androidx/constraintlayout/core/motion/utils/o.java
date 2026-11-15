package androidx.constraintlayout.core.motion.utils;

public class o {

    float f6531a;

    float f6532b;

    float f6533c;

    float f6534d;

    float f6535e;

    float f6536f;

    public void a(float f10, float f11, int i10, int i11, float[] fArr) {
        float f12 = fArr[0];
        float f13 = fArr[1];
        float f14 = (f10 - 0.5f) * 2.0f;
        float f15 = (f11 - 0.5f) * 2.0f;
        float f16 = f12 + this.f6533c;
        float f17 = f13 + this.f6534d;
        float f18 = f16 + (this.f6531a * f14);
        float f19 = f17 + (this.f6532b * f15);
        float radians = (float) Math.toRadians(this.f6536f);
        float radians2 = (float) Math.toRadians(this.f6535e);
        double d10 = radians;
        double d11 = i11 * f15;
        float fSin = f18 + (((float) ((((double) ((-i10) * f14)) * Math.sin(d10)) - (Math.cos(d10) * d11))) * radians2);
        float fCos = f19 + (radians2 * ((float) ((((double) (i10 * f14)) * Math.cos(d10)) - (d11 * Math.sin(d10)))));
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void b() {
        this.f6535e = 0.0f;
        this.f6534d = 0.0f;
        this.f6533c = 0.0f;
        this.f6532b = 0.0f;
        this.f6531a = 0.0f;
    }

    public void c(KeyCycleOscillator keyCycleOscillator, float f10) {
        if (keyCycleOscillator != null) {
            this.f6535e = keyCycleOscillator.b(f10);
        }
    }

    public void d(i iVar, float f10) {
        if (iVar != null) {
            this.f6535e = iVar.b(f10);
            this.f6536f = iVar.a(f10);
        }
    }

    public void e(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f10) {
        if (keyCycleOscillator != null) {
            this.f6531a = keyCycleOscillator.b(f10);
        }
        if (keyCycleOscillator2 != null) {
            this.f6532b = keyCycleOscillator2.b(f10);
        }
    }

    public void f(i iVar, i iVar2, float f10) {
        if (iVar != null) {
            this.f6531a = iVar.b(f10);
        }
        if (iVar2 != null) {
            this.f6532b = iVar2.b(f10);
        }
    }

    public void g(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f10) {
        if (keyCycleOscillator != null) {
            this.f6533c = keyCycleOscillator.b(f10);
        }
        if (keyCycleOscillator2 != null) {
            this.f6534d = keyCycleOscillator2.b(f10);
        }
    }

    public void h(i iVar, i iVar2, float f10) {
        if (iVar != null) {
            this.f6533c = iVar.b(f10);
        }
        if (iVar2 != null) {
            this.f6534d = iVar2.b(f10);
        }
    }
}

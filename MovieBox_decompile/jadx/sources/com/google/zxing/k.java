package com.google.zxing;

public class k {

    private final float f32092a;

    private final float f32093b;

    public k(float f10, float f11) {
        this.f32092a = f10;
        this.f32093b = f11;
    }

    private static float a(k kVar, k kVar2, k kVar3) {
        float f10 = kVar2.f32092a;
        float f11 = kVar2.f32093b;
        return ((kVar3.f32092a - f10) * (kVar.f32093b - f11)) - ((kVar3.f32093b - f11) * (kVar.f32092a - f10));
    }

    public static float b(k kVar, k kVar2) {
        return ld.a.a(kVar.f32092a, kVar.f32093b, kVar2.f32092a, kVar2.f32093b);
    }

    public static void e(k[] kVarArr) {
        k kVar;
        k kVar2;
        k kVar3;
        float fB = b(kVarArr[0], kVarArr[1]);
        float fB2 = b(kVarArr[1], kVarArr[2]);
        float fB3 = b(kVarArr[0], kVarArr[2]);
        if (fB2 >= fB && fB2 >= fB3) {
            kVar = kVarArr[0];
            kVar2 = kVarArr[1];
            kVar3 = kVarArr[2];
        } else if (fB3 < fB2 || fB3 < fB) {
            kVar = kVarArr[2];
            kVar2 = kVarArr[0];
            kVar3 = kVarArr[1];
        } else {
            kVar = kVarArr[1];
            kVar2 = kVarArr[0];
            kVar3 = kVarArr[2];
        }
        if (a(kVar2, kVar, kVar3) < 0.0f) {
            k kVar4 = kVar3;
            kVar3 = kVar2;
            kVar2 = kVar4;
        }
        kVarArr[0] = kVar2;
        kVarArr[1] = kVar;
        kVarArr[2] = kVar3;
    }

    public final float c() {
        return this.f32092a;
    }

    public final float d() {
        return this.f32093b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f32092a == kVar.f32092a && this.f32093b == kVar.f32093b;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f32092a) * 31) + Float.floatToIntBits(this.f32093b);
    }

    public final String toString() {
        return "(" + this.f32092a + ',' + this.f32093b + ')';
    }
}

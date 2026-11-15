package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

final class d1 implements x0 {

    private final e0 f2107a;

    private o f2108b;

    private o f2109c;

    private o f2110d;

    private final float f2111e;

    public d1(e0 e0Var) {
        this.f2107a = e0Var;
        this.f2111e = e0Var.a();
    }

    @Override
    public float a() {
        return this.f2111e;
    }

    @Override
    public o b(long j10, o oVar, o oVar2) {
        if (this.f2109c == null) {
            this.f2109c = p.g(oVar);
        }
        o oVar3 = this.f2109c;
        if (oVar3 == null) {
            Intrinsics.y("velocityVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar4 = this.f2109c;
            if (oVar4 == null) {
                Intrinsics.y("velocityVector");
                oVar4 = null;
            }
            oVar4.e(i10, this.f2107a.b(j10, oVar.a(i10), oVar2.a(i10)));
        }
        o oVar5 = this.f2109c;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.y("velocityVector");
        return null;
    }

    @Override
    public long c(o oVar, o oVar2) {
        if (this.f2109c == null) {
            this.f2109c = p.g(oVar);
        }
        o oVar3 = this.f2109c;
        if (oVar3 == null) {
            Intrinsics.y("velocityVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        long jMax = 0;
        for (int i10 = 0; i10 < iB; i10++) {
            jMax = Math.max(jMax, this.f2107a.c(oVar.a(i10), oVar2.a(i10)));
        }
        return jMax;
    }

    @Override
    public o d(o oVar, o oVar2) {
        if (this.f2110d == null) {
            this.f2110d = p.g(oVar);
        }
        o oVar3 = this.f2110d;
        if (oVar3 == null) {
            Intrinsics.y("targetVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar4 = this.f2110d;
            if (oVar4 == null) {
                Intrinsics.y("targetVector");
                oVar4 = null;
            }
            oVar4.e(i10, this.f2107a.d(oVar.a(i10), oVar2.a(i10)));
        }
        o oVar5 = this.f2110d;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.y("targetVector");
        return null;
    }

    @Override
    public o e(long j10, o oVar, o oVar2) {
        if (this.f2108b == null) {
            this.f2108b = p.g(oVar);
        }
        o oVar3 = this.f2108b;
        if (oVar3 == null) {
            Intrinsics.y("valueVector");
            oVar3 = null;
        }
        int iB = oVar3.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar4 = this.f2108b;
            if (oVar4 == null) {
                Intrinsics.y("valueVector");
                oVar4 = null;
            }
            oVar4.e(i10, this.f2107a.e(j10, oVar.a(i10), oVar2.a(i10)));
        }
        o oVar5 = this.f2108b;
        if (oVar5 != null) {
            return oVar5;
        }
        Intrinsics.y("valueVector");
        return null;
    }
}

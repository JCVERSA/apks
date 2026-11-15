package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import java.util.List;

public abstract class h {

    private static final float[] f4532a = new float[0];

    private static final void a(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
        double d19 = d12;
        double d20 = 4;
        int iCeil = (int) Math.ceil(Math.abs((d18 * d20) / 3.141592653589793d));
        double dCos = Math.cos(d16);
        double dSin = Math.sin(d16);
        double dCos2 = Math.cos(d17);
        double dSin2 = Math.sin(d17);
        double d21 = -d19;
        double d22 = d21 * dCos;
        double d23 = d13 * dSin;
        double d24 = (d22 * dSin2) - (d23 * dCos2);
        double d25 = d21 * dSin;
        double d26 = d13 * dCos;
        double d27 = (dSin2 * d25) + (dCos2 * d26);
        double d28 = d18 / ((double) iCeil);
        double d29 = d14;
        double d30 = d27;
        double d31 = d24;
        int i10 = 0;
        double d32 = d15;
        double d33 = d17;
        while (i10 < iCeil) {
            double d34 = d33 + d28;
            double dSin3 = Math.sin(d34);
            double dCos3 = Math.cos(d34);
            int i11 = iCeil;
            double d35 = (d10 + ((d19 * dCos) * dCos3)) - (d23 * dSin3);
            double d36 = d11 + (d19 * dSin * dCos3) + (d26 * dSin3);
            double d37 = (d22 * dSin3) - (d23 * dCos3);
            double d38 = (dSin3 * d25) + (dCos3 * d26);
            double d39 = d34 - d33;
            double dTan = Math.tan(d39 / ((double) 2));
            double dSin4 = (Math.sin(d39) * (Math.sqrt(d20 + ((3.0d * dTan) * dTan)) - ((double) 1))) / ((double) 3);
            path.k((float) (d29 + (d31 * dSin4)), (float) (d32 + (d30 * dSin4)), (float) (d35 - (dSin4 * d37)), (float) (d36 - (dSin4 * d38)), (float) d35, (float) d36);
            i10++;
            d28 = d28;
            dSin = dSin;
            d29 = d35;
            d25 = d25;
            d33 = d34;
            d30 = d38;
            d20 = d20;
            d31 = d37;
            dCos = dCos;
            iCeil = i11;
            d32 = d36;
            d19 = d12;
        }
    }

    private static final void b(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, boolean z10, boolean z11) {
        double d17;
        double d18;
        double d19 = (d16 / ((double) 180)) * 3.141592653589793d;
        double dCos = Math.cos(d19);
        double dSin = Math.sin(d19);
        double d20 = ((d10 * dCos) + (d11 * dSin)) / d14;
        double d21 = (((-d10) * dSin) + (d11 * dCos)) / d15;
        double d22 = ((d12 * dCos) + (d13 * dSin)) / d14;
        double d23 = (((-d12) * dSin) + (d13 * dCos)) / d15;
        double d24 = d20 - d22;
        double d25 = d21 - d23;
        double d26 = 2;
        double d27 = (d20 + d22) / d26;
        double d28 = (d21 + d23) / d26;
        double d29 = (d24 * d24) + (d25 * d25);
        if (d29 == 0.0d) {
            return;
        }
        double d30 = (1.0d / d29) - 0.25d;
        if (d30 < 0.0d) {
            double dSqrt = (float) (Math.sqrt(d29) / 1.99999d);
            b(path, d10, d11, d12, d13, d14 * dSqrt, d15 * dSqrt, d16, z10, z11);
            return;
        }
        double dSqrt2 = Math.sqrt(d30);
        double d31 = d24 * dSqrt2;
        double d32 = dSqrt2 * d25;
        if (z10 == z11) {
            d17 = d27 - d32;
            d18 = d28 + d31;
        } else {
            d17 = d27 + d32;
            d18 = d28 - d31;
        }
        double dAtan2 = Math.atan2(d21 - d18, d20 - d17);
        double dAtan3 = Math.atan2(d23 - d18, d22 - d17) - dAtan2;
        if (z11 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d33 = d17 * d14;
        double d34 = d18 * d15;
        a(path, (d33 * dCos) - (d34 * dSin), (d33 * dSin) + (d34 * dCos), d14, d15, d10, d11, d19, dAtan2, dAtan3);
    }

    public static final Path c(List list, Path path) {
        float f10;
        float f11;
        float fC;
        float fE;
        float fD;
        float fD2;
        float f12;
        float f13;
        float f14;
        float f15;
        float fE2;
        float fD3;
        float f16;
        float f17;
        float f18;
        List list2 = list;
        Path path2 = path;
        int iH = path.h();
        path.b();
        path2.e(iH);
        e eVar = list.isEmpty() ? e.b.f4479c : (e) list2.get(0);
        int size = list.size();
        float f19 = 0.0f;
        int i10 = 0;
        float fC2 = 0.0f;
        float fD4 = 0.0f;
        float fC3 = 0.0f;
        float fD5 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (i10 < size) {
            e eVar2 = (e) list2.get(i10);
            if (eVar2 instanceof e.b) {
                path.close();
                eVar2 = eVar2;
                f19 = f19;
                i10 = i10;
                size = size;
                fC2 = f20;
                fC3 = fC2;
                fD4 = f21;
                fD5 = fD4;
            } else {
                if (eVar2 instanceof e.n) {
                    e.n nVar = (e.n) eVar2;
                    fC3 += nVar.c();
                    fD5 += nVar.d();
                    path2.c(nVar.c(), nVar.d());
                    f20 = fC3;
                } else if (eVar2 instanceof e.f) {
                    e.f fVar = (e.f) eVar2;
                    float fC4 = fVar.c();
                    float fD6 = fVar.d();
                    path2.j(fVar.c(), fVar.d());
                    fC3 = fC4;
                    f20 = fC3;
                    fD5 = fD6;
                } else {
                    if (eVar2 instanceof e.m) {
                        e.m mVar = (e.m) eVar2;
                        path2.m(mVar.c(), mVar.d());
                        fC3 += mVar.c();
                        f13 = mVar.d();
                    } else {
                        if (eVar2 instanceof e.C0041e) {
                            e.C0041e c0041e = (e.C0041e) eVar2;
                            path2.o(c0041e.c(), c0041e.d());
                            fD2 = c0041e.c();
                            f12 = c0041e.d();
                        } else {
                            if (eVar2 instanceof e.l) {
                                e.l lVar = (e.l) eVar2;
                                path2.m(lVar.c(), f19);
                                fC3 += lVar.c();
                            } else if (eVar2 instanceof e.d) {
                                e.d dVar = (e.d) eVar2;
                                path2.o(dVar.c(), fD5);
                                fC3 = dVar.c();
                            } else if (eVar2 instanceof e.r) {
                                e.r rVar = (e.r) eVar2;
                                path2.m(f19, rVar.c());
                                f13 = rVar.c();
                            } else if (eVar2 instanceof e.s) {
                                e.s sVar = (e.s) eVar2;
                                path2.o(fC3, sVar.c());
                                fD5 = sVar.c();
                            } else {
                                if (eVar2 instanceof e.k) {
                                    e.k kVar = (e.k) eVar2;
                                    path.d(kVar.c(), kVar.f(), kVar.d(), kVar.g(), kVar.e(), kVar.h());
                                    fC = kVar.d() + fC3;
                                    fE = kVar.g() + fD5;
                                    fC3 += kVar.e();
                                    fD = kVar.h();
                                } else {
                                    if (eVar2 instanceof e.c) {
                                        e.c cVar = (e.c) eVar2;
                                        path.k(cVar.c(), cVar.f(), cVar.d(), cVar.g(), cVar.e(), cVar.h());
                                        fC = cVar.d();
                                        fE2 = cVar.g();
                                        fD3 = cVar.e();
                                        f16 = cVar.h();
                                    } else if (eVar2 instanceof e.p) {
                                        if (eVar.a()) {
                                            f18 = fD5 - fD4;
                                            f17 = fC3 - fC2;
                                        } else {
                                            f17 = f19;
                                            f18 = f17;
                                        }
                                        e.p pVar = (e.p) eVar2;
                                        path.d(f17, f18, pVar.c(), pVar.e(), pVar.d(), pVar.f());
                                        fC = pVar.c() + fC3;
                                        fE = pVar.e() + fD5;
                                        fC3 += pVar.d();
                                        fD = pVar.f();
                                    } else if (eVar2 instanceof e.h) {
                                        if (eVar.a()) {
                                            float f22 = 2;
                                            f15 = (f22 * fD5) - fD4;
                                            f14 = (fC3 * f22) - fC2;
                                        } else {
                                            f14 = fC3;
                                            f15 = fD5;
                                        }
                                        e.h hVar = (e.h) eVar2;
                                        path.k(f14, f15, hVar.c(), hVar.e(), hVar.d(), hVar.f());
                                        fC = hVar.c();
                                        fE2 = hVar.e();
                                        fD3 = hVar.d();
                                        f16 = hVar.f();
                                    } else if (eVar2 instanceof e.o) {
                                        e.o oVar = (e.o) eVar2;
                                        path2.g(oVar.c(), oVar.e(), oVar.d(), oVar.f());
                                        fC2 = oVar.c() + fC3;
                                        fD4 = oVar.e() + fD5;
                                        fC3 += oVar.d();
                                        f13 = oVar.f();
                                    } else if (eVar2 instanceof e.g) {
                                        e.g gVar = (e.g) eVar2;
                                        path2.f(gVar.c(), gVar.e(), gVar.d(), gVar.f());
                                        fC2 = gVar.c();
                                        fD4 = gVar.e();
                                        fD2 = gVar.d();
                                        f12 = gVar.f();
                                    } else if (eVar2 instanceof e.q) {
                                        if (eVar.b()) {
                                            f10 = fC3 - fC2;
                                            f11 = fD5 - fD4;
                                        } else {
                                            f10 = f19;
                                            f11 = f10;
                                        }
                                        e.q qVar = (e.q) eVar2;
                                        path2.g(f10, f11, qVar.c(), qVar.d());
                                        fC = f10 + fC3;
                                        fE = f11 + fD5;
                                        fC3 += qVar.c();
                                        fD = qVar.d();
                                    } else if (eVar2 instanceof e.i) {
                                        if (eVar.b()) {
                                            float f23 = 2;
                                            fC3 = (fC3 * f23) - fC2;
                                            fD5 = (f23 * fD5) - fD4;
                                        }
                                        e.i iVar = (e.i) eVar2;
                                        path2.f(fC3, fD5, iVar.c(), iVar.d());
                                        float fC5 = iVar.c();
                                        fD4 = fD5;
                                        eVar2 = eVar2;
                                        f19 = f19;
                                        i10 = i10;
                                        size = size;
                                        fD5 = iVar.d();
                                        float f24 = fC3;
                                        fC3 = fC5;
                                        fC2 = f24;
                                    } else if (eVar2 instanceof e.j) {
                                        e.j jVar = (e.j) eVar2;
                                        float fC6 = jVar.c() + fC3;
                                        float fD7 = jVar.d() + fD5;
                                        eVar2 = eVar2;
                                        i10 = i10;
                                        f19 = 0.0f;
                                        size = size;
                                        b(path, fC3, fD5, fC6, fD7, jVar.e(), jVar.g(), jVar.f(), jVar.h(), jVar.i());
                                        fD4 = fD7;
                                        fD5 = fD4;
                                        fC2 = fC6;
                                        fC3 = fC2;
                                    } else {
                                        eVar2 = eVar2;
                                        f19 = f19;
                                        i10 = i10;
                                        size = size;
                                        if (eVar2 instanceof e.a) {
                                            e.a aVar = (e.a) eVar2;
                                            b(path, fC3, fD5, aVar.c(), aVar.d(), aVar.e(), aVar.g(), aVar.f(), aVar.h(), aVar.i());
                                            fC3 = aVar.c();
                                            fD4 = aVar.d();
                                            fD5 = fD4;
                                            fC2 = fC3;
                                        }
                                    }
                                    fC3 = fD3;
                                    fD5 = f16;
                                    fD4 = fE2;
                                    fC2 = fC;
                                }
                                fD5 += fD;
                                fD4 = fE;
                                fC2 = fC;
                            }
                            eVar2 = eVar2;
                            f19 = f19;
                            i10 = i10;
                            size = size;
                        }
                        fD5 = f12;
                        fC3 = fD2;
                        eVar2 = eVar2;
                        f19 = f19;
                        i10 = i10;
                        size = size;
                    }
                    fD5 += f13;
                    eVar2 = eVar2;
                    f19 = f19;
                    i10 = i10;
                    size = size;
                }
                f21 = fD5;
                eVar2 = eVar2;
                f19 = f19;
                i10 = i10;
                size = size;
            }
            i10++;
            path2 = path;
            eVar = eVar2;
            f19 = f19;
            size = size;
            list2 = list;
        }
        return path;
    }
}

package com.google.android.material.carousel;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class f {

    private final float f27790a;

    private final List f27791b;

    private final int f27792c;

    private final int f27793d;

    static final class b {

        private final float f27794a;

        private final float f27795b;

        private c f27797d;

        private c f27798e;

        private final List f27796c = new ArrayList();

        private int f27799f = -1;

        private int f27800g = -1;

        private float f27801h = 0.0f;

        private int f27802i = -1;

        b(float f10, float f11) {
            this.f27794a = f10;
            this.f27795b = f11;
        }

        private static float j(float f10, float f11, int i10, int i11) {
            return (f10 - (i10 * f11)) + (i11 * f11);
        }

        b a(float f10, float f11, float f12) {
            return d(f10, f11, f12, false, true);
        }

        b b(float f10, float f11, float f12) {
            return c(f10, f11, f12, false);
        }

        b c(float f10, float f11, float f12, boolean z10) {
            return d(f10, f11, f12, z10, false);
        }

        b d(float f10, float f11, float f12, boolean z10, boolean z11) {
            float fAbs;
            float f13 = f12 / 2.0f;
            float f14 = f10 - f13;
            float f15 = f13 + f10;
            float f16 = this.f27795b;
            if (f15 > f16) {
                fAbs = Math.abs(f15 - Math.max(f15 - f12, f16));
            } else {
                fAbs = 0.0f;
                if (f14 < 0.0f) {
                    fAbs = Math.abs(f14 - Math.min(f14 + f12, 0.0f));
                }
            }
            return e(f10, f11, f12, z10, z11, fAbs);
        }

        b e(float f10, float f11, float f12, boolean z10, boolean z11, float f13) {
            return f(f10, f11, f12, z10, z11, f13, 0.0f, 0.0f);
        }

        b f(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14, float f15) {
            if (f12 <= 0.0f) {
                return this;
            }
            if (z11) {
                if (z10) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i10 = this.f27802i;
                if (i10 != -1 && i10 != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f27802i = this.f27796c.size();
            }
            c cVar = new c(Float.MIN_VALUE, f10, f11, f12, z11, f13, f14, f15);
            if (z10) {
                if (this.f27797d == null) {
                    this.f27797d = cVar;
                    this.f27799f = this.f27796c.size();
                }
                if (this.f27800g != -1 && this.f27796c.size() - this.f27800g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f12 != this.f27797d.f27806d) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f27798e = cVar;
                this.f27800g = this.f27796c.size();
            } else {
                if (this.f27797d == null && cVar.f27806d < this.f27801h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f27798e != null && cVar.f27806d > this.f27801h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f27801h = cVar.f27806d;
            this.f27796c.add(cVar);
            return this;
        }

        b g(float f10, float f11, float f12, int i10) {
            return h(f10, f11, f12, i10, false);
        }

        b h(float f10, float f11, float f12, int i10, boolean z10) {
            if (i10 > 0 && f12 > 0.0f) {
                for (int i11 = 0; i11 < i10; i11++) {
                    c((i11 * f12) + f10, f11, f12, z10);
                }
            }
            return this;
        }

        f i() {
            if (this.f27797d == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < this.f27796c.size(); i10++) {
                c cVar = (c) this.f27796c.get(i10);
                arrayList.add(new c(j(this.f27797d.f27804b, this.f27794a, this.f27799f, i10), cVar.f27804b, cVar.f27805c, cVar.f27806d, cVar.f27807e, cVar.f27808f, cVar.f27809g, cVar.f27810h));
            }
            return new f(this.f27794a, arrayList, this.f27799f, this.f27800g);
        }
    }

    static final class c {

        final float f27803a;

        final float f27804b;

        final float f27805c;

        final float f27806d;

        final boolean f27807e;

        final float f27808f;

        final float f27809g;

        final float f27810h;

        c(float f10, float f11, float f12, float f13) {
            this(f10, f11, f12, f13, false, 0.0f, 0.0f, 0.0f);
        }

        static c a(c cVar, c cVar2, float f10) {
            return new c(qa.a.a(cVar.f27803a, cVar2.f27803a, f10), qa.a.a(cVar.f27804b, cVar2.f27804b, f10), qa.a.a(cVar.f27805c, cVar2.f27805c, f10), qa.a.a(cVar.f27806d, cVar2.f27806d, f10));
        }

        c(float f10, float f11, float f12, float f13, boolean z10, float f14, float f15, float f16) {
            this.f27803a = f10;
            this.f27804b = f11;
            this.f27805c = f12;
            this.f27806d = f13;
            this.f27807e = z10;
            this.f27808f = f14;
            this.f27809g = f15;
            this.f27810h = f16;
        }
    }

    static f m(f fVar, f fVar2, float f10) {
        if (fVar.f() != fVar2.f()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List listG = fVar.g();
        List listG2 = fVar2.g();
        if (listG.size() != listG2.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < fVar.g().size(); i10++) {
            arrayList.add(c.a((c) listG.get(i10), (c) listG2.get(i10), f10));
        }
        return new f(fVar.f(), arrayList, qa.a.c(fVar.b(), fVar2.b(), f10), qa.a.c(fVar.i(), fVar2.i(), f10));
    }

    static f n(f fVar, float f10) {
        b bVar = new b(fVar.f(), f10);
        float f11 = (f10 - fVar.j().f27804b) - (fVar.j().f27806d / 2.0f);
        int size = fVar.g().size() - 1;
        while (size >= 0) {
            c cVar = (c) fVar.g().get(size);
            bVar.d(f11 + (cVar.f27806d / 2.0f), cVar.f27805c, cVar.f27806d, size >= fVar.b() && size <= fVar.i(), cVar.f27807e);
            f11 += cVar.f27806d;
            size--;
        }
        return bVar.i();
    }

    c a() {
        return (c) this.f27791b.get(this.f27792c);
    }

    int b() {
        return this.f27792c;
    }

    c c() {
        return (c) this.f27791b.get(0);
    }

    c d() {
        for (int i10 = 0; i10 < this.f27791b.size(); i10++) {
            c cVar = (c) this.f27791b.get(i10);
            if (!cVar.f27807e) {
                return cVar;
            }
        }
        return null;
    }

    List e() {
        return this.f27791b.subList(this.f27792c, this.f27793d + 1);
    }

    float f() {
        return this.f27790a;
    }

    List g() {
        return this.f27791b;
    }

    c h() {
        return (c) this.f27791b.get(this.f27793d);
    }

    int i() {
        return this.f27793d;
    }

    c j() {
        List list = this.f27791b;
        return (c) list.get(list.size() - 1);
    }

    c k() {
        for (int size = this.f27791b.size() - 1; size >= 0; size--) {
            c cVar = (c) this.f27791b.get(size);
            if (!cVar.f27807e) {
                return cVar;
            }
        }
        return null;
    }

    int l() {
        Iterator it = this.f27791b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((c) it.next()).f27807e) {
                i10++;
            }
        }
        return this.f27791b.size() - i10;
    }

    private f(float f10, List list, int i10, int i11) {
        this.f27790a = f10;
        this.f27791b = Collections.unmodifiableList(list);
        this.f27792c = i10;
        this.f27793d = i11;
    }
}

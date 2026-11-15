package com.yandex.div.internal.widget.indicator;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import defpackage.d81;
import defpackage.dn9;
import defpackage.e74;
import defpackage.i81;
import defpackage.oy0;
import defpackage.pdc;
import defpackage.pz4;
import defpackage.q15;
import defpackage.s15;
import defpackage.sz4;
import defpackage.vn8;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class IndicatorsStripDrawer {
    public final sz4 a;
    public final dn9 b;
    public final pz4 c;
    public final View d;
    public final IndicatorsRibbon e;
    public int f;
    public int g;
    public float h;
    public float i;
    public float j;
    public int k;
    public int l;
    public int m;
    public float n;

    public final class IndicatorsRibbon {
        public final List a = new ArrayList();
        public final List b = new ArrayList();

        public IndicatorsRibbon() {
        }

        public final float a(int i, float f) {
            float fD;
            if (this.a.size() <= IndicatorsStripDrawer.this.g) {
                return (IndicatorsStripDrawer.this.k / 2.0f) - (((a) i81.A0(this.a)).h() / 2);
            }
            float f2 = IndicatorsStripDrawer.this.k / 2.0f;
            float fD2 = 0.0f;
            if (pdc.f(IndicatorsStripDrawer.this.d)) {
                if (i != -1) {
                    List list = this.a;
                    fD2 = ((a) list.get((list.size() - 1) - i)).d();
                }
                fD = (f2 - fD2) + (IndicatorsStripDrawer.this.i * f);
            } else {
                fD = (f2 - (i != -1 ? ((a) this.a.get(i)).d() : 0.0f)) - (IndicatorsStripDrawer.this.i * f);
            }
            return IndicatorsStripDrawer.this.g % 2 == 0 ? fD + (IndicatorsStripDrawer.this.i / 2) : fD;
        }

        public final float b(float f) {
            float f2 = IndicatorsStripDrawer.this.i + 0.0f;
            if (f > f2) {
                f = wn8.f(IndicatorsStripDrawer.this.k - f, f2);
            }
            if (f > f2) {
                return 1.0f;
            }
            return wn8.j(f / (f2 - 0.0f), 0.0f, 1.0f);
        }

        public final void c(List list) {
            int iNextIndex;
            a aVar;
            IndicatorsStripDrawer indicatorsStripDrawer = IndicatorsStripDrawer.this;
            int i = 0;
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    y71.u();
                }
                a aVar2 = (a) obj;
                float fB = b(aVar2.d());
                list.set(i2, (aVar2.g() == 0 || aVar2.g() == indicatorsStripDrawer.f + (-1) || aVar2.c()) ? a.b(aVar2, 0, false, 0.0f, null, fB, 15, null) : g(aVar2, fB));
                i2 = i3;
            }
            Iterator it = list.iterator();
            int i4 = 0;
            while (true) {
                iNextIndex = -1;
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                } else if (((a) it.next()).i() == 1.0f) {
                    break;
                } else {
                    i4++;
                }
            }
            Integer numValueOf = Integer.valueOf(i4);
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                ListIterator listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    if (((a) listIterator.previous()).i() == 1.0f) {
                        iNextIndex = listIterator.nextIndex();
                        break;
                    }
                }
                Integer numValueOf2 = Integer.valueOf(iNextIndex);
                Integer num = numValueOf2.intValue() >= 0 ? numValueOf2 : null;
                if (num != null) {
                    int i5 = iIntValue - 1;
                    int iIntValue2 = num.intValue() + 1;
                    IndicatorsStripDrawer indicatorsStripDrawer2 = IndicatorsStripDrawer.this;
                    for (Object obj2 : list) {
                        int i6 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        a aVar3 = (a) obj2;
                        if (i < i5) {
                            a aVar4 = (a) i81.r0(list, i5);
                            if (aVar4 != null) {
                                list.set(i, a.b(aVar3, 0, false, aVar3.d() - (indicatorsStripDrawer2.i * (1.0f - aVar4.i())), null, 0.0f, 27, null));
                                if (i <= iIntValue2) {
                                }
                            }
                        } else if (i <= iIntValue2 && (aVar = (a) i81.r0(list, iIntValue2)) != null) {
                            list.set(i, a.b(aVar3, 0, false, aVar3.d() + (indicatorsStripDrawer2.i * (1.0f - aVar.i())), null, 0.0f, 27, null));
                        }
                        i = i6;
                    }
                }
            }
        }

        public final List d() {
            return this.b;
        }

        public final void e(int i, float f) {
            this.a.clear();
            this.b.clear();
            if (IndicatorsStripDrawer.this.f <= 0) {
                return;
            }
            s15 s15VarC = pdc.c(IndicatorsStripDrawer.this.d, 0, IndicatorsStripDrawer.this.f);
            int iB = s15VarC.b();
            IndicatorsStripDrawer indicatorsStripDrawer = IndicatorsStripDrawer.this;
            Iterator it = s15VarC.iterator();
            while (it.hasNext()) {
                int iNextInt = ((q15) it).nextInt();
                b bVarL = indicatorsStripDrawer.l(iNextInt);
                this.a.add(new a(iNextInt, iNextInt == i, iNextInt == iB ? bVarL.b() / 2.0f : ((a) i81.A0(this.a)).d() + indicatorsStripDrawer.i, bVarL, 0.0f, 16, null));
            }
            this.b.addAll(f(i, f));
        }

        public final List f(int i, float f) {
            float fA = a(i, f);
            List<a> list = this.a;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            for (a aVar : list) {
                arrayList.add(a.b(aVar, 0, false, aVar.d() + fA, null, 0.0f, 27, null));
            }
            List listE1 = i81.e1(arrayList);
            if (listE1.size() <= IndicatorsStripDrawer.this.g) {
                return listE1;
            }
            final oy0 oy0VarB = vn8.b(0.0f, IndicatorsStripDrawer.this.k);
            int i2 = 0;
            if (oy0VarB.contains(Float.valueOf(((a) i81.o0(listE1)).f()))) {
                float f2 = -((a) i81.o0(listE1)).f();
                for (Object obj : listE1) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        y71.u();
                    }
                    a aVar2 = (a) obj;
                    listE1.set(i2, a.b(aVar2, 0, false, aVar2.d() + f2, null, 0.0f, 27, null));
                    i2 = i3;
                }
            } else if (oy0VarB.contains(Float.valueOf(((a) i81.A0(listE1)).h()))) {
                float fH = IndicatorsStripDrawer.this.k - ((a) i81.A0(listE1)).h();
                for (Object obj2 : listE1) {
                    int i4 = i2 + 1;
                    if (i2 < 0) {
                        y71.u();
                    }
                    a aVar3 = (a) obj2;
                    listE1.set(i2, a.b(aVar3, 0, false, aVar3.d() + fH, null, 0.0f, 27, null));
                    i2 = i4;
                }
            }
            d81.I(listE1, new e74() {
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(IndicatorsStripDrawer.a aVar4) {
                    y45.j(aVar4, "it");
                    return Boolean.valueOf(!oy0VarB.contains(Float.valueOf(aVar4.d())));
                }
            });
            c(listE1);
            return listE1;
        }

        public final a g(a aVar, float f) {
            b bVarE = aVar.e();
            float fB = bVarE.b() * f;
            if (fB <= IndicatorsStripDrawer.this.a.e().d().b()) {
                return a.b(aVar, 0, false, 0.0f, IndicatorsStripDrawer.this.a.e().d(), f, 7, null);
            }
            if (fB >= bVarE.b()) {
                return aVar;
            }
            if (bVarE instanceof b.C0303b) {
                b.C0303b c0303b = (b.C0303b) bVarE;
                return a.b(aVar, 0, false, 0.0f, b.C0303b.d(c0303b, fB, c0303b.f() * (fB / c0303b.g()), 0.0f, 4, null), f, 7, null);
            }
            if (bVarE instanceof b.a) {
                return a.b(aVar, 0, false, 0.0f, ((b.a) bVarE).c((bVarE.b() * f) / 2.0f), f, 7, null);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public IndicatorsStripDrawer(sz4 sz4Var, dn9 dn9Var, pz4 pz4Var, View view) {
        y45.j(sz4Var, "styleParams");
        y45.j(dn9Var, "singleIndicatorDrawer");
        y45.j(pz4Var, "animator");
        y45.j(view, "view");
        this.a = sz4Var;
        this.b = dn9Var;
        this.c = pz4Var;
        this.d = view;
        this.e = new IndicatorsRibbon();
        this.h = sz4Var.c().d().b();
        this.j = 1.0f;
    }

    public final void h() {
        com.yandex.div.internal.widget.indicator.a aVarD = this.a.d();
        if (aVarD instanceof com.yandex.div.internal.widget.indicator.a.C0302a) {
            this.i = ((com.yandex.div.internal.widget.indicator.a.C0302a) aVarD).a();
            this.j = 1.0f;
        } else if (aVarD instanceof com.yandex.div.internal.widget.indicator.a.b) {
            com.yandex.div.internal.widget.indicator.a.b bVar = (com.yandex.div.internal.widget.indicator.a.b) aVarD;
            float fA = (this.k + bVar.a()) / this.g;
            this.i = fA;
            this.j = (fA - bVar.a()) / this.a.a().d().b();
        }
        this.c.a(this.i);
    }

    public final void i(int i, float f) {
        this.e.e(i, f);
    }

    public final void j() {
        int iB;
        com.yandex.div.internal.widget.indicator.a aVarD = this.a.d();
        if (aVarD instanceof com.yandex.div.internal.widget.indicator.a.C0302a) {
            iB = (int) (this.k / ((com.yandex.div.internal.widget.indicator.a.C0302a) aVarD).a());
        } else {
            if (!(aVarD instanceof com.yandex.div.internal.widget.indicator.a.b)) {
                throw new NoWhenBranchMatchedException();
            }
            iB = ((com.yandex.div.internal.widget.indicator.a.b) aVarD).b();
        }
        this.g = wn8.g(iB, this.f);
    }

    public final void k(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.k = i;
        this.l = i2;
        j();
        h();
        this.h = i2 / 2.0f;
        i(this.m, this.n);
    }

    public final b l(int i) {
        b bVarF = this.c.f(i);
        if (this.j == 1.0f || !(bVarF instanceof b.C0303b)) {
            return bVarF;
        }
        b.C0303b c0303b = (b.C0303b) bVarF;
        b.C0303b c0303bD = b.C0303b.d(c0303b, c0303b.g() * this.j, 0.0f, 0.0f, 6, null);
        this.c.d(c0303bD.g());
        return c0303bD;
    }

    public final void m(Canvas canvas) {
        Object next;
        RectF rectFC;
        y45.j(canvas, "canvas");
        for (a aVar : this.e.d()) {
            this.b.b(canvas, aVar.d(), this.h, aVar.e(), this.c.i(aVar.g()), this.c.e(aVar.g()), this.c.g(aVar.g()));
        }
        Iterator it = this.e.d().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((a) next).c());
        a aVar2 = (a) next;
        if (aVar2 == null || (rectFC = this.c.c(aVar2.d(), this.h, this.k, pdc.f(this.d))) == null) {
            return;
        }
        this.b.a(canvas, rectFC);
    }

    public final void n(int i, float f) {
        this.m = i;
        this.n = f;
        this.c.h(i, f);
        i(i, f);
    }

    public final void o(int i) {
        this.m = i;
        this.n = 0.0f;
        this.c.onPageSelected(i);
        i(i, 0.0f);
    }

    public final void p(int i) {
        this.f = i;
        this.c.b(i);
        j();
        this.h = this.l / 2.0f;
    }

    public static final class a {
        public final int a;
        public final boolean b;
        public final float c;
        public final b d;
        public final float e;

        public a(int i, boolean z, float f, b bVar, float f2) {
            y45.j(bVar, "itemSize");
            this.a = i;
            this.b = z;
            this.c = f;
            this.d = bVar;
            this.e = f2;
        }

        public static a b(a aVar, int i, boolean z, float f, b bVar, float f2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = aVar.a;
            }
            if ((i2 & 2) != 0) {
                z = aVar.b;
            }
            boolean z2 = z;
            if ((i2 & 4) != 0) {
                f = aVar.c;
            }
            float f3 = f;
            if ((i2 & 8) != 0) {
                bVar = aVar.d;
            }
            b bVar2 = bVar;
            if ((i2 & 16) != 0) {
                f2 = aVar.e;
            }
            return aVar.a(i, z2, f3, bVar2, f2);
        }

        public final a a(int i, boolean z, float f, b bVar, float f2) {
            y45.j(bVar, "itemSize");
            return new a(i, z, f, bVar, f2);
        }

        public final boolean c() {
            return this.b;
        }

        public final float d() {
            return this.c;
        }

        public final b e() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && Float.compare(this.c, aVar.c) == 0 && y45.e(this.d, aVar.d) && Float.compare(this.e, aVar.e) == 0;
        }

        public final float f() {
            return this.c - (this.d.b() / 2.0f);
        }

        public final int g() {
            return this.a;
        }

        public final float h() {
            return this.c + (this.d.b() / 2.0f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        public int hashCode() {
            int iHashCode = Integer.hashCode(this.a) * 31;
            boolean z = this.b;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((((((iHashCode + r1) * 31) + Float.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Float.hashCode(this.e);
        }

        public final float i() {
            return this.e;
        }

        public String toString() {
            return "Indicator(position=" + this.a + ", active=" + this.b + ", centerOffset=" + this.c + ", itemSize=" + this.d + ", scaleFactor=" + this.e + ')';
        }

        public a(int i, boolean z, float f, b bVar, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, z, f, bVar, (i2 & 16) != 0 ? 1.0f : f2);
        }
    }
}

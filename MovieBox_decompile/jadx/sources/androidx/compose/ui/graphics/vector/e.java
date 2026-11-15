package androidx.compose.ui.graphics.vector;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e {

    private final boolean f4470a;

    private final boolean f4471b;

    public static final class a extends e {

        private final float f4472c;

        private final float f4473d;

        private final float f4474e;

        private final boolean f4475f;

        private final boolean f4476g;

        private final float f4477h;

        private final float f4478i;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            boolean z12 = false;
            super(z12, z12, 3, null);
            this.f4472c = f10;
            this.f4473d = f11;
            this.f4474e = f12;
            this.f4475f = z10;
            this.f4476g = z11;
            this.f4477h = f13;
            this.f4478i = f14;
        }

        public final float c() {
            return this.f4477h;
        }

        public final float d() {
            return this.f4478i;
        }

        public final float e() {
            return this.f4472c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.f4472c, aVar.f4472c) == 0 && Float.compare(this.f4473d, aVar.f4473d) == 0 && Float.compare(this.f4474e, aVar.f4474e) == 0 && this.f4475f == aVar.f4475f && this.f4476g == aVar.f4476g && Float.compare(this.f4477h, aVar.f4477h) == 0 && Float.compare(this.f4478i, aVar.f4478i) == 0;
        }

        public final float f() {
            return this.f4474e;
        }

        public final float g() {
            return this.f4473d;
        }

        public final boolean h() {
            return this.f4475f;
        }

        public int hashCode() {
            return (((((((((((Float.floatToIntBits(this.f4472c) * 31) + Float.floatToIntBits(this.f4473d)) * 31) + Float.floatToIntBits(this.f4474e)) * 31) + androidx.compose.foundation.e.a(this.f4475f)) * 31) + androidx.compose.foundation.e.a(this.f4476g)) * 31) + Float.floatToIntBits(this.f4477h)) * 31) + Float.floatToIntBits(this.f4478i);
        }

        public final boolean i() {
            return this.f4476g;
        }

        public String toString() {
            return "ArcTo(horizontalEllipseRadius=" + this.f4472c + ", verticalEllipseRadius=" + this.f4473d + ", theta=" + this.f4474e + ", isMoreThanHalf=" + this.f4475f + ", isPositiveArc=" + this.f4476g + ", arcStartX=" + this.f4477h + ", arcStartY=" + this.f4478i + ')';
        }
    }

    public static final class b extends e {

        public static final b f4479c = new b();

        /* JADX WARN: Illegal instructions before constructor call */
        private b() {
            boolean z10 = false;
            super(z10, z10, 3, null);
        }
    }

    public static final class c extends e {

        private final float f4480c;

        private final float f4481d;

        private final float f4482e;

        private final float f4483f;

        private final float f4484g;

        private final float f4485h;

        public c(float f10, float f11, float f12, float f13, float f14, float f15) {
            super(true, false, 2, null);
            this.f4480c = f10;
            this.f4481d = f11;
            this.f4482e = f12;
            this.f4483f = f13;
            this.f4484g = f14;
            this.f4485h = f15;
        }

        public final float c() {
            return this.f4480c;
        }

        public final float d() {
            return this.f4482e;
        }

        public final float e() {
            return this.f4484g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Float.compare(this.f4480c, cVar.f4480c) == 0 && Float.compare(this.f4481d, cVar.f4481d) == 0 && Float.compare(this.f4482e, cVar.f4482e) == 0 && Float.compare(this.f4483f, cVar.f4483f) == 0 && Float.compare(this.f4484g, cVar.f4484g) == 0 && Float.compare(this.f4485h, cVar.f4485h) == 0;
        }

        public final float f() {
            return this.f4481d;
        }

        public final float g() {
            return this.f4483f;
        }

        public final float h() {
            return this.f4485h;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.f4480c) * 31) + Float.floatToIntBits(this.f4481d)) * 31) + Float.floatToIntBits(this.f4482e)) * 31) + Float.floatToIntBits(this.f4483f)) * 31) + Float.floatToIntBits(this.f4484g)) * 31) + Float.floatToIntBits(this.f4485h);
        }

        public String toString() {
            return "CurveTo(x1=" + this.f4480c + ", y1=" + this.f4481d + ", x2=" + this.f4482e + ", y2=" + this.f4483f + ", x3=" + this.f4484g + ", y3=" + this.f4485h + ')';
        }
    }

    public static final class d extends e {

        private final float f4486c;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(float f10) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4486c = f10;
        }

        public final float c() {
            return this.f4486c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Float.compare(this.f4486c, ((d) obj).f4486c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4486c);
        }

        public String toString() {
            return "HorizontalTo(x=" + this.f4486c + ')';
        }
    }

    public static final class C0041e extends e {

        private final float f4487c;

        private final float f4488d;

        /* JADX WARN: Illegal instructions before constructor call */
        public C0041e(float f10, float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4487c = f10;
            this.f4488d = f11;
        }

        public final float c() {
            return this.f4487c;
        }

        public final float d() {
            return this.f4488d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0041e)) {
                return false;
            }
            C0041e c0041e = (C0041e) obj;
            return Float.compare(this.f4487c, c0041e.f4487c) == 0 && Float.compare(this.f4488d, c0041e.f4488d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4487c) * 31) + Float.floatToIntBits(this.f4488d);
        }

        public String toString() {
            return "LineTo(x=" + this.f4487c + ", y=" + this.f4488d + ')';
        }
    }

    public static final class f extends e {

        private final float f4489c;

        private final float f4490d;

        /* JADX WARN: Illegal instructions before constructor call */
        public f(float f10, float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4489c = f10;
            this.f4490d = f11;
        }

        public final float c() {
            return this.f4489c;
        }

        public final float d() {
            return this.f4490d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return Float.compare(this.f4489c, fVar.f4489c) == 0 && Float.compare(this.f4490d, fVar.f4490d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4489c) * 31) + Float.floatToIntBits(this.f4490d);
        }

        public String toString() {
            return "MoveTo(x=" + this.f4489c + ", y=" + this.f4490d + ')';
        }
    }

    public static final class g extends e {

        private final float f4491c;

        private final float f4492d;

        private final float f4493e;

        private final float f4494f;

        public g(float f10, float f11, float f12, float f13) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4491c = f10;
            this.f4492d = f11;
            this.f4493e = f12;
            this.f4494f = f13;
        }

        public final float c() {
            return this.f4491c;
        }

        public final float d() {
            return this.f4493e;
        }

        public final float e() {
            return this.f4492d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return Float.compare(this.f4491c, gVar.f4491c) == 0 && Float.compare(this.f4492d, gVar.f4492d) == 0 && Float.compare(this.f4493e, gVar.f4493e) == 0 && Float.compare(this.f4494f, gVar.f4494f) == 0;
        }

        public final float f() {
            return this.f4494f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4491c) * 31) + Float.floatToIntBits(this.f4492d)) * 31) + Float.floatToIntBits(this.f4493e)) * 31) + Float.floatToIntBits(this.f4494f);
        }

        public String toString() {
            return "QuadTo(x1=" + this.f4491c + ", y1=" + this.f4492d + ", x2=" + this.f4493e + ", y2=" + this.f4494f + ')';
        }
    }

    public static final class h extends e {

        private final float f4495c;

        private final float f4496d;

        private final float f4497e;

        private final float f4498f;

        public h(float f10, float f11, float f12, float f13) {
            super(true, false, 2, null);
            this.f4495c = f10;
            this.f4496d = f11;
            this.f4497e = f12;
            this.f4498f = f13;
        }

        public final float c() {
            return this.f4495c;
        }

        public final float d() {
            return this.f4497e;
        }

        public final float e() {
            return this.f4496d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Float.compare(this.f4495c, hVar.f4495c) == 0 && Float.compare(this.f4496d, hVar.f4496d) == 0 && Float.compare(this.f4497e, hVar.f4497e) == 0 && Float.compare(this.f4498f, hVar.f4498f) == 0;
        }

        public final float f() {
            return this.f4498f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4495c) * 31) + Float.floatToIntBits(this.f4496d)) * 31) + Float.floatToIntBits(this.f4497e)) * 31) + Float.floatToIntBits(this.f4498f);
        }

        public String toString() {
            return "ReflectiveCurveTo(x1=" + this.f4495c + ", y1=" + this.f4496d + ", x2=" + this.f4497e + ", y2=" + this.f4498f + ')';
        }
    }

    public static final class i extends e {

        private final float f4499c;

        private final float f4500d;

        public i(float f10, float f11) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4499c = f10;
            this.f4500d = f11;
        }

        public final float c() {
            return this.f4499c;
        }

        public final float d() {
            return this.f4500d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Float.compare(this.f4499c, iVar.f4499c) == 0 && Float.compare(this.f4500d, iVar.f4500d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4499c) * 31) + Float.floatToIntBits(this.f4500d);
        }

        public String toString() {
            return "ReflectiveQuadTo(x=" + this.f4499c + ", y=" + this.f4500d + ')';
        }
    }

    public static final class j extends e {

        private final float f4501c;

        private final float f4502d;

        private final float f4503e;

        private final boolean f4504f;

        private final boolean f4505g;

        private final float f4506h;

        private final float f4507i;

        /* JADX WARN: Illegal instructions before constructor call */
        public j(float f10, float f11, float f12, boolean z10, boolean z11, float f13, float f14) {
            boolean z12 = false;
            super(z12, z12, 3, null);
            this.f4501c = f10;
            this.f4502d = f11;
            this.f4503e = f12;
            this.f4504f = z10;
            this.f4505g = z11;
            this.f4506h = f13;
            this.f4507i = f14;
        }

        public final float c() {
            return this.f4506h;
        }

        public final float d() {
            return this.f4507i;
        }

        public final float e() {
            return this.f4501c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return Float.compare(this.f4501c, jVar.f4501c) == 0 && Float.compare(this.f4502d, jVar.f4502d) == 0 && Float.compare(this.f4503e, jVar.f4503e) == 0 && this.f4504f == jVar.f4504f && this.f4505g == jVar.f4505g && Float.compare(this.f4506h, jVar.f4506h) == 0 && Float.compare(this.f4507i, jVar.f4507i) == 0;
        }

        public final float f() {
            return this.f4503e;
        }

        public final float g() {
            return this.f4502d;
        }

        public final boolean h() {
            return this.f4504f;
        }

        public int hashCode() {
            return (((((((((((Float.floatToIntBits(this.f4501c) * 31) + Float.floatToIntBits(this.f4502d)) * 31) + Float.floatToIntBits(this.f4503e)) * 31) + androidx.compose.foundation.e.a(this.f4504f)) * 31) + androidx.compose.foundation.e.a(this.f4505g)) * 31) + Float.floatToIntBits(this.f4506h)) * 31) + Float.floatToIntBits(this.f4507i);
        }

        public final boolean i() {
            return this.f4505g;
        }

        public String toString() {
            return "RelativeArcTo(horizontalEllipseRadius=" + this.f4501c + ", verticalEllipseRadius=" + this.f4502d + ", theta=" + this.f4503e + ", isMoreThanHalf=" + this.f4504f + ", isPositiveArc=" + this.f4505g + ", arcStartDx=" + this.f4506h + ", arcStartDy=" + this.f4507i + ')';
        }
    }

    public static final class k extends e {

        private final float f4508c;

        private final float f4509d;

        private final float f4510e;

        private final float f4511f;

        private final float f4512g;

        private final float f4513h;

        public k(float f10, float f11, float f12, float f13, float f14, float f15) {
            super(true, false, 2, null);
            this.f4508c = f10;
            this.f4509d = f11;
            this.f4510e = f12;
            this.f4511f = f13;
            this.f4512g = f14;
            this.f4513h = f15;
        }

        public final float c() {
            return this.f4508c;
        }

        public final float d() {
            return this.f4510e;
        }

        public final float e() {
            return this.f4512g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return Float.compare(this.f4508c, kVar.f4508c) == 0 && Float.compare(this.f4509d, kVar.f4509d) == 0 && Float.compare(this.f4510e, kVar.f4510e) == 0 && Float.compare(this.f4511f, kVar.f4511f) == 0 && Float.compare(this.f4512g, kVar.f4512g) == 0 && Float.compare(this.f4513h, kVar.f4513h) == 0;
        }

        public final float f() {
            return this.f4509d;
        }

        public final float g() {
            return this.f4511f;
        }

        public final float h() {
            return this.f4513h;
        }

        public int hashCode() {
            return (((((((((Float.floatToIntBits(this.f4508c) * 31) + Float.floatToIntBits(this.f4509d)) * 31) + Float.floatToIntBits(this.f4510e)) * 31) + Float.floatToIntBits(this.f4511f)) * 31) + Float.floatToIntBits(this.f4512g)) * 31) + Float.floatToIntBits(this.f4513h);
        }

        public String toString() {
            return "RelativeCurveTo(dx1=" + this.f4508c + ", dy1=" + this.f4509d + ", dx2=" + this.f4510e + ", dy2=" + this.f4511f + ", dx3=" + this.f4512g + ", dy3=" + this.f4513h + ')';
        }
    }

    public static final class l extends e {

        private final float f4514c;

        /* JADX WARN: Illegal instructions before constructor call */
        public l(float f10) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4514c = f10;
        }

        public final float c() {
            return this.f4514c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && Float.compare(this.f4514c, ((l) obj).f4514c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4514c);
        }

        public String toString() {
            return "RelativeHorizontalTo(dx=" + this.f4514c + ')';
        }
    }

    public static final class m extends e {

        private final float f4515c;

        private final float f4516d;

        /* JADX WARN: Illegal instructions before constructor call */
        public m(float f10, float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4515c = f10;
            this.f4516d = f11;
        }

        public final float c() {
            return this.f4515c;
        }

        public final float d() {
            return this.f4516d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            return Float.compare(this.f4515c, mVar.f4515c) == 0 && Float.compare(this.f4516d, mVar.f4516d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4515c) * 31) + Float.floatToIntBits(this.f4516d);
        }

        public String toString() {
            return "RelativeLineTo(dx=" + this.f4515c + ", dy=" + this.f4516d + ')';
        }
    }

    public static final class n extends e {

        private final float f4517c;

        private final float f4518d;

        /* JADX WARN: Illegal instructions before constructor call */
        public n(float f10, float f11) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4517c = f10;
            this.f4518d = f11;
        }

        public final float c() {
            return this.f4517c;
        }

        public final float d() {
            return this.f4518d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            return Float.compare(this.f4517c, nVar.f4517c) == 0 && Float.compare(this.f4518d, nVar.f4518d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4517c) * 31) + Float.floatToIntBits(this.f4518d);
        }

        public String toString() {
            return "RelativeMoveTo(dx=" + this.f4517c + ", dy=" + this.f4518d + ')';
        }
    }

    public static final class o extends e {

        private final float f4519c;

        private final float f4520d;

        private final float f4521e;

        private final float f4522f;

        public o(float f10, float f11, float f12, float f13) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4519c = f10;
            this.f4520d = f11;
            this.f4521e = f12;
            this.f4522f = f13;
        }

        public final float c() {
            return this.f4519c;
        }

        public final float d() {
            return this.f4521e;
        }

        public final float e() {
            return this.f4520d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof o)) {
                return false;
            }
            o oVar = (o) obj;
            return Float.compare(this.f4519c, oVar.f4519c) == 0 && Float.compare(this.f4520d, oVar.f4520d) == 0 && Float.compare(this.f4521e, oVar.f4521e) == 0 && Float.compare(this.f4522f, oVar.f4522f) == 0;
        }

        public final float f() {
            return this.f4522f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4519c) * 31) + Float.floatToIntBits(this.f4520d)) * 31) + Float.floatToIntBits(this.f4521e)) * 31) + Float.floatToIntBits(this.f4522f);
        }

        public String toString() {
            return "RelativeQuadTo(dx1=" + this.f4519c + ", dy1=" + this.f4520d + ", dx2=" + this.f4521e + ", dy2=" + this.f4522f + ')';
        }
    }

    public static final class p extends e {

        private final float f4523c;

        private final float f4524d;

        private final float f4525e;

        private final float f4526f;

        public p(float f10, float f11, float f12, float f13) {
            super(true, false, 2, null);
            this.f4523c = f10;
            this.f4524d = f11;
            this.f4525e = f12;
            this.f4526f = f13;
        }

        public final float c() {
            return this.f4523c;
        }

        public final float d() {
            return this.f4525e;
        }

        public final float e() {
            return this.f4524d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof p)) {
                return false;
            }
            p pVar = (p) obj;
            return Float.compare(this.f4523c, pVar.f4523c) == 0 && Float.compare(this.f4524d, pVar.f4524d) == 0 && Float.compare(this.f4525e, pVar.f4525e) == 0 && Float.compare(this.f4526f, pVar.f4526f) == 0;
        }

        public final float f() {
            return this.f4526f;
        }

        public int hashCode() {
            return (((((Float.floatToIntBits(this.f4523c) * 31) + Float.floatToIntBits(this.f4524d)) * 31) + Float.floatToIntBits(this.f4525e)) * 31) + Float.floatToIntBits(this.f4526f);
        }

        public String toString() {
            return "RelativeReflectiveCurveTo(dx1=" + this.f4523c + ", dy1=" + this.f4524d + ", dx2=" + this.f4525e + ", dy2=" + this.f4526f + ')';
        }
    }

    public static final class q extends e {

        private final float f4527c;

        private final float f4528d;

        public q(float f10, float f11) {
            super(false, true, 1 == true ? 1 : 0, null);
            this.f4527c = f10;
            this.f4528d = f11;
        }

        public final float c() {
            return this.f4527c;
        }

        public final float d() {
            return this.f4528d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof q)) {
                return false;
            }
            q qVar = (q) obj;
            return Float.compare(this.f4527c, qVar.f4527c) == 0 && Float.compare(this.f4528d, qVar.f4528d) == 0;
        }

        public int hashCode() {
            return (Float.floatToIntBits(this.f4527c) * 31) + Float.floatToIntBits(this.f4528d);
        }

        public String toString() {
            return "RelativeReflectiveQuadTo(dx=" + this.f4527c + ", dy=" + this.f4528d + ')';
        }
    }

    public static final class r extends e {

        private final float f4529c;

        /* JADX WARN: Illegal instructions before constructor call */
        public r(float f10) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4529c = f10;
        }

        public final float c() {
            return this.f4529c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof r) && Float.compare(this.f4529c, ((r) obj).f4529c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4529c);
        }

        public String toString() {
            return "RelativeVerticalTo(dy=" + this.f4529c + ')';
        }
    }

    public static final class s extends e {

        private final float f4530c;

        /* JADX WARN: Illegal instructions before constructor call */
        public s(float f10) {
            boolean z10 = false;
            super(z10, z10, 3, null);
            this.f4530c = f10;
        }

        public final float c() {
            return this.f4530c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof s) && Float.compare(this.f4530c, ((s) obj).f4530c) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f4530c);
        }

        public String toString() {
            return "VerticalTo(y=" + this.f4530c + ')';
        }
    }

    public e(boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11);
    }

    public final boolean a() {
        return this.f4470a;
    }

    public final boolean b() {
        return this.f4471b;
    }

    private e(boolean z10, boolean z11) {
        this.f4470a = z10;
        this.f4471b = z11;
    }

    public e(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, null);
    }
}

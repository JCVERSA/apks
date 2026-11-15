package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final b f4437k = new b(null);

    private static int f4438l;

    private final String f4439a;

    private final float f4440b;

    private final float f4441c;

    private final float f4442d;

    private final float f4443e;

    private final j f4444f;

    private final long f4445g;

    private final int f4446h;

    private final boolean f4447i;

    private final int f4448j;

    public static final class a {

        private final String f4449a;

        private final float f4450b;

        private final float f4451c;

        private final float f4452d;

        private final float f4453e;

        private final long f4454f;

        private final int f4455g;

        private final boolean f4456h;

        private final ArrayList f4457i;

        private C0040a f4458j;

        private boolean f4459k;

        private static final class C0040a {

            private String f4460a;

            private float f4461b;

            private float f4462c;

            private float f4463d;

            private float f4464e;

            private float f4465f;

            private float f4466g;

            private float f4467h;

            private List f4468i;

            private List f4469j;

            public C0040a() {
                this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            }

            public final List a() {
                return this.f4469j;
            }

            public final List b() {
                return this.f4468i;
            }

            public final String c() {
                return this.f4460a;
            }

            public final float d() {
                return this.f4462c;
            }

            public final float e() {
                return this.f4463d;
            }

            public final float f() {
                return this.f4461b;
            }

            public final float g() {
                return this.f4464e;
            }

            public final float h() {
                return this.f4465f;
            }

            public final float i() {
                return this.f4466g;
            }

            public final float j() {
                return this.f4467h;
            }

            public C0040a(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2) {
                this.f4460a = str;
                this.f4461b = f10;
                this.f4462c = f11;
                this.f4463d = f12;
                this.f4464e = f13;
                this.f4465f = f14;
                this.f4466g = f15;
                this.f4467h = f16;
                this.f4468i = list;
                this.f4469j = list2;
            }

            public C0040a(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
                this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f10, (i10 & 4) != 0 ? 0.0f : f11, (i10 & 8) != 0 ? 0.0f : f12, (i10 & 16) != 0 ? 1.0f : f13, (i10 & 32) == 0 ? f14 : 1.0f, (i10 & 64) != 0 ? 0.0f : f15, (i10 & 128) == 0 ? f16 : 0.0f, (i10 & 256) != 0 ? k.d() : list, (i10 & 512) != 0 ? new ArrayList() : list2);
            }
        }

        public a(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, f10, f11, f12, f13, j10, i10, z10);
        }

        private final j d(C0040a c0040a) {
            return new j(c0040a.c(), c0040a.f(), c0040a.d(), c0040a.e(), c0040a.g(), c0040a.h(), c0040a.i(), c0040a.j(), c0040a.b(), c0040a.a());
        }

        private final void g() {
            if (this.f4459k) {
                g0.a.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
        }

        private final C0040a h() {
            return (C0040a) d.d(this.f4457i);
        }

        public final a a(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list) {
            g();
            d.f(this.f4457i, new C0040a(str, f10, f11, f12, f13, f14, f15, f16, list, null, 512, null));
            return this;
        }

        public final a c(List list, int i10, String str, j1 j1Var, float f10, j1 j1Var2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16) {
            g();
            h().a().add(new n(str, list, i10, j1Var, f10, j1Var2, f11, f12, i11, i12, f13, f14, f15, f16, null));
            return this;
        }

        public final c e() {
            g();
            while (this.f4457i.size() > 1) {
                f();
            }
            c cVar = new c(this.f4449a, this.f4450b, this.f4451c, this.f4452d, this.f4453e, d(this.f4458j), this.f4454f, this.f4455g, this.f4456h, 0, 512, null);
            this.f4459k = true;
            return cVar;
        }

        public final a f() {
            g();
            h().a().add(d((C0040a) d.e(this.f4457i)));
            return this;
        }

        private a(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10) {
            this.f4449a = str;
            this.f4450b = f10;
            this.f4451c = f11;
            this.f4452d = f12;
            this.f4453e = f13;
            this.f4454f = j10;
            this.f4455g = i10;
            this.f4456h = z10;
            ArrayList arrayList = new ArrayList();
            this.f4457i = arrayList;
            C0040a c0040a = new C0040a(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            this.f4458j = c0040a;
            d.f(arrayList, c0040a);
        }

        public a(String str, float f10, float f11, float f12, float f13, long j10, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? "" : str, f10, f11, f12, f13, (i11 & 32) != 0 ? u1.f4349b.e() : j10, (i11 & 64) != 0 ? c1.f3983a.z() : i10, (i11 & 128) != 0 ? false : z10, null);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            int i10;
            synchronized (this) {
                i10 = c.f4438l;
                c.f4438l = i10 + 1;
            }
            return i10;
        }

        private b() {
        }
    }

    public c(String str, float f10, float f11, float f12, float f13, j jVar, long j10, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, f10, f11, f12, f13, jVar, j10, i10, z10, i11);
    }

    public final boolean c() {
        return this.f4447i;
    }

    public final float d() {
        return this.f4441c;
    }

    public final float e() {
        return this.f4440b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f4439a, cVar.f4439a) && o0.i.i(this.f4440b, cVar.f4440b) && o0.i.i(this.f4441c, cVar.f4441c) && this.f4442d == cVar.f4442d && this.f4443e == cVar.f4443e && Intrinsics.c(this.f4444f, cVar.f4444f) && u1.m(this.f4445g, cVar.f4445g) && c1.E(this.f4446h, cVar.f4446h) && this.f4447i == cVar.f4447i;
    }

    public final int f() {
        return this.f4448j;
    }

    public final String g() {
        return this.f4439a;
    }

    public final j h() {
        return this.f4444f;
    }

    public int hashCode() {
        return (((((((((((((((this.f4439a.hashCode() * 31) + o0.i.j(this.f4440b)) * 31) + o0.i.j(this.f4441c)) * 31) + Float.floatToIntBits(this.f4442d)) * 31) + Float.floatToIntBits(this.f4443e)) * 31) + this.f4444f.hashCode()) * 31) + u1.s(this.f4445g)) * 31) + c1.F(this.f4446h)) * 31) + androidx.compose.foundation.e.a(this.f4447i);
    }

    public final int i() {
        return this.f4446h;
    }

    public final long j() {
        return this.f4445g;
    }

    public final float k() {
        return this.f4443e;
    }

    public final float l() {
        return this.f4442d;
    }

    private c(String str, float f10, float f11, float f12, float f13, j jVar, long j10, int i10, boolean z10, int i11) {
        this.f4439a = str;
        this.f4440b = f10;
        this.f4441c = f11;
        this.f4442d = f12;
        this.f4443e = f13;
        this.f4444f = jVar;
        this.f4445g = j10;
        this.f4446h = i10;
        this.f4447i = z10;
        this.f4448j = i11;
    }

    public c(String str, float f10, float f11, float f12, float f13, j jVar, long j10, int i10, boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, f10, f11, f12, f13, jVar, j10, i10, z10, (i12 & 512) != 0 ? f4437k.a() : i11, null);
    }
}

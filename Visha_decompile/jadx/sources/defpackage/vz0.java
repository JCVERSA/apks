package defpackage;

import com.transsion.push.PushConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class vz0 {
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final ipa e;
    public final xfb f;
    public final int g;
    public final boolean h;
    public final int i;
    public final int j;
    public final int k;

    public static final class a {
        public String a;
        public boolean c;
        public boolean d;
        public ipa e;
        public xfb f;
        public int i;
        public int k;
        public String b = "visha";
        public int g = 3;
        public boolean h = true;
        public int j = 3;

        public final vz0 a() {
            if (this.a == null) {
                throw new IllegalArgumentException("AppId must be set");
            }
            if (this.e == null) {
                throw new IllegalArgumentException("TokenFetcher must be set");
            }
            if (this.f != null) {
                return new vz0(this, null);
            }
            throw new IllegalArgumentException("UniqueIdFetcher must be set");
        }

        public final String b() {
            String str = this.a;
            if (str != null) {
                return str;
            }
            y45.B(PushConstants.PROVIDER_FIELD_APP_ID);
            return null;
        }

        public final String c() {
            return this.b;
        }

        public final int d() {
            return this.k;
        }

        public final boolean e() {
            return this.h;
        }

        public final boolean f() {
            return this.d;
        }

        public final int g() {
            return this.j;
        }

        public final int h() {
            return this.g;
        }

        public final ipa i() {
            ipa ipaVar = this.e;
            if (ipaVar != null) {
                return ipaVar;
            }
            y45.B("tokenFetcher");
            return null;
        }

        public final xfb j() {
            xfb xfbVar = this.f;
            if (xfbVar != null) {
                return xfbVar;
            }
            y45.B("uniqueIdFetcher");
            return null;
        }

        public final int k() {
            return this.i;
        }

        public final boolean l() {
            return this.c;
        }

        public final a m(String str) {
            y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
            n(str);
            return this;
        }

        public final void n(String str) {
            y45.j(str, "<set-?>");
            this.a = str;
        }

        public final a o(String str) {
            this.b = str;
            return this;
        }

        public final a p(boolean z) {
            this.d = z;
            return this;
        }

        public final a q(boolean z) {
            this.c = z;
            return this;
        }

        public final a r(ipa ipaVar) {
            y45.j(ipaVar, "tokenFetcher");
            s(ipaVar);
            return this;
        }

        public final void s(ipa ipaVar) {
            y45.j(ipaVar, "<set-?>");
            this.e = ipaVar;
        }

        public final a t(xfb xfbVar) {
            y45.j(xfbVar, "uniqueIdFetcher");
            u(xfbVar);
            return this;
        }

        public final void u(xfb xfbVar) {
            y45.j(xfbVar, "<set-?>");
            this.f = xfbVar;
        }
    }

    public vz0(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final int c() {
        return this.k;
    }

    public final boolean d() {
        return this.h;
    }

    public final boolean e() {
        return this.d;
    }

    public final int f() {
        return this.j;
    }

    public final int g() {
        return this.g;
    }

    public final ipa h() {
        return this.e;
    }

    public final xfb i() {
        return this.f;
    }

    public final int j() {
        return this.i;
    }

    public final boolean k() {
        return this.c;
    }

    public vz0(a aVar) {
        this.a = aVar.b();
        this.b = aVar.c();
        this.c = aVar.l();
        this.d = aVar.f();
        this.e = aVar.i();
        this.f = aVar.j();
        this.g = aVar.h();
        this.h = aVar.e();
        this.i = aVar.k();
        this.j = aVar.g();
        this.k = aVar.d();
    }
}

package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;

public final class ied {
    public final long a;
    public final String b;
    public final boolean c;
    public final int d;
    public final boolean e;
    public final int f;
    public final boolean g;
    public final int h;
    public final d29 i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final double n;
    public final boolean o;
    public final int p;
    public final String q;
    public boolean r;
    public String s;
    public ConfigCodeSeatDTO t;
    public int u;
    public int v;
    public String w;
    public SSPWebPageReqInfo x;

    public static class b {
        public String a;
        public boolean b;
        public int c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;
        public d29 h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public double m;
        public boolean n;
        public int o;
        public String p;
        public int q;
        public String r;
        public SSPWebPageReqInfo s;
        public boolean t;
        public String u;

        public b() {
            this("");
        }

        public b a(int i) {
            if (i < 1) {
                i = 1;
            }
            this.e = i;
            return this;
        }

        public b b(w6 w6Var) {
            if (w6Var == null) {
                return this;
            }
            if (!this.t) {
                String strC = w6Var.c();
                if (!TextUtils.isEmpty(strC)) {
                    this.p = strC.replace("hisa-", "");
                }
            }
            if (w6Var.e() > 0) {
                this.q = w6Var.e();
            }
            if (w6Var.d() != -1) {
                this.o = w6Var.d();
            }
            this.n = w6Var.g();
            String strF = w6Var.f();
            if (!this.t && !TextUtils.isEmpty(strF)) {
                this.r = strF.replace("hisa-", "");
            }
            if (w6Var.b() > 0.0d) {
                this.m = w6Var.b();
            }
            return this;
        }

        public b c(d29 d29Var) {
            if (d29Var != null) {
                this.h = d29Var;
            }
            return this;
        }

        public b d(SSPWebPageReqInfo sSPWebPageReqInfo) {
            this.s = sSPWebPageReqInfo;
            return this;
        }

        public b e(String str) {
            this.a = str;
            return this;
        }

        public b f(boolean z) {
            this.t = z;
            return this;
        }

        public ied g() {
            return new ied(this);
        }

        public b i(int i) {
            this.g = i;
            return this;
        }

        public b j(String str) {
            this.u = str;
            return this;
        }

        public b k(boolean z) {
            this.d = z;
            return this;
        }

        public b m(int i) {
            this.c = i;
            return this;
        }

        public b n(boolean z) {
            this.l = z;
            return this;
        }

        public b p(boolean z) {
            this.f = z;
            return this;
        }

        public b s(boolean z) {
            this.b = z;
            return this;
        }

        public b t(boolean z) {
            this.k = z;
            return this;
        }

        public b w(boolean z) {
            this.j = z;
            return this;
        }

        public b(String str) {
            this.e = 1;
            this.i = true;
            this.j = false;
            this.k = false;
            this.l = false;
            this.n = false;
            this.t = false;
            this.p = DeviceUtil.p();
            this.q = 45000;
            if (TextUtils.isEmpty(str)) {
                this.r = uva.b();
            } else {
                this.r = str;
            }
            this.o = 1;
            this.h = new d29(null, null, null);
        }
    }

    public boolean A() {
        return this.o;
    }

    public int a() {
        return this.f;
    }

    public void b(int i) {
        this.u = i;
    }

    public void c(ConfigCodeSeatDTO configCodeSeatDTO) {
        this.t = configCodeSeatDTO;
    }

    public void d(String str) {
        this.w = str;
    }

    public int e() {
        return this.h;
    }

    public void f(String str) {
        this.s = str;
    }

    public ConfigCodeSeatDTO g() {
        ConfigCodeSeatDTO configCodeSeatDTO = this.t;
        return configCodeSeatDTO == null ? new ConfigCodeSeatDTO() : configCodeSeatDTO;
    }

    public long h() {
        return this.a;
    }

    public int i() {
        return this.d;
    }

    public String j() {
        return this.b;
    }

    public String k() {
        return this.w;
    }

    public int l() {
        return this.p;
    }

    public String m() {
        return this.s;
    }

    public d29 n() {
        return this.i;
    }

    public int o() {
        return this.v;
    }

    public String p() {
        return this.q;
    }

    public int q() {
        return this.u;
    }

    public SSPWebPageReqInfo r() {
        return this.x;
    }

    public boolean s() {
        return this.j;
    }

    public boolean t() {
        return this.r;
    }

    public boolean u() {
        return this.e;
    }

    public boolean v() {
        return this.m;
    }

    public boolean w() {
        return this.g;
    }

    public boolean x() {
        return this.c;
    }

    public boolean y() {
        return this.l;
    }

    public boolean z() {
        return this.k;
    }

    public ied(b bVar) {
        this.r = false;
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        this.e = bVar.d;
        this.f = bVar.e;
        this.g = bVar.f;
        this.h = bVar.g;
        this.i = bVar.h;
        this.j = bVar.i;
        this.k = bVar.j;
        this.l = bVar.k;
        this.m = bVar.l;
        this.n = bVar.m;
        this.o = bVar.n;
        this.p = bVar.o;
        this.w = bVar.p;
        this.q = bVar.r;
        this.v = bVar.q;
        this.a = System.currentTimeMillis();
        this.x = bVar.s;
        this.r = bVar.t;
        this.s = bVar.u;
    }
}

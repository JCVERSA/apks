package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;

public final class p3 {

    private final long f22136a;

    private final String f22137b;

    private final boolean f22138c;

    private final int f22139d;

    private final boolean f22140e;

    private final int f22141f;

    private final boolean f22142g;

    private final int f22143h;

    private final d7.b f22144i;

    private final boolean f22145j;

    private final boolean f22146k;

    private final boolean f22147l;

    private final boolean f22148m;

    private final double f22149n;

    private final boolean f22150o;

    private final int f22151p;

    private final String f22152q;

    private boolean f22153r;

    private ConfigCodeSeatDTO f22154s;

    private int f22155t;

    private int f22156u;

    private String f22157v;

    private SSPWebPageReqInfo f22158w;

    public static class b {

        private String f22159a;

        private boolean f22160b;

        private int f22161c;

        private boolean f22162d;

        private int f22163e;

        private boolean f22164f;

        private int f22165g;

        private d7.b f22166h;

        private boolean f22167i;

        private boolean f22168j;

        private boolean f22169k;

        private boolean f22170l;

        private double f22171m;

        private boolean f22172n;

        private int f22173o;

        private String f22174p;

        private int f22175q;

        private String f22176r;

        private SSPWebPageReqInfo f22177s;

        private boolean f22178t;

        public b() {
            this("");
        }

        public b a(int i10) {
            if (i10 < 1) {
                i10 = 1;
            }
            this.f22163e = i10;
            return this;
        }

        public b b(SSPWebPageReqInfo sSPWebPageReqInfo) {
            this.f22177s = sSPWebPageReqInfo;
            return this;
        }

        public b c(d7.a aVar) {
            if (aVar == null) {
                return this;
            }
            if (!this.f22178t) {
                String strC = aVar.c();
                if (!TextUtils.isEmpty(strC)) {
                    this.f22174p = strC.replace("hisa-", "");
                }
            }
            if (aVar.e() > 0) {
                this.f22175q = aVar.e();
            }
            if (aVar.d() != -1) {
                this.f22173o = aVar.d();
            }
            this.f22172n = aVar.g();
            String strF = aVar.f();
            if (!this.f22178t && !TextUtils.isEmpty(strF)) {
                this.f22176r = strF.replace("hisa-", "");
            }
            if (aVar.b() > 0.0d) {
                this.f22171m = aVar.b();
            }
            return this;
        }

        public b d(d7.b bVar) {
            if (bVar != null) {
                this.f22166h = bVar;
            }
            return this;
        }

        public b e(String str) {
            this.f22159a = str;
            return this;
        }

        public b f(boolean z10) {
            this.f22178t = z10;
            return this;
        }

        public p3 g() {
            return new p3(this);
        }

        public b i(int i10) {
            this.f22165g = i10;
            return this;
        }

        public b j(boolean z10) {
            this.f22162d = z10;
            return this;
        }

        public b l(int i10) {
            this.f22161c = i10;
            return this;
        }

        public b m(boolean z10) {
            this.f22170l = z10;
            return this;
        }

        public b o(boolean z10) {
            this.f22164f = z10;
            return this;
        }

        public b r(boolean z10) {
            this.f22160b = z10;
            return this;
        }

        public b s(boolean z10) {
            this.f22169k = z10;
            return this;
        }

        public b v(boolean z10) {
            this.f22168j = z10;
            return this;
        }

        public b(String str) {
            this.f22163e = 1;
            this.f22167i = true;
            this.f22168j = false;
            this.f22169k = false;
            this.f22170l = false;
            this.f22172n = false;
            this.f22178t = false;
            this.f22174p = DeviceUtil.o();
            this.f22175q = 45000;
            if (TextUtils.isEmpty(str)) {
                this.f22176r = com.cloud.hisavana.sdk.common.util.l0.b();
            } else {
                this.f22176r = str;
            }
            this.f22173o = 1;
            this.f22166h = new d7.b(null, null, null);
        }
    }

    public int a() {
        return this.f22141f;
    }

    public void b(int i10) {
        this.f22155t = i10;
    }

    public void c(ConfigCodeSeatDTO configCodeSeatDTO) {
        this.f22154s = configCodeSeatDTO;
    }

    public void d(String str) {
        this.f22157v = str;
    }

    public int e() {
        return this.f22143h;
    }

    public ConfigCodeSeatDTO f() {
        ConfigCodeSeatDTO configCodeSeatDTO = this.f22154s;
        return configCodeSeatDTO == null ? new ConfigCodeSeatDTO() : configCodeSeatDTO;
    }

    public long g() {
        return this.f22136a;
    }

    public int h() {
        return this.f22139d;
    }

    public String i() {
        return this.f22137b;
    }

    public String j() {
        return this.f22157v;
    }

    public int k() {
        return this.f22151p;
    }

    public d7.b l() {
        return this.f22144i;
    }

    public int m() {
        return this.f22156u;
    }

    public String n() {
        return this.f22152q;
    }

    public int o() {
        return this.f22155t;
    }

    public SSPWebPageReqInfo p() {
        return this.f22158w;
    }

    public boolean q() {
        return this.f22145j;
    }

    public boolean r() {
        return this.f22153r;
    }

    public boolean s() {
        return this.f22140e;
    }

    public boolean t() {
        return this.f22148m;
    }

    public boolean u() {
        return this.f22142g;
    }

    public boolean v() {
        return this.f22138c;
    }

    public boolean w() {
        return this.f22147l;
    }

    public boolean x() {
        return this.f22146k;
    }

    public boolean y() {
        return this.f22150o;
    }

    private p3(b bVar) {
        this.f22153r = false;
        this.f22137b = bVar.f22159a;
        this.f22138c = bVar.f22160b;
        this.f22139d = bVar.f22161c;
        this.f22140e = bVar.f22162d;
        this.f22141f = bVar.f22163e;
        this.f22142g = bVar.f22164f;
        this.f22143h = bVar.f22165g;
        this.f22144i = bVar.f22166h;
        this.f22145j = bVar.f22167i;
        this.f22146k = bVar.f22168j;
        this.f22147l = bVar.f22169k;
        this.f22148m = bVar.f22170l;
        this.f22149n = bVar.f22171m;
        this.f22150o = bVar.f22172n;
        this.f22151p = bVar.f22173o;
        this.f22157v = bVar.f22174p;
        this.f22152q = bVar.f22176r;
        this.f22156u = bVar.f22175q;
        this.f22136a = System.currentTimeMillis();
        this.f22158w = bVar.f22177s;
        this.f22153r = bVar.f22178t;
    }
}

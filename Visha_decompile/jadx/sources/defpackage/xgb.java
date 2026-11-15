package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tupdate.bean.SdkConfigInfo;
import com.cloud.tupdate.bean.UpdateEntity;
import com.cloud.tupdate.dialog.DialogPosition;
import com.cloud.tupdate.impl.UpdateParser;
import com.cloud.tupdate.net.network.HttpRequestor;
import com.cloud.tupdate.net.utils.LogUtil;
import com.transsion.gslb.GslbSdk;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class xgb implements ww4 {
    public UpdateEntity a;
    public WeakReference b;
    public String c;
    public Map d;
    public Map e;
    public tw4 f;
    public xw4 g;
    public yw4 h;
    public boolean i;
    public vw4 j;
    public DialogPosition k;
    public float l;
    public boolean m;
    public String n;

    public static final class a {
        public Context a;
        public String b;
        public Map c;
        public Map d;
        public xw4 e;
        public tw4 f;
        public yw4 g;
        public String h;
        public String i;
        public int j;
        public boolean k;
        public vw4 l;
        public DialogPosition m;
        public float n;
        public boolean o;
        public String p;

        public static final class C0457a implements re1 {
            public final long a;
            public final a b;
            public final rv4 c;

            public C0457a(long j, a aVar, rv4 rv4Var) {
                this.a = j;
                this.b = aVar;
                this.c = rv4Var;
            }

            @Override
            public void a(int i, String str) {
                o6.j().b("update", "sdk config --> manualCheck  code = " + i + "  message = " + ((Object) str));
                this.b.f(this.c);
            }

            @Override
            public void b(SdkConfigInfo sdkConfigInfo) {
                if (sdkConfigInfo == null) {
                    this.b.f(this.c);
                    return;
                }
                o6.j().d("update", "sdk config --> manualCheck sdkConfigInfo " + sdkConfigInfo + " ,time =  " + (System.currentTimeMillis() - this.a));
                if (sdkConfigInfo.getOpenSdkCache() == null) {
                    this.b.f(this.c);
                    return;
                }
                if (sdkConfigInfo.getOpenSdkCache().booleanValue()) {
                    this.b.f(this.c);
                    return;
                }
                String closeVersions = sdkConfigInfo.getCloseVersions();
                o6.j().d("update", "sdk config --> manualCheck closeVersion = " + ((Object) closeVersions) + " , current code = 1300");
                if (TextUtils.isEmpty(closeVersions)) {
                    return;
                }
                y45.g(closeVersions);
                if (j1a.X(closeVersions, "1300", false, 2, null)) {
                    return;
                }
                this.b.f(this.c);
            }
        }

        public static final class b implements re1 {
            public final long a;
            public final a b;
            public final rv4 c;

            public b(long j, a aVar, rv4 rv4Var) {
                this.a = j;
                this.b = aVar;
                this.c = rv4Var;
            }

            @Override
            public void a(int i, String str) {
                o6.j().b("update", "sdk config --> preUpdate  code = " + i + "  message = " + ((Object) str));
                this.b.h(this.c);
            }

            @Override
            public void b(SdkConfigInfo sdkConfigInfo) {
                if (sdkConfigInfo == null) {
                    this.b.h(this.c);
                    return;
                }
                o6.j().d("update", "sdk config --> preUpdate sdkConfigInfo " + sdkConfigInfo + " ,time =  " + (System.currentTimeMillis() - this.a));
                if (sdkConfigInfo.getOpenSdkCache() == null) {
                    this.b.h(this.c);
                    return;
                }
                if (sdkConfigInfo.getOpenSdkCache().booleanValue()) {
                    this.b.h(this.c);
                    return;
                }
                String closeVersions = sdkConfigInfo.getCloseVersions();
                o6.j().d("update", "sdk config --> preUpdate closeVersion = " + ((Object) closeVersions) + " , current code = 1300");
                if (TextUtils.isEmpty(closeVersions)) {
                    return;
                }
                y45.g(closeVersions);
                if (j1a.X(closeVersions, "1300", false, 2, null)) {
                    return;
                }
                this.b.h(this.c);
            }
        }

        public static final class c implements re1 {
            public final long a;
            public final a b;

            public c(long j, a aVar) {
                this.a = j;
                this.b = aVar;
            }

            @Override
            public void a(int i, String str) {
                o6.j().b("update", "sdk config --> update  code = " + i + "  message = " + ((Object) str));
                this.b.m();
            }

            @Override
            public void b(SdkConfigInfo sdkConfigInfo) {
                if (sdkConfigInfo == null) {
                    this.b.m();
                    return;
                }
                o6.j().d("update", "sdk config --> update sdkConfigInfo " + sdkConfigInfo + " ,time =  " + (System.currentTimeMillis() - this.a));
                if (sdkConfigInfo.getOpenSdkCache() == null) {
                    this.b.m();
                    return;
                }
                if (sdkConfigInfo.getOpenSdkCache().booleanValue()) {
                    this.b.m();
                    return;
                }
                String closeVersions = sdkConfigInfo.getCloseVersions();
                o6.j().d("update", "sdk config --> update closeVersion = " + ((Object) closeVersions) + " , current code = 1300");
                if (TextUtils.isEmpty(closeVersions)) {
                    return;
                }
                y45.g(closeVersions);
                if (j1a.X(closeVersions, "1300", false, 2, null)) {
                    return;
                }
                this.b.m();
            }
        }

        public a(Context context) {
            y45.j(context, "context");
            this.a = context;
            this.e = new UpdateParser();
            this.f = new ugb();
            this.g = new bhb();
            this.m = DialogPosition.MIDDLE;
            this.p = "";
        }

        public final xgb d() {
            dhb.a.n(this.a, "[UpdateManager.Builder] : context == null");
            xgb xgbVar = new xgb(null);
            xgbVar.b = new WeakReference(this.a);
            xgbVar.c = this.b;
            xgbVar.d = this.c;
            xgbVar.e = this.d;
            xgbVar.i = this.k;
            xgbVar.k = this.m;
            xgbVar.l = this.n;
            xgbVar.m = this.o;
            xgbVar.f = this.f;
            xgbVar.g = this.e;
            xgbVar.h = this.g;
            xgbVar.j = this.l;
            xgbVar.getClass();
            xgbVar.n = this.p;
            return xgbVar;
        }

        public final void e(rv4 rv4Var) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                qe1.a aVar = qe1.a;
                Context applicationContext = this.a.getApplicationContext();
                y45.i(applicationContext, "context.applicationContext");
                aVar.a(applicationContext).d(new C0457a(jCurrentTimeMillis, this, rv4Var));
            } catch (Exception e) {
                o6.j().a(Log.getStackTraceString(e));
            }
        }

        public final void f(rv4 rv4Var) {
            HttpRequestor httpRequestorA;
            String str;
            String str2 = this.b;
            if (str2 == null || j1a.o0(str2)) {
                String str3 = xca.a.a() ? "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get" : "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get";
                try {
                    String domain = GslbSdk.getDomain(str3, true);
                    if (domain == null || j1a.o0(domain)) {
                        this.b = str3;
                    } else {
                        this.b = domain;
                    }
                } catch (Exception e) {
                    this.b = str3;
                    LogUtil.a.d(e);
                }
            }
            String str4 = this.h;
            if ((str4 == null || j1a.o0(str4) || (str = this.i) == null || j1a.o0(str) || this.j == 0) && (httpRequestorA = HttpRequestor.INSTANCE.a()) != null) {
                String packageName = this.a.getPackageName();
                y45.i(packageName, "context.packageName");
                qa1 qa1Var = qa1.a;
                httpRequestorA.b(packageName, qa1Var.k(this.a), qa1Var.j(this.a));
            }
            d().A(rv4Var);
        }

        public final void g(rv4 rv4Var) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                qe1.a aVar = qe1.a;
                Context applicationContext = this.a.getApplicationContext();
                y45.i(applicationContext, "context.applicationContext");
                aVar.a(applicationContext).d(new b(jCurrentTimeMillis, this, rv4Var));
            } catch (Exception e) {
                o6.j().a(Log.getStackTraceString(e));
            }
        }

        public final void h(rv4 rv4Var) {
            HttpRequestor httpRequestorA;
            String str;
            String str2 = this.b;
            if (str2 == null || j1a.o0(str2)) {
                String str3 = xca.a.a() ? "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get" : "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get";
                try {
                    String domain = GslbSdk.getDomain(str3, true);
                    if (domain == null || j1a.o0(domain)) {
                        this.b = str3;
                    } else {
                        this.b = domain;
                    }
                } catch (Exception e) {
                    this.b = str3;
                    LogUtil.a.d(e);
                }
            }
            String str4 = this.h;
            if ((str4 == null || j1a.o0(str4) || (str = this.i) == null || j1a.o0(str) || this.j == 0) && (httpRequestorA = HttpRequestor.INSTANCE.a()) != null) {
                String packageName = this.a.getPackageName();
                y45.i(packageName, "context.packageName");
                qa1 qa1Var = qa1.a;
                httpRequestorA.b(packageName, qa1Var.k(this.a), qa1Var.j(this.a));
            }
            d().B(rv4Var);
        }

        public final a i(String str) {
            y45.j(str, "whiteListId");
            this.p = str;
            return this;
        }

        public final a j() {
            this.o = true;
            return this;
        }

        public final a k(vw4 vw4Var) {
            y45.j(vw4Var, "updateListener");
            this.l = vw4Var;
            return this;
        }

        public final void l() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                qe1.a aVar = qe1.a;
                Context applicationContext = this.a.getApplicationContext();
                y45.i(applicationContext, "context.applicationContext");
                aVar.a(applicationContext).d(new c(jCurrentTimeMillis, this));
            } catch (Exception e) {
                o6.j().a(Log.getStackTraceString(e));
            }
        }

        public final void m() {
            HttpRequestor httpRequestorA;
            String str;
            String str2 = this.b;
            if (str2 == null || j1a.o0(str2)) {
                String str3 = xca.a.a() ? "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get" : "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get";
                try {
                    String domain = GslbSdk.getDomain(str3, true);
                    if (domain == null || j1a.o0(domain)) {
                        this.b = str3;
                    } else {
                        this.b = domain;
                    }
                } catch (Exception e) {
                    this.b = str3;
                    LogUtil.a.d(e);
                }
            }
            String str4 = this.h;
            if ((str4 == null || j1a.o0(str4) || (str = this.i) == null || j1a.o0(str) || this.j == 0) && (httpRequestorA = HttpRequestor.INSTANCE.a()) != null) {
                String packageName = this.a.getPackageName();
                y45.i(packageName, "context.packageName");
                qa1 qa1Var = qa1.a;
                httpRequestorA.b(packageName, qa1Var.k(this.a), qa1Var.j(this.a));
            }
            d().C();
        }
    }

    public xgb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public void A(rv4 rv4Var) {
        i(rv4Var, true);
    }

    public void B(rv4 rv4Var) {
        ww4.a.b(this, rv4Var, false, 2, null);
    }

    public void C() {
        z();
    }

    @Override
    public UpdateEntity a(String str) {
        y45.j(str, "json");
        xw4 xw4Var = this.g;
        if (xw4Var == null) {
            return null;
        }
        UpdateEntity updateEntityA = xw4Var != null ? xw4Var.a(str) : null;
        this.a = updateEntityA;
        return updateEntityA;
    }

    @Override
    public boolean b() {
        return this.m;
    }

    @Override
    public void c(UpdateEntity updateEntity, ww4 ww4Var, boolean z) {
        y45.j(updateEntity, "updateEntity");
        y45.j(ww4Var, "updateManager");
        yw4 yw4Var = this.h;
        if (yw4Var == null) {
            return;
        }
        yw4Var.b(updateEntity, ww4Var, z);
    }

    @Override
    public cw4 d() {
        return null;
    }

    @Override
    public boolean e() {
        return this.i;
    }

    @Override
    public vw4 f() {
        return this.j;
    }

    @Override
    public String g() {
        return this.n;
    }

    @Override
    public Context getContext() {
        WeakReference weakReference = this.b;
        if (weakReference == null) {
            return null;
        }
        return (Context) weakReference.get();
    }

    @Override
    public DialogPosition h() {
        return this.k;
    }

    @Override
    public void i(rv4 rv4Var, boolean z) {
        if (TextUtils.isEmpty(this.c)) {
            throw new NullPointerException("[UpdateManager] : mUpdateUrl 不能为空");
        }
        tw4 tw4Var = this.f;
        if (tw4Var == null || tw4Var == null) {
            return;
        }
        String str = this.c;
        y45.g(str);
        tw4Var.b(str, this.d, this.e, this, rv4Var, z);
    }

    @Override
    public void j(UpdateEntity updateEntity, ww4 ww4Var) {
        y45.j(updateEntity, "updateEntity");
        y45.j(ww4Var, "updateManager");
        yw4 yw4Var = this.h;
        if (yw4Var == null) {
            return;
        }
        yw4Var.a(updateEntity, ww4Var);
    }

    public void y() {
        if (TextUtils.isEmpty(this.c)) {
            throw new NullPointerException("[UpdateManager] : mUpdateUrl 不能为空");
        }
        tw4 tw4Var = this.f;
        if (tw4Var == null || tw4Var == null) {
            return;
        }
        String str = this.c;
        y45.g(str);
        tw4Var.a(str, this.d, this.e, this);
    }

    public final void z() {
        if (dhb.a.a()) {
            y();
        }
    }

    public xgb() {
        this.k = DialogPosition.MIDDLE;
        this.n = "";
    }
}

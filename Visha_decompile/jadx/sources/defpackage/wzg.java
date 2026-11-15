package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.c;
import com.google.android.gms.measurement.internal.e;
import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzq;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class wzg extends nlh {
    public String c;
    public String d;
    public int e;
    public String f;
    public String g;
    public long h;
    public final long i;
    public List j;
    public String k;
    public int l;
    public String m;
    public String n;
    public String o;
    public long p;
    public String q;

    public wzg(e eVar, long j) {
        super(eVar);
        this.p = 0L;
        this.q = null;
        this.i = j;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:37:0x0101  */
    /* JADX WARN: Code duplicated, block: B:38:0x0111  */
    /* JADX WARN: Code duplicated, block: B:39:0x0121  */
    /* JADX WARN: Code duplicated, block: B:40:0x0131  */
    /* JADX WARN: Code duplicated, block: B:41:0x0141  */
    /* JADX WARN: Code duplicated, block: B:42:0x0151  */
    /* JADX WARN: Code duplicated, block: B:45:0x016b  */
    /* JADX WARN: Code duplicated, block: B:48:0x018b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0194 A[Catch: IllegalStateException -> 0x01bb, TryCatch #3 {IllegalStateException -> 0x01bb, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:59:0x01bf, B:61:0x01d5, B:63:0x01da, B:62:0x01d8), top: B:90:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:54:0x01ae A[Catch: IllegalStateException -> 0x01bb, TryCatch #3 {IllegalStateException -> 0x01bb, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:59:0x01bf, B:61:0x01d5, B:63:0x01da, B:62:0x01d8), top: B:90:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x01bf A[Catch: IllegalStateException -> 0x01bb, TryCatch #3 {IllegalStateException -> 0x01bb, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:59:0x01bf, B:61:0x01d5, B:63:0x01da, B:62:0x01d8), top: B:90:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x01d5 A[Catch: IllegalStateException -> 0x01bb, TryCatch #3 {IllegalStateException -> 0x01bb, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:59:0x01bf, B:61:0x01d5, B:63:0x01da, B:62:0x01d8), top: B:90:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01d8 A[Catch: IllegalStateException -> 0x01bb, TryCatch #3 {IllegalStateException -> 0x01bb, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:59:0x01bf, B:61:0x01d5, B:63:0x01da, B:62:0x01d8), top: B:90:0x0173 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0208  */
    /* JADX WARN: Code duplicated, block: B:71:0x020e  */
    /* JADX WARN: Code duplicated, block: B:72:0x021e  */
    /* JADX WARN: Code duplicated, block: B:75:0x0228  */
    /* JADX WARN: Code duplicated, block: B:78:0x023d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0241  */
    /* JADX WARN: Code duplicated, block: B:82:0x024e  */
    /* JADX WARN: Code duplicated, block: B:92:0x023d A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void k() {
        String str;
        String string;
        Object[] objArr;
        int iX;
        List listT;
        Iterator it;
        String strA;
        String str2;
        Context contextE;
        String strR;
        String packageName = this.a.e().getPackageName();
        PackageManager packageManager = this.a.e().getPackageManager();
        int i = Integer.MIN_VALUE;
        String installerPackageName = "unknown";
        String str3 = "Unknown";
        try {
            if (packageManager != null) {
                try {
                    installerPackageName = packageManager.getInstallerPackageName(packageName);
                } catch (IllegalArgumentException unused) {
                    this.a.b().q().b("Error retrieving app installer package name. appId", c.y(packageName));
                }
                if (installerPackageName == null) {
                    installerPackageName = "manual_install";
                } else if ("com.android.vending".equals(installerPackageName)) {
                    installerPackageName = "";
                }
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(this.a.e().getPackageName(), 0);
                    if (packageInfo != null) {
                        CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                        string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                        try {
                            str3 = packageInfo.versionName;
                            i = packageInfo.versionCode;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str = str3;
                            str3 = string;
                            this.a.b().q().c("Error retrieving package info. appId, appName", c.y(packageName), str3);
                            string = str3;
                            str3 = str;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = "Unknown";
                }
                this.c = packageName;
                this.f = installerPackageName;
                this.d = str3;
                this.e = i;
                this.g = string;
                this.h = 0L;
                if (TextUtils.isEmpty(this.a.O()) && "am".equals(this.a.P())) {
                    objArr = true;
                } else {
                    objArr = false;
                }
                iX = this.a.x();
                switch (iX) {
                    case 0:
                        this.a.b().u().a("App measurement collection enabled");
                        break;
                    case 1:
                        this.a.b().t().a("App measurement deactivated via the manifest");
                        break;
                    case 2:
                        this.a.b().u().a("App measurement deactivated via the init parameters");
                        break;
                    case 3:
                        this.a.b().t().a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                        break;
                    case 4:
                        this.a.b().t().a("App measurement disabled via the manifest");
                        break;
                    case 5:
                        this.a.b().u().a("App measurement disabled via the init parameters");
                        break;
                    case 6:
                        this.a.b().w().a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                        break;
                    case 7:
                        this.a.b().t().a("App measurement disabled via the global data collection setting");
                        break;
                    default:
                        this.a.b().t().a("App measurement disabled due to denied storage consent");
                        break;
                }
                this.m = "";
                this.n = "";
                this.a.d();
                if (objArr != false) {
                    this.n = this.a.O();
                }
                strA = r2j.a(this.a.e(), "google_app_id", this.a.R());
                this.m = true != TextUtils.isEmpty(strA) ? strA : "";
                if (!TextUtils.isEmpty(strA)) {
                    contextE = this.a.e();
                    strR = this.a.R();
                    wd8.l(contextE);
                    Resources resources = contextE.getResources();
                    if (!TextUtils.isEmpty(strR)) {
                        strR = izh.a(contextE);
                    }
                    this.n = izh.b("admob_app_id", resources, strR);
                }
                if (iX == 0) {
                    u6h u6hVarU = this.a.b().u();
                    String str4 = this.c;
                    if (TextUtils.isEmpty(this.m)) {
                        str2 = this.n;
                    } else {
                        str2 = this.m;
                    }
                    u6hVarU.c("App measurement enabled for app package, google app id", str4, str2);
                }
                this.j = null;
                this.a.d();
                listT = this.a.z().t("analytics.safelisted_events");
                if (listT != null) {
                    this.j = listT;
                } else if (listT.isEmpty()) {
                    this.a.b().w().a("Safelisted event list is empty. Ignoring");
                } else {
                    it = listT.iterator();
                    do {
                        if (it.hasNext()) {
                            this.j = listT;
                        }
                    } while (this.a.N().O("safelisted event", (String) it.next()));
                }
                if (packageManager != null) {
                    this.l = k15.a(this.a.e()) ? 1 : 0;
                } else {
                    this.l = 0;
                }
            }
            this.a.b().q().b("PackageManager is null, app identity information might be inaccurate. appId", c.y(packageName));
            strA = r2j.a(this.a.e(), "google_app_id", this.a.R());
            this.m = true != TextUtils.isEmpty(strA) ? strA : "";
            if (!TextUtils.isEmpty(strA)) {
                contextE = this.a.e();
                strR = this.a.R();
                wd8.l(contextE);
                Resources resources2 = contextE.getResources();
                if (!TextUtils.isEmpty(strR)) {
                    strR = izh.a(contextE);
                }
                this.n = izh.b("admob_app_id", resources2, strR);
            }
            if (iX == 0) {
                u6h u6hVarU2 = this.a.b().u();
                String str5 = this.c;
                if (TextUtils.isEmpty(this.m)) {
                    str2 = this.n;
                } else {
                    str2 = this.m;
                }
                u6hVarU2.c("App measurement enabled for app package, google app id", str5, str2);
            }
        } catch (IllegalStateException e) {
            this.a.b().q().c("Fetching Google App Id failed with exception. appId", c.y(packageName), e);
        }
        string = "Unknown";
        this.c = packageName;
        this.f = installerPackageName;
        this.d = str3;
        this.e = i;
        this.g = string;
        this.h = 0L;
        if (TextUtils.isEmpty(this.a.O())) {
            objArr = false;
        } else {
            objArr = false;
        }
        iX = this.a.x();
        switch (iX) {
            case 0:
                this.a.b().u().a("App measurement collection enabled");
                break;
            case 1:
                this.a.b().t().a("App measurement deactivated via the manifest");
                break;
            case 2:
                this.a.b().u().a("App measurement deactivated via the init parameters");
                break;
            case 3:
                this.a.b().t().a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                break;
            case 4:
                this.a.b().t().a("App measurement disabled via the manifest");
                break;
            case 5:
                this.a.b().u().a("App measurement disabled via the init parameters");
                break;
            case 6:
                this.a.b().w().a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                break;
            case 7:
                this.a.b().t().a("App measurement disabled via the global data collection setting");
                break;
            default:
                this.a.b().t().a("App measurement disabled due to denied storage consent");
                break;
        }
        this.m = "";
        this.n = "";
        this.a.d();
        if (objArr != false) {
            this.n = this.a.O();
        }
        this.j = null;
        this.a.d();
        listT = this.a.z().t("analytics.safelisted_events");
        if (listT != null) {
            this.j = listT;
        } else if (listT.isEmpty()) {
            this.a.b().w().a("Safelisted event list is empty. Ignoring");
        } else {
            it = listT.iterator();
            do {
                if (it.hasNext()) {
                    this.j = listT;
                }
            } while (this.a.N().O("safelisted event", (String) it.next()));
        }
        if (packageManager != null) {
            this.l = k15.a(this.a.e()) ? 1 : 0;
        } else {
            this.l = 0;
        }
    }

    @Override
    public final boolean m() {
        return true;
    }

    public final int n() {
        h();
        return this.l;
    }

    public final zzq o(String str) {
        String str2;
        long j;
        String str3;
        String str4;
        g();
        String strQ = q();
        String strR = r();
        h();
        String str5 = this.d;
        h();
        long j2 = this.e;
        h();
        wd8.l(this.f);
        String str6 = this.f;
        this.a.z().l();
        h();
        g();
        long j3 = this.h;
        if (j3 == 0) {
            c9j c9jVarN = this.a.N();
            Context contextE = this.a.e();
            String packageName = this.a.e().getPackageName();
            c9jVarN.g();
            wd8.l(contextE);
            wd8.f(packageName);
            PackageManager packageManager = contextE.getPackageManager();
            MessageDigest messageDigestS = c9j.s();
            long jO0 = -1;
            if (messageDigestS == null) {
                c9jVarN.a.b().q().a("Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (c9jVarN.T(contextE, packageName)) {
                            jO0 = 0;
                        } else {
                            Signature[] signatureArr = mpc.a(contextE).f(c9jVarN.a.e().getPackageName(), 64).signatures;
                            if (signatureArr == null || signatureArr.length <= 0) {
                                c9jVarN.a.b().v().a("Could not get signatures");
                            } else {
                                jO0 = c9j.o0(messageDigestS.digest(signatureArr[0].toByteArray()));
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        c9jVarN.a.b().q().b("Package name not found", e);
                        j3 = 0;
                    }
                }
                j3 = 0;
                this.h = j3;
            }
            j3 = jO0;
            this.h = j3;
        }
        long j4 = j3;
        boolean zO = this.a.o();
        boolean z = !this.a.F().p;
        g();
        if (this.a.o()) {
            ngj.b();
            if (this.a.z().v(null, kwg.c0)) {
                this.a.b().u().a("Disabled IID for tests.");
            } else {
                try {
                    Class<?> clsLoadClass = this.a.e().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                    if (clsLoadClass != null) {
                        try {
                            Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.a.e());
                            if (objInvoke != null) {
                                try {
                                    str2 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(objInvoke, null);
                                } catch (Exception unused) {
                                    this.a.b().w().a("Failed to retrieve Firebase Instance Id");
                                    str2 = null;
                                }
                            }
                        } catch (Exception unused2) {
                            this.a.b().x().a("Failed to obtain Firebase Analytics instance");
                        }
                    }
                } catch (ClassNotFoundException unused3) {
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        e eVar = this.a;
        long jA = eVar.F().e.a();
        long jMin = jA == 0 ? eVar.G : Math.min(eVar.G, jA);
        h();
        int i = this.l;
        boolean zU = this.a.z().u();
        roh rohVarF = this.a.F();
        rohVarF.g();
        boolean z2 = rohVarF.n().getBoolean("deferred_analytics_collection", false);
        h();
        String str7 = this.n;
        Boolean boolO = this.a.z().o("google_analytics_default_allow_ad_personalization_signals");
        Boolean boolValueOf = boolO == null ? null : Boolean.valueOf(!boolO.booleanValue());
        long j5 = this.i;
        List list = this.j;
        String strG = this.a.F().p().g();
        if (this.k == null) {
            j = j5;
            if (this.a.z().v(null, kwg.z0)) {
                this.k = this.a.N().p();
            } else {
                this.k = "";
            }
        } else {
            j = j5;
        }
        String str8 = this.k;
        sfj.b();
        if (this.a.z().v(null, kwg.u0)) {
            g();
            if (this.p == 0) {
                str3 = str8;
            } else {
                str3 = str8;
                long jCurrentTimeMillis = this.a.c().currentTimeMillis() - this.p;
                if (this.o != null && jCurrentTimeMillis > 86400000 && this.q == null) {
                    t();
                }
            }
            if (this.o == null) {
                t();
            }
            str4 = this.o;
        } else {
            str3 = str8;
            str4 = null;
        }
        return new zzq(strQ, strR, str5, j2, str6, 73000L, j4, str, zO, z, str2, 0L, jMin, i, zU, z2, str7, boolValueOf, j, list, (String) null, strG, str3, str4);
    }

    public final String p() {
        h();
        return this.n;
    }

    public final String q() {
        h();
        wd8.l(this.c);
        return this.c;
    }

    public final String r() {
        g();
        h();
        wd8.l(this.m);
        return this.m;
    }

    public final List s() {
        return this.j;
    }

    public final void t() {
        String str;
        g();
        if (this.a.F().p().h(zzah.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            this.a.N().t().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            this.a.b().p().a("Analytics Storage consent is not granted");
            str = null;
        }
        this.a.b().p().a(String.format("Resetting session stitching token to %s", str == null ? "null" : "not null"));
        this.o = str;
        this.p = this.a.c().currentTimeMillis();
    }

    public final boolean u(String str) {
        String str2 = this.q;
        boolean z = false;
        if (str2 != null && !str2.equals(str)) {
            z = true;
        }
        this.q = str;
        return z;
    }
}

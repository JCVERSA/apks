package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.e;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

public final class oce extends ini {
    public Boolean b;
    public kbe c;
    public Boolean d;

    public oce(e eVar) {
        super(eVar);
        this.c = new kbe() {
            @Override
            public final String a(String str, String str2) {
                return null;
            }
        };
    }

    public final String h(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            wd8.l(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            this.a.b().q().b("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            this.a.b().q().b("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            this.a.b().q().b("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            this.a.b().q().b("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public final double i(String str, lvg lvgVar) {
        if (str == null) {
            return ((Double) lvgVar.a(null)).doubleValue();
        }
        String strA = this.c.a(str, lvgVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Double) lvgVar.a(null)).doubleValue();
        }
        try {
            return ((Double) lvgVar.a(Double.valueOf(Double.parseDouble(strA)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) lvgVar.a(null)).doubleValue();
        }
    }

    public final int j() {
        c9j c9jVarN = this.a.N();
        Boolean boolI = c9jVarN.a.L().I();
        if (c9jVarN.m0() < 201500) {
            return (boolI == null || boolI.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int k(String str, lvg lvgVar) {
        if (str == null) {
            return ((Integer) lvgVar.a(null)).intValue();
        }
        String strA = this.c.a(str, lvgVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Integer) lvgVar.a(null)).intValue();
        }
        try {
            return ((Integer) lvgVar.a(Integer.valueOf(Integer.parseInt(strA)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) lvgVar.a(null)).intValue();
        }
    }

    public final long l() {
        this.a.d();
        return 73000L;
    }

    public final long m(String str, lvg lvgVar) {
        if (str == null) {
            return ((Long) lvgVar.a(null)).longValue();
        }
        String strA = this.c.a(str, lvgVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Long) lvgVar.a(null)).longValue();
        }
        try {
            return ((Long) lvgVar.a(Long.valueOf(Long.parseLong(strA)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) lvgVar.a(null)).longValue();
        }
    }

    public final Bundle n() {
        try {
            if (this.a.e().getPackageManager() == null) {
                this.a.b().q().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoC = mpc.a(this.a.e()).c(this.a.e().getPackageName(), 128);
            if (applicationInfoC != null) {
                return applicationInfoC.metaData;
            }
            this.a.b().q().a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.a.b().q().b("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final Boolean o(String str) {
        wd8.f(str);
        Bundle bundleN = n();
        if (bundleN == null) {
            this.a.b().q().a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleN.containsKey(str)) {
            return Boolean.valueOf(bundleN.getBoolean(str));
        }
        return null;
    }

    public final String p() {
        return h("debug.firebase.analytics.app", "");
    }

    public final String q() {
        return h("debug.deferred.deeplink", "");
    }

    public final String r() {
        this.a.d();
        return "FA";
    }

    public final String s(String str, lvg lvgVar) {
        return str == null ? (String) lvgVar.a(null) : (String) lvgVar.a(this.c.a(str, lvgVar.b()));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x0043 A[Catch: NotFoundException -> 0x0048, TRY_LEAVE, TryCatch #0 {NotFoundException -> 0x0048, blocks: (B:11:0x002e, B:14:0x0043), top: B:19:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final List t(String str) {
        Integer numValueOf;
        String[] stringArray;
        wd8.f("analytics.safelisted_events");
        Bundle bundleN = n();
        if (bundleN != null) {
            if (bundleN.containsKey("analytics.safelisted_events")) {
                numValueOf = Integer.valueOf(bundleN.getInt("analytics.safelisted_events"));
            }
            if (numValueOf != null) {
                try {
                    stringArray = this.a.e().getResources().getStringArray(numValueOf.intValue());
                    if (stringArray == null) {
                        return null;
                    }
                    return Arrays.asList(stringArray);
                } catch (Resources.NotFoundException e) {
                    this.a.b().q().b("Failed to load string array from metadata: resource not found", e);
                }
            }
            return null;
        }
        this.a.b().q().a("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf != null) {
            stringArray = this.a.e().getResources().getStringArray(numValueOf.intValue());
            if (stringArray == null) {
                return null;
            }
            return Arrays.asList(stringArray);
        }
        return null;
    }

    public final boolean u() {
        Boolean boolO = o("google_analytics_adid_collection_enabled");
        return boolO == null || boolO.booleanValue();
    }

    public final boolean v(String str, lvg lvgVar) {
        if (str == null) {
            return ((Boolean) lvgVar.a(null)).booleanValue();
        }
        String strA = this.c.a(str, lvgVar.b());
        return TextUtils.isEmpty(strA) ? ((Boolean) lvgVar.a(null)).booleanValue() : ((Boolean) lvgVar.a(Boolean.valueOf("1".equals(strA)))).booleanValue();
    }

    public final boolean w() {
        Boolean boolO = o("google_analytics_automatic_screen_reporting_enabled");
        return boolO == null || boolO.booleanValue();
    }

    public final boolean x() {
        this.a.d();
        Boolean boolO = o("firebase_analytics_collection_deactivated");
        return boolO != null && boolO.booleanValue();
    }

    public final boolean y() {
        if (this.b == null) {
            Boolean boolO = o("app_measurement_lite");
            this.b = boolO;
            if (boolO == null) {
                this.b = Boolean.FALSE;
            }
        }
        return this.b.booleanValue() || !this.a.s();
    }

    public final boolean z() {
        if (this.d == null) {
            synchronized (this) {
                try {
                    if (this.d == null) {
                        ApplicationInfo applicationInfo = this.a.e().getApplicationInfo();
                        String strA = ch8.a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            boolean z = false;
                            if (str != null && str.equals(strA)) {
                                z = true;
                            }
                            this.d = Boolean.valueOf(z);
                        }
                        if (this.d == null) {
                            this.d = Boolean.TRUE;
                            this.a.b().q().a("My process not in the list of running processes");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d.booleanValue();
    }
}

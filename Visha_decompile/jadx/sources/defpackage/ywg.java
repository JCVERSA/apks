package defpackage;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.b6;
import com.google.android.gms.internal.ads.zzebw;
import com.google.android.gms.internal.ads.zzebx;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkd;
import com.google.android.gms.internal.ads.zzfkh;
import defpackage.cye;
import defpackage.nuh;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Objects;

public final class ywg implements zwg {
    public static fxg k(String str, String str2, String str3, zzebw zzebwVar, String str4, WebView webView, String str5, String str6, zzebx zzebxVar) {
        wuh wuhVarA = wuh.a("Google", str2);
        zzfkh zzfkhVarO = o("javascript");
        zzfka zzfkaVarM = m(zzebwVar.toString());
        zzfkh zzfkhVar = zzfkh.NONE;
        if (zzfkhVarO == zzfkhVar) {
            int i = zze.zza;
            zzo.zzj("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzfkaVarM == null) {
            String strValueOf = String.valueOf(zzebwVar);
            int i2 = zze.zza;
            zzo.zzj("Omid html session error; Unable to parse creative type: ".concat(strValueOf));
            return null;
        }
        zzfkh zzfkhVarO2 = o(str4);
        if (zzfkaVarM != zzfka.VIDEO || zzfkhVarO2 != zzfkhVar) {
            ruh ruhVarB = ruh.b(wuhVarA, webView, str5, "");
            return new fxg(puh.a(quh.a(zzfkaVarM, n(zzebxVar.toString()), zzfkhVarO, zzfkhVarO2, true), ruhVarB), ruhVarB);
        }
        String strValueOf2 = String.valueOf(str4);
        int i3 = zze.zza;
        zzo.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(strValueOf2));
        return null;
    }

    public static fxg l(String str, String str2, String str3, String str4, zzebw zzebwVar, WebView webView, String str5, String str6, zzebx zzebxVar) {
        wuh wuhVarA = wuh.a(str, str2);
        zzfkh zzfkhVarO = o("javascript");
        zzfkh zzfkhVarO2 = o(str4);
        zzfka zzfkaVarM = m(zzebwVar.toString());
        zzfkh zzfkhVar = zzfkh.NONE;
        if (zzfkhVarO == zzfkhVar) {
            int i = zze.zza;
            zzo.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        }
        if (zzfkaVarM == null) {
            String strValueOf = String.valueOf(zzebwVar);
            int i2 = zze.zza;
            zzo.zzj("Omid js session error; Unable to parse creative type: ".concat(strValueOf));
            return null;
        }
        if (zzfkaVarM != zzfka.VIDEO || zzfkhVarO2 != zzfkhVar) {
            ruh ruhVarC = ruh.c(wuhVarA, webView, str5, "");
            return new fxg(puh.a(quh.a(zzfkaVarM, n(zzebxVar.toString()), zzfkhVarO, zzfkhVarO2, true), ruhVarC), ruhVarC);
        }
        String strValueOf2 = String.valueOf(str4);
        int i3 = zze.zza;
        zzo.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(strValueOf2));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    public static zzfka m(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != -382745961) {
            if (iHashCode != 112202875) {
                if (iHashCode == 714893483 && str.equals("nativeDisplay")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (str.equals("video")) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (str.equals("htmlDisplay")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            return zzfka.HTML_DISPLAY;
        }
        if (b == 1) {
            return zzfka.NATIVE_DISPLAY;
        }
        if (b != 2) {
            return null;
        }
        return zzfka.VIDEO;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    public static zzfkd n(String str) {
        byte b;
        int iHashCode = str.hashCode();
        if (iHashCode != -1104128070) {
            if (iHashCode != 1318088141) {
                if (iHashCode == 1988248512 && str.equals("onePixel")) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (str.equals("definedByJavascript")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str.equals("beginToRender")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            return zzfkd.BEGIN_TO_RENDER;
        }
        if (b != 1) {
            return b != 2 ? zzfkd.UNSPECIFIED : zzfkd.ONE_PIXEL;
        }
        return zzfkd.DEFINED_BY_JAVASCRIPT;
    }

    public static zzfkh o(String str) {
        if (PluginErrorDetails.Platform.NATIVE.equals(str)) {
            return zzfkh.NATIVE;
        }
        return "javascript".equals(str) ? zzfkh.JAVASCRIPT : zzfkh.NONE;
    }

    public static final Object p(xwg xwgVar) {
        try {
            return xwgVar.zza();
        } catch (RuntimeException e) {
            zzv.zzp().w(e, "omid exception");
            return null;
        }
    }

    public static final void q(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            zzv.zzp().w(e, "omid exception");
        }
    }

    @Override
    public final boolean a(final Context context) {
        if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue()) {
            Boolean bool = (Boolean) p(new xwg() {
                @Override
                public final Object zza() {
                    if (nuh.b()) {
                        return Boolean.TRUE;
                    }
                    nuh.a(context);
                    return Boolean.valueOf(nuh.b());
                }
            });
            return bool != null && bool.booleanValue();
        }
        int i = zze.zza;
        zzo.zzj("Omid flag is disabled");
        return false;
    }

    @Override
    public final void b(final b6 b6Var, final ojf ojfVar) {
        q(new Runnable() {
            @Override
            public final void run() {
                b6Var.g(ojfVar);
            }
        });
    }

    @Override
    public final void c(final puh puhVar, final View view) {
        q(new Runnable() {
            @Override
            public final void run() {
                if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() && nuh.b()) {
                    puhVar.d(view);
                }
            }
        });
    }

    @Override
    public final fxg d(final String str, final WebView webView, String str2, String str3, final String str4, final zzebx zzebxVar, final zzebw zzebwVar, final String str5) {
        if (!((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() || !nuh.b()) {
            return null;
        }
        final String str6 = "javascript";
        final String str7 = "Google";
        final String str8 = "";
        return (fxg) p(new xwg(str7, str, str6, zzebwVar, str4, webView, str5, str8, zzebxVar) {
            public final String b;
            public final zzebw d;
            public final String e;
            public final WebView f;
            public final String g;
            public final zzebx i;
            public final String a = "Google";
            public final String c = "javascript";
            public final String h = "";

            {
                this.b = str;
                this.d = zzebwVar;
                this.e = str4;
                this.f = webView;
                this.g = str5;
                this.i = zzebxVar;
            }

            @Override
            public final Object zza() {
                return ywg.k(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
            }
        });
    }

    @Override
    public final void e(final puh puhVar, final View view) {
        q(new Runnable() {
            @Override
            public final void run() {
                if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() && nuh.b()) {
                    puhVar.b(view, zzfkc.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override
    public final fxg f(final String str, final WebView webView, String str2, String str3, final String str4, final String str5, final zzebx zzebxVar, final zzebw zzebwVar, final String str6) {
        if (!((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() || !nuh.b()) {
            return null;
        }
        final String str7 = "";
        final String str8 = "javascript";
        return (fxg) p(new xwg(str5, str, str8, str4, zzebwVar, webView, str6, str7, zzebxVar) {
            public final String a;
            public final String b;
            public final String d;
            public final zzebw e;
            public final WebView f;
            public final String g;
            public final zzebx i;
            public final String c = "javascript";
            public final String h = "";

            {
                this.d = str4;
                this.e = zzebwVar;
                this.f = webView;
                this.g = str6;
                this.i = zzebxVar;
            }

            @Override
            public final Object zza() {
                return ywg.l(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
            }
        });
    }

    @Override
    public final void g(final b6 b6Var, final View view) {
        q(new Runnable() {
            @Override
            public final void run() {
                b6Var.f(view, zzfkc.NOT_VISIBLE, "Ad overlay");
            }
        });
    }

    @Override
    public final void h(final puh puhVar) {
        if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() && nuh.b()) {
            Objects.requireNonNull(puhVar);
            q(new Runnable() {
                @Override
                public final void run() {
                    puhVar.e();
                }
            });
        }
    }

    @Override
    public final void i(final puh puhVar) {
        q(new Runnable() {
            @Override
            public final void run() {
                if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue() && nuh.b()) {
                    puhVar.c();
                }
            }
        });
    }

    @Override
    public final b6 j(final VersionInfoParcel versionInfoParcel, final WebView webView, boolean z) {
        final boolean z2 = true;
        return (b6) p(new xwg(webView, z2) {
            public final WebView b;

            @Override
            public final Object zza() {
                VersionInfoParcel versionInfoParcel2 = this.a;
                return b6.b(wuh.a("Google", versionInfoParcel2.buddyApkVersion + Consts.DOT + versionInfoParcel2.clientJarVersion), this.b, true);
            }
        });
    }

    @Override
    public final String zzf(Context context) {
        if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue()) {
            return (String) p(new xwg() {
                @Override
                public final Object zza() {
                    return "a.1.5.2-google_20241009";
                }
            });
        }
        return null;
    }
}

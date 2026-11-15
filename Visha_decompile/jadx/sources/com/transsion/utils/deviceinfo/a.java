package com.transsion.utils.deviceinfo;

import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.utils.deviceinfo.a;
import defpackage.az8;
import defpackage.r0a;
import defpackage.se;
import defpackage.y45;
import defpackage.zfb;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static volatile a e;
    public String a;
    public String b;
    public String c;
    public static final C0257a d = new C0257a(null);
    public static String f = "";

    public static final class C0257a {
        public C0257a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            if (!r0a.g(a.f)) {
                return a.f;
            }
            String strF = AthenaAnalytics.F(Utils.a());
            return strF == null ? "" : strF;
        }

        public final a b() {
            if (a.e == null) {
                synchronized (a.class) {
                    try {
                        if (a.e == null) {
                            a.e = new a(null);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            a aVar = a.e;
            y45.g(aVar);
            return aVar;
        }

        public final String c() {
            StringBuilder sb = new StringBuilder();
            Locale localeB = LanguageUtils.b();
            if (!TextUtils.isEmpty(localeB.getLanguage())) {
                sb.append(localeB.getLanguage());
            }
            if (!TextUtils.isEmpty(localeB.getCountry())) {
                sb.append("-r");
                sb.append(localeB.getCountry());
            }
            String string = sb.toString();
            y45.i(string, "toString(...)");
            return string;
        }

        public C0257a() {
        }
    }

    public interface b {
        void a();

        void b(String str);
    }

    public a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final void h(a aVar, b bVar) {
        aVar.i(bVar);
    }

    public static final String j() {
        return d.a();
    }

    public static final a k() {
        return d.b();
    }

    public static final String l() {
        return d.c();
    }

    public final String e() {
        if (r0a.g(this.c)) {
            this.c = Build.VERSION.RELEASE;
        }
        String str = this.c;
        return str == null ? "" : str;
    }

    public final String f() {
        if (r0a.g(this.a)) {
            this.a = Build.BRAND;
        }
        String str = this.a;
        return str == null ? "" : str;
    }

    public final void g(final b bVar) {
        y45.j(bVar, "callback");
        if (r0a.g(f)) {
            f = az8.a().d("visha_gaid");
        }
        if (r0a.g(f)) {
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    a.h(this.b, bVar);
                }
            }).start();
        } else {
            bVar.b(f);
        }
    }

    public final void i(b bVar) {
        try {
            String strA = GoogleADIDClient.a(se.a()).a();
            f = strA;
            LogUtils.w("DeviceInfo", "advertisingId is " + strA);
            az8.a().i("visha_gaid", f);
            bVar.b(f);
        } catch (Exception e2) {
            e2.printStackTrace();
            bVar.a();
        }
    }

    public final String m() {
        if (r0a.g(this.b)) {
            this.b = Build.MODEL;
        }
        String str = this.b;
        return str == null ? "" : str;
    }

    public a() {
    }
}

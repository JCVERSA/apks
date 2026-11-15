package mgtv.qt;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.aqd;
import defpackage.dpd;
import defpackage.dtd;
import defpackage.hld;
import defpackage.m3d;
import defpackage.s4d;
import defpackage.sjd;
import defpackage.tid;
import defpackage.y4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import org.json.JSONObject;

public abstract class c {
    public static e a = null;
    public static m3d b = null;
    public static boolean c = true;
    public static String d = "";
    public static boolean e = true;
    public static boolean f = false;
    public static String g = "";
    public static String h = "";
    public static boolean i = true;
    public static Context j = null;
    public static Application k = null;
    public static int l = -1;
    public static long m = 0;
    public static long n = 0;
    public static String o = "";

    public static void a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = n;
        if (j2 == 0 || Math.abs(jCurrentTimeMillis - j2) >= 2000) {
            n = jCurrentTimeMillis;
        }
    }

    public static void b(Application application) {
        if (!i) {
            Log.e("QuestMobile", "QuestMobile SDK 设置为不允许使用网络");
        } else {
            if (f) {
                return;
            }
            f = true;
            j.a(new ag(application));
        }
    }

    public static void c(Application application, s4d s4dVar) {
        if (s4dVar.e) {
            n(application, s4dVar);
        } else if (k(application)) {
            n(application, s4dVar);
        }
    }

    public static void d(Application application, String str, String str2, boolean z) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            hld.t(application);
            try {
                Object objF = sjd.f(application, "isFirstRun", Boolean.TRUE);
                if (objF != null ? ((Boolean) objF).booleanValue() : true) {
                    y4d.e(application);
                    sjd.c(application, "FirstRunTime", Long.valueOf(System.currentTimeMillis() / 1000));
                    sjd.c(application, "isFirstRun", Boolean.FALSE);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            d = hld.v(application);
            hld.b(application, true);
            hld.h(application, true);
            tid.c(application);
            hld.i(application);
            a = e.e();
            if (str == null) {
                str = "";
            }
            g = str;
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
            h = str2.replace("\t", "").replace("\n", "");
            i = z;
            o = y4d.p(application);
            f("QuestMobile-SDK 初始化基本信息完成,用时:" + (System.currentTimeMillis() - jCurrentTimeMillis) + " 毫秒");
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void e(Context context) {
        try {
            if (y4d.i(l(context))) {
                sjd.c(context, "insid", dpd.a(System.currentTimeMillis() + context.getPackageName() + y4d.k()));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void f(String str) {
        if (e) {
            Log.i("QuestMobile", str);
        }
    }

    public static String g() {
        return o;
    }

    public static String h(String str) {
        return str;
    }

    public static void i(Application application, s4d s4dVar) {
        n(application, s4dVar);
    }

    public static void j(Context context) {
        try {
            if (y4d.h(context, "hwbdts", 604800L)) {
                JSONObject jSONObjectS = y4d.s(context);
                jSONObjectS.put("tp", "deviceos");
                jSONObjectS.put("lv", SerializableCookie.HOST);
                jSONObjectS.put("osname", y4d.a());
                aqd.g();
                aqd.d("https://d.qchannel03.cn/aul", ("data=" + jSONObjectS.toString()).getBytes(), new dtd());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    public static boolean k(Application application) {
        String str;
        int i2;
        String strS = e.s();
        boolean z = false;
        try {
            str = (String) sjd.f(application, "key_dau_count", strS + ",0");
            if (str != null) {
                try {
                    String[] strArrSplit = str.split(StringUtils.COMMA);
                    String str2 = strArrSplit[0];
                    i2 = Integer.parseInt(strArrSplit[1]);
                    try {
                        if (!str2.equalsIgnoreCase(strS)) {
                            i2 = 0;
                        } else if (i2 <= 2) {
                        }
                        z = true;
                    } catch (Throwable th) {
                        th = th;
                        th.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    i2 = 0;
                    th.printStackTrace();
                    if (z) {
                        String str3 = String.format(Locale.getDefault(), "%s,%d", strS, Integer.valueOf(i2 + 1));
                        sjd.c(application, "key_dau_count", str3);
                        Log.d("QuestMobile AuCnt", str3);
                    } else {
                        Log.d("QuestMobile AuCnt", "close: ".concat(String.valueOf(str)));
                    }
                    return z;
                }
            } else {
                i2 = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            str = "";
        }
        if (z) {
            String str4 = String.format(Locale.getDefault(), "%s,%d", strS, Integer.valueOf(i2 + 1));
            sjd.c(application, "key_dau_count", str4);
            Log.d("QuestMobile AuCnt", str4);
        } else {
            Log.d("QuestMobile AuCnt", "close: ".concat(String.valueOf(str)));
        }
        return z;
    }

    public static String l(Context context) {
        try {
            return (String) sjd.f(context, "insid", "");
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static void m() {
    }

    public static void n(Application application, s4d s4dVar) {
        if (Math.abs(System.currentTimeMillis() - m) >= 1000) {
            m = System.currentTimeMillis();
            j.a(new ah(application, s4dVar));
        }
    }
}

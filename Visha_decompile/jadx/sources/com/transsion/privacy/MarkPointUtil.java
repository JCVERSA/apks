package com.transsion.privacy;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.p004lifecycle.LifecycleObserver;
import com.transsion.athena.data.TrackData;
import com.transsion.transsion_gdpr.GdprUtil;
import defpackage.id4;
import defpackage.o12;
import defpackage.u06;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class MarkPointUtil implements LifecycleObserver {
    public static SharedPreferences b = null;
    public static String c = null;
    public static int d = -1;
    public static c e = null;
    public static String f = "user_experience";
    public static String g = null;
    public static long h = 0;
    public static String i = "";
    public static String j = "";
    public static boolean k;

    public static class a extends o12 {
        @Override
        public void c(Activity activity) {
            MarkPointUtil.n(u06.c().b());
            u06.c().h(true);
            MarkPointUtil.u();
        }

        @Override
        public void e(Activity activity) {
        }

        public a() {
        }
    }

    public static class b implements id4 {
        public final id4 a;

        public b(id4 id4Var) {
            this.a = id4Var;
        }

        @Override
        public void a(View view) {
            this.a.a(view);
        }

        @Override
        public void b(View view) {
            this.a.b(view);
        }

        @Override
        public void c(Activity activity) {
            MarkPointUtil.n(u06.c().b());
            u06.c().h(true);
            this.a.c(activity);
            MarkPointUtil.u();
        }

        @Override
        public void e(Activity activity) {
            this.a.e(activity);
        }
    }

    public static class c extends ContentObserver {
        public WeakReference a;

        public c(Context context) {
            super(null);
            this.a = new WeakReference(context);
        }

        @Override
        public void onChange(boolean z) {
            super.onChange(z);
            Log.i("MarkPointUtil", "onchange: " + z);
            Context context = (Context) this.a.get();
            if (context == null) {
                return;
            }
            if (MarkPointUtil.b(context) || MarkPointUtil.c(context)) {
                u06.c().h(true);
            } else {
                u06.c().h(false);
                u06.c().g();
            }
        }
    }

    public static boolean b(Context context) {
        return !k && Settings.System.getInt(context.getContentResolver(), f, 0) == 1;
    }

    public static boolean c(Context context) {
        return e(context).getBoolean("new_agreed_privacy", false);
    }

    public static String d(Context context) {
        int columnIndex;
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.hoffnung.cloudControl.RemoteConfigProvider/config/os_common_gdpr_privacy_version"), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("os_common_gdpr_privacy_version")) >= 0) {
                        g = cursorQuery.getString(columnIndex);
                    }
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e2) {
            Log.w("MarkPointUtil", "getPrivacyVersionInfo failed", e2);
        }
        return g;
    }

    public static SharedPreferences e(Context context) {
        int i2;
        SharedPreferences sharedPreferences = b;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        String str = c;
        return (str == null || "".equals(str) || (i2 = d) == -1) ? context.getSharedPreferences(context.getPackageName(), 0) : context.getSharedPreferences(c, i2);
    }

    public static int f(String str) {
        try {
            return new JSONObject(str).getInt("versionCodeT");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 3;
        }
    }

    public static String g(String str) {
        try {
            String string = new JSONObject(str).getString("versionNameT");
            return TextUtils.isEmpty(string) ? "20210705V3" : string;
        } catch (Exception e2) {
            e2.printStackTrace();
            return "20210705V3";
        }
    }

    public static boolean h(Context context) {
        int iF;
        String strD = d(context);
        g = strD;
        if (TextUtils.isEmpty(strD) || (iF = f(g)) <= e(context).getInt("new_agreed_privacy_version", 3)) {
            return false;
        }
        m(context);
        t(context, iF);
        return true;
    }

    public static void i(Context context, String str, int i2, int i3, boolean z, boolean z2) {
        u06.c().e(context, str, i2, i3, z, z2);
    }

    public static boolean j(FragmentManager fragmentManager) {
        return GdprUtil.d(fragmentManager);
    }

    public static void k(Context context) {
        if (e == null) {
            e = new c(context);
        }
        l(context, e);
    }

    public static void l(Context context, ContentObserver contentObserver) {
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor(f), false, contentObserver);
    }

    public static void m(Context context) {
        SharedPreferences.Editor editorEdit = e(context).edit();
        editorEdit.putBoolean("new_agreed_privacy", false);
        editorEdit.apply();
    }

    public static void n(Context context) {
        SharedPreferences.Editor editorEdit = e(context).edit();
        editorEdit.putBoolean("new_agreed_privacy", true);
        editorEdit.apply();
    }

    public static void o(id4 id4Var) {
        GdprUtil.c(id4Var == null ? new a() : new b(id4Var));
    }

    public static void p(long j2, String str, String str2) {
        h = j2;
        i = str;
        j = str2;
    }

    public static void q(final Context context, final FragmentManager fragmentManager, final boolean z, final GdprUtil.GDPRConfig gDPRConfig) {
        k = gDPRConfig != null && gDPRConfig.isIgnoreUserExperience();
        if (b(context)) {
            u06.c().h(true);
            return;
        }
        final HandlerThread handlerThread = new HandlerThread("dealPrivacy");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        final Handler handler2 = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() {
            @Override
            public void run() {
                final boolean zH = MarkPointUtil.h(context);
                handler2.post(new Runnable() {
                    @Override
                    public void run() {
                        if (zH || !MarkPointUtil.c(context)) {
                            u06.c().h(false);
                            u06.c().g();
                            if (GdprUtil.b() == null) {
                                GdprUtil.c(new a());
                            }
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            GdprUtil.g(fragmentManager, z, gDPRConfig);
                        } else {
                            u06.c().h(true);
                        }
                        handlerThread.quitSafely();
                    }
                });
            }
        });
    }

    public static void r(String str, Bundle bundle, long j2) {
        u06.c().i(str, bundle, j2);
    }

    public static void s(String str, TrackData trackData, long j2) {
        u06.c().j(str, trackData, j2);
    }

    public static void t(Context context, int i2) {
        SharedPreferences.Editor editorEdit = e(context).edit();
        editorEdit.putInt("new_agreed_privacy_version", i2);
        editorEdit.apply();
    }

    public static void u() {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(j, g(g));
            r(i, bundle, h);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void v(FragmentManager fragmentManager) {
        GdprUtil.e(fragmentManager);
    }

    public static void w(FragmentManager fragmentManager) {
        x(fragmentManager, null);
    }

    public static void x(FragmentManager fragmentManager, GdprUtil.GDPRConfig gDPRConfig) {
        GdprUtil.f(fragmentManager, gDPRConfig);
    }

    public static void y(Context context, FragmentManager fragmentManager, boolean z, GdprUtil.GDPRConfig gDPRConfig) {
        q(context, fragmentManager, z, gDPRConfig);
    }
}

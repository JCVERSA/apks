package com.transsion.playercommon.core;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import androidx.core.app.NotificationManagerCompat;
import com.transsion.dbdata.beans.DownloadVideoRecommend;
import com.transsion.dbdata.beans.appconfig.JumpBean;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.applife.AppLifecycleObserver;
import com.transsion.playercommon.callback.AppActivityLifecycleCallback;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.playercommon.utils.storage.MountReceiver;
import defpackage.lu4;
import defpackage.o12;
import defpackage.of8;
import defpackage.pp3;
import defpackage.pz6;
import defpackage.t08;
import defpackage.vha;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.xb;
import defpackage.ydc;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.internal.schedulers.SchedulerPoolFactory;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.BooleanUtils;

public class MainApp extends Application implements lu4 {
    public static DownloadVideoRecommend B = null;
    public static JumpBean C = null;
    public static WeakReference E = null;
    public static boolean c = false;
    public static b d = null;
    public static volatile int e = 3;
    public static volatile int f = 2;
    public static volatile boolean g = false;
    public static volatile boolean h = false;
    public static volatile boolean i = false;
    public static volatile boolean j = false;
    public static volatile boolean k = true;
    public static volatile boolean l = false;
    public static volatile boolean m = true;
    public static volatile boolean n = false;
    public static volatile boolean o = false;
    public static volatile boolean p = false;
    public static volatile boolean q = false;
    public static volatile boolean r = false;
    public static volatile boolean s = false;
    public static volatile boolean t = false;
    public static volatile int u;
    public static Application y;
    public final vz6 b = new a();
    public static ConcurrentHashMap v = new ConcurrentHashMap();
    public static int w = 0;
    public static int x = 0;
    public static boolean z = true;
    public static boolean A = true;
    public static boolean D = true;

    public class a implements vz6 {
        public a() {
        }

        @Override
        public void onConnect(int i) {
            Log.d("MainApp", "NetworkStatusCallback:onConnect:" + i);
            if (MainApp.w == i) {
                return;
            }
            MainApp.w = i;
            MainApp.this.z();
            for (vz6 vz6Var : MainApp.v.values()) {
                if (vz6Var != null) {
                    vz6Var.onConnect(i);
                }
            }
        }

        @Override
        public void onDisconnect() {
            Log.i("MainApp", "NetworkStatusCallback:onDisconnect");
            MainApp.w = 0;
            for (vz6 vz6Var : MainApp.v.values()) {
                if (vz6Var != null) {
                    vz6Var.onDisconnect();
                }
            }
        }
    }

    public interface b {
        void a(Activity activity);
    }

    public static class c extends o12 {
        @Override
        public void a(View view) {
            if (view == null) {
                return;
            }
            k(view, of8.b(view.getContext()));
        }

        @Override
        public void b(View view) {
            if (view == null) {
                return;
            }
            k(view, of8.g(view.getContext()));
        }

        @Override
        public void c(Activity activity) {
            MainApp.t(activity, true);
        }

        @Override
        public void e(Activity activity) {
            MainApp.t(activity, false);
        }

        public final void k(View view, String str) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.addFlags(268435456);
            try {
                view.getContext().startActivity(intent);
            } catch (Exception e) {
                Log.e("MainApp", "startDynamicNetworkLink: " + e.getMessage());
            }
        }
    }

    public static void d(String str, vz6 vz6Var) {
        v.put(str, vz6Var);
    }

    public static void e() {
        System.getProperties().setProperty("rx2.purge-enabled", BooleanUtils.FALSE);
        Log.d("MainApp", "fixedRxJavaBackgroundCpuLoad-PURGE_ENABLED::" + SchedulerPoolFactory.a);
    }

    public static Application f() {
        return y;
    }

    public static boolean g(Context context, String str) {
        try {
            Class<?> cls = Class.forName("com.transsion.hubsdk.foldable.TranFoldingScreen");
            boolean zBooleanValue = ((Boolean) cls.getDeclaredMethod("getHoverModeStateForPackage", Context.class, String.class).invoke(cls.newInstance(), context, str)).booleanValue();
            Log.i("MainApp", "testGetHoverModeState-result:" + zBooleanValue);
            return zBooleanValue;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            Log.e("MainApp", "getHoverModeState:" + e2);
            return true;
        }
    }

    public static void h(Application application, boolean z2) {
        yw8.C(new zf1() {
            @Override
            public final void accept(Object obj) {
                MainApp.q((Throwable) obj);
            }
        });
    }

    public static void i(Context context) {
        e = w6c.d(context, "simultaneous_download_mode", 3);
        boolean z2 = false;
        h = w6c.c(context, "allow_mobile_data", false);
        j = w6c.c(context, "allow_mobile_data_play", false) || w6c.c(context, "allow_mobile_data_play_show", false);
        try {
            k = w6c.c(context, "break_point_mode_switch", true) && w6c.c(context, "break_point_mode", true);
        } catch (Exception e2) {
            Log.e("MainApp", "getBreakPointMode failed, error: " + e2.getMessage());
        }
        l = w6c.c(context, "allow_show_history", false);
        m = w6c.c(context, "allow_stream_auto_play", true);
        p = w6c.c(context, "private_browsing", false);
        u = w6c.d(context, "show_lyric_search_mode", 2);
        if (w6c.c(context, "show_lock_screen_player_mode", false) && Settings.canDrawOverlays(f())) {
            z2 = true;
        }
        q = z2;
        r = w6c.c(context, "need_dolby_splash_show", true);
    }

    public static void k() {
        if (t) {
            Log.v("MainApp", "initNewAudioNotification");
            w(f().getApplicationContext());
            t = false;
            w6c.r(f().getApplicationContext(), "new_audio_notify_need_init", false);
        }
    }

    public static void l(boolean z2) {
        ydc.c(z2);
    }

    public static void m(Context context) {
        w6c.F(context, 0L);
        boolean z2 = false;
        w6c.G(context, 0);
        boolean zC = w6c.c(context, "video_pref_sort_by", false);
        int iD = w6c.d(context, "video_pref_sort_name", 0);
        SortUtil.r(zC);
        SortUtil.s(iD);
        boolean zC2 = w6c.c(context, "audio_pref_sort_by", false);
        int iD2 = w6c.d(context, "audio_pref_sort_name", 0);
        SortUtil.p(zC2);
        SortUtil.q(iD2);
        if (w6c.e(context, "start_record_launch_review_time", 0L) == 0) {
            w6c.v(context, "start_record_launch_review_time", System.currentTimeMillis());
        }
        t = pp3.x && w6c.c(context, "new_audio_notify_need_init", true);
        if (pp3.x && w6c.c(context, "audio_new_find_notification", NotificationManagerCompat.from(context).areNotificationsEnabled())) {
            z2 = true;
        }
        g = z2;
        if (g && !NotificationManagerCompat.from(context).areNotificationsEnabled()) {
            w(context);
        }
        o = w6c.c(context, "is_first_enter_main_activity", true);
    }

    public static void n(boolean z2) {
        ydc.d(z2);
    }

    public static boolean o(Context context) {
        return (context.getApplicationInfo() == null || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public static boolean p() {
        return w != 0;
    }

    public static void q(Throwable th) {
        Log.e("MainApp", "onRxJavaErrorHandler " + th.getMessage());
    }

    public static void s(String str) {
        v.remove(str);
    }

    public static void t(Activity activity, boolean z2) {
        b bVar = d;
        if (bVar != null) {
            bVar.a(activity);
        }
        if (activity instanceof BasePermissionActivity) {
            ((BasePermissionActivity) activity).afterGpdrPermission();
        }
    }

    public static void u(b bVar) {
        d = bVar;
    }

    public static void v(int i2) {
        u = i2;
    }

    public static void w(Context context) {
        g = t08.i(context);
        w6c.r(context, "audio_new_find_notification", g);
    }

    public static void x(int i2) {
        e = i2;
    }

    public static void y(Context context, String str) {
        if (ydc.g()) {
            D = g(context, str);
            Log.e("MainApp", "updateHoverMode:" + D);
        }
    }

    public final void j() {
        r();
        TransferNotificationHelper.q(this);
    }

    @Override
    public void onCreate() {
        if (Process.isIsolated()) {
            Log.e("MainApp", "Error init isIsolated");
            super.onCreate();
            return;
        }
        vha.u(this);
        y = this;
        super.onCreate();
        h(this, false);
        MountReceiver.a(this);
        j();
        registerActivityLifecycleCallbacks(new AppActivityLifecycleCallback());
        AppLifecycleObserver.b(this);
    }

    public final void r() {
        ((ConnectivityManager) getSystemService("connectivity")).registerDefaultNetworkCallback(new pz6(this, this.b));
    }

    @Override
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return xb.a() ? registerReceiver(broadcastReceiver, intentFilter, 2) : super.registerReceiver(broadcastReceiver, intentFilter);
    }

    public void z() {
    }
}

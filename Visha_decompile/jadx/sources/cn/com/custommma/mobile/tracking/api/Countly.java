package cn.com.custommma.mobile.tracking.api;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.view.View;
import cn.com.custommma.mobile.tracking.util.DeviceInfoUtil;
import cn.com.custommma.mobile.tracking.util.LocationCollector;
import cn.com.custommma.mobile.tracking.util.NetType;
import cn.com.custommma.mobile.tracking.util.SdkConfigUpdateUtil;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.kf1;
import defpackage.ng9;
import defpackage.qx8;
import defpackage.rq5;
import defpackage.tbc;
import defpackage.v7a;
import defpackage.va1;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class Countly {
    public static boolean n = true;
    public static String o = "ACTION_STATS_EXPOSE";
    public static String p = "ACTION.STATS_VIEWABILITY";
    public static String q = "ACTION.STATS_SUCCESSED";
    public static Countly r;
    public Context g;
    public cn.com.custommma.mobile.tracking.api.a h;
    public qx8 j;
    public NetType l;
    public SendMessageThread a = null;
    public SendMessageThread b = null;
    public Timer c = null;
    public Timer d = null;
    public ViewAbilityHandler e = null;
    public volatile boolean f = false;
    public boolean i = false;
    public String k = "mz_viewability_mobile.min.js";
    public tbc m = new a();

    public class a implements tbc {
        public a() {
        }

        @Override
        public void a(String str, CallBack callBack, ViewAbilityHandler.MonitorType monitorType) {
            if (!Countly.this.f || Countly.this.h == null) {
                return;
            }
            Countly.this.h.c(str, callBack, monitorType);
        }
    }

    public static Countly l() {
        if (r == null) {
            synchronized (Countly.class) {
                try {
                    if (r == null) {
                        r = new Countly();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return r;
    }

    public void d(Context context, String str) {
        if (context == null) {
            rq5.b("Countly.init(...) failed:Context can`t be null");
            return;
        }
        if (this.f) {
            return;
        }
        this.f = true;
        this.g = context.getApplicationContext();
        this.c = new Timer();
        this.d = new Timer();
        this.h = cn.com.custommma.mobile.tracking.api.a.b(context);
        try {
            SourceKitLogger.a("lyzzzz", "Countly_init_start");
            this.j = SdkConfigUpdateUtil.g(context);
            SourceKitLogger.a("lyzzzz", "Countly_init_end:" + this.j);
            this.e = new ViewAbilityHandler(this.g, this.m, this.j);
            if (e(this.j)) {
                this.i = true;
                LocationCollector.h(this.g).j();
            }
            SdkConfigUpdateUtil.j(context, str);
            DeviceInfoUtil.j(context, this.j);
        } catch (Exception e) {
            rq5.b("Countly init failed:" + e.getMessage());
        }
        n();
        NetType netType = new NetType();
        this.l = netType;
        i(context, netType);
    }

    public final boolean e(qx8 qx8Var) {
        if (qx8Var == null) {
            return false;
        }
        try {
            List list = qx8Var.b;
            if (list == null) {
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                v7a v7aVar = ((va1) it.next()).f;
                if (v7aVar != null && v7aVar.a) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void f(String str, CallBack callBack) {
        p("onClick", str, null, 0, callBack);
    }

    public void g(String str, View view, int i, CallBack callBack) {
        p("onExpose", str, view, i, callBack);
    }

    public void h() {
        ViewAbilityHandler viewAbilityHandler = this.e;
        if (viewAbilityHandler != null) {
            viewAbilityHandler.n();
        }
    }

    public final void i(Context context, NetType netType) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(netType, intentFilter);
    }

    public void j() {
        ViewAbilityHandler viewAbilityHandler = this.e;
        if (viewAbilityHandler != null) {
            viewAbilityHandler.o();
        }
    }

    public void k(boolean z) {
        rq5.a = z;
    }

    public final void m() {
        SharedPreferences sharedPreferencesB;
        try {
            SendMessageThread sendMessageThread = this.b;
            if ((sendMessageThread == null || !sendMessageThread.isAlive()) && (sharedPreferencesB = ng9.b(this.g, "cn.com.mma.mobile.tracking.mgmi_ssp_falied")) != null && !sharedPreferencesB.getAll().isEmpty()) {
                SendMessageThread sendMessageThread2 = new SendMessageThread("cn.com.mma.mobile.tracking.mgmi_ssp_falied", this.g, false);
                this.b = sendMessageThread2;
                sendMessageThread2.start();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void n() {
        try {
            this.d.schedule(new TimerTask() {
                @Override
                public void run() {
                    Countly.this.m();
                }
            }, 0L, kf1.b * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void o(String str, String str2, View view, int i, int i2, CallBack callBack) {
        if (!this.f || this.h == null || this.e == null) {
            rq5.b("The method " + str + "(...) should be called before calling Countly.init(...)");
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            rq5.d("The URL parameter is illegal, it can't be null or empty!");
        }
        str.hashCode();
        switch (str) {
            case "onClick":
                this.e.j(str2, callBack);
                break;
            case "onExpose":
                this.e.k(str2, view, i2, callBack);
                break;
            case "onVideoExpose":
                this.e.m(str2, view, i, callBack);
                break;
            case "onAdViewExpose":
                this.e.l(str2, view, callBack);
                break;
        }
    }

    public final void p(String str, String str2, View view, int i, CallBack callBack) {
        o(str, str2, view, 0, i, callBack);
    }
}

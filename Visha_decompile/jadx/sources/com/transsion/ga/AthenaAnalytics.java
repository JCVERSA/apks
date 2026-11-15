package com.transsion.ga;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.common.C;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.aidl.AthenaTrackService;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.enatha.enatha;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.ga.AthenaAnalytics;
import defpackage.b4d;
import defpackage.c4d;
import defpackage.d4d;
import defpackage.j5d;
import defpackage.ja3;
import defpackage.o3d;
import defpackage.q4d;
import defpackage.sbd;
import defpackage.zbd;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.lang3.time.DateUtils;

public class AthenaAnalytics {
    public static volatile AthenaAnalytics h;
    public static List n;
    public static com.transsion.ga.athena o;
    public static int p;
    public static boolean q;
    public static boolean r;
    public j5d a;
    public com.transsion.athena.athena c;
    public boolean d;
    public static b f = new b() {
        @Override
        public final String translate(String str) {
            return AthenaAnalytics.i(str);
        }
    };
    public static volatile int g = 1;
    public static long i = 0;
    public static volatile int j = -1;
    public static volatile long k = 0;
    public static String l = null;
    public static Context m = null;
    public ExecutorService b = null;
    public final CopyOnWriteArrayList e = new CopyOnWriteArrayList();

    public interface a {
    }

    public static class aethna implements Runnable {
        private j5d a;

        public aethna(j5d j5dVar, athena athenaVar) {
            this(j5dVar);
        }

        @Override
        public void run() {
            if (ehanat.v()) {
                com.transsion.athena.taaneh.a.e("Athena is in Test mode，should not release this APK（测试模式）[" + AthenaAnalytics.m.getPackageName() + "]");
                this.a.d(this, 60000L);
                return;
            }
            if (ehanat.t() && ehanat.q()) {
                com.transsion.athena.taaneh.a.e("  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK （Debug模式）[" + AthenaAnalytics.m.getPackageName() + "]");
                this.a.d(this, 60000L);
            }
        }

        private aethna(j5d j5dVar) {
            this.a = j5dVar;
        }
    }

    public static class anehat implements Runnable {
        private final Handler a;
        private SimpleDateFormat b;
        private String c;

        public anehat(Handler handler, athena athenaVar) {
            this(handler);
        }

        @Override
        public void run() {
            if (AthenaAnalytics.k > 0) {
                if (com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.m)) {
                    if (this.b == null) {
                        this.b = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
                    }
                    String str = this.b.format(new Date());
                    if (!str.equals(this.c)) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.J(num.intValue()).c0("app_heartbeat", null, num.intValue());
                            }
                        }
                        this.c = str;
                    }
                }
                this.a.postDelayed(this, DateUtils.MILLIS_PER_HOUR);
            }
        }

        private anehat(Handler handler) {
            this.c = "";
            this.a = handler;
        }
    }

    public class athena implements Runnable {
        final boolean a;

        public athena(boolean z) {
            this.a = z;
        }

        @Override
        public void run() {
            c4d.a.m().r(this.a);
        }
    }

    public interface b {
        String translate(String str);
    }

    public interface c {
    }

    public static boolean A() {
        return m.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") == 0;
    }

    public static void C(boolean z) {
        j5d j5dVarB;
        ehanat.d(z);
        if (h == null) {
            c4d.b("Init method not called.");
        } else {
            if (j != 0 || (j5dVarB = h.B()) == null || z) {
                return;
            }
            j5dVarB.a();
        }
    }

    public static void D() {
        if ((g == 3 || E()) && j == 0) {
            com.transsion.athena.hatnea.c.d().g();
        }
    }

    public static boolean E() {
        return (m == null || h == null || !ehanat.r()) ? false : true;
    }

    public static String F(Context context) {
        return sbd.a();
    }

    public static String G(Context context, boolean z) {
        return z ? sbd.d(context) : sbd.a();
    }

    public static a H() {
        return null;
    }

    public static Context I() {
        return m;
    }

    public static AthenaAnalytics J(int i2) {
        return K(i2);
    }

    public static AthenaAnalytics K(long j2) {
        if (h == null) {
            synchronized (AthenaAnalytics.class) {
                try {
                    if (h == null) {
                        h = new AthenaAnalytics();
                        if (j == 0) {
                            j5d j5dVarB = h.B();
                            Handler handler = new Handler(Looper.getMainLooper());
                            w(j5dVarB);
                            athena athenaVar = null;
                            j5dVarB.d(new aethna(j5dVarB, athenaVar), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            y(j5dVarB);
                            m(handler);
                            handler.postDelayed(new anehat(handler, athenaVar), DateUtils.MILLIS_PER_HOUR);
                            u(j5dVarB);
                        } else {
                            AthenaAnalytics athenaAnalytics = h;
                            Context context = m;
                            athenaAnalytics.getClass();
                            try {
                                c4d.f("AthenaAnalytics bindTrackService");
                                Intent intent = new Intent(context, (Class<?>) AthenaTrackService.class);
                                intent.setPackage(context.getApplicationInfo().packageName);
                                context.bindService(intent, new d4d(athenaAnalytics), 1);
                            } catch (Exception e) {
                                c4d.d(Log.getStackTraceString(e));
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (com.transsion.athena.taaneh.a.j(j2)) {
            int i2 = (int) j2;
            if (j == 0 && com.transsion.athena.data.athena.a(i2)) {
                Message message = new Message();
                message.what = 400;
                message.arg1 = i2;
                h.B().b(message, 0L);
            } else if (j == 1 && com.transsion.athena.data.athena.a(i2)) {
                c4d.b("multi process appid " + i2 + " register successful");
            }
        }
        return h;
    }

    public static b L() {
        return f;
    }

    public static void M() {
        o3d.i(m);
    }

    public static void N() {
        if (k > 0) {
            AthenaAnalytics athenaAnalytics = h;
            athenaAnalytics.getClass();
            if (!E()) {
                c4d.b("Athena SDK isAthenaEnable = false");
                return;
            }
            for (Integer num : com.transsion.athena.data.athena.a()) {
                if (num.intValue() != 9999) {
                    athenaAnalytics.c0("app_launch", null, num.intValue());
                }
            }
        }
    }

    public static void O(Context context, String str, int i2, boolean z) {
        P(context, str, i2, z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void P(Context context, String str, int i2, boolean z, boolean z2) {
        boolean zEquals;
        String str2;
        if (context == null || i2 < 1000 || i2 > 9999) {
            throw new IllegalArgumentException("The parameter is illegal.");
        }
        if (m == null) {
            m = context.getApplicationContext();
        }
        ehanat.c(z);
        ehanat.a(str, z2);
        boolean z3 = false;
        if (z2) {
            com.transsion.athena.data.athena.b(i2);
            l(i2, false);
        }
        zbd.b(m);
        if (j == -1) {
            String str3 = l;
            try {
                try {
                    str2 = context.getApplicationContext().getApplicationInfo().processName;
                } catch (Exception e) {
                    ObjectLogUtils objectLogUtils = c4d.a;
                    c4d.d(Log.getStackTraceString(e));
                    str2 = "";
                }
                if (TextUtils.isEmpty(str3)) {
                    str3 = str2;
                }
                zEquals = TextUtils.equals(str3, com.transsion.athena.taaneh.athena.t(context));
            } catch (Exception unused) {
                zEquals = 1;
            }
            j = !zEquals;
            if (j == 0 && p == 0 && ehanat.K) {
                p = new Random().nextInt(601) + 300;
            }
        }
        J(9999);
        J(i2);
        sbd.c(context, i2, p);
        String str4 = com.transsion.athena.taaneh.a.a;
        try {
            EnumMap enumMap = MMKV.a;
            z3 = true;
        } catch (ClassNotFoundException unused2) {
        }
        r = z3;
    }

    public static boolean Q() {
        return ehanat.J && A();
    }

    public static boolean R() {
        return g == 3;
    }

    public static boolean S() {
        return ehanat.G && A();
    }

    public static boolean T() {
        return ehanat.H && A();
    }

    public static boolean U() {
        return q && r;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ec A[Catch: Exception -> 0x010c, TryCatch #1 {Exception -> 0x010c, blocks: (B:42:0x00cc, B:44:0x00dc, B:46:0x00e2, B:47:0x00e6, B:49:0x00ec, B:51:0x00f8, B:53:0x00fe, B:56:0x010e, B:58:0x0114, B:60:0x011a), top: B:66:0x00cc }] */
    public static void V() throws Throwable {
        FileInputStream fileInputStream;
        String string;
        String strA;
        List<SubscriptionInfo> activeSubscriptionInfoList;
        h.getClass();
        if (!E()) {
            c4d.b("Athena SDK isAthenaEnable = false");
            return;
        }
        TrackData trackData = new TrackData();
        if (S()) {
            trackData.add("iid", com.transsion.athena.taaneh.athena.c(m, 0)).add("iid2", com.transsion.athena.taaneh.athena.c(m, 1));
        }
        if (T()) {
            trackData.add("isd", com.transsion.athena.taaneh.athena.m(m, 1)).add("isd2", com.transsion.athena.taaneh.athena.m(m, 2));
        }
        if (Q()) {
            trackData.add("aid", com.transsion.athena.taaneh.athena.l(m));
        }
        StringBuilder sb = new StringBuilder();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(new File("proc/rid"));
                    try {
                        byte[] bArr = new byte[1];
                        while (fileInputStream.read(bArr) != -1) {
                            sb.append(com.transsion.athena.config.data.model.anehat.c(bArr));
                        }
                    } catch (Exception unused) {
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            fileInputStream = fileInputStream2;
                        }
                        string = sb.toString();
                        if (TextUtils.isEmpty(string)) {
                            strA = "";
                        } else {
                            strA = ja3.a(string);
                        }
                        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.q());
                        activeSubscriptionInfoList = ((SubscriptionManager) m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
                        if (activeSubscriptionInfoList != null) {
                            while (r1.hasNext()) {
                                if (subscriptionInfo.getSimSlotIndex() != 0) {
                                }
                                if (subscriptionInfo.getSimSlotIndex() != 1) {
                                }
                            }
                        }
                        J(9999).c0("device", trackData, 9999);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception e) {
                                c4d.d(e.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th2) {
                    th = th2;
                }
                fileInputStream.close();
            } catch (Exception e2) {
                c4d.d(e2.getMessage());
            }
            activeSubscriptionInfoList = ((SubscriptionManager) m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList != null && activeSubscriptionInfoList.size() > 0) {
                for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                    if (subscriptionInfo.getSimSlotIndex() != 0 && T()) {
                        trackData.add("isd", com.transsion.athena.taaneh.athena.m(m, subscriptionInfo.getSubscriptionId()));
                    } else if (subscriptionInfo.getSimSlotIndex() != 1 && T()) {
                        trackData.add("isd2", com.transsion.athena.taaneh.athena.m(m, subscriptionInfo.getSubscriptionId()));
                    }
                }
            }
        } catch (Exception e3) {
            c4d.d(e3.getMessage());
        }
        string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            strA = "";
        } else {
            strA = ja3.a(string);
        }
        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.q());
        J(9999).c0("device", trackData, 9999);
    }

    public static void W() {
        if (j != 0 || h == null || h.B() == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 600;
        h.B().b(messageObtain, 100L);
    }

    public static void X(short s, String str) {
        ehanat.a(s, str);
    }

    public static void Y(int i2, String str) {
        if (i2 < 1000 || i2 > 9999) {
            c4d.e("appId %d is illegal", Integer.valueOf(i2));
        } else if (TextUtils.isEmpty(str)) {
            c4d.d("sdkVersion can not be null or empty");
        } else {
            ehanat.a(i2, str);
        }
    }

    public static void Z(boolean z) {
        ehanat.c(z);
        if (j == 0) {
            if (h == null) {
                c4d.b("Init method not called.");
                return;
            }
            j5d j5dVarB = h.B();
            if (j5dVarB != null) {
                j5dVarB.c(new athena(z));
            }
        }
    }

    public static void a0(boolean z) {
        ehanat.f(z);
    }

    public static void b0() {
        if (h != null) {
            AthenaAnalytics athenaAnalytics = h;
            athenaAnalytics.getClass();
            if ((g == 3 || E()) && j == 0 && athenaAnalytics.B() != null) {
                athenaAnalytics.B().g();
            }
        }
    }

    public static String i(String str) {
        return str;
    }

    public static void l(long j2, boolean z) {
        if (m == null) {
            return;
        }
        if (k == 0 || z) {
            k = j2;
        }
        com.transsion.ga.athena athenaVar = o;
        if (athenaVar != null) {
            athenaVar.d(k);
            return;
        }
        com.transsion.ga.athena athenaVar2 = new com.transsion.ga.athena();
        o = athenaVar2;
        athenaVar2.d(k);
        ((Application) m).registerActivityLifecycleCallbacks(o);
    }

    public static void m(Handler handler) {
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.N();
            }
        }, 6000L);
    }

    public static void n(j5d j5dVar) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.location.PROVIDERS_CHANGED");
            if (Build.VERSION.SDK_INT >= 33) {
                m.registerReceiver(new q4d(), intentFilter, null, j5dVar.f(), 4);
            } else {
                m.registerReceiver(new q4d(), intentFilter, null, j5dVar.f());
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public static boolean r(Class cls) {
        List list;
        return (cls == null || (list = n) == null || !list.contains(Integer.valueOf(cls.hashCode()))) ? false : true;
    }

    public static void s(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        ehanat.d(str, obj);
    }

    public static void u(j5d j5dVar) {
        j5dVar.c(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.M();
            }
        });
    }

    public static void w(final j5d j5dVar) {
        j5dVar.c(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.n(j5dVar);
            }
        });
    }

    public static void x(String str, TrackData trackData, long j2) {
        try {
            if (trackData.c() > 524288) {
                c4d.d("TrackData size is too large, ignored !!");
                return;
            }
            MMKV.I("AthenaKV", 2).v(Process.myPid() + "_" + j2 + "_" + str + "_" + System.currentTimeMillis(), new TrackDataWrapper(str, trackData, j2));
            c4d.b(String.format(Locale.getDefault(), "SaveToMMKV tid : %d, eventName : %s", Long.valueOf(j2), str));
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public static void y(j5d j5dVar) {
        j5dVar.d(new Runnable() {
            @Override
            public final void run() throws Throwable {
                AthenaAnalytics.V();
            }
        }, 6000L);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    public final j5d B() {
        j5d j5dVarM;
        if (this.a == null && m != null) {
            if (g == 2 && !com.transsion.athena.taaneh.a.l(m)) {
                g = 1;
            }
            Context context = m;
            int i2 = g;
            if (i2 == 1) {
                j5dVarM = enatha.m(context);
            } else if (i2 == 2) {
                j5dVarM = b4d.h(context);
            } else if (i2 != 3) {
                j5dVarM = null;
            } else {
                j5dVarM = enatha.m(context);
            }
            this.a = j5dVarM;
        }
        return this.a;
    }

    public void c0(String str, TrackData trackData, int i2) {
        d0(str, trackData, i2);
    }

    public void d0(String str, TrackData trackData, long j2) {
        String str2 = com.transsion.athena.taaneh.a.a;
        int length = String.valueOf(j2).length();
        if ((length != 8 && length != 12 && length != 4) || TextUtils.isEmpty(str)) {
            c4d.b("The parameter tid : " + j2 + " or event name : " + str + " is illegal.");
            return;
        }
        if (!com.transsion.athena.data.athena.a(j2)) {
            c4d.b("The tid " + j2 + " is not belong the app");
            return;
        }
        try {
            if (trackData != null) {
                v(str, trackData, j2);
            } else {
                v(str, new TrackData(), j2);
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public void k(int i2, long j2) {
        if (E() && j == 0 && B() != null) {
            Message message = new Message();
            message.what = i2;
            B().b(message, j2);
        }
    }

    public final void p(String str, TrackData trackData, long j2) {
        try {
            this.c.a(str, trackData, j2);
            c4d.b(String.format(Locale.getDefault(), "TrackByAidl tid : %d, eventName : %s", Long.valueOf(j2), str));
        } catch (RemoteException e) {
            c4d.d("TrackByAidl " + e.getMessage());
        }
    }

    public final void v(String str, TrackData trackData, long j2) {
        if (j == 0 || g == 2) {
            B().e(str, trackData, j2);
            return;
        }
        if (m != null) {
            String str2 = ehanat.h;
            try {
                if (!TextUtils.isEmpty("")) {
                    trackData.a().put("scode", "");
                }
                if (this.b == null) {
                    this.b = Executors.newSingleThreadExecutor();
                }
                z(str, trackData, j2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void z(final String str, final TrackData trackData, final long j2) {
        try {
            if (this.c == null || !this.d) {
                if (U()) {
                    x(str, trackData, j2);
                } else if (this.e.size() < 100) {
                    this.e.add(new TrackDataWrapper(str, trackData, j2));
                }
            } else if (trackData.c() < 524288) {
                this.b.submit(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.p(str, trackData, j2);
                    }
                });
            } else {
                c4d.d("TrackByAidl trackData size is too large, ignored !!");
            }
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }
}

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
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.aidl.AthenaTrackService;
import com.transsion.athena.attribution.ReferrerTask;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.TrackDataWrapper;
import com.transsion.athena.enatha.enatha;
import com.transsion.athena.taaneh.aatnhe;
import com.transsion.athena.taaneh.ehatna;
import com.transsion.core.log.ObjectLogUtils;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class AthenaAnalytics {

    private static volatile AthenaAnalytics f42978h;

    private static List f42984n;

    private static com.transsion.ga.athena f42985o;

    public static int f42986p;

    private static boolean f42987q;

    private static boolean f42988r;

    private com.transsion.athena.enatha.athena f42989a;

    private com.transsion.athena.athena f42991c;

    private boolean f42992d;

    private static b f42976f = new b() {
        @Override
        public final String a(String str) {
            return AthenaAnalytics.i(str);
        }
    };

    private static volatile int f42977g = 1;

    private static long f42979i = 0;

    private static volatile int f42980j = -1;

    private static volatile long f42981k = 0;

    private static String f42982l = null;

    private static Context f42983m = null;

    ExecutorService f42990b = null;

    private final CopyOnWriteArrayList f42993e = new CopyOnWriteArrayList();

    public interface a {
    }

    private static class aethna implements Runnable {

        private com.transsion.athena.enatha.athena f42994a;

        aethna(com.transsion.athena.enatha.athena athenaVar, athena athenaVar2) {
            this(athenaVar);
        }

        @Override
        public void run() {
            if (ehanat.v()) {
                com.transsion.athena.taaneh.anehat.a("Athena is in Test mode，should not release this APK（测试模式）[" + AthenaAnalytics.f42983m.getPackageName() + "]");
                this.f42994a.a(this, 60000L);
                return;
            }
            if (ehanat.t() && ehanat.q()) {
                com.transsion.athena.taaneh.anehat.a("  - Athena is in Release mode with log enabled. Please set AthenaAnalytics.setDebug(false) to release this APK （Debug模式）[" + AthenaAnalytics.f42983m.getPackageName() + "]");
                this.f42994a.a(this, 60000L);
            }
        }

        private aethna(com.transsion.athena.enatha.athena athenaVar) {
            this.f42994a = athenaVar;
        }
    }

    private static class anehat implements Runnable {

        private final Handler f42995a;

        private SimpleDateFormat f42996b;

        private String f42997c;

        anehat(Handler handler, athena athenaVar) {
            this(handler);
        }

        @Override
        public void run() {
            if (AthenaAnalytics.f42981k > 0) {
                if (com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.f42983m)) {
                    if (this.f42996b == null) {
                        this.f42996b = new SimpleDateFormat("yyyy/MM/dd", Locale.ENGLISH);
                    }
                    String str = this.f42996b.format(new Date());
                    if (!str.equals(this.f42997c)) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("app_heartbeat", null, num.intValue());
                            }
                        }
                        this.f42997c = str;
                    }
                }
                this.f42995a.postDelayed(this, 3600000L);
            }
        }

        private anehat(Handler handler) {
            this.f42997c = "";
            this.f42995a = handler;
        }
    }

    class athena implements Runnable {

        final boolean f42998a;

        athena(boolean z10) {
            this.f42998a = z10;
        }

        @Override
        public void run() {
            com.transsion.athena.taaneh.aethna.f41673a.m().r(this.f42998a);
        }
    }

    public interface b {
        String a(String str);
    }

    public interface c {
    }

    private AthenaAnalytics() {
    }

    public void A(final String str, final TrackData trackData, final long j10) {
        try {
            if (this.f42991c == null || !this.f42992d) {
                if (V()) {
                    x(str, trackData, j10);
                } else if (this.f42993e.size() < 100) {
                    this.f42993e.add(new TrackDataWrapper(str, trackData, j10));
                }
            } else if (trackData.c() < 524288) {
                this.f42990b.submit(new Runnable() {
                    @Override
                    public final void run() {
                        this.f43001a.p(str, trackData, j10);
                    }
                });
            } else {
                com.transsion.athena.taaneh.aethna.b("TrackByAidl trackData size is too large, ignored !!");
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    private static boolean B() {
        return f42983m.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") == 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    private com.transsion.athena.enatha.athena C() {
        com.transsion.athena.enatha.athena athenaVarA;
        if (this.f42989a == null && f42983m != null) {
            if (f42977g == 2 && !com.transsion.athena.taaneh.anehat.c(f42983m)) {
                f42977g = 1;
            }
            Context context = f42983m;
            int i10 = f42977g;
            if (i10 == 1) {
                athenaVarA = enatha.a(context);
            } else if (i10 == 2) {
                athenaVarA = com.transsion.athena.enatha.aethna.a(context);
            } else if (i10 != 3) {
                athenaVarA = null;
            } else {
                athenaVarA = enatha.a(context);
            }
            this.f42989a = athenaVarA;
        }
        return this.f42989a;
    }

    public static void D(boolean z10) {
        com.transsion.athena.enatha.athena athenaVarC;
        ehanat.d(z10);
        if (f42978h == null) {
            com.transsion.athena.taaneh.aethna.a("Init method not called.");
        } else {
            if (f42980j != 0 || (athenaVarC = f42978h.C()) == null || z10) {
                return;
            }
            athenaVarC.a();
        }
    }

    static void E() {
        if ((f42977g == 3 || F()) && f42980j == 0) {
            com.transsion.athena.hatnea.athena.a().b();
        }
    }

    private static boolean F() {
        return (f42983m == null || f42978h == null || !ehanat.r()) ? false : true;
    }

    public static String G(Context context) {
        return ehatna.a();
    }

    public static String H(Context context, boolean z10) {
        return z10 ? ehatna.b(context) : ehatna.a();
    }

    public static a I() {
        return null;
    }

    public static Context J() {
        return f42983m;
    }

    public static AthenaAnalytics K(int i10) {
        return L(i10);
    }

    public static AthenaAnalytics L(long j10) {
        if (f42978h == null) {
            synchronized (AthenaAnalytics.class) {
                try {
                    if (f42978h == null) {
                        f42978h = new AthenaAnalytics();
                        if (f42980j == 0) {
                            com.transsion.athena.enatha.athena athenaVarC = f42978h.C();
                            Handler handler = new Handler(Looper.getMainLooper());
                            w(athenaVarC);
                            athena athenaVar = null;
                            athenaVarC.a(new aethna(athenaVarC, athenaVar), 3000L);
                            z(athenaVarC);
                            m(handler);
                            handler.postDelayed(new anehat(handler, athenaVar), 3600000L);
                            u(athenaVarC);
                        } else {
                            AthenaAnalytics athenaAnalytics = f42978h;
                            Context context = f42983m;
                            athenaAnalytics.getClass();
                            try {
                                com.transsion.athena.taaneh.aethna.c("AthenaAnalytics bindTrackService");
                                Intent intent = new Intent(context, (Class<?>) AthenaTrackService.class);
                                intent.setPackage(context.getApplicationInfo().packageName);
                                context.bindService(intent, new g(athenaAnalytics), 1);
                            } catch (Exception e10) {
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (com.transsion.athena.taaneh.anehat.b(j10)) {
            int i10 = (int) j10;
            if (f42980j == 0 && com.transsion.athena.data.athena.a(i10)) {
                Message message = new Message();
                message.what = 400;
                message.arg1 = i10;
                f42978h.C().a(message, 0L);
            } else if (f42980j == 1 && com.transsion.athena.data.athena.a(i10)) {
                com.transsion.athena.taaneh.aethna.a("multi process appid " + i10 + " register successful");
            }
        }
        return f42978h;
    }

    public static b M() {
        return f42976f;
    }

    public static void N() {
        aatnhe.e(f42983m);
    }

    public static void O() {
        if (f42981k > 0) {
            AthenaAnalytics athenaAnalytics = f42978h;
            athenaAnalytics.getClass();
            if (!F()) {
                com.transsion.athena.taaneh.aethna.a("Athena SDK isAthenaEnable = false");
                return;
            }
            for (Integer num : com.transsion.athena.data.athena.a()) {
                if (num.intValue() != 9999) {
                    athenaAnalytics.g0("app_launch", null, num.intValue());
                }
            }
        }
    }

    public static void P(Context context, String str, int i10, boolean z10) {
        Q(context, str, i10, z10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void Q(Context context, String str, int i10, boolean z10, boolean z11) {
        boolean zEquals;
        String str2;
        if (context == null || i10 < 1000 || i10 > 9999) {
            throw new IllegalArgumentException("The parameter is illegal.");
        }
        if (f42983m == null) {
            f42983m = context.getApplicationContext();
        }
        ehanat.c(z10);
        ehanat.a(str, z11);
        boolean z12 = false;
        if (z11) {
            com.transsion.athena.data.athena.b(i10);
            l(i10, false);
        }
        i.b(f42983m);
        if (f42980j == -1) {
            String str3 = f42982l;
            try {
                try {
                    str2 = context.getApplicationContext().getApplicationInfo().processName;
                } catch (Exception e10) {
                    ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                    str2 = "";
                }
                if (TextUtils.isEmpty(str3)) {
                    str3 = str2;
                }
                zEquals = TextUtils.equals(str3, com.transsion.athena.taaneh.athena.d(context));
            } catch (Exception unused) {
                zEquals = 1;
            }
            f42980j = !zEquals;
            if (f42980j == 0 && f42986p == 0 && ehanat.K) {
                f42986p = new Random().nextInt(PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY) + 300;
            }
        }
        K(9999);
        K(i10);
        ehatna.a(context, i10, f42986p);
        int i11 = com.transsion.athena.taaneh.anehat.f41678e;
        try {
            int i12 = MMKV.f39728j;
            z12 = true;
        } catch (ClassNotFoundException unused2) {
        }
        f42988r = z12;
    }

    public static boolean R() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.J && B();
        }
        return ehanat.F && y();
    }

    public static boolean S() {
        return f42977g == 3;
    }

    public static boolean T() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.G && B();
        }
        return ehanat.C && y();
    }

    public static boolean U() {
        if (Build.VERSION.SDK_INT >= 29) {
            return ehanat.H && B();
        }
        return ehanat.D && y();
    }

    public static boolean V() {
        return f42987q && f42988r;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ec A[Catch: Exception -> 0x010c, TryCatch #1 {Exception -> 0x010c, blocks: (B:42:0x00cc, B:44:0x00dc, B:46:0x00e2, B:47:0x00e6, B:49:0x00ec, B:51:0x00f8, B:53:0x00fe, B:56:0x010e, B:58:0x0114, B:60:0x011a), top: B:66:0x00cc }] */
    public static void W() throws Throwable {
        FileInputStream fileInputStream;
        String string;
        String strA;
        List<SubscriptionInfo> activeSubscriptionInfoList;
        f42978h.getClass();
        if (!F()) {
            com.transsion.athena.taaneh.aethna.a("Athena SDK isAthenaEnable = false");
            return;
        }
        TrackData trackData = new TrackData();
        if (T()) {
            trackData.add("iid", com.transsion.athena.taaneh.athena.a(f42983m, 0)).add("iid2", com.transsion.athena.taaneh.athena.a(f42983m, 1));
        }
        if (U()) {
            trackData.add("isd", com.transsion.athena.taaneh.athena.b(f42983m, 1)).add("isd2", com.transsion.athena.taaneh.athena.b(f42983m, 2));
        }
        if (R()) {
            trackData.add("aid", com.transsion.athena.taaneh.athena.b(f42983m));
        }
        StringBuilder sb2 = new StringBuilder();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(new File("proc/rid"));
                    try {
                        byte[] bArr = new byte[1];
                        while (fileInputStream.read(bArr) != -1) {
                            sb2.append(com.transsion.athena.config.data.model.anehat.c(bArr));
                        }
                    } catch (Exception unused) {
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            fileInputStream = fileInputStream2;
                        }
                        string = sb2.toString();
                        if (TextUtils.isEmpty(string)) {
                            strA = "";
                        } else {
                            strA = com.transsion.core.utils.c.a(string);
                        }
                        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.c());
                        activeSubscriptionInfoList = ((SubscriptionManager) f42983m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
                        if (activeSubscriptionInfoList != null) {
                            while (r1.hasNext()) {
                                if (subscriptionInfo.getSimSlotIndex() != 0) {
                                }
                                if (subscriptionInfo.getSimSlotIndex() != 1) {
                                }
                            }
                        }
                        K(9999).g0("device", trackData, 9999);
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception e10) {
                                com.transsion.athena.taaneh.aethna.b(e10.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th3) {
                    th = th3;
                }
                fileInputStream.close();
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b(e11.getMessage());
            }
            activeSubscriptionInfoList = ((SubscriptionManager) f42983m.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList != null && activeSubscriptionInfoList.size() > 0) {
                for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                    if (subscriptionInfo.getSimSlotIndex() != 0 && U()) {
                        trackData.add("isd", com.transsion.athena.taaneh.athena.b(f42983m, subscriptionInfo.getSubscriptionId()));
                    } else if (subscriptionInfo.getSimSlotIndex() != 1 && U()) {
                        trackData.add("isd2", com.transsion.athena.taaneh.athena.b(f42983m, subscriptionInfo.getSubscriptionId()));
                    }
                }
            }
        } catch (Exception e12) {
            com.transsion.athena.taaneh.aethna.b(e12.getMessage());
        }
        string = sb2.toString();
        if (TextUtils.isEmpty(string)) {
            strA = "";
        } else {
            strA = com.transsion.core.utils.c.a(string);
        }
        trackData.add("chip", strA).add("sn", com.transsion.athena.taaneh.athena.c());
        K(9999).g0("device", trackData, 9999);
    }

    static void X() {
        if (f42980j != 0 || f42978h == null || f42978h.C() == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 600;
        f42978h.C().a(messageObtain, 100L);
    }

    public static void Y(int i10) {
        if (f42983m == null) {
            throw new RuntimeException("init Athena SDK first!");
        }
        int i11 = com.transsion.athena.taaneh.anehat.f41678e;
        try {
            K(i10).C().a((Runnable) ReferrerTask.class.getConstructor(Context.class, Integer.TYPE).newInstance(f42983m, Integer.valueOf(i10)), 3000L);
        } catch (Exception e10) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public static void Z(short s10, String str) {
        ehanat.a(s10, str);
    }

    public static void a0(int i10, String str) {
        if (i10 < 1000 || i10 > 9999) {
            com.transsion.athena.taaneh.aethna.b("appId %d is illegal", Integer.valueOf(i10));
        } else if (TextUtils.isEmpty(str)) {
            com.transsion.athena.taaneh.aethna.b("sdkVersion can not be null or empty");
        } else {
            ehanat.a(i10, str);
        }
    }

    public static void b0(boolean z10) {
        ehanat.c(z10);
        if (f42980j == 0) {
            if (f42978h == null) {
                com.transsion.athena.taaneh.aethna.a("Init method not called.");
                return;
            }
            com.transsion.athena.enatha.athena athenaVarC = f42978h.C();
            if (athenaVarC != null) {
                athenaVarC.a(new athena(z10));
            }
        }
    }

    public static void c0(int i10) {
        com.transsion.athena.enatha.athena athenaVarC;
        if (f42980j != 0 || (athenaVarC = f42978h.C()) == null) {
            return;
        }
        athenaVarC.a(i10);
    }

    public static void d0(boolean z10) {
        ehanat.f(z10);
    }

    public static void e0(int i10) {
        f42977g = i10;
    }

    public static void f0() {
        if (f42978h != null) {
            AthenaAnalytics athenaAnalytics = f42978h;
            athenaAnalytics.getClass();
            if ((f42977g == 3 || F()) && f42980j == 0 && athenaAnalytics.C() != null) {
                athenaAnalytics.C().e();
            }
        }
    }

    public static String i(String str) {
        return str;
    }

    private static void l(long j10, boolean z10) {
        if (f42983m == null) {
            return;
        }
        if (f42981k == 0 || z10) {
            f42981k = j10;
        }
        com.transsion.ga.athena athenaVar = f42985o;
        if (athenaVar != null) {
            athenaVar.d(f42981k);
            return;
        }
        com.transsion.ga.athena athenaVar2 = new com.transsion.ga.athena();
        f42985o = athenaVar2;
        athenaVar2.d(f42981k);
        ((Application) f42983m).registerActivityLifecycleCallbacks(f42985o);
    }

    private static void m(Handler handler) {
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.O();
            }
        }, 6000L);
    }

    public static void n(com.transsion.athena.enatha.athena athenaVar) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.location.PROVIDERS_CHANGED");
            if (Build.VERSION.SDK_INT >= 33) {
                f42983m.registerReceiver(new h(), intentFilter, null, athenaVar.b(), 4);
            } else {
                f42983m.registerReceiver(new h(), intentFilter, null, athenaVar.b());
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public void p(String str, TrackData trackData, long j10) {
        try {
            this.f42991c.a(str, trackData, j10);
            com.transsion.athena.taaneh.aethna.a(String.format(Locale.getDefault(), "TrackByAidl tid : %d, eventName : %s", Long.valueOf(j10), str));
        } catch (RemoteException e10) {
            com.transsion.athena.taaneh.aethna.b("TrackByAidl " + e10.getMessage());
        }
    }

    static boolean r(Class cls) {
        List list;
        return (cls == null || (list = f42984n) == null || !list.contains(Integer.valueOf(cls.hashCode()))) ? false : true;
    }

    public static void s(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        ehanat.d(str, obj);
    }

    private static void u(com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.N();
            }
        });
    }

    private void v(String str, TrackData trackData, long j10) {
        if (f42980j == 0 || f42977g == 2) {
            C().a(str, trackData, j10);
            return;
        }
        if (f42983m != null) {
            String str2 = ehanat.f41482h;
            try {
                if (!TextUtils.isEmpty("")) {
                    trackData.a().put("scode", "");
                }
                if (this.f42990b == null) {
                    this.f42990b = Executors.newSingleThreadExecutor();
                }
                A(str, trackData, j10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private static void w(final com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() {
            @Override
            public final void run() {
                AthenaAnalytics.n(athenaVar);
            }
        });
    }

    private static void x(String str, TrackData trackData, long j10) {
        try {
            if (trackData.c() > 524288) {
                com.transsion.athena.taaneh.aethna.b("TrackData size is too large, ignored !!");
                return;
            }
            MMKV.J("AthenaKV", 2).u(Process.myPid() + "_" + j10 + "_" + str + "_" + System.currentTimeMillis(), new TrackDataWrapper(str, trackData, j10));
            com.transsion.athena.taaneh.aethna.a(String.format(Locale.getDefault(), "SaveToMMKV tid : %d, eventName : %s", Long.valueOf(j10), str));
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    private static boolean y() {
        return f42983m.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0;
    }

    private static void z(com.transsion.athena.enatha.athena athenaVar) {
        athenaVar.a(new Runnable() {
            @Override
            public final void run() throws Throwable {
                AthenaAnalytics.W();
            }
        }, 6000L);
    }

    public void g0(String str, TrackData trackData, int i10) {
        h0(str, trackData, i10);
    }

    public void h0(String str, TrackData trackData, long j10) {
        int i10 = com.transsion.athena.taaneh.anehat.f41678e;
        int length = String.valueOf(j10).length();
        if ((length != 8 && length != 12 && length != 4) || TextUtils.isEmpty(str)) {
            com.transsion.athena.taaneh.aethna.a("The parameter tid : " + j10 + " or event name : " + str + " is illegal.");
            return;
        }
        if (!com.transsion.athena.data.athena.a(j10)) {
            com.transsion.athena.taaneh.aethna.a("The tid " + j10 + " is not belong the app");
            return;
        }
        try {
            if (trackData != null) {
                v(str, trackData, j10);
            } else {
                v(str, new TrackData(), j10);
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    void k(int i10, long j10) {
        if (F() && f42980j == 0 && C() != null) {
            Message message = new Message();
            message.what = i10;
            C().a(message, j10);
        }
    }
}

package com.doman.core;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.android.net.p;
import com.android.net.u;
import com.doman.core.a.c;
import com.doman.core.a.f;
import com.doman.core.c.d;
import com.doman.core.c.d.AnonymousClass1;
import com.doman.core.d.g;
import com.doman.core.d.i;
import com.doman.core.d.k;
import com.doman.core.d.l;
import com.doman.core.d.m;
import com.doman.core.d.n;
import com.doman.core.ig.manager.b;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

public class CoreMain {
    private static CoreMain a = null;
    private static Context b = null;
    private static String n = "wssdk_1.0.0.CoreMain";
    private static String o = "MGssp!@$123helloBoy";
    private String c = "";
    private String d = "";
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = "";
    private int i = 0;
    private boolean j = true;
    private i k;
    private k l;
    private com.doman.core.ig.manager.a m;
    private WeakReference<Activity> q;
    private c r;
    private static com.doman.core.manager.a.a p = new com.doman.core.manager.a.a();
    public static final Handler mhandler = new Handler(Looper.getMainLooper());
    public static boolean isvip = false;
    public static boolean isreg = false;

    private CoreMain() {
    }

    public static void b(CoreMain coreMain, Application application) {
        com.doman.core.manager.a.a();
        com.doman.core.manager.a.b();
        try {
            com.doman.core.manager.a.a();
            f fVarB = com.doman.core.manager.a.b();
            boolean z = fVarB != null ? fVarB.o : false;
            com.doman.core.manager.a.a();
            boolean zC = com.doman.core.manager.a.c();
            if (isAppOnForeground(b)) {
                if (z) {
                    com.doman.core.manager.a.a();
                    if (!TextUtils.isEmpty(com.doman.core.manager.a.e())) {
                        n.a(new Runnable() {
                            @Override
                            public final void run() {
                                com.doman.core.manager.a.a();
                                String strE = com.doman.core.manager.a.e();
                                com.doman.core.manager.a.a();
                                f fVarB2 = com.doman.core.manager.a.b();
                                d dVar = new d(strE, fVarB2 != null ? fVarB2.r : 0L, "", "");
                                long jCurrentTimeMillis = dVar.a - System.currentTimeMillis();
                                if (jCurrentTimeMillis >= 0) {
                                    n.a(dVar.new AnonymousClass1(), jCurrentTimeMillis);
                                }
                            }
                        });
                    }
                    n.a(new Runnable() {
                        @Override
                        public final void run() {
                            com.doman.core.manager.a.a();
                            if (TextUtils.isEmpty(com.doman.core.manager.a.f())) {
                                return;
                            }
                            final b bVarA = b.a();
                            com.doman.core.manager.a.a();
                            String strF = com.doman.core.manager.a.f();
                            com.doman.core.manager.a.a();
                            f fVarB2 = com.doman.core.manager.a.b();
                            long j = fVarB2 != null ? fVarB2.F : 0L;
                            bVarA.b = strF;
                            bVarA.a = j;
                            if (j < 0) {
                                bVarA.a = 0L;
                            }
                            n.a(new Runnable() {
                                @Override
                                public final void run() {
                                    if (com.doman.core.d.f.a()) {
                                        b bVar = b.this;
                                        String str = bVar.b;
                                        long unused = b.this.a;
                                        bVar.a(str);
                                    }
                                }
                            }, bVarA.a);
                        }
                    });
                }
                if ((z || zC) && !isreg) {
                    isreg = true;
                    coreMain.a(application);
                }
            }
            l.a("key_ac_sch", z);
        } catch (Throwable unused) {
        }
    }

    public static void c(CoreMain coreMain) {
        try {
            i iVar = coreMain.k;
            if (iVar != null) {
                try {
                    iVar.a();
                } catch (Exception unused) {
                }
            }
            com.doman.core.manager.a.a();
            if (com.doman.core.manager.a.c() && coreMain.m == null) {
                coreMain.m = new com.doman.core.ig.manager.a();
            }
        } catch (Exception unused2) {
        }
    }

    public static void d(CoreMain coreMain) {
        if (coreMain.k == null) {
            i iVar = new i();
            coreMain.k = iVar;
            try {
                iVar.a();
            } catch (Exception unused) {
            }
        }
    }

    public static void e(CoreMain coreMain) {
        com.doman.core.manager.a.a();
        f fVarB = com.doman.core.manager.a.b();
        if ((fVarB != null ? fVarB.x : false) && coreMain.l == null) {
            try {
                coreMain.l = new k();
            } catch (Exception unused) {
            }
        }
    }

    public static String getCurrentProcessName() {
        int iMyPid = Process.myPid();
        Context context = b;
        String str = "";
        if (context == null) {
            return "";
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && activityManager.getRunningAppProcesses() != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == iMyPid) {
                        str = runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public static CoreMain getInstance() {
        if (a == null) {
            synchronized (CoreMain.class) {
                try {
                    if (a == null) {
                        a = new CoreMain();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public static boolean isAppOnForeground(@NonNull Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        String str;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo != null && (str = runningAppProcessInfo.processName) != null && TextUtils.equals(str, context.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isMainProcess() {
        try {
            return b.getPackageName().equals(getCurrentProcessName());
        } catch (Throwable unused) {
            return true;
        }
    }

    public void DebugLog(String str) {
    }

    public void attachBaseContext(Context context) {
        try {
            if (b != null || context == null) {
                return;
            }
            b = context;
        } catch (Exception unused) {
        }
    }

    public String getACName() {
        try {
            WeakReference<Activity> weakReference = this.q;
            return (weakReference == null || weakReference.get() == null || this.q.get().getComponentName() == null) ? "" : this.q.get().getComponentName().getClassName();
        } catch (Exception unused) {
            return "";
        }
    }

    public String getAdSdkSourceFrom() {
        return this.g;
    }

    @NonNull
    public Context getContext() {
        return b;
    }

    public String getDID() {
        return this.e;
    }

    public String getGAID() {
        return this.d;
    }

    public String getLm_mid() {
        return this.f;
    }

    public String getOAID() {
        return this.c;
    }

    public Activity getResumeActivity() {
        WeakReference<Activity> weakReference;
        if (!a(getACName()) || (weakReference = this.q) == null) {
            return null;
        }
        return weakReference.get();
    }

    public String getUA() {
        if (!TextUtils.isEmpty(this.h)) {
            return this.h;
        }
        StringBuilder sb = new StringBuilder("Mozilla/5.0 (Linux; ");
        String strConcat = Build.VERSION.RELEASE;
        if (TextUtils.isEmpty(strConcat)) {
            strConcat = "";
        } else if (!strConcat.contains("Android")) {
            strConcat = "Android ".concat(strConcat);
        }
        sb.append(strConcat);
        sb.append("; ");
        sb.append(Build.MODEL);
        sb.append(" Build/");
        sb.append(Build.ID);
        sb.append("; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36");
        return sb.toString() + " ImgoTV-aphone/7.5.4." + com.doman.core.d.d.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
    }

    public c getmExtendBean() {
        return this.r;
    }

    public void initparams(String str, String str2, String str3) {
        try {
            this.e = str;
            this.g = str2;
            this.f = str3;
        } catch (Exception unused) {
        }
    }

    public void onCreate(final Application application, final String str, final String str2, final boolean z) {
        if (application != null) {
            try {
                if (b == null) {
                    b = application.getApplicationContext();
                    try {
                        if (l.b("key_ac_sch")) {
                            isreg = true;
                            a(application);
                        }
                    } catch (Throwable unused) {
                    }
                }
            } catch (Exception unused2) {
                return;
            }
        }
        n.a(new Runnable() {
            @Override
            public final void run() {
                if (CoreMain.isMainProcess() && CoreMain.this.j) {
                    CoreMain.isvip = z;
                    CoreMain.this.setOAID(str);
                    CoreMain.this.setUA(str2);
                    g.a();
                    CoreMain.a();
                    CoreMain.a(CoreMain.this, application);
                    m.a(application);
                    CoreMain.b(CoreMain.this);
                }
            }
        });
    }

    public void setAdSdkSourceFrom(String str) {
        this.g = str;
    }

    public void setExtendBean(c cVar) {
        this.r = cVar;
    }

    public void setGAID(String str) {
        this.d = str;
    }

    public void setLiveid(String str) {
        com.doman.core.manager.a.a().b = str;
    }

    public void setLm_mid(String str) {
        this.f = str;
    }

    public void setMacAddress(String str) {
        com.doman.core.d.b.a.a(str);
    }

    public void setOAID(String str) {
        this.c = str;
    }

    public void setUA(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.h = str;
    }

    public void setVid(String str) {
        com.doman.core.manager.a.a().a = str;
    }

    public static void a() {
    }

    public static boolean b(CoreMain coreMain) {
        coreMain.j = false;
        return false;
    }

    private void a(Application application) {
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            @Override
            public final void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override
            public final void onActivityDestroyed(Activity activity) {
            }

            @Override
            public final void onActivityPaused(Activity activity) {
            }

            @Override
            public final void onActivityResumed(Activity activity) {
                if (activity != null) {
                    try {
                        if (activity.getComponentName() != null) {
                            CoreMain.this.q = new WeakReference(activity);
                            CoreMain.c(CoreMain.this);
                        }
                    } catch (Exception unused) {
                    }
                }
            }

            @Override
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override
            public final void onActivityStarted(Activity activity) {
            }

            @Override
            public final void onActivityStopped(Activity activity) {
            }
        });
    }

    public static void a(CoreMain coreMain, final Application application) {
        if (com.doman.core.d.f.a()) {
            com.doman.core.b.b bVarA = com.doman.core.b.b.a(application);
            p.b<f> bVar = new p.b<f>() {
                @Override
                public final void a(f fVar) {
                    f fVar2 = fVar;
                    if (fVar2 != null) {
                        try {
                            com.doman.core.manager.a.a();
                            com.doman.core.manager.a.a(fVar2);
                            com.doman.core.manager.a.a();
                            f fVarB = com.doman.core.manager.a.b();
                            if (fVarB != null) {
                                boolean z = fVarB.c;
                            }
                            com.doman.core.manager.a.a();
                            CoreMain.b(CoreMain.this, application);
                            CoreMain.d(CoreMain.this);
                            CoreMain.e(CoreMain.this);
                        } catch (Exception unused) {
                        }
                    }
                }
            };
            p.a aVar = new p.a() {
                @Override
                public final void a(u uVar) {
                    com.doman.core.webview.c.a(com.doman.core.webview.c.S, uVar.toString());
                }
            };
            com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
            try {
                HashMap map = new HashMap();
                JSONObject jSONObject = new JSONObject();
                cVarA.a(jSONObject);
                map.put("params", com.doman.core.b.c.a(jSONObject.toString()));
                cVarA.a.a(new com.doman.core.b.a.f(cVarA.b, com.doman.core.b.c.a(com.doman.core.b.f.INITCONFIG, map), bVar, aVar));
            } catch (Exception unused) {
            }
        }
    }

    private static boolean a(String str) {
        com.doman.core.manager.a.a();
        f fVarB = com.doman.core.manager.a.b();
        if (fVarB != null ? fVarB.s : false) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            com.doman.core.manager.a.a();
            f fVarB2 = com.doman.core.manager.a.b();
            String[] strArr = fVarB2 != null ? fVarB2.C : null;
            if (strArr == null) {
                return false;
            }
            for (String str2 : strArr) {
                String strA = com.doman.core.d.c.b.a(str, o);
                if (strA != null && strA.equals(str2)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}

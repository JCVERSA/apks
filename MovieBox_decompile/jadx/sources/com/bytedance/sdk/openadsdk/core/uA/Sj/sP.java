package com.bytedance.sdk.openadsdk.core.uA.Sj;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import android.util.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class sP {
    private static volatile sP Sj;
    private final ArrayList<String> sP = new ArrayList<>();
    private final AtomicBoolean TKC = new AtomicBoolean(false);
    private long EjP = System.currentTimeMillis();
    private long HiB = 0;
    private long vS = 0;
    private String Jcg = "";
    private String Dq = "";
    private String uA = "";
    private boolean TEQ = false;
    private boolean Ym = false;

    public static sP Sj(Application application) {
        if (Sj == null) {
            synchronized (sP.class) {
                try {
                    if (Sj == null) {
                        sP sPVar = new sP();
                        Sj = sPVar;
                        sPVar.TEQ = Sj((Context) application);
                        Sj.Ym = Sj(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                        Sj.Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void sP(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.sP.contains(localClassName)) {
            this.sP.remove(localClassName);
        }
        if (this.sP.size() == 0) {
            this.EjP = System.currentTimeMillis();
            this.TKC.set(true);
            this.Dq = localClassName;
        }
    }

    private static int Sj(Context context, String str) {
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static boolean Sj(Context context) {
        ApplicationInfo applicationInfo;
        return (context == null || (applicationInfo = context.getApplicationInfo()) == null || (applicationInfo.flags & 1) <= 0) ? false : true;
    }

    public void Sj(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.sP.size() == 0) {
            this.Jcg = localClassName;
            this.HiB = System.currentTimeMillis();
            this.vS = System.currentTimeMillis() - this.EjP;
            this.TKC.set(false);
        }
        if (!this.sP.contains(localClassName)) {
            this.sP.add(localClassName);
        }
        if (localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity") || localClassName.contains("com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity")) {
            return;
        }
        this.uA = localClassName;
    }

    private void Sj() {
        int size;
        boolean z10 = true;
        try {
            Class<?> cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            Method declaredMethod = cls.getDeclaredMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(objInvoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField("activity");
                declaredField3.setAccessible(true);
                for (int i10 = 0; i10 < size; i10++) {
                    Object objValueAt = arrayMap.valueAt(i10);
                    if (!((Boolean) declaredField2.get(objValueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(objValueAt)).getLocalClassName();
                        if (!this.sP.contains(localClassName)) {
                            this.sP.add(localClassName);
                        }
                    }
                }
                AtomicBoolean atomicBoolean = this.TKC;
                if (this.sP.size() > 0) {
                    z10 = false;
                }
                atomicBoolean.set(z10);
            }
        } catch (Throwable unused) {
        }
    }

    public String Sj(String str, long j10, int i10) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - this.HiB;
        long j12 = jCurrentTimeMillis - j10;
        int i11 = j12 < 500 ? 1 : 0;
        if (this.TKC.get() && this.Ym) {
            i11 |= 2;
        }
        if (!this.TKC.get() && this.vS >= 5000 && j11 < 1000) {
            i11 = this.Dq.equals(this.uA) ? i11 | 4 : i11 | 8;
        }
        try {
            string = new JSONObject().put("rst", i11).put("adtag", str).put("bakdur", this.vS).put("rit", i10).put("poptime", j11).put("unlocktime", j12).put("bakground", this.TKC).put("alert", this.Ym).put(NotificationCompat.CATEGORY_SYSTEM, this.TEQ).put("actsize", this.sP.size()).put("mutiproc", com.bytedance.sdk.openadsdk.multipro.sP.TKC()).toString();
        } catch (JSONException unused) {
            string = "";
        }
        this.Jcg = "";
        this.vS = 0L;
        this.HiB = 0L;
        this.EjP = System.currentTimeMillis();
        return string;
    }
}

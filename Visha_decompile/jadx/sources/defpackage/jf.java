package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.material.timepicker.TimeModel;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public abstract class jf {
    public static Application a;
    public static final a b = new a();
    public static final b c = new b();

    public static class a implements Application.ActivityLifecycleCallbacks {
        public final LinkedList b = new LinkedList();
        public Activity c = null;
        public final HashMap d = new HashMap();
        public int e = 0;
        public int f = 0;

        public Activity a() {
            return this.c;
        }

        public final void b(boolean z) {
            if (this.d.isEmpty()) {
                return;
            }
            Iterator it = this.d.values().iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
            }
        }

        public final void c(Activity activity) {
            if (!this.b.contains(activity)) {
                this.b.addLast(activity);
            } else {
                if (((Activity) this.b.getLast()).equals(activity)) {
                    return;
                }
                this.b.remove(activity);
                this.b.addLast(activity);
            }
        }

        @Override
        public void onActivityCreated(Activity activity, Bundle bundle) {
            c(activity);
            this.c = activity;
        }

        @Override
        public void onActivityDestroyed(Activity activity) {
            this.b.remove(activity);
            Activity activity2 = this.c;
            if (activity2 == null || activity2 != activity) {
                return;
            }
            this.c = null;
        }

        @Override
        public void onActivityPaused(Activity activity) {
        }

        @Override
        public void onActivityResumed(Activity activity) {
            this.c = activity;
            c(activity);
        }

        @Override
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public void onActivityStarted(Activity activity) {
            c(activity);
            if (this.e <= 0) {
                b(true);
            }
            int i = this.f;
            if (i < 0) {
                this.f = i + 1;
            } else {
                this.e++;
            }
        }

        @Override
        public void onActivityStopped(Activity activity) {
            if (activity.isChangingConfigurations()) {
                this.f--;
                return;
            }
            int i = this.e - 1;
            this.e = i;
            if (i <= 0) {
                b(false);
            }
        }
    }

    public static class b {
    }

    public static String a(int i) {
        return String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i));
    }

    public static LinkedList b() {
        return b.b;
    }

    public static Application c() {
        Application application = a;
        if (application != null) {
            return application;
        }
        Application applicationE = e();
        l(applicationE);
        return applicationE;
    }

    public static String d(Context context, String str) {
        try {
            try {
                PackageManager packageManager = context.getPackageManager();
                return packageManager.getPackageInfo(str, 0).applicationInfo.loadLabel(packageManager).toString();
            } catch (Exception e) {
                e.printStackTrace();
                Log.d("Utils", "<getAppName> err: " + e.getMessage() + ", and used default.");
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Application e() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (objInvoke != null) {
                return (Application) objInvoke;
            }
            throw new NullPointerException("u should init first");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            throw new NullPointerException("u should init first");
        }
    }

    public static Bundle f(Context context) {
        try {
            String packageName = context.getPackageName();
            return (Bundle) ActivityManager.class.getMethod("getMultiWindowParams", String.class).invoke((ActivityManager) context.getSystemService(ActivityManager.class), packageName);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Context g() {
        return b.a();
    }

    public static String h(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String i(Context context) {
        String string = null;
        try {
            String osType = olb.getOsType();
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo("com.xui.xhide", 128);
            Bundle bundle = applicationInfo.metaData;
            String strD = d(context, "com.xui.xhide");
            if (osType != null) {
                try {
                    if (!TextUtils.isEmpty(osType)) {
                        String[] strArr = olb.a;
                        if (osType.equalsIgnoreCase(strArr[0])) {
                            string = packageManager.getText("com.xui.xhide", bundle.getInt("appNameHIOS"), applicationInfo).toString();
                        } else if (osType.equalsIgnoreCase(strArr[1])) {
                            string = packageManager.getText("com.xui.xhide", bundle.getInt("appNameXOS"), applicationInfo).toString();
                        } else if (osType.equalsIgnoreCase(strArr[2]) || olb.e) {
                            string = packageManager.getText("com.xui.xhide", bundle.getInt("appNameITEL"), applicationInfo).toString();
                        }
                        if (TextUtils.isEmpty(string)) {
                            return strD;
                        }
                        Log.d("Utils", "<getXHideName> app name: " + string);
                        return string;
                    }
                } catch (Exception e) {
                    e = e;
                    string = strD;
                    e.printStackTrace();
                    Log.d("Utils", "<getXHideName> err: " + e.getMessage() + ", and used default.");
                    return string;
                }
            }
            return strD;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static boolean j(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        Log.w("Utils", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public static boolean k(long j, long j2) {
        return Math.abs(System.currentTimeMillis() - j) < j2;
    }

    public static void l(Application application) {
        if (a == null) {
            if (application == null) {
                a = e();
            } else {
                a = application;
            }
            a.registerActivityLifecycleCallbacks(b);
        }
    }

    public static boolean m(Context context) {
        try {
            boolean zBooleanValue = ((Boolean) Configuration.class.getMethod("isThunderbackWindow", null).invoke(context.getResources().getConfiguration(), null)).booleanValue();
            Log.e("Utils", "onConfigurationChanged: " + zBooleanValue);
            return zBooleanValue;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    public static boolean n(int i) {
        return i == 79 || i == 85 || i == 126 || i == 127;
    }

    public static boolean o(Context context) {
        if (!pp3.o()) {
            return false;
        }
        Intent intent = new Intent();
        PackageManager packageManager = context.getPackageManager();
        intent.setClassName("com.xui.xhide", "com.xui.xhide.SecBoxActivity");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        return listQueryIntentActivities != null && listQueryIntentActivities.size() > 0;
    }
}

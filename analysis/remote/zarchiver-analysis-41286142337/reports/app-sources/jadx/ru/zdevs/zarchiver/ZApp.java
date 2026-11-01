package ru.zdevs.zarchiver;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import java.io.InvalidObjectException;
import rikka.shizuku.ShizukuProvider;
import ru.zdevs.zarchiver.service.ZArchiverClearTemp;
import v0.h;

public class ZApp extends Application {

    public static volatile ZApp f1434c;

    public static final Object f1435d = new Object();

    public static Toast f1436e;

    public static ContentResolver f1437f;

    public static final boolean f1438g;

    public Handler f1439a;

    public PendingIntent f1440b;

    public class a implements Runnable {

        public final String f1441a;

        public class C0027a implements y0.a {
        }

        public a(String str) {
            this.f1441a = str;
        }

        @Override
        public final void run() {
            Toast toastMakeText;
            if (Build.VERSION.SDK_INT == 25) {
                ZApp zApp = ZApp.f1434c;
                String str = this.f1441a;
                int i2 = y0.c.f2306b;
                Toast toastMakeText2 = Toast.makeText(zApp, str, 0);
                y0.c.a(toastMakeText2.getView(), new y0.b(zApp, toastMakeText2));
                toastMakeText = new y0.c(zApp, toastMakeText2);
                C0027a c0027a = new C0027a();
                Context context = toastMakeText.getView().getContext();
                if (context instanceof y0.b) {
                    ((y0.b) context).f2302b = c0027a;
                }
            } else {
                toastMakeText = Toast.makeText(ZApp.f1434c, this.f1441a, 0);
            }
            synchronized (ZApp.f1435d) {
                Toast toast = ZApp.f1436e;
                if (toast != null) {
                    toast.cancel();
                }
                ZApp.f1436e = toastMakeText;
                toastMakeText.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            boolean zF = a0.c.F("ru.zdevs.zarchiver");
            f1438g = zF;
            if (zF) {
                return;
            }
            String processName = getProcessName();
            boolean z2 = processName == null || processName.indexOf(58) == -1;
            boolean z3 = ShizukuProvider.f1431a;
            StringBuilder sb = new StringBuilder("Enable built-in multi-process support (from ");
            sb.append(z2 ? "provider process" : "non-provider process");
            sb.append(")");
            Log.d("ShizukuProvider", sb.toString());
            ShizukuProvider.f1432b = z2;
            ShizukuProvider.f1431a = true;
        }
    }

    public static ContentResolver a() {
        ContentResolver contentResolver = f1437f;
        if (contentResolver != null) {
            return contentResolver;
        }
        throw new RuntimeException("ContentResolver is NULL");
    }

    public static ContentResolver b(Context context) {
        if (f1437f == null) {
            f1437f = context.getApplicationContext().getContentResolver();
        }
        return f1437f;
    }

    public static Context c(Context context) {
        return f1434c == null ? context : f1434c;
    }

    public static ZApp d() {
        return f1434c;
    }

    public static ZApp e() throws InvalidObjectException {
        if (f1434c != null) {
            return f1434c;
        }
        throw new InvalidObjectException("App context is NULL");
    }

    public static Handler f() throws InvalidObjectException {
        if (f1434c != null) {
            return f1434c.f1439a;
        }
        throw new InvalidObjectException("App context is NULL");
    }

    public static void g() {
        synchronized (f1435d) {
            Toast toast = f1436e;
            if (toast != null) {
                toast.cancel();
                f1436e = null;
            }
        }
    }

    public static String getProcessName() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return Application.getProcessName();
        }
        try {
            return (String) Class.forName("android.app.ActivityThread").getDeclaredMethod(i2 >= 18 ? "currentProcessName" : "currentPackageName", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void i(int i2) {
        if (f1434c == null) {
            return;
        }
        try {
            j(f1434c.getResources().getString(i2));
        } catch (Exception unused) {
        }
    }

    public static void j(String str) {
        try {
            if (h.e(str)) {
                return;
            }
            f().post(new a(str));
        } catch (Exception unused) {
        }
    }

    @Override
    public final void attachBaseContext(Context context) {
        f1434c = this;
        super.attachBaseContext(context);
    }

    public final void h() {
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        if (alarmManager == null) {
            return;
        }
        PendingIntent pendingIntent = this.f1440b;
        if (pendingIntent == null) {
            this.f1440b = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) ZArchiverClearTemp.class), 301989888);
        } else {
            alarmManager.cancel(pendingIntent);
        }
        alarmManager.set(1, System.currentTimeMillis() + 10800000, this.f1440b);
    }

    @Override
    public final void onCreate() {
        f1434c = this;
        this.f1439a = new Handler(Looper.getMainLooper());
        f1437f = getContentResolver();
        String processName = getProcessName();
        if (processName == null || processName.indexOf(58) == -1) {
            boolean z2 = Build.VERSION.SDK_INT >= 26;
            a0.c.h(this, ".activity.InstallApksDlg", z2);
            a0.c.h(this, ".provider.PluginFileProvider", z2);
            t0.b.m(this, true, null);
        }
        if (Build.VERSION.SDK_INT >= 23 && !f1438g) {
            ShizukuProvider.a(this);
        }
        super.onCreate();
    }

    @Override
    public final void onTerminate() {
        super.onTerminate();
        g();
        e0.h hVar = e0.h.f688d;
        if (hVar != null) {
            hVar.a();
        }
        e0.h.f688d = null;
        f0.a aVar = f0.a.f756e;
        if (aVar != null) {
            aVar.a();
        }
        f0.a.f756e = null;
        f1434c = this;
    }

    @Override
    public final void onTrimMemory(int i2) {
        if (i2 >= 40) {
            f0.a.m().a();
        }
        super.onTrimMemory(i2);
    }
}

package h1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import ru.zdevs.zarchiver.ZApp;

public final class h {

    public class a implements Runnable {

        public final Context f1127a;

        public final Intent f1128b;

        public final ServiceConnection f1129c;

        public a(Context context, Intent intent, ServiceConnection serviceConnection) {
            this.f1127a = context;
            this.f1128b = intent;
            this.f1129c = serviceConnection;
        }

        @Override
        public final void run() {
            Intent intent = this.f1128b;
            Context context = this.f1127a;
            try {
                context.startService(intent);
                context.bindService(intent, this.f1129c, 72);
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            return true;
        }
        if (context == null) {
            context = ZApp.f1434c;
        } else {
            ZApp zApp = ZApp.f1434c;
        }
        if (context == null) {
            return true;
        }
        if (i2 < 30 || (i2 < 33 && z0.e.d(context))) {
            return (context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == -1 || context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == -1) ? false : true;
        }
        return Environment.isExternalStorageManager();
    }

    public static boolean b() {
        ZApp zApp = ZApp.f1434c;
        if (zApp == null) {
            return false;
        }
        return zApp.getPackageManager().canRequestPackageInstalls();
    }

    public static boolean c() {
        ZApp zApp;
        return Build.VERSION.SDK_INT < 33 || (zApp = ZApp.f1434c) == null || zApp.checkSelfPermission("android.permission.POST_NOTIFICATIONS") != -1;
    }

    public static void d(Context context, ru.zdevs.zarchiver.a.C0028a c0028a, IntentFilter intentFilter) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.registerReceiver(c0028a, intentFilter, 4);
        } else {
            context.registerReceiver(c0028a, intentFilter);
        }
    }

    public static void e(Context context, Intent intent) {
        w0.c.h(new f(context, intent));
    }

    public static Handler f(Context context, Intent intent, ServiceConnection serviceConnection) {
        try {
            context.startService(intent);
            context.bindService(intent, serviceConnection, 72);
            return null;
        } catch (IllegalStateException | SecurityException unused) {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.postDelayed(new a(context, intent, serviceConnection), 700L);
            return handler;
        }
    }
}

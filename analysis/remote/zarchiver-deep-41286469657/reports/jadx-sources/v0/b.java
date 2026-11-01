package v0;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.IBinder;
import android.view.WindowManager;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import ru.zdevs.zarchiver.ZApp;

public final class b {
    public static long a() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            String property = System.getProperty("java.vm.version");
            if (!(property != null && property.startsWith("2"))) {
                return i2 < 18 ? c() - 215040 : c() - 317440;
            }
        }
        return Runtime.getRuntime().maxMemory() / 1024;
    }

    public static String b(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static long c() {
        long j2 = 0;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
            for (String line = randomAccessFile.readLine(); line != null; line = randomAccessFile.readLine()) {
                if (line.contains("MemTotal") || line.contains("SwapTotal")) {
                    long j3 = line.contains("mB") ? 1000 : 1;
                    long j4 = Long.parseLong(line.substring(line.lastIndexOf(":") + 1, line.lastIndexOf(" ")).trim());
                    Long.signum(j3);
                    j2 = (j3 * j4) + j2;
                }
            }
            randomAccessFile.close();
        } catch (Exception unused) {
        }
        return j2;
    }

    public static boolean d(Configuration configuration) {
        String str;
        if (Build.VERSION.SDK_INT < 32 || !h() || (configuration.screenLayout & 15) < 3 || (str = Build.DEVICE) == null) {
            return false;
        }
        return str.startsWith("gta") || str.startsWith("gts") || str.startsWith("q") || str.equals("f2q");
    }

    public static boolean e(Context context) {
        Method methodW;
        int identifier;
        if (Build.VERSION.SDK_INT >= 29) {
            String strB = b("qemu.hw.mainkeys");
            if ("1".equals(strB)) {
                return false;
            }
            if ("0".equals(strB) || context == null || (identifier = context.getResources().getIdentifier("config_showNavigationBar", "bool", "android")) <= 0) {
                return true;
            }
            return context.getResources().getBoolean(identifier);
        }
        try {
            Class<?> cls = Class.forName("android.os.ServiceManager");
            IBinder iBinder = (IBinder) cls.getMethod("getService", String.class).invoke(cls, "window");
            Class<?> cls2 = Class.forName("android.view.IWindowManager$Stub");
            Object objInvoke = cls2.getMethod("asInterface", IBinder.class).invoke(cls2, iBinder);
            if (objInvoke == null || (methodW = a0.c.w(objInvoke.getClass(), "hasNavigationBar", new Class[0])) == null) {
                return true;
            }
            return ((Boolean) methodW.invoke(objInvoke, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean f() {
        float refreshRate;
        try {
            refreshRate = ((WindowManager) ZApp.e().getSystemService("window")).getDefaultDisplay().getRefreshRate();
        } catch (Exception unused) {
            refreshRate = 60.0f;
        }
        if (refreshRate < 20.0f) {
            return true;
        }
        String str = Build.MANUFACTURER;
        if (str != null) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contentEquals("onyx") || lowerCase.contentEquals("kobo")) {
                return true;
            }
        }
        String str2 = Build.BRAND;
        if (str2 == null) {
            return false;
        }
        String lowerCase2 = str2.toLowerCase();
        return lowerCase2.contains("boyue") || lowerCase2.contains("onyx") || lowerCase2.contains("tolino");
    }

    public static boolean g(Context context) {
        return context.getResources().getConfiguration().orientation != 2;
    }

    public static boolean h() {
        String str = Build.MANUFACTURER;
        return str != null && h.i(str).contains("samsung");
    }

    public static boolean i(Context context) {
        if (t0.b.l(1)) {
            return false;
        }
        try {
            Resources resources = context.getResources();
            if (Build.VERSION.SDK_INT >= 24) {
                return resources.getConfiguration().screenWidthDp < 360;
            }
            int identifier = resources.getIdentifier("max_action_buttons", "integer", "android");
            return identifier != 0 && resources.getInteger(identifier) <= 2;
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean j(Context context) {
        Resources resources;
        int identifier;
        if (Build.VERSION.SDK_INT >= 21 || !t0.b.l(1) || (identifier = (resources = context.getResources()).getIdentifier("split_action_bar_is_narrow", "bool", "android")) == 0) {
            return false;
        }
        return resources.getBoolean(identifier);
    }
}

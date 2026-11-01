package androidx.core.content;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
import androidx.annotation.ReplaceWith;
import androidx.core.app.LocaleManagerCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.ExecutorCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.util.ObjectsCompat;
import app.fast.ssh.ProtectedFastSSH;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.concurrent.Executor;

public class ContextCompat {
    public static final int RECEIVER_EXPORTED = 2;
    public static final int RECEIVER_NOT_EXPORTED = 4;
    public static final int RECEIVER_VISIBLE_TO_INSTANT_APPS = 1;
    private static final String DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX = ProtectedFastSSH.s("ᇧ");
    private static final String TAG = ProtectedFastSSH.s("ᇨ");
    private static final Object sSync = new Object();

    static class Api21Impl {
        private Api21Impl() {
        }

        static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }

        static Drawable getDrawable(Context context, int i) {
            return context.getDrawable(i);
        }

        static File getNoBackupFilesDir(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static int getColor(Context context, int i) {
            return context.getColor(i);
        }

        static <T> T getSystemService(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        static String getSystemServiceName(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    static class Api24Impl {
        private Api24Impl() {
        }

        static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        static File getDataDir(Context context) {
            return context.getDataDir();
        }

        static boolean isDeviceProtectedStorage(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    static class Api26Impl {
        private Api26Impl() {
        }

        static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
            return ((i & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i & 1) : context.registerReceiver(broadcastReceiver, intentFilter, ContextCompat.obtainAndCheckReceiverPermission(context), handler);
        }

        static ComponentName startForegroundService(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    static class Api28Impl {
        private Api28Impl() {
        }

        static Executor getMainExecutor(Context context) {
            return context.getMainExecutor();
        }
    }

    static class Api30Impl {
        private Api30Impl() {
        }

        static Context createAttributionContext(Context context, String str) {
            return context.createAttributionContext(str);
        }

        static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }

        static Display getDisplayOrDefault(Context context) {
            try {
                return context.getDisplay();
            } catch (UnsupportedOperationException unused) {
                String str = ProtectedFastSSH.s("Ꭰ") + context + ProtectedFastSSH.s("Ꭱ");
                ProtectedFastSSH.s("Ꭲ");
                return ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
            }
        }
    }

    static class Api33Impl {
        private Api33Impl() {
        }

        static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i);
        }
    }

    private static final class LegacyServiceMapHolder {
        static final HashMap<Class<?>, String> SERVICES;

        static {
            HashMap<Class<?>, String> map = new HashMap<>();
            SERVICES = map;
            map.put(SubscriptionManager.class, ProtectedFastSSH.s("Ꭳ"));
            map.put(UsageStatsManager.class, ProtectedFastSSH.s("Ꭴ"));
            map.put(AppWidgetManager.class, ProtectedFastSSH.s("Ꭵ"));
            map.put(BatteryManager.class, ProtectedFastSSH.s("Ꭶ"));
            map.put(CameraManager.class, ProtectedFastSSH.s("Ꭷ"));
            map.put(JobScheduler.class, ProtectedFastSSH.s("Ꭸ"));
            map.put(LauncherApps.class, ProtectedFastSSH.s("Ꭹ"));
            map.put(MediaProjectionManager.class, ProtectedFastSSH.s("Ꭺ"));
            map.put(MediaSessionManager.class, ProtectedFastSSH.s("Ꭻ"));
            map.put(RestrictionsManager.class, ProtectedFastSSH.s("Ꭼ"));
            map.put(TelecomManager.class, ProtectedFastSSH.s("Ꭽ"));
            map.put(TvInputManager.class, ProtectedFastSSH.s("Ꭾ"));
            map.put(AppOpsManager.class, ProtectedFastSSH.s("Ꭿ"));
            map.put(CaptioningManager.class, ProtectedFastSSH.s("Ꮀ"));
            map.put(ConsumerIrManager.class, ProtectedFastSSH.s("Ꮁ"));
            map.put(PrintManager.class, ProtectedFastSSH.s("Ꮂ"));
            map.put(BluetoothManager.class, ProtectedFastSSH.s("Ꮃ"));
            map.put(DisplayManager.class, ProtectedFastSSH.s("Ꮄ"));
            map.put(UserManager.class, ProtectedFastSSH.s("Ꮅ"));
            map.put(InputManager.class, ProtectedFastSSH.s("Ꮆ"));
            map.put(MediaRouter.class, ProtectedFastSSH.s("Ꮇ"));
            map.put(NsdManager.class, ProtectedFastSSH.s("Ꮈ"));
            map.put(AccessibilityManager.class, ProtectedFastSSH.s("Ꮉ"));
            map.put(AccountManager.class, ProtectedFastSSH.s("Ꮊ"));
            map.put(ActivityManager.class, ProtectedFastSSH.s("Ꮋ"));
            map.put(AlarmManager.class, ProtectedFastSSH.s("Ꮌ"));
            map.put(AudioManager.class, ProtectedFastSSH.s("Ꮍ"));
            map.put(ClipboardManager.class, ProtectedFastSSH.s("Ꮎ"));
            map.put(ConnectivityManager.class, ProtectedFastSSH.s("Ꮏ"));
            map.put(DevicePolicyManager.class, ProtectedFastSSH.s("Ꮐ"));
            map.put(DownloadManager.class, ProtectedFastSSH.s("Ꮑ"));
            map.put(DropBoxManager.class, ProtectedFastSSH.s("Ꮒ"));
            map.put(InputMethodManager.class, ProtectedFastSSH.s("Ꮓ"));
            map.put(KeyguardManager.class, ProtectedFastSSH.s("Ꮔ"));
            map.put(LayoutInflater.class, ProtectedFastSSH.s("Ꮕ"));
            map.put(LocationManager.class, ProtectedFastSSH.s("Ꮖ"));
            map.put(NfcManager.class, ProtectedFastSSH.s("Ꮗ"));
            map.put(NotificationManager.class, ProtectedFastSSH.s("Ꮘ"));
            map.put(PowerManager.class, ProtectedFastSSH.s("Ꮙ"));
            map.put(SearchManager.class, ProtectedFastSSH.s("Ꮚ"));
            map.put(SensorManager.class, ProtectedFastSSH.s("Ꮛ"));
            map.put(StorageManager.class, ProtectedFastSSH.s("Ꮜ"));
            map.put(TelephonyManager.class, ProtectedFastSSH.s("Ꮝ"));
            map.put(TextServicesManager.class, ProtectedFastSSH.s("Ꮞ"));
            map.put(UiModeManager.class, ProtectedFastSSH.s("Ꮟ"));
            map.put(UsbManager.class, ProtectedFastSSH.s("Ꮠ"));
            map.put(Vibrator.class, ProtectedFastSSH.s("Ꮡ"));
            map.put(WallpaperManager.class, ProtectedFastSSH.s("Ꮢ"));
            map.put(WifiP2pManager.class, ProtectedFastSSH.s("Ꮣ"));
            map.put(WifiManager.class, ProtectedFastSSH.s("Ꮤ"));
            map.put(WindowManager.class, ProtectedFastSSH.s("Ꮥ"));
        }

        private LegacyServiceMapHolder() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RegisterReceiverFlags {
    }

    protected ContextCompat() {
    }

    public static int checkSelfPermission(Context context, String str) {
        ObjectsCompat.requireNonNull(str, ProtectedFastSSH.s("ᇩ"));
        if (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals(ProtectedFastSSH.s("ᇪ"), str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        return NotificationManagerCompat.from(context).areNotificationsEnabled() ? 0 : -1;
    }

    public static Context createAttributionContext(Context context, String str) {
        return Build.VERSION.SDK_INT >= 30 ? Api30Impl.createAttributionContext(context, str) : context;
    }

    public static Context createDeviceProtectedStorageContext(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.createDeviceProtectedStorageContext(context);
        }
        return null;
    }

    private static File createFilesDir(File file) {
        String strS = ProtectedFastSSH.s("ᇫ");
        synchronized (sSync) {
            if (!file.exists()) {
                if (file.mkdirs()) {
                    return file;
                }
                ProtectedFastSSH.s("ᇨ");
                String str = strS + file.getPath();
            }
            return file;
        }
    }

    public static String getAttributionTag(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getAttributionTag(context);
        }
        return null;
    }

    public static File getCodeCacheDir(Context context) {
        return Api21Impl.getCodeCacheDir(context);
    }

    public static int getColor(Context context, int i) {
        return Api23Impl.getColor(context, i);
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        return ResourcesCompat.getColorStateList(context.getResources(), i, context.getTheme());
    }

    public static Context getContextForLanguage(Context context) {
        LocaleListCompat applicationLocales = LocaleManagerCompat.getApplicationLocales(context);
        if (Build.VERSION.SDK_INT > 32 || applicationLocales.isEmpty()) {
            return context;
        }
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        ConfigurationCompat.setLocales(configuration, applicationLocales);
        return context.createConfigurationContext(configuration);
    }

    public static File getDataDir(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.getDataDir(context);
        }
        String str = context.getApplicationInfo().dataDir;
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static Display getDisplayOrDefault(Context context) {
        return Build.VERSION.SDK_INT >= 30 ? Api30Impl.getDisplayOrDefault(context) : ((WindowManager) context.getSystemService(ProtectedFastSSH.s("ᇬ"))).getDefaultDisplay();
    }

    public static Drawable getDrawable(Context context, int i) {
        return Api21Impl.getDrawable(context, i);
    }

    @ReplaceWith(expression = "context.getExternalCacheDirs()")
    @Deprecated
    public static File[] getExternalCacheDirs(Context context) {
        return context.getExternalCacheDirs();
    }

    @ReplaceWith(expression = "context.getExternalFilesDirs(type)")
    @Deprecated
    public static File[] getExternalFilesDirs(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static Executor getMainExecutor(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? Api28Impl.getMainExecutor(context) : ExecutorCompat.create(new Handler(context.getMainLooper()));
    }

    public static File getNoBackupFilesDir(Context context) {
        return Api21Impl.getNoBackupFilesDir(context);
    }

    @ReplaceWith(expression = "context.getObbDirs()")
    @Deprecated
    public static File[] getObbDirs(Context context) {
        return context.getObbDirs();
    }

    public static String getString(Context context, int i) {
        return getContextForLanguage(context).getString(i);
    }

    public static <T> T getSystemService(Context context, Class<T> cls) {
        return (T) Api23Impl.getSystemService(context, cls);
    }

    public static String getSystemServiceName(Context context, Class<?> cls) {
        return Api23Impl.getSystemServiceName(context, cls);
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.isDeviceProtectedStorage(context);
        }
        return false;
    }

    static String obtainAndCheckReceiverPermission(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getApplicationContext().getPackageName());
        String strS = ProtectedFastSSH.s("ᇧ");
        sb.append(strS);
        String string = sb.toString();
        if (PermissionChecker.checkSelfPermission(context, string) == 0) {
            return string;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            string = ComponentDialog$$ExternalSyntheticApiModelOutline0.m(context) + strS;
            if (PermissionChecker.checkSelfPermission(context, string) == 0) {
                return string;
            }
        }
        throw new RuntimeException(ProtectedFastSSH.s("ᇭ") + string + ProtectedFastSSH.s("ᇮ"));
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return registerReceiver(context, broadcastReceiver, intentFilter, null, null, i);
    }

    public static Intent registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        int i2 = i & 1;
        if (i2 != 0 && (i & 4) != 0) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("ᇯ"));
        }
        if (i2 != 0) {
            i |= 2;
        }
        int i3 = i;
        int i4 = i3 & 2;
        if (i4 == 0 && (i3 & 4) == 0) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("ᇰ"));
        }
        if (i4 != 0 && (i3 & 4) != 0) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("ᇱ"));
        }
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i3);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.registerReceiver(context, broadcastReceiver, intentFilter, str, handler, i3);
        }
        return ((i3 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler) : context.registerReceiver(broadcastReceiver, intentFilter, obtainAndCheckReceiverPermission(context), handler);
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
        return true;
    }

    @ReplaceWith(expression = "context.startActivity(intent, options)")
    @Deprecated
    public static void startActivity(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }

    public static void startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }
}

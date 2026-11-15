package k7;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.camera2.CameraManager;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class a {

    private static String f63740a0;

    private static String f63742b0;

    private static volatile Boolean f63744c0;

    private static volatile String f63746d0;

    private static final boolean f63739a = Log.isLoggable("anti_fraud_log", 3);

    private static Intent f63741b = null;

    private static BroadcastReceiver f63743c = null;

    private static int f63745d = -1;

    private static int f63747e = -1;

    private static int f63748f = -1;

    private static final String[] f63749g = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    private static int f63750h = -1;

    private static int f63751i = -1;

    private static int f63752j = -1;

    private static int f63753k = -1;

    private static final String[] f63754l = {"com.bly.dkplat", "com.by.chaos", "com.lbe.parallel", "com.excelliance.dualaid", "com.lody.virtual", "com.qihoo.magic", "com.dual.dualgenius", "com.jiubang.commerce.gomultiple"};

    private static int f63755m = -1;

    private static final String[] f63756n = {"/dev/socket/qemud", "/dev/qemu_pipe"};

    private static final String[] f63757o = {"goldfish"};

    private static final String[] f63758p = {"/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props"};

    private static int f63759q = -1;

    private static int f63760r = -1;

    private static int f63761s = -1;

    private static boolean f63762t = false;

    private static int f63763u = -1;

    private static String f63764v = "bluetooth_name";

    private static String f63765w = "base_band_version";

    private static String f63766x = "boot_time";

    private static String f63767y = "phone_name";

    private static String f63768z = "ssid";
    private static boolean A = false;
    private static String[] B = new String[0];
    private static String C = "screen_brightness";
    private static String D = "battery_percent";
    private static String E = "charge_type";
    private static String F = "rom_name";
    private static String G = "rom_build_time";
    private static String H = "os_api";
    private static String I = "build_id";
    private static String J = "cpu_cores";
    private static String K = "cpu_cores_cnt";
    private static String L = "cpu_abi";
    private static String M = "cpu_kernel";
    private static String N = "board";
    private static String O = "hard_ware";
    private static String P = "finger_print";
    private static int Q = 0;
    private static boolean R = false;
    private static String S = "phone_height";
    private static int T = 0;
    private static boolean U = false;
    private static int V = 0;
    private static int W = 0;
    private static boolean X = false;
    private static final AtomicBoolean Y = new AtomicBoolean(true);
    private static final Bundle Z = new Bundle();

    class C0786a extends BroadcastReceiver {
        C0786a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            com.cloud.sdk.commonutil.util.c.Log().d("anti_fraud_log", "batteryBroadcastReceiver receive");
        }
    }

    private static String A() {
        if (!"cpu_abi".equals(L)) {
            return L;
        }
        try {
            L = w0(Build.CPU_ABI);
        } catch (Exception e10) {
            L = "";
            r0(Log.getStackTraceString(e10));
        }
        return L;
    }

    private static String B() {
        if (!"cpu_cores".equals(J)) {
            return J;
        }
        try {
            J = w0(Build.CPU_ABI);
        } catch (Exception e10) {
            J = "";
            r0(Log.getStackTraceString(e10));
        }
        return J;
    }

    private static String C() {
        try {
            if (!g0(22)) {
                return "cpu_cores_cnt";
            }
            if (!"cpu_cores_cnt".equals(K)) {
                return K;
            }
            K = Integer.toHexString(g(Runtime.getRuntime().availableProcessors(), E() / 1000));
            return K;
        } catch (Exception e10) {
            K = "";
            r0(Log.getStackTraceString(e10));
        }
    }

    private static String D() {
        if (!"cpu_kernel".equals(M)) {
            return M;
        }
        try {
            M = w0(Build.CPU_ABI2);
        } catch (Exception e10) {
            M = "";
            r0(Log.getStackTraceString(e10));
        }
        return M;
    }

    private static int E() {
        int i10 = 0;
        try {
            FileReader fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                try {
                    i10 = Integer.parseInt(bufferedReader.readLine().trim());
                    bufferedReader.close();
                    fileReader.close();
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    fileReader.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return i10;
    }

    private static String F() {
        try {
            if (!g0(18)) {
                return "bluetooth_name";
            }
            if (!"bluetooth_name".equals(f63764v)) {
                return f63764v;
            }
            if (Build.VERSION.SDK_INT > 30 && androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a().getApplicationContext(), "android.permission.BLUETOOTH_CONNECT") != 0) {
                return f63764v;
            }
            BluetoothAdapter adapter = ((BluetoothManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("bluetooth")).getAdapter();
            f63764v = adapter != null ? w0(adapter.getName()) : "";
            return f63764v;
        } catch (Exception e10) {
            f63764v = "";
            r0(Log.getStackTraceString(e10));
        }
    }

    private static void G() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = statFs.getBlockSizeLong();
            if (blockSizeLong == 0) {
                return;
            }
            long blockCountLong = statFs.getBlockCountLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong();
            V = (int) ((blockCountLong * blockSizeLong) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            W = (int) ((availableBlocksLong * blockSizeLong) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        }
    }

    private static String H() {
        if (!"finger_print".equals(P)) {
            return P;
        }
        try {
            P = w0(Build.FINGERPRINT);
        } catch (Exception e10) {
            P = "";
            r0(Log.getStackTraceString(e10));
        }
        return P;
    }

    private static String I() {
        if (!"hard_ware".equals(O)) {
            return O;
        }
        try {
            O = w0(Build.HARDWARE);
        } catch (Exception e10) {
            O = "";
            r0(Log.getStackTraceString(e10));
        }
        return O;
    }

    private static String J() {
        try {
            if (!g0(23)) {
                return Integer.toHexString(0);
            }
            if (R) {
                return Integer.toHexString(Q);
            }
            R = true;
            String[] cameraIdList = ((CameraManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("camera")).getCameraIdList();
            if (cameraIdList.length > 0) {
                Q = cameraIdList.length;
            }
            return Integer.toHexString(Q);
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
    }

    private static String K() {
        if (!"os_api".equals(H)) {
            return H;
        }
        try {
            H = Integer.toHexString(Build.VERSION.SDK_INT);
        } catch (Exception e10) {
            H = "";
            r0(Log.getStackTraceString(e10));
        }
        return H;
    }

    private static String L() {
        if (!"phone_height".equals(S)) {
            return S;
        }
        try {
            S = Integer.toHexString(g(c.k(), c.j()));
        } catch (Exception e10) {
            S = "";
            r0(Log.getStackTraceString(e10));
        }
        return S;
    }

    private static String M() {
        if (!"phone_name".equals(f63767y)) {
            return f63767y;
        }
        try {
            f63767y = w0(Build.DEVICE);
        } catch (Exception e10) {
            f63767y = "";
            r0(Log.getStackTraceString(e10));
        }
        return f63767y;
    }

    private static String N() {
        if (!"rom_build_time".equals(G)) {
            return G;
        }
        try {
            return Long.toHexString(Build.TIME);
        } catch (Exception e10) {
            G = "";
            r0(Log.getStackTraceString(e10));
            return G;
        }
    }

    private static String O() {
        if (!"rom_name".equals(F)) {
            return F;
        }
        try {
            F = w0(Build.MANUFACTURER);
        } catch (Exception e10) {
            F = "";
            r0(Log.getStackTraceString(e10));
        }
        return F;
    }

    private static String P() {
        return "";
    }

    private static String Q() {
        try {
            if (!g0(20)) {
                return "screen_brightness";
            }
            if (!"screen_brightness".equals(C)) {
                return C;
            }
            C = Integer.toHexString(g(Settings.System.getInt(com.cloud.sdk.commonutil.util.e.a().getContentResolver(), "screen_brightness"), 255));
            return C;
        } catch (Exception e10) {
            C = "";
            r0(Log.getStackTraceString(e10));
        }
    }

    private static String R() {
        if (!"ssid".equals(f63768z)) {
            return f63768z;
        }
        try {
            WifiInfo connectionInfo = ((WifiManager) com.cloud.sdk.commonutil.util.e.a().getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            f63768z = connectionInfo != null ? w0(connectionInfo.getSSID()) : "";
        } catch (Exception e10) {
            f63768z = "";
            r0(Log.getStackTraceString(e10));
        }
        return f63768z;
    }

    private static String S() {
        try {
            if (!g0(25)) {
                return Integer.toHexString(0);
            }
            if (X) {
                return Integer.toHexString(V);
            }
            X = true;
            G();
            return Integer.toHexString(V);
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            return "";
        }
    }

    private static String T() {
        if (!g0(24)) {
            return Integer.toHexString(0);
        }
        if (U) {
            return Integer.toHexString(T);
        }
        U = true;
        try {
            FileReader fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader, 8192);
                try {
                    T = Integer.parseInt(bufferedReader.readLine().split("\\s+")[1]) / 1024;
                    bufferedReader.close();
                    fileReader.close();
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    fileReader.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return Integer.toHexString(T);
    }

    private static String[] U() {
        try {
            if (!g0(19)) {
                return new String[0];
            }
            if (A) {
                return B;
            }
            A = true;
            if (androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a().getApplicationContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 && androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a().getApplicationContext(), "android.permission.ACCESS_WIFI_STATE") == 0) {
                List<ScanResult> scanResults = ((WifiManager) com.cloud.sdk.commonutil.util.e.a().getApplicationContext().getSystemService("wifi")).getScanResults();
                ArrayList arrayList = new ArrayList();
                if (scanResults != null && !scanResults.isEmpty()) {
                    for (int i10 = 0; i10 < scanResults.size(); i10++) {
                        ScanResult scanResult = scanResults.get(i10);
                        if (arrayList.size() > 4) {
                            break;
                        }
                        if (!scanResult.SSID.isEmpty()) {
                            arrayList.add(w0(scanResult.SSID));
                        }
                    }
                }
                B = (String[]) arrayList.toArray(new String[0]);
                return B;
            }
            return B;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
    }

    private static void V() {
        if (f63741b == null) {
            try {
                f63743c = new C0786a();
                if (Build.VERSION.SDK_INT >= 33) {
                    f63741b = com.cloud.sdk.commonutil.util.e.a().registerReceiver(f63743c, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 2);
                } else {
                    f63741b = com.cloud.sdk.commonutil.util.e.a().registerReceiver(f63743c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                }
            } catch (Exception unused) {
            }
        }
    }

    private static int W() {
        try {
            int i10 = 0;
            if (!g0(9)) {
                return 0;
            }
            int i11 = f63751i;
            if (i11 != -1) {
                return i11;
            }
            f63751i = 0;
            boolean zIsEnabled = ((AccessibilityManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("accessibility")).isEnabled();
            boolean zL0 = l0();
            if (zIsEnabled && zL0) {
                i10 = 512;
            }
            f63751i = i10;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63751i;
    }

    private static boolean X(Context context, String str) {
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        String string = Settings.Secure.getString(context.getApplicationContext().getContentResolver(), "enabled_accessibility_services");
        if (string == null) {
            return false;
        }
        simpleStringSplitter.setString(string);
        while (simpleStringSplitter.hasNext()) {
            if (simpleStringSplitter.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private static int Y() {
        try {
            if (!g0(8)) {
                return 0;
            }
            int i10 = f63750h;
            if (i10 != -1) {
                return i10;
            }
            f63750h = 0;
            boolean z10 = true;
            boolean z11 = Settings.Secure.getInt(com.cloud.sdk.commonutil.util.e.a().getContentResolver(), "development_settings_enabled", 0) != 0;
            if (Settings.Secure.getInt(com.cloud.sdk.commonutil.util.e.a().getContentResolver(), "adb_enabled", 0) == 0) {
                z10 = false;
            }
            f63750h = (z11 || z10) ? 256 : 0;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63750h;
    }

    private static int Z() {
        try {
            if (!o0(4)) {
                return 32;
            }
            int i10 = f63747e;
            if (i10 != -1) {
                return i10;
            }
            f63747e = 32;
            PackageManager packageManager = com.cloud.sdk.commonutil.util.e.a().getPackageManager();
            f63747e = packageManager != null ? packageManager.hasSystemFeature("android.hardware.camera.any") : false ? 16 : 0;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63747e;
    }

    private static int a(int i10, int i11) {
        return i10 | i11;
    }

    private static int a0() {
        g0(7);
        return 0;
    }

    private static boolean b() {
        return "android".equalsIgnoreCase(Build.BRAND) || Build.MODEL.toLowerCase().contains(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_SDK);
    }

    private static int b0() {
        try {
            if (!o0(0)) {
                return 2;
            }
            V();
            Intent intent = f63741b;
            if (intent != null) {
                int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
                f();
                if (intExtra == 2) {
                    return 1;
                }
                return intExtra == 1 ? 2 : 0;
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        f();
        return 2;
    }

    private static boolean c() {
        for (String str : f63758p) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private static int c0() {
        try {
            if (!g0(13)) {
                return 0;
            }
            int i10 = f63755m;
            if (i10 != -1) {
                return i10;
            }
            f63755m = 0;
            f63755m = (b() || c() || e() || d()) ? 8192 : 0;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63755m;
    }

    private static boolean d() {
        for (String str : f63756n) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private static int d0() {
        try {
            if (!g0(10)) {
                return 0;
            }
            int i10 = f63752j;
            if (i10 != -1) {
                return i10;
            }
            f63752j = 0;
            f63752j = (j() || i() || k()) ? 1024 : 0;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63752j;
    }

    private static boolean e() {
        File file = new File("/proc/tty/drivers");
        if (file.exists() && file.canRead()) {
            byte[] bArr = new byte[1024];
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    if (fileInputStream.read(bArr) > 0) {
                        String str = new String(bArr);
                        for (String str2 : f63757o) {
                            if (str.contains(str2)) {
                                fileInputStream.close();
                                return true;
                            }
                        }
                    }
                    fileInputStream.close();
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Exception e10) {
                r0(Log.getStackTraceString(e10));
            }
        }
        return false;
    }

    private static int e0() {
        try {
            int i10 = 0;
            if (!g0(16)) {
                return 0;
            }
            int i11 = f63761s;
            if (i11 != -1) {
                return i11;
            }
            f63761s = 0;
            if (androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a(), "android.permission.ACCESS_FINE_LOCATION") == 0 || androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                ((LocationManager) com.cloud.sdk.commonutil.util.e.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).setTestProviderEnabled("gps", true);
                i10 = 65536;
            } else {
                r0("No location permission is currently available");
            }
            f63761s = i10;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63761s;
    }

    private static void f() {
        f63741b = null;
        if (f63743c != null) {
            com.cloud.sdk.commonutil.util.e.a().unregisterReceiver(f63743c);
            f63743c = null;
        }
    }

    private static int f0() {
        return (g0(17) && f63762t) ? 131072 : 0;
    }

    public static int g(int i10, int i11) {
        if (i10 > 65535 || i11 > 65535) {
            return -1;
        }
        return (i10 << 16) ^ i11;
    }

    private static boolean g0(int i10) {
        try {
            String strO = o();
            if (strO.length() < i10 + 1) {
                return true;
            }
            return !(new StringBuilder(strO).reverse().toString().charAt(i10) + "").equals("1");
        } catch (Exception unused) {
            return true;
        }
    }

    private static boolean h(Exception exc) {
        int i10 = 0;
        for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
            if ("com.android.internal.os.ZygoteInit".equals(stackTraceElement.getClassName())) {
                i10++;
                if (i10 == 2) {
                    return true;
                }
            } else {
                if ("com.saurik.substrate.MS$2".equals(stackTraceElement.getClassName()) && "invoked".equals(stackTraceElement.getMethodName())) {
                    return true;
                }
                if ("de.robv.android.xposed.XposedBridge".equals(stackTraceElement.getClassName()) && "main".equals(stackTraceElement.getMethodName())) {
                    return true;
                }
                if ("de.robv.android.xposed.XposedBridge".equals(stackTraceElement.getClassName()) && "handleHookedMethod".equals(stackTraceElement.getMethodName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean h0() {
        if (f63744c0 == null) {
            f63744c0 = Boolean.valueOf(l7.a.e().d("is_open_anti_fraud_sp_key", false));
        }
        return f63744c0.booleanValue();
    }

    private static boolean i() {
        HashSet<String> hashSet = new HashSet();
        try {
            FileReader fileReader = new FileReader("/proc/" + Process.myPid() + "/maps");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.endsWith(".so") || line.endsWith(".jar")) {
                            hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                        }
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                    try {
                        fileReader.close();
                    } catch (Throwable th4) {
                        th.addSuppressed(th4);
                    }
                    throw th;
                }
                for (String str : hashSet) {
                    if (str.contains("com.saurik.substrate")) {
                        bufferedReader.close();
                        fileReader.close();
                        return true;
                    }
                    if (str.contains("XposedBridge.jar")) {
                        bufferedReader.close();
                        fileReader.close();
                        return true;
                    }
                }
                bufferedReader.close();
                fileReader.close();
                return false;
            } catch (Throwable th5) {
                fileReader.close();
                throw th5;
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            return false;
        }
    }

    private static int i0() {
        try {
            int i10 = 0;
            if (!g0(12)) {
                return 0;
            }
            int i11 = f63753k;
            if (i11 != -1) {
                return i11;
            }
            f63753k = 0;
            String path = com.cloud.sdk.commonutil.util.e.a().getFilesDir().getPath();
            for (String str : f63754l) {
                if (path.contains(str)) {
                    i10 = 4096;
                    break;
                }
            }
            f63753k = i10;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63753k;
    }

    private static boolean j() {
        return false;
    }

    private static int j0() {
        g0(11);
        return 0;
    }

    private static boolean k() {
        try {
            throw new AndroidRuntimeException("findhook");
        } catch (Exception e10) {
            return h(e10);
        }
    }

    private static int k0() {
        boolean z10;
        try {
            if (!g0(6)) {
                return 0;
            }
            int i10 = f63748f;
            if (i10 != -1) {
                return i10;
            }
            f63748f = 0;
            String[] strArr = f63749g;
            int length = strArr.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z10 = false;
                    break;
                }
                if (new File(strArr[i11]).exists()) {
                    z10 = true;
                    break;
                }
                i11++;
            }
            String str = Build.TAGS;
            f63748f = ((str != null && str.contains("test-keys")) || z10) ? 64 : 0;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63748f;
    }

    private static void l() {
        Bundle bundle = Z;
        bundle.putString("bbv", r());
        bundle.putString("bt", w());
        bundle.putString("phn", M());
        bundle.putString("si", R());
        bundle.putStringArray("bl", U());
        bundle.putString("sb", Q());
        bundle.putString("bpc", t());
        bundle.putString("ct", y());
        bundle.putString("rn", O());
        bundle.putString(CampaignEx.JSON_KEY_REWARD_TEMPLATE, P());
        bundle.putString("rb", N());
        bundle.putString("oa", K());
        bundle.putString("bi", x());
        bundle.putString("cc", B());
        bundle.putString("ccf", C());
        bundle.putString(DownloadCommon.DOWNLOAD_REPORT_CANCEL, A());
        bundle.putString("ck", D());
        bundle.putString("bd", v());
        bundle.putString("hw", I());
        bundle.putString("fp", H());
        bundle.putString("noc", J());
        bundle.putString("ps", L());
        bundle.putString("tm", T());
        bundle.putString("td", S());
        bundle.putString("am", q());
        bundle.putString(CommonLogUtil.TAG_AD, p());
        bundle.putString("cp", Integer.toHexString(z()));
    }

    private static boolean l0() {
        Intent intent = new Intent("android.accessibilityservice.AccessibilityService");
        intent.addCategory("android.accessibilityservice.category.FEEDBACK_SPOKEN");
        boolean zX = false;
        List<ResolveInfo> listQueryIntentServices = com.cloud.sdk.commonutil.util.e.a().getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices.isEmpty()) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            ArrayList arrayList = new ArrayList();
            Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().service.getPackageName());
            }
            Iterator<ResolveInfo> it2 = listQueryIntentServices.iterator();
            while (it2.hasNext()) {
                if (arrayList.contains(it2.next().serviceInfo.packageName)) {
                    return true;
                }
            }
            return false;
        }
        for (ResolveInfo resolveInfo : listQueryIntentServices) {
            zX |= X(com.cloud.sdk.commonutil.util.e.a(), resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name);
        }
        return zX;
    }

    public static String m() {
        if (!TextUtils.isEmpty(f63742b0)) {
            return f63742b0;
        }
        if (!h0()) {
            r0("=========== getAntiFraudLiteString server close ===========");
            return "";
        }
        if (Y.get()) {
            return "";
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("phn", M());
            bundle.putString("bt", w());
            bundle.putString("si", R());
            bundle.putStringArray("bl", U());
            bundle.putString("sb", Q());
            bundle.putString("bpc", t());
            bundle.putString("rn", O());
            bundle.putString(CampaignEx.JSON_KEY_REWARD_TEMPLATE, P());
            bundle.putString("rb", N());
            bundle.putString("oa", K());
            bundle.putString("cp", Integer.toHexString(z()));
            f63742b0 = n(bundle);
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        if (TextUtils.isEmpty(f63742b0)) {
            f63742b0 = "";
        }
        return f63742b0;
    }

    private static int m0() {
        try {
            if (!o0(2)) {
                return 8;
            }
            int i10 = f63745d;
            if (i10 != -1) {
                return i10;
            }
            if (androidx.core.content.b.checkSelfPermission(com.cloud.sdk.commonutil.util.e.a(), "android.permission.READ_PHONE_STATE") != 0) {
                return 8;
            }
            f63745d = 8;
            TelephonyManager telephonyManager = (TelephonyManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("phone");
            String subscriberId = telephonyManager != null ? telephonyManager.getSubscriberId() : "";
            if (subscriberId == null || subscriberId.length() <= 0) {
                f63745d = 0;
            } else {
                f63745d = 4;
            }
            return f63745d;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
    }

    private static String n(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            Set<String> setKeySet = bundle.keySet();
            sb2.append("bn");
            sb2.append("\u0002");
            sb2.append(F());
            for (String str : setKeySet) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    if (TextUtils.isEmpty((String) obj)) {
                        obj = "\"\"";
                    }
                    sb2.append("\u0001");
                    sb2.append(str);
                    sb2.append("\u0002");
                    sb2.append(obj);
                } else if (obj instanceof Float) {
                    sb2.append("\u0001");
                    sb2.append(str);
                    sb2.append("\u0002");
                    sb2.append(obj);
                } else if (obj instanceof float[]) {
                    sb2.append("\u0001");
                    sb2.append(str);
                    sb2.append("\u0002");
                    sb2.append(Arrays.toString((float[]) obj));
                } else if (obj instanceof String[]) {
                    sb2.append("\u0001");
                    sb2.append(str);
                    sb2.append("\u0002");
                    sb2.append(Arrays.toString((String[]) obj));
                }
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            sb2.append("");
        }
        return com.cloud.sdk.commonutil.util.a.a(sb2.toString());
    }

    public static boolean n0() {
        int i10 = f63763u;
        if (i10 >= 0) {
            return i10 == 1;
        }
        if (TextUtils.equals(o(), "0")) {
            f63763u = 1;
        } else {
            f63763u = g0(27) ? 1 : 0;
        }
        return f63763u == 1;
    }

    public static String o() {
        if (TextUtils.isEmpty(f63746d0)) {
            f63746d0 = l7.a.e().k("anti_fraud_sub_function_sp_key", "");
            if (f63746d0.isEmpty()) {
                f63746d0 = "0";
            }
        }
        return f63746d0;
    }

    private static boolean o0(int i10) {
        try {
            String strO = o();
            if (strO.equals("1")) {
                strO = "01";
            }
            return !new StringBuilder(strO).reverse().toString().substring(i10, i10 + 2).equals("10");
        } catch (Exception unused) {
            return true;
        }
    }

    private static String p() {
        if (X) {
            return Integer.toHexString(W);
        }
        try {
            return Integer.toHexString(W);
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            return "";
        }
    }

    private static int p0() {
        try {
            int i10 = 0;
            if (!g0(15)) {
                return 0;
            }
            int i11 = f63760r;
            if (i11 != -1) {
                return i11;
            }
            f63760r = 0;
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = TmcConstants.COLD_OPEN_TYPE;
            }
            int i12 = Integer.parseInt(property2);
            if (!TextUtils.isEmpty(property) && i12 != -1) {
                i10 = 32768;
            }
            f63760r = i10;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63760r;
    }

    private static String q() {
        try {
            ActivityManager activityManager = (ActivityManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return Integer.toHexString((int) (memoryInfo.availMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED));
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            return "";
        }
    }

    private static int q0() {
        try {
            int i10 = 0;
            if (!g0(14)) {
                return 0;
            }
            int i11 = f63759q;
            if (i11 != -1) {
                return i11;
            }
            f63759q = 0;
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                for (NetworkInterface networkInterface : Collections.list(networkInterfaces)) {
                    if (networkInterface.isUp() && !networkInterface.getInterfaceAddresses().isEmpty()) {
                        if (!"tun0".equals(networkInterface.getName()) && !"ppp0".equals(networkInterface.getName())) {
                        }
                        i10 = 16384;
                        break;
                    }
                    r0("The network is disconnected.");
                }
            }
            f63759q = i10;
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
        return f63759q;
    }

    private static String r() {
        if (!"base_band_version".equals(f63765w)) {
            return f63765w;
        }
        try {
            f63765w = w0(Build.VERSION.INCREMENTAL);
        } catch (Exception e10) {
            f63765w = "";
            r0(Log.getStackTraceString(e10));
        }
        return f63765w;
    }

    public static void r0(String str) {
        if (f63739a) {
            com.cloud.sdk.commonutil.util.c.Log().w("anti_fraud_log", str);
        }
    }

    private static int s() {
        try {
            return ((BatteryManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("batterymanager")).getIntProperty(4);
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            return 0;
        }
    }

    public static void s0() {
        if (!h0()) {
            r0("preloadAntiFraud --> cloud close");
            return;
        }
        try {
            if (!g0(26)) {
                e.q();
            }
            l();
            Y.set(false);
            r0("preloadAntiFraud --> Initialize set tag IS_PRELOAD_LOADING = false");
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
        }
    }

    private static String t() {
        if (!"battery_percent".equals(D)) {
            return D;
        }
        try {
            D = Integer.toHexString(g(s(), u()));
        } catch (Exception e10) {
            D = "";
            r0(Log.getStackTraceString(e10));
        }
        return D;
    }

    public static void t0(String str) {
        r0("cloud antiFraudSubfunctionControl = " + str);
        if (TextUtils.isEmpty(f63746d0) || !f63746d0.equals(str)) {
            f63746d0 = str;
            l7.a.e().r("anti_fraud_sub_function_sp_key", f63746d0);
        }
    }

    private static int u() {
        return 0;
    }

    public static void u0(boolean z10) {
        r0("cloud isOpenAntiFraud = " + z10);
        if (f63744c0 == null || f63744c0.booleanValue() != z10) {
            f63744c0 = Boolean.valueOf(z10);
            if (z10 && Y.get()) {
                r0("saveAntiFraudSwitch --> non preload");
                s0();
            }
            l7.a.e().o("is_open_anti_fraud_sp_key", z10);
        }
    }

    private static String v() {
        if (!"board".equals(N)) {
            return N;
        }
        try {
            N = w0(Build.BOARD);
        } catch (Exception e10) {
            N = "";
            r0(Log.getStackTraceString(e10));
        }
        return N;
    }

    public static void v0(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!TextUtils.isEmpty(f63740a0)) {
            bundle.putString("fraud_data_set", f63740a0);
            return;
        }
        if (!h0()) {
            r0("======= setAntiFraudFullString serve close =========");
            return;
        }
        try {
            if (Y.get()) {
                bundle.putString("fraud_data_set", "");
            } else {
                boolean zM = e.e().m();
                Bundle bundle2 = Z;
                bundle2.putAll(e.k());
                String strN = n(bundle2);
                bundle.putString("fraud_data_set", strN);
                if (zM) {
                    bundle2.clear();
                    f63740a0 = strN;
                }
            }
        } catch (Exception e10) {
            r0(Log.getStackTraceString(e10));
            bundle.putString("fraud_data_set", "");
        }
    }

    private static String w() {
        if (!"boot_time".equals(f63766x)) {
            return f63766x;
        }
        try {
            f63766x = Integer.toHexString((int) ((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000));
        } catch (Exception e10) {
            f63766x = "";
            r0(Log.getStackTraceString(e10));
        }
        return f63766x;
    }

    private static String w0(String str) {
        return (str == null || str.length() <= 100) ? str : str.substring(0, 100);
    }

    private static String x() {
        if (!"build_id".equals(I)) {
            return I;
        }
        try {
            I = w0(Build.ID);
        } catch (Exception e10) {
            I = "";
            r0(Log.getStackTraceString(e10));
        }
        return I;
    }

    private static String y() {
        try {
            if (!g0(21)) {
                return "charge_type";
            }
            if (!"charge_type".equals(E)) {
                return E;
            }
            V();
            Intent intent = f63741b;
            if (intent != null) {
                int intExtra = intent.getIntExtra("plugged", -1);
                if (intExtra == 1) {
                    E = "1";
                } else if (intExtra == 2) {
                    E = "2";
                } else if (intExtra == 4) {
                    E = "3";
                } else {
                    E = "0";
                }
            }
            return E;
        } catch (Exception e10) {
            E = "0";
            r0(Log.getStackTraceString(e10));
        }
    }

    private static int z() {
        return a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(0, b0()), m0()), Z()), k0()), a0()), Y()), W()), d0()), j0()), i0()), c0()), q0()), p0()), e0()), f0());
    }
}

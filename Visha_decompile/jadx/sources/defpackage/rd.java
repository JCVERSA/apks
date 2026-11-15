package defpackage;

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
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
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
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class rd {
    public static String a0;
    public static String b0;
    public static volatile Boolean c0;
    public static volatile String d0;
    public static final boolean a = Log.isLoggable("anti_fraud_log", 3);
    public static Intent b = null;
    public static BroadcastReceiver c = null;
    public static int d = -1;
    public static int e = -1;
    public static int f = -1;
    public static final String[] g = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};
    public static int h = -1;
    public static int i = -1;
    public static int j = -1;
    public static int k = -1;
    public static final String[] l = {"com.bly.dkplat", "com.by.chaos", "com.lbe.parallel", "com.excelliance.dualaid", "com.lody.virtual", "com.qihoo.magic", "com.dual.dualgenius", "com.jiubang.commerce.gomultiple"};
    public static int m = -1;
    public static final String[] n = {"/dev/socket/qemud", "/dev/qemu_pipe"};
    public static final String[] o = {"goldfish"};
    public static final String[] p = {"/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props"};
    public static int q = -1;
    public static int r = -1;
    public static int s = -1;
    public static boolean t = false;
    public static int u = -1;
    public static String v = "bluetooth_name";
    public static String w = "base_band_version";
    public static String x = "boot_time";
    public static String y = "phone_name";
    public static String z = "ssid";
    public static boolean A = false;
    public static String[] B = new String[0];
    public static String C = "screen_brightness";
    public static String D = "battery_percent";
    public static String E = "charge_type";
    public static String F = "rom_name";
    public static String G = "rom_build_time";
    public static String H = "os_api";
    public static String I = "build_id";
    public static String J = "cpu_cores";
    public static String K = "cpu_cores_cnt";
    public static String L = "cpu_abi";
    public static String M = "cpu_kernel";
    public static String N = "board";
    public static String O = "hard_ware";
    public static String P = "finger_print";
    public static int Q = 0;
    public static boolean R = false;
    public static String S = "phone_height";
    public static int T = 0;
    public static boolean U = false;
    public static int V = 0;
    public static int W = 0;
    public static boolean X = false;
    public static final AtomicBoolean Y = new AtomicBoolean(true);
    public static final Bundle Z = new Bundle();

    public class a extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            ja1.Log().d("anti_fraud_log", "batteryBroadcastReceiver receive");
        }
    }

    public static String A() {
        if (!"cpu_abi".equals(L)) {
            return L;
        }
        try {
            L = w0(Build.CPU_ABI);
        } catch (Exception e2) {
            L = "";
            r0(Log.getStackTraceString(e2));
        }
        return L;
    }

    public static String B() {
        if (!"cpu_cores".equals(J)) {
            return J;
        }
        try {
            J = w0(Build.CPU_ABI);
        } catch (Exception e2) {
            J = "";
            r0(Log.getStackTraceString(e2));
        }
        return J;
    }

    public static String C() {
        try {
            if (!g0(22)) {
                return "cpu_cores_cnt";
            }
            if (!"cpu_cores_cnt".equals(K)) {
                return K;
            }
            K = Integer.toHexString(g(Runtime.getRuntime().availableProcessors(), E() / 1000));
            return K;
        } catch (Exception e2) {
            K = "";
            r0(Log.getStackTraceString(e2));
        }
    }

    public static String D() {
        if (!"cpu_kernel".equals(M)) {
            return M;
        }
        try {
            M = w0(Build.CPU_ABI2);
        } catch (Exception e2) {
            M = "";
            r0(Log.getStackTraceString(e2));
        }
        return M;
    }

    public static int E() {
        int i2 = 0;
        try {
            FileReader fileReader = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                try {
                    i2 = Integer.parseInt(bufferedReader.readLine().trim());
                    bufferedReader.close();
                    fileReader.close();
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileReader.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return i2;
    }

    public static String F() {
        try {
            if (!g0(18)) {
                return "bluetooth_name";
            }
            if (!"bluetooth_name".equals(v)) {
                return v;
            }
            if (Build.VERSION.SDK_INT > 30 && ContextCompat.checkSelfPermission(ul4.a().getApplicationContext(), "android.permission.BLUETOOTH_CONNECT") != 0) {
                return v;
            }
            BluetoothAdapter adapter = ((BluetoothManager) ul4.a().getSystemService("bluetooth")).getAdapter();
            v = adapter != null ? w0(adapter.getName()) : "";
            return v;
        } catch (Exception e2) {
            v = "";
            r0(Log.getStackTraceString(e2));
        }
    }

    public static void G() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = statFs.getBlockSizeLong();
            if (blockSizeLong == 0) {
                return;
            }
            long blockCountLong = statFs.getBlockCountLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong();
            V = (int) ((blockCountLong * blockSizeLong) / 1048576);
            W = (int) ((availableBlocksLong * blockSizeLong) / 1048576);
        }
    }

    public static String H() {
        if (!"finger_print".equals(P)) {
            return P;
        }
        try {
            P = w0(Build.FINGERPRINT);
        } catch (Exception e2) {
            P = "";
            r0(Log.getStackTraceString(e2));
        }
        return P;
    }

    public static String I() {
        if (!"hard_ware".equals(O)) {
            return O;
        }
        try {
            O = w0(Build.HARDWARE);
        } catch (Exception e2) {
            O = "";
            r0(Log.getStackTraceString(e2));
        }
        return O;
    }

    public static String J() {
        try {
            if (!g0(23)) {
                return Integer.toHexString(0);
            }
            if (R) {
                return Integer.toHexString(Q);
            }
            R = true;
            String[] cameraIdList = ((CameraManager) ul4.a().getSystemService("camera")).getCameraIdList();
            if (cameraIdList.length > 0) {
                Q = cameraIdList.length;
            }
            return Integer.toHexString(Q);
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
    }

    public static String K() {
        if (!"os_api".equals(H)) {
            return H;
        }
        try {
            H = Integer.toHexString(Build.VERSION.SDK_INT);
        } catch (Exception e2) {
            H = "";
            r0(Log.getStackTraceString(e2));
        }
        return H;
    }

    public static String L() {
        if (!"phone_height".equals(S)) {
            return S;
        }
        try {
            S = Integer.toHexString(g(md8.k(), md8.j()));
        } catch (Exception e2) {
            S = "";
            r0(Log.getStackTraceString(e2));
        }
        return S;
    }

    public static String M() {
        if (!"phone_name".equals(y)) {
            return y;
        }
        try {
            y = w0(Build.DEVICE);
        } catch (Exception e2) {
            y = "";
            r0(Log.getStackTraceString(e2));
        }
        return y;
    }

    public static String N() {
        if (!"rom_build_time".equals(G)) {
            return G;
        }
        try {
            return Long.toHexString(Build.TIME);
        } catch (Exception e2) {
            G = "";
            r0(Log.getStackTraceString(e2));
            return G;
        }
    }

    public static String O() {
        if (!"rom_name".equals(F)) {
            return F;
        }
        try {
            F = w0(Build.MANUFACTURER);
        } catch (Exception e2) {
            F = "";
            r0(Log.getStackTraceString(e2));
        }
        return F;
    }

    public static String P() {
        return "";
    }

    public static String Q() {
        try {
            if (!g0(20)) {
                return "screen_brightness";
            }
            if (!"screen_brightness".equals(C)) {
                return C;
            }
            C = Integer.toHexString(g(Settings.System.getInt(ul4.a().getContentResolver(), "screen_brightness"), 255));
            return C;
        } catch (Exception e2) {
            C = "";
            r0(Log.getStackTraceString(e2));
        }
    }

    public static String R() {
        if (!"ssid".equals(z)) {
            return z;
        }
        try {
            WifiInfo connectionInfo = ((WifiManager) ul4.a().getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            z = connectionInfo != null ? w0(connectionInfo.getSSID()) : "";
        } catch (Exception e2) {
            z = "";
            r0(Log.getStackTraceString(e2));
        }
        return z;
    }

    public static String S() {
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
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            return "";
        }
    }

    public static String T() {
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
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    fileReader.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return Integer.toHexString(T);
    }

    public static String[] U() {
        try {
            if (!g0(19)) {
                return new String[0];
            }
            if (A) {
                return B;
            }
            A = true;
            if (ContextCompat.checkSelfPermission(ul4.a().getApplicationContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(ul4.a().getApplicationContext(), "android.permission.ACCESS_WIFI_STATE") == 0) {
                List<ScanResult> scanResults = ((WifiManager) ul4.a().getApplicationContext().getSystemService("wifi")).getScanResults();
                ArrayList arrayList = new ArrayList();
                if (scanResults != null && !scanResults.isEmpty()) {
                    for (int i2 = 0; i2 < scanResults.size(); i2++) {
                        ScanResult scanResult = scanResults.get(i2);
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
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
    }

    public static void V() {
        if (b == null) {
            try {
                c = new a();
                if (Build.VERSION.SDK_INT >= 33) {
                    b = ul4.a().registerReceiver(c, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 2);
                } else {
                    b = ul4.a().registerReceiver(c, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                }
            } catch (Exception unused) {
            }
        }
    }

    public static int W() {
        try {
            int i2 = 0;
            if (!g0(9)) {
                return 0;
            }
            int i3 = i;
            if (i3 != -1) {
                return i3;
            }
            i = 0;
            boolean zIsEnabled = ((AccessibilityManager) ul4.a().getSystemService("accessibility")).isEnabled();
            boolean zL0 = l0();
            if (zIsEnabled && zL0) {
                i2 = 512;
            }
            i = i2;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return i;
    }

    public static boolean X(Context context, String str) {
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

    public static int Y() {
        try {
            if (!g0(8)) {
                return 0;
            }
            int i2 = h;
            if (i2 != -1) {
                return i2;
            }
            h = 0;
            boolean z2 = true;
            boolean z3 = Settings.Secure.getInt(ul4.a().getContentResolver(), "development_settings_enabled", 0) != 0;
            if (Settings.Secure.getInt(ul4.a().getContentResolver(), "adb_enabled", 0) == 0) {
                z2 = false;
            }
            h = (z3 || z2) ? 256 : 0;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return h;
    }

    public static int Z() {
        try {
            if (!o0(4)) {
                return 32;
            }
            int i2 = e;
            if (i2 != -1) {
                return i2;
            }
            e = 32;
            PackageManager packageManager = ul4.a().getPackageManager();
            e = packageManager != null ? packageManager.hasSystemFeature("android.hardware.camera.any") : false ? 16 : 0;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return e;
    }

    public static int a(int i2, int i3) {
        return i2 | i3;
    }

    public static int a0() {
        g0(7);
        return 0;
    }

    public static boolean b() {
        return ConstantDeviceInfo.APP_PLATFORM.equalsIgnoreCase(Build.BRAND) || Build.MODEL.toLowerCase().contains("sdk");
    }

    public static int b0() {
        try {
            if (!o0(0)) {
                return 2;
            }
            V();
            Intent intent = b;
            if (intent != null) {
                int intExtra = intent.getIntExtra("status", -1);
                f();
                if (intExtra == 2) {
                    return 1;
                }
                return intExtra == 1 ? 2 : 0;
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        f();
        return 2;
    }

    public static boolean c() {
        for (String str : p) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static int c0() {
        try {
            if (!g0(13)) {
                return 0;
            }
            int i2 = m;
            if (i2 != -1) {
                return i2;
            }
            m = 0;
            m = (b() || c() || e() || d()) ? 8192 : 0;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return m;
    }

    public static boolean d() {
        for (String str : n) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static int d0() {
        try {
            if (!g0(10)) {
                return 0;
            }
            int i2 = j;
            if (i2 != -1) {
                return i2;
            }
            j = 0;
            j = (j() || i() || k()) ? 1024 : 0;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return j;
    }

    public static boolean e() {
        File file = new File("/proc/tty/drivers");
        if (file.exists() && file.canRead()) {
            byte[] bArr = new byte[1024];
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    if (fileInputStream.read(bArr) > 0) {
                        String str = new String(bArr);
                        for (String str2 : o) {
                            if (str.contains(str2)) {
                                fileInputStream.close();
                                return true;
                            }
                        }
                    }
                    fileInputStream.close();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                r0(Log.getStackTraceString(e2));
            }
        }
        return false;
    }

    public static int e0() {
        try {
            int i2 = 0;
            if (!g0(16)) {
                return 0;
            }
            int i3 = s;
            if (i3 != -1) {
                return i3;
            }
            s = 0;
            if (ContextCompat.checkSelfPermission(ul4.a(), "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.checkSelfPermission(ul4.a(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                ((LocationManager) ul4.a().getSystemService("location")).setTestProviderEnabled(DownloadFacadeEnum.USER_GPS, true);
                i2 = 65536;
            } else {
                r0("No location permission is currently available");
            }
            s = i2;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return s;
    }

    public static void f() {
        b = null;
        if (c != null) {
            ul4.a().unregisterReceiver(c);
            c = null;
        }
    }

    public static int f0() {
        return (g0(17) && t) ? 131072 : 0;
    }

    public static int g(int i2, int i3) {
        if (i2 > 65535 || i3 > 65535) {
            return -1;
        }
        return (i2 << 16) ^ i3;
    }

    public static boolean g0(int i2) {
        try {
            String strO = o();
            if (strO.length() < i2 + 1) {
                return true;
            }
            return !(new StringBuilder(strO).reverse().toString().charAt(i2) + "").equals("1");
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean h(Exception exc) {
        int i2 = 0;
        for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
            if ("com.android.internal.os.ZygoteInit".equals(stackTraceElement.getClassName())) {
                i2++;
                if (i2 == 2) {
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
        if (c0 == null) {
            c0 = Boolean.valueOf(o9.e().d("is_open_anti_fraud_sp_key", false));
        }
        return c0.booleanValue();
    }

    public static boolean i() {
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
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    try {
                        fileReader.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
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
            } catch (Throwable th4) {
                fileReader.close();
                throw th4;
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            return false;
        }
    }

    public static int i0() {
        try {
            int i2 = 0;
            if (!g0(12)) {
                return 0;
            }
            int i3 = k;
            if (i3 != -1) {
                return i3;
            }
            k = 0;
            String path = ul4.a().getFilesDir().getPath();
            for (String str : l) {
                if (path.contains(str)) {
                    i2 = 4096;
                    break;
                }
            }
            k = i2;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return k;
    }

    public static boolean j() {
        return false;
    }

    public static int j0() {
        g0(11);
        return 0;
    }

    public static boolean k() {
        try {
            throw new AndroidRuntimeException("findhook");
        } catch (Exception e2) {
            return h(e2);
        }
    }

    public static int k0() {
        boolean z2;
        try {
            if (!g0(6)) {
                return 0;
            }
            int i2 = f;
            if (i2 != -1) {
                return i2;
            }
            f = 0;
            String[] strArr = g;
            int length = strArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z2 = false;
                    break;
                }
                if (new File(strArr[i3]).exists()) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            String str = Build.TAGS;
            f = ((str != null && str.contains("test-keys")) || z2) ? 64 : 0;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return f;
    }

    public static void l() {
        Bundle bundle = Z;
        bundle.putString("bbv", r());
        bundle.putString("bt", w());
        bundle.putString("phn", M());
        bundle.putString("si", R());
        bundle.putStringArray(CmcdConfiguration.KEY_BUFFER_LENGTH, U());
        bundle.putString("sb", Q());
        bundle.putString("bpc", t());
        bundle.putString("ct", y());
        bundle.putString("rn", O());
        bundle.putString("rv", P());
        bundle.putString("rb", N());
        bundle.putString("oa", K());
        bundle.putString("bi", x());
        bundle.putString("cc", B());
        bundle.putString("ccf", C());
        bundle.putString("ca", A());
        bundle.putString("ck", D());
        bundle.putString("bd", v());
        bundle.putString("hw", I());
        bundle.putString("fp", H());
        bundle.putString("noc", J());
        bundle.putString("ps", L());
        bundle.putString("tm", T());
        bundle.putString("td", S());
        bundle.putString("am", q());
        bundle.putString("ad", p());
        bundle.putString("cp", Integer.toHexString(z()));
    }

    public static boolean l0() {
        Intent intent = new Intent("android.accessibilityservice.AccessibilityService");
        intent.addCategory("android.accessibilityservice.category.FEEDBACK_SPOKEN");
        boolean zX = false;
        List<ResolveInfo> listQueryIntentServices = ul4.a().getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices.isEmpty()) {
            return false;
        }
        for (ResolveInfo resolveInfo : listQueryIntentServices) {
            zX |= X(ul4.a(), resolveInfo.serviceInfo.packageName + "/" + resolveInfo.serviceInfo.name);
        }
        return zX;
    }

    public static String m() {
        if (!TextUtils.isEmpty(b0)) {
            return b0;
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
            bundle.putStringArray(CmcdConfiguration.KEY_BUFFER_LENGTH, U());
            bundle.putString("sb", Q());
            bundle.putString("bpc", t());
            bundle.putString("rn", O());
            bundle.putString("rv", P());
            bundle.putString("rb", N());
            bundle.putString("oa", K());
            bundle.putString("cp", Integer.toHexString(z()));
            b0 = n(bundle);
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        if (TextUtils.isEmpty(b0)) {
            b0 = "";
        }
        return b0;
    }

    public static int m0() {
        try {
            if (!o0(2)) {
                return 8;
            }
            int i2 = d;
            if (i2 != -1) {
                return i2;
            }
            if (ContextCompat.checkSelfPermission(ul4.a(), "android.permission.READ_PHONE_STATE") != 0) {
                return 8;
            }
            d = 8;
            TelephonyManager telephonyManager = (TelephonyManager) ul4.a().getSystemService("phone");
            String subscriberId = telephonyManager != null ? telephonyManager.getSubscriberId() : "";
            if (subscriberId == null || subscriberId.length() <= 0) {
                d = 0;
            } else {
                d = 4;
            }
            return d;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
    }

    public static String n(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            Set<String> setKeySet = bundle.keySet();
            sb.append("bn");
            sb.append("\u0002");
            sb.append(F());
            for (String str : setKeySet) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    if (TextUtils.isEmpty((String) obj)) {
                        obj = "\"\"";
                    }
                    sb.append("\u0001");
                    sb.append(str);
                    sb.append("\u0002");
                    sb.append(obj);
                } else if (obj instanceof Float) {
                    sb.append("\u0001");
                    sb.append(str);
                    sb.append("\u0002");
                    sb.append(obj);
                } else if (obj instanceof float[]) {
                    sb.append("\u0001");
                    sb.append(str);
                    sb.append("\u0002");
                    sb.append(Arrays.toString((float[]) obj));
                } else if (obj instanceof String[]) {
                    sb.append("\u0001");
                    sb.append(str);
                    sb.append("\u0002");
                    sb.append(Arrays.toString((String[]) obj));
                }
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            sb.append("");
        }
        return i.a(sb.toString());
    }

    public static boolean n0() {
        int i2 = u;
        if (i2 >= 0) {
            return i2 == 1;
        }
        if (TextUtils.equals(o(), "0")) {
            u = 1;
        } else {
            u = g0(27) ? 1 : 0;
        }
        return u == 1;
    }

    public static String o() {
        if (TextUtils.isEmpty(d0)) {
            d0 = o9.e().k("anti_fraud_sub_function_sp_key", "");
            if (d0.isEmpty()) {
                d0 = "0";
            }
        }
        return d0;
    }

    public static boolean o0(int i2) {
        try {
            String strO = o();
            if (strO.equals("1")) {
                strO = "01";
            }
            return !new StringBuilder(strO).reverse().toString().substring(i2, i2 + 2).equals("10");
        } catch (Exception unused) {
            return true;
        }
    }

    public static String p() {
        if (X) {
            return Integer.toHexString(W);
        }
        try {
            return Integer.toHexString(W);
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            return "";
        }
    }

    public static int p0() {
        try {
            int i2 = 0;
            if (!g0(15)) {
                return 0;
            }
            int i3 = r;
            if (i3 != -1) {
                return i3;
            }
            r = 0;
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            int i4 = Integer.parseInt(property2);
            if (!TextUtils.isEmpty(property) && i4 != -1) {
                i2 = 32768;
            }
            r = i2;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return r;
    }

    public static String q() {
        try {
            ActivityManager activityManager = (ActivityManager) ul4.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return Integer.toHexString((int) (memoryInfo.availMem / 1048576));
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            return "";
        }
    }

    public static int q0() {
        try {
            int i2 = 0;
            if (!g0(14)) {
                return 0;
            }
            int i3 = q;
            if (i3 != -1) {
                return i3;
            }
            q = 0;
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                for (NetworkInterface networkInterface : Collections.list(networkInterfaces)) {
                    if (networkInterface.isUp() && !networkInterface.getInterfaceAddresses().isEmpty()) {
                        if (!"tun0".equals(networkInterface.getName()) && !"ppp0".equals(networkInterface.getName())) {
                        }
                        i2 = 16384;
                        break;
                    }
                    r0("The network is disconnected.");
                }
            }
            q = i2;
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
        return q;
    }

    public static String r() {
        if (!"base_band_version".equals(w)) {
            return w;
        }
        try {
            w = w0(Build.VERSION.INCREMENTAL);
        } catch (Exception e2) {
            w = "";
            r0(Log.getStackTraceString(e2));
        }
        return w;
    }

    public static void r0(String str) {
        if (a) {
            ja1.Log().w("anti_fraud_log", str);
        }
    }

    public static int s() {
        try {
            return ((BatteryManager) ul4.a().getSystemService("batterymanager")).getIntProperty(4);
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
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
                mc9.q();
            }
            l();
            Y.set(false);
            r0("preloadAntiFraud --> Initialize set tag IS_PRELOAD_LOADING = false");
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
        }
    }

    public static String t() {
        if (!"battery_percent".equals(D)) {
            return D;
        }
        try {
            D = Integer.toHexString(g(s(), u()));
        } catch (Exception e2) {
            D = "";
            r0(Log.getStackTraceString(e2));
        }
        return D;
    }

    public static void t0(String str) {
        r0("cloud antiFraudSubfunctionControl = " + str);
        if (TextUtils.isEmpty(d0) || !d0.equals(str)) {
            d0 = str;
            o9.e().r("anti_fraud_sub_function_sp_key", d0);
        }
    }

    public static int u() {
        return 0;
    }

    public static void u0(boolean z2) {
        r0("cloud isOpenAntiFraud = " + z2);
        if (c0 == null || c0.booleanValue() != z2) {
            c0 = Boolean.valueOf(z2);
            if (z2 && Y.get()) {
                r0("saveAntiFraudSwitch --> non preload");
                s0();
            }
            o9.e().o("is_open_anti_fraud_sp_key", z2);
        }
    }

    public static String v() {
        if (!"board".equals(N)) {
            return N;
        }
        try {
            N = w0(Build.BOARD);
        } catch (Exception e2) {
            N = "";
            r0(Log.getStackTraceString(e2));
        }
        return N;
    }

    public static void v0(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (!TextUtils.isEmpty(a0)) {
            bundle.putString("fraud_data_set", a0);
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
                boolean zM = mc9.e().m();
                Bundle bundle2 = Z;
                bundle2.putAll(mc9.k());
                String strN = n(bundle2);
                bundle.putString("fraud_data_set", strN);
                if (zM) {
                    bundle2.clear();
                    a0 = strN;
                }
            }
        } catch (Exception e2) {
            r0(Log.getStackTraceString(e2));
            bundle.putString("fraud_data_set", "");
        }
    }

    public static String w() {
        if (!"boot_time".equals(x)) {
            return x;
        }
        try {
            x = Integer.toHexString((int) ((System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000));
        } catch (Exception e2) {
            x = "";
            r0(Log.getStackTraceString(e2));
        }
        return x;
    }

    public static String w0(String str) {
        return (str == null || str.length() <= 100) ? str : str.substring(0, 100);
    }

    public static String x() {
        if (!"build_id".equals(I)) {
            return I;
        }
        try {
            I = w0(Build.ID);
        } catch (Exception e2) {
            I = "";
            r0(Log.getStackTraceString(e2));
        }
        return I;
    }

    public static String y() {
        try {
            if (!g0(21)) {
                return "charge_type";
            }
            if (!"charge_type".equals(E)) {
                return E;
            }
            V();
            Intent intent = b;
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
        } catch (Exception e2) {
            E = "0";
            r0(Log.getStackTraceString(e2));
        }
    }

    public static int z() {
        return a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(0, b0()), m0()), Z()), k0()), a0()), Y()), W()), d0()), j0()), i0()), c0()), q0()), p0()), e0()), f0());
    }
}

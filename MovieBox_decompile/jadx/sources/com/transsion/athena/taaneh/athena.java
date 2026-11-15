package com.transsion.athena.taaneh;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.provider.Settings;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.transsion.athena.AthenaConfig;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.core.utils.c;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class athena {

    private static String f41679a;

    private static WeakReference<Activity> f41680b;

    public static final class aethna {

        private final String f41681a;

        aethna(String str, boolean z10) {
            this.f41681a = str;
        }

        public String a() {
            return this.f41681a;
        }
    }

    private static final class anehat implements ServiceConnection {

        boolean f41682a;

        private final LinkedBlockingQueue<IBinder> f41683b;

        private anehat() {
            this.f41682a = false;
            this.f41683b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() throws InterruptedException {
            if (this.f41682a) {
                throw new IllegalStateException();
            }
            this.f41682a = true;
            return this.f41683b.poll(10L, TimeUnit.SECONDS);
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.f41683b.isEmpty()) {
                    this.f41683b.put(iBinder);
                }
            } catch (InterruptedException e10) {
                e10.printStackTrace();
                Thread.currentThread().interrupt();
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static aethna a(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        anehat anehatVar = new anehat();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, anehatVar, 1)) {
            try {
                try {
                    IBinder iBinderA = anehatVar.a();
                    if (iBinderA != null) {
                        enatha enathaVar = new enatha(iBinderA);
                        aethna aethnaVar = new aethna(enathaVar.a(), enathaVar.a(true));
                        context.unbindService(anehatVar);
                        return aethnaVar;
                    }
                    context.unbindService(anehatVar);
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th2) {
                context.unbindService(anehatVar);
                throw th2;
            }
            context.unbindService(anehatVar);
            throw th2;
        }
        throw new IOException("Google Play connection failed");
    }

    public static String b() {
        char c10;
        try {
            int rawOffset = TimeZone.getDefault().getRawOffset() / 60000;
            if (rawOffset < 0) {
                rawOffset = -rawOffset;
                c10 = '-';
            } else {
                c10 = '+';
            }
            StringBuilder sb2 = new StringBuilder(9);
            sb2.append("GMT");
            sb2.append(c10);
            a(sb2, rawOffset / 60);
            sb2.append(':');
            a(sb2, rawOffset % 60);
            return sb2.toString();
        } catch (Throwable th2) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(th2));
            return "";
        }
    }

    @SuppressLint({"MissingPermission", "PrivateApi", "HardwareIds"})
    public static String c() {
        String serial;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                serial = Build.getSerial();
            } catch (Exception unused) {
                serial = "";
            }
        } else {
            serial = Build.SERIAL;
        }
        try {
            if (TextUtils.isEmpty(serial) || TmcConstants.ROUTE_UNKNOWN.equals(serial)) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                serial = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
        }
        return TextUtils.isEmpty(serial) ? "" : c.a(serial);
    }

    public static Activity d() {
        WeakReference<Activity> weakReference = f41680b;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return f41680b.get();
    }

    public static String e(Context context) {
        try {
            return context.getPackageManager().getInstallerPackageName(h(context));
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
            return "";
        }
    }

    public static String f(Context context) {
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            simOperator = telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
        }
        return (TextUtils.isEmpty(simOperator) || simOperator.length() < 3) ? "" : simOperator.substring(0, 3);
    }

    public static String g(Context context) {
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            simOperator = telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
        }
        return (TextUtils.isEmpty(simOperator) || simOperator.length() < 3) ? "" : simOperator.substring(3);
    }

    public static String h(Context context) {
        try {
            return context.getPackageName();
        } catch (Exception e10) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return "";
        }
    }

    public static int i(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(h(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return 0;
        }
    }

    public static String j(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(h(context), 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return "";
        }
    }

    public static String d(Context context) {
        String str;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                String processName = Application.getProcessName();
                if (!TextUtils.isEmpty(processName)) {
                    return processName;
                }
            }
            try {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses == null) {
                    str = null;
                    break;
                }
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == Process.myPid()) {
                        str = next.processName;
                        break;
                    }
                    str = null;
                    break;
                }
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(str)) {
                try {
                    Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD, false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
                    declaredMethod.setAccessible(true);
                    Object objInvoke = declaredMethod.invoke(null, null);
                    if (!(objInvoke instanceof String)) {
                        return null;
                    }
                    str = (String) objInvoke;
                } catch (Throwable unused2) {
                    return null;
                }
            }
            return str;
        } catch (Exception e10) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f41673a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static List<com.transsion.athena.aatnhe.athena> c(Context context) {
        String strSubstring;
        String strSubstring2;
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        if (!TextUtils.isEmpty(networkOperator)) {
            strSubstring = networkOperator.substring(0, 3);
            strSubstring2 = networkOperator.substring(3);
        } else {
            strSubstring = "";
            strSubstring2 = "";
        }
        List<CellInfo> allCellInfo = telephonyManager.getAllCellInfo();
        ArrayList arrayList = new ArrayList();
        if (allCellInfo != null) {
            com.transsion.athena.aatnhe.athena athenaVar = null;
            for (CellInfo cellInfo : allCellInfo) {
                if (cellInfo instanceof CellInfoGsm) {
                    CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                    CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
                    int asuLevel = cellInfoGsm.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity.getCid() > 0 && cellIdentity.getLac() > 0 && asuLevel != 99) {
                        if (cellIdentity.getMcc() != Integer.MAX_VALUE && cellIdentity.getMnc() != Integer.MAX_VALUE) {
                            athenaVar = new com.transsion.athena.aatnhe.athena(com.transsion.athena.taaneh.anehat.a(cellIdentity.getMcc()), com.transsion.athena.taaneh.anehat.a(cellIdentity.getMnc()), cellIdentity.getCid(), cellIdentity.getLac(), asuLevel, cellInfo.isRegistered());
                        } else {
                            athenaVar = new com.transsion.athena.aatnhe.athena(strSubstring, strSubstring2, cellIdentity.getCid(), cellIdentity.getLac(), asuLevel, cellInfo.isRegistered());
                        }
                    }
                } else if (cellInfo instanceof CellInfoWcdma) {
                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                    CellIdentityWcdma cellIdentity2 = cellInfoWcdma.getCellIdentity();
                    int asuLevel2 = cellInfoWcdma.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity2.getCid() > 0 && cellIdentity2.getLac() > 0 && asuLevel2 != 99) {
                        if (cellIdentity2.getMcc() != Integer.MAX_VALUE && cellIdentity2.getMnc() != Integer.MAX_VALUE) {
                            athenaVar = new com.transsion.athena.aatnhe.athena(com.transsion.athena.taaneh.anehat.a(cellIdentity2.getMcc()), com.transsion.athena.taaneh.anehat.a(cellIdentity2.getMnc()), cellIdentity2.getCid(), cellIdentity2.getLac(), asuLevel2, cellInfo.isRegistered());
                        } else {
                            athenaVar = new com.transsion.athena.aatnhe.athena(strSubstring, strSubstring2, cellIdentity2.getCid(), cellIdentity2.getLac(), asuLevel2, cellInfo.isRegistered());
                        }
                    }
                } else if (cellInfo instanceof CellInfoLte) {
                    CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                    CellIdentityLte cellIdentity3 = cellInfoLte.getCellIdentity();
                    int asuLevel3 = cellInfoLte.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity3.getCi() > 0 && cellIdentity3.getTac() > 0 && asuLevel3 != 99) {
                        if (cellIdentity3.getMcc() != Integer.MAX_VALUE && cellIdentity3.getMnc() != Integer.MAX_VALUE) {
                            athenaVar = new com.transsion.athena.aatnhe.athena(com.transsion.athena.taaneh.anehat.a(cellIdentity3.getMcc()), com.transsion.athena.taaneh.anehat.a(cellIdentity3.getMnc()), cellIdentity3.getCi(), cellIdentity3.getTac(), asuLevel3, cellInfo.isRegistered());
                        } else {
                            athenaVar = new com.transsion.athena.aatnhe.athena(strSubstring, strSubstring2, cellIdentity3.getCi(), cellIdentity3.getTac(), asuLevel3, cellInfo.isRegistered());
                        }
                    }
                }
                if (athenaVar != null && !arrayList.contains(athenaVar)) {
                    arrayList.add(athenaVar);
                }
                if (arrayList.size() == 10) {
                    break;
                }
            }
        }
        Collections.sort(arrayList, new com.transsion.athena.taaneh.enatha());
        return arrayList;
    }

    private static final class enatha implements IInterface {

        private IBinder f41684a;

        enatha(IBinder iBinder) {
            this.f41684a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f41684a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override
        public IBinder asBinder() {
            return this.f41684a;
        }

        boolean a(boolean z10) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f41684a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    public static void b(Activity activity) {
        f41680b = new WeakReference<>(activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    public static boolean b(Context context, File file) throws Throwable {
        Throwable th2;
        ?? r10;
        RandomAccessFile randomAccessFile;
        ?? r11;
        FileLock fileLock;
        FileLock fileLock2;
        if (file == null) {
            return true;
        }
        if (file.getParent().contains(context.getFilesDir().getPath())) {
            File file2 = new File(file.getParent() + File.separator + System.currentTimeMillis());
            file.renameTo(file2);
            return file2.delete();
        }
        FileLock fileLockLock = null;
        try {
            randomAccessFile = new RandomAccessFile(file.getPath(), "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    fileLockLock = channel.lock();
                    File file3 = new File(file.getParent() + File.separator + System.currentTimeMillis());
                    file.renameTo(file3);
                    boolean zDelete = file3.delete();
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        channel.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused3) {
                    }
                    return zDelete;
                } catch (Exception unused4) {
                    fileLock2 = fileLockLock;
                    fileLockLock = channel;
                    FileLock fileLock3 = fileLock2;
                    r11 = fileLockLock;
                    fileLockLock = fileLock3;
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused5) {
                        }
                    }
                    if (r11 != 0) {
                        try {
                            r11.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (randomAccessFile == null) {
                        return false;
                    }
                    try {
                        randomAccessFile.close();
                        return false;
                    } catch (IOException unused7) {
                        return false;
                    }
                } catch (Throwable th3) {
                    fileLock = fileLockLock;
                    fileLockLock = channel;
                    th2 = th3;
                    FileLock fileLock4 = fileLock;
                    r10 = fileLockLock;
                    fileLockLock = fileLock4;
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused8) {
                        }
                    }
                    if (r10 != 0) {
                        try {
                            r10.close();
                        } catch (IOException unused9) {
                        }
                    }
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                            throw th2;
                        } catch (IOException unused10) {
                            throw th2;
                        }
                    }
                    throw th2;
                }
            } catch (Exception unused11) {
                fileLock2 = null;
            } catch (Throwable th4) {
                th2 = th4;
                fileLock = null;
            }
        } catch (Exception unused12) {
            r11 = 0;
            randomAccessFile = null;
        } catch (Throwable th5) {
            th2 = th5;
            r10 = 0;
            randomAccessFile = null;
        }
    }

    private static void a(StringBuilder sb2, int i10) {
        String string = Integer.toString(i10);
        for (int i11 = 0; i11 < 2 - string.length(); i11++) {
            sb2.append('0');
        }
        sb2.append(string);
    }

    public static void a() {
        WeakReference<Activity> weakReference = f41680b;
        if (weakReference != null) {
            weakReference.clear();
            f41680b = null;
        }
    }

    public static void a(Context context, String str) throws Throwable {
        File file = new File(str);
        a(context, file);
        if (file.isDirectory()) {
            if (file.listFiles() == null || file.listFiles().length == 0) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    public static int a(Activity activity) {
        Intent intent;
        ActivityInfo activityInfo;
        Uri referrer;
        if (activity == null || (intent = activity.getIntent()) == null) {
            return 0;
        }
        if (intent.getBooleanExtra(AthenaConfig.ATHENA_PUSH_CALL, false)) {
            return 3;
        }
        String callingPackage = activity.getCallingPackage();
        ResolveInfo resolveInfoResolveActivity = null;
        String str = "";
        if (TextUtils.isEmpty(callingPackage)) {
            Intent intent2 = activity.getIntent();
            if (intent2 == null) {
                referrer = null;
            } else {
                referrer = (Uri) intent2.getParcelableExtra("android.intent.extra.REFERRER");
                if (referrer == null) {
                    String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        referrer = Uri.parse(stringExtra);
                    } else {
                        referrer = activity.getReferrer();
                    }
                }
            }
            if (referrer != null) {
                callingPackage = referrer.getHost();
                if (TextUtils.isEmpty(callingPackage)) {
                    callingPackage = "";
                }
            } else {
                callingPackage = "";
            }
        }
        String packageName = activity.getPackageName();
        if (!TextUtils.isEmpty(callingPackage) && !callingPackage.equals(packageName)) {
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.addCategory("android.intent.category.HOME");
            PackageManager packageManager = activity.getPackageManager();
            if (packageManager != null) {
                try {
                    resolveInfoResolveActivity = packageManager.resolveActivity(intent3, 0);
                } catch (Exception e10) {
                    com.transsion.athena.taaneh.aethna.b(e10.getMessage());
                }
                if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
                    String str2 = activityInfo.packageName;
                    if (!"android".equals(str2) && !TextUtils.isEmpty(str2)) {
                        str = str2;
                    }
                }
            }
            if (!TextUtils.isEmpty(str)) {
                return !callingPackage.equals(str) ? 2 : 1;
            }
            if (!b(activity, callingPackage)) {
                return 2;
            }
        }
        return 1;
    }

    @SuppressLint({"HardwareIds"})
    public static String b(Context context) {
        if (!TextUtils.isEmpty(f41679a)) {
            return f41679a;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!TextUtils.isEmpty(string)) {
                String strTrim = string.trim();
                String strA = TextUtils.isEmpty(strTrim) ? "" : c.a(strTrim);
                f41679a = strA;
                return strA;
            }
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
        }
        return "";
    }

    private static boolean b(Context context, String str) {
        PackageManager packageManager;
        List<ResolveInfo> listQueryIntentActivities;
        if (TextUtils.isEmpty(str) || (packageManager = context.getPackageManager()) == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        try {
            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
            listQueryIntentActivities = null;
        }
        if (listQueryIntentActivities == null) {
            return false;
        }
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && str.equals(activityInfo.packageName)) {
                return true;
            }
        }
        return false;
    }

    public static String b(Context context, int i10) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            String str = (String) telephonyManager.getClass().getMethod("getSubscriberId", Integer.TYPE).invoke(telephonyManager, Integer.valueOf(i10));
            return !TextUtils.isEmpty(str) ? c.a(str) : "";
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(e10.getMessage());
            return "";
        }
    }

    private static void a(Context context, File file) throws Throwable {
        if (file.exists() && file.isDirectory() && file.listFiles() != null) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    b(context, file2);
                } else if (file2.isDirectory()) {
                    a(context, file2);
                }
            }
        }
    }

    public static String a(Context context, int i10) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            Class<?> cls = telephonyManager.getClass();
            Class<?> cls2 = Integer.TYPE;
            String str = (String) cls.getMethod("getImei", cls2).invoke(telephonyManager, Integer.valueOf(i10));
            if (TextUtils.isEmpty(str)) {
                str = (String) telephonyManager.getClass().getMethod("getDeviceId", cls2).invoke(telephonyManager, Integer.valueOf(i10));
            }
            return !TextUtils.isEmpty(str) ? c.a(str) : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static List<File> a(String str) {
        List<File> listA = a(str, new ArrayList(), null);
        if (listA != null && listA.size() > 0) {
            try {
                Collections.sort(listA, new anateh());
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
        return listA;
    }

    public static List<File> a(String str, long j10) {
        List<File> listA = a(str, new ArrayList(), String.valueOf(j10));
        if (listA != null && listA.size() > 0) {
            Collections.sort(listA, new ehanat());
        }
        return listA;
    }

    static List<File> a(String str, List<File> list, String str2) {
        File[] fileArrListFiles;
        if (str == null) {
            return list;
        }
        File file = new File(str);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return list;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                a(file2.getAbsolutePath(), list, str2);
            } else if (str2 == null) {
                list.add(file2);
            } else if (file2.getName().contains(str2)) {
                list.add(file2);
            }
        }
        return list;
    }
}

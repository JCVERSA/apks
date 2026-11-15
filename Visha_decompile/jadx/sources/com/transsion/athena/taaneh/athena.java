package com.transsion.athena.taaneh;

import android.app.Activity;
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
import com.hisavana.common.constant.ComConstants;
import com.transsion.athena.AthenaConfig;
import com.transsion.core.log.ObjectLogUtils;
import defpackage.c4d;
import defpackage.d5d;
import defpackage.ja3;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.time.TimeZones;

public abstract class athena {
    public static String a;
    public static WeakReference b;

    public static final class a {
        public final String a;

        public a(String str, boolean z) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }
    }

    public static final class b implements ServiceConnection {
        public boolean b;
        public final LinkedBlockingQueue c;

        public b() {
            this.b = false;
            this.c = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.b) {
                throw new IllegalStateException();
            }
            this.b = true;
            return (IBinder) this.c.poll(10L, TimeUnit.SECONDS);
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.c.isEmpty()) {
                    this.c.put(iBinder);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                Thread.currentThread().interrupt();
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
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
                    referrer = !TextUtils.isEmpty(stringExtra) ? Uri.parse(stringExtra) : activity.getReferrer();
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
                } catch (Exception e) {
                    c4d.d(e.getMessage());
                }
                if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
                    String str2 = activityInfo.packageName;
                    if (!ConstantDeviceInfo.APP_PLATFORM.equals(str2) && !TextUtils.isEmpty(str2)) {
                        str = str2;
                    }
                }
            }
            if (!TextUtils.isEmpty(str)) {
                return !callingPackage.equals(str) ? 2 : 1;
            }
            if (!p(activity, callingPackage)) {
                return 2;
            }
        }
        return 1;
    }

    public static a b(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            try {
                try {
                    IBinder iBinderA = bVar.a();
                    if (iBinderA != null) {
                        enatha enathaVar = new enatha(iBinderA);
                        a aVar = new a(enathaVar.a(), enathaVar.a(true));
                        context.unbindService(bVar);
                        return aVar;
                    }
                    context.unbindService(bVar);
                } catch (Exception e) {
                    throw e;
                }
            } catch (Throwable th) {
                context.unbindService(bVar);
                throw th;
            }
            context.unbindService(bVar);
            throw th;
        }
        throw new IOException("Google Play connection failed");
    }

    public static String c(Context context, int i) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            Class<?> cls = telephonyManager.getClass();
            Class cls2 = Integer.TYPE;
            String str = (String) cls.getMethod("getImei", cls2).invoke(telephonyManager, Integer.valueOf(i));
            if (TextUtils.isEmpty(str)) {
                str = (String) telephonyManager.getClass().getMethod("getDeviceId", cls2).invoke(telephonyManager, Integer.valueOf(i));
            }
            return !TextUtils.isEmpty(str) ? ja3.a(str) : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static List d(String str) {
        List listF = f(str, new ArrayList(), null);
        if (listF != null && listF.size() > 0) {
            try {
                Collections.sort(listF, new anateh());
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
        return listF;
    }

    public static List e(String str, long j) {
        List listF = f(str, new ArrayList(), String.valueOf(j));
        if (listF != null && listF.size() > 0) {
            Collections.sort(listF, new ehanat());
        }
        return listF;
    }

    public static List f(String str, List list, String str2) {
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
                f(file2.getAbsolutePath(), list, str2);
            } else if (str2 == null) {
                list.add(file2);
            } else if (file2.getName().contains(str2)) {
                list.add(file2);
            }
        }
        return list;
    }

    public static void g() {
        WeakReference weakReference = b;
        if (weakReference != null) {
            weakReference.clear();
            b = null;
        }
    }

    public static void h(Context context, File file) throws Throwable {
        if (file.exists() && file.isDirectory() && file.listFiles() != null) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    o(context, file2);
                } else if (file2.isDirectory()) {
                    h(context, file2);
                }
            }
        }
    }

    public static void i(Context context, String str) throws Throwable {
        File file = new File(str);
        h(context, file);
        if (file.isDirectory()) {
            if (file.listFiles() == null || file.listFiles().length == 0) {
                file.delete();
            }
        }
    }

    public static void j(StringBuilder sb, int i) {
        String string = Integer.toString(i);
        for (int i2 = 0; i2 < 2 - string.length(); i2++) {
            sb.append('0');
        }
        sb.append(string);
    }

    public static String k() {
        char c2;
        try {
            int rawOffset = TimeZone.getDefault().getRawOffset() / ComConstants.defScheduleTime;
            if (rawOffset < 0) {
                rawOffset = -rawOffset;
                c2 = '-';
            } else {
                c2 = '+';
            }
            StringBuilder sb = new StringBuilder(9);
            sb.append(TimeZones.GMT_ID);
            sb.append(c2);
            j(sb, rawOffset / 60);
            sb.append(':');
            j(sb, rawOffset % 60);
            return sb.toString();
        } catch (Throwable th) {
            c4d.d(Log.getStackTraceString(th));
            return "";
        }
    }

    public static String l(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!TextUtils.isEmpty(string)) {
                String strTrim = string.trim();
                String strA = TextUtils.isEmpty(strTrim) ? "" : ja3.a(strTrim);
                a = strA;
                return strA;
            }
        } catch (Exception e) {
            c4d.d(e.getMessage());
        }
        return "";
    }

    public static String m(Context context, int i) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
            String str = (String) telephonyManager.getClass().getMethod("getSubscriberId", Integer.TYPE).invoke(telephonyManager, Integer.valueOf(i));
            return !TextUtils.isEmpty(str) ? ja3.a(str) : "";
        } catch (Exception e) {
            c4d.d(e.getMessage());
            return "";
        }
    }

    public static void n(Activity activity) {
        b = new WeakReference(activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.nio.channels.spi.AbstractInterruptibleChannel] */
    public static boolean o(Context context, File file) throws Throwable {
        Throwable th;
        ?? r7;
        RandomAccessFile randomAccessFile;
        ?? r8;
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
                    r8 = fileLockLock;
                    fileLockLock = fileLock3;
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused5) {
                        }
                    }
                    if (r8 != 0) {
                        try {
                            r8.close();
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
                } catch (Throwable th2) {
                    fileLock = fileLockLock;
                    fileLockLock = channel;
                    th = th2;
                    FileLock fileLock4 = fileLock;
                    r7 = fileLockLock;
                    fileLockLock = fileLock4;
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused8) {
                        }
                    }
                    if (r7 != 0) {
                        try {
                            r7.close();
                        } catch (IOException unused9) {
                        }
                    }
                    if (randomAccessFile == null) {
                        throw th;
                    }
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (IOException unused10) {
                        throw th;
                    }
                }
            } catch (Exception unused11) {
                fileLock2 = null;
            } catch (Throwable th3) {
                th = th3;
                fileLock = null;
            }
        } catch (Exception unused12) {
            r8 = 0;
            randomAccessFile = null;
        } catch (Throwable th4) {
            th = th4;
            r7 = 0;
            randomAccessFile = null;
        }
    }

    public static boolean p(Context context, String str) {
        PackageManager packageManager;
        List<ResolveInfo> listQueryIntentActivities;
        if (TextUtils.isEmpty(str) || (packageManager = context.getPackageManager()) == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        try {
            listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        } catch (Exception e) {
            c4d.d(e.getMessage());
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

    public static String q() {
        String serial;
        try {
            serial = Build.getSerial();
        } catch (Exception unused) {
            serial = "";
        }
        try {
            if (TextUtils.isEmpty(serial) || "unknown".equals(serial)) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                serial = (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            }
        } catch (Exception e) {
            c4d.d(e.getMessage());
        }
        return TextUtils.isEmpty(serial) ? "" : ja3.a(serial);
    }

    public static List r(Context context) {
        String strSubstring;
        String strSubstring2;
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        if (TextUtils.isEmpty(networkOperator)) {
            strSubstring = "";
            strSubstring2 = "";
        } else {
            strSubstring = networkOperator.substring(0, 3);
            strSubstring2 = networkOperator.substring(3);
        }
        List<CellInfo> allCellInfo = telephonyManager.getAllCellInfo();
        ArrayList arrayList = new ArrayList();
        if (allCellInfo != null) {
            d5d d5dVar = null;
            for (CellInfo cellInfo : allCellInfo) {
                if (cellInfo instanceof CellInfoGsm) {
                    CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                    CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
                    int asuLevel = cellInfoGsm.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity.getCid() > 0 && cellIdentity.getLac() > 0 && asuLevel != 99) {
                        d5dVar = (cellIdentity.getMcc() == Integer.MAX_VALUE || cellIdentity.getMnc() == Integer.MAX_VALUE) ? new d5d(strSubstring, strSubstring2, cellIdentity.getCid(), cellIdentity.getLac(), asuLevel, cellInfo.isRegistered()) : new d5d(com.transsion.athena.taaneh.a.c(cellIdentity.getMcc()), com.transsion.athena.taaneh.a.c(cellIdentity.getMnc()), cellIdentity.getCid(), cellIdentity.getLac(), asuLevel, cellInfo.isRegistered());
                    }
                } else if (cellInfo instanceof CellInfoWcdma) {
                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                    CellIdentityWcdma cellIdentity2 = cellInfoWcdma.getCellIdentity();
                    int asuLevel2 = cellInfoWcdma.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity2.getCid() > 0 && cellIdentity2.getLac() > 0 && asuLevel2 != 99) {
                        d5dVar = (cellIdentity2.getMcc() == Integer.MAX_VALUE || cellIdentity2.getMnc() == Integer.MAX_VALUE) ? new d5d(strSubstring, strSubstring2, cellIdentity2.getCid(), cellIdentity2.getLac(), asuLevel2, cellInfo.isRegistered()) : new d5d(com.transsion.athena.taaneh.a.c(cellIdentity2.getMcc()), com.transsion.athena.taaneh.a.c(cellIdentity2.getMnc()), cellIdentity2.getCid(), cellIdentity2.getLac(), asuLevel2, cellInfo.isRegistered());
                    }
                } else if (cellInfo instanceof CellInfoLte) {
                    CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                    CellIdentityLte cellIdentity3 = cellInfoLte.getCellIdentity();
                    int asuLevel3 = cellInfoLte.getCellSignalStrength().getAsuLevel();
                    if (cellIdentity3.getCi() > 0 && cellIdentity3.getTac() > 0 && asuLevel3 != 99) {
                        d5dVar = (cellIdentity3.getMcc() == Integer.MAX_VALUE || cellIdentity3.getMnc() == Integer.MAX_VALUE) ? new d5d(strSubstring, strSubstring2, cellIdentity3.getCi(), cellIdentity3.getTac(), asuLevel3, cellInfo.isRegistered()) : new d5d(com.transsion.athena.taaneh.a.c(cellIdentity3.getMcc()), com.transsion.athena.taaneh.a.c(cellIdentity3.getMnc()), cellIdentity3.getCi(), cellIdentity3.getTac(), asuLevel3, cellInfo.isRegistered());
                    }
                }
                if (d5dVar != null && !arrayList.contains(d5dVar)) {
                    arrayList.add(d5dVar);
                }
                if (arrayList.size() == 10) {
                    break;
                }
            }
        }
        Collections.sort(arrayList, new com.transsion.athena.taaneh.enatha());
        return arrayList;
    }

    public static Activity s() {
        WeakReference weakReference = b;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return (Activity) b.get();
    }

    public static String t(Context context) {
        try {
            return Application.getProcessName();
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public static String u(Context context) {
        try {
            return context.getPackageManager().getInstallerPackageName(x(context));
        } catch (Exception e) {
            c4d.d(e.getMessage());
            return "";
        }
    }

    public static String v(Context context) {
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            simOperator = telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
        }
        return (TextUtils.isEmpty(simOperator) || simOperator.length() < 3) ? "" : simOperator.substring(0, 3);
    }

    public static String w(Context context) {
        String simOperator;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            simOperator = telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
        }
        return (TextUtils.isEmpty(simOperator) || simOperator.length() < 3) ? "" : simOperator.substring(3);
    }

    public static String x(Context context) {
        try {
            return context.getPackageName();
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return "";
        }
    }

    public static int y(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(x(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            c4d.d(Log.getStackTraceString(e));
            return 0;
        }
    }

    public static String z(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(x(context), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            ObjectLogUtils objectLogUtils = c4d.a;
            c4d.d(Log.getStackTraceString(e));
            return "";
        }
    }

    public static final class enatha implements IInterface {
        private IBinder a;

        public enatha(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override
        public IBinder asBinder() {
            return this.a;
        }

        public boolean a(boolean z) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z ? 1 : 0);
                this.a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}

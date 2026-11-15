package com.cloud.sdk.commonutil.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.sdk.oneid.OneID;
import defpackage.ja1;
import defpackage.o9;
import defpackage.ul4;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class DeviceUtil {
    public static String a = "";
    public static String b;
    public static String d;
    public static final AtomicInteger c = new AtomicInteger(0);
    public static String e = "";
    public static int f = 0;
    public static long g = 0;

    public static class AdvertisingIdClient {

        public static final class AdvertisingInterface implements IInterface {
            private final IBinder binder;

            public AdvertisingInterface(IBinder iBinder) {
                this.binder = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.binder;
            }

            public String getId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.binder.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public boolean isLimitAdTrackingEnabled(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.binder.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static final class a {
            public final String a;
            public final boolean b;

            public a(String str, boolean z) {
                this.a = str;
                this.b = z;
            }

            public String a() {
                return this.a;
            }

            public boolean b() {
                return this.b;
            }
        }

        public static final class b implements ServiceConnection {
            public boolean b;
            public final LinkedBlockingQueue c;

            public IBinder a() {
                if (this.b) {
                    throw new IllegalStateException();
                }
                this.b = true;
                return (IBinder) this.c.take();
            }

            @Override
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    this.c.put(iBinder);
                } catch (Exception e) {
                    ja1.Log().e(Log.getStackTraceString(e));
                }
            }

            @Override
            public void onServiceDisconnected(ComponentName componentName) {
            }

            public b() {
                this.b = false;
                this.c = new LinkedBlockingQueue(1);
            }
        }

        public static a a(Context context) throws PackageManager.NameNotFoundException, IOException {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new IllegalStateException("Cannot be called from the main thread");
            }
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            b bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (!context.bindService(intent, bVar, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                try {
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(bVar.a());
                    a aVar = new a(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                    context.unbindService(bVar);
                    return aVar;
                } catch (Exception e) {
                    throw e;
                }
            } catch (Throwable th) {
                context.unbindService(bVar);
                throw th;
            }
        }
    }

    public static boolean b(String str, AtomicInteger atomicInteger, int i) {
        return TextUtils.isEmpty(str) && atomicInteger.getAndIncrement() < i;
    }

    public static long c() {
        try {
            ActivityManager activityManager = (ActivityManager) ul4.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception e2) {
            ja1.Log().d("ssp", "get memoryInfo fail, reason = " + e2.getMessage());
            return 0L;
        }
    }

    public static String d() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i < strArr.length - 1) {
                sb.append(StringUtils.COMMA);
            }
        }
        return sb.toString();
    }

    public static String e() {
        try {
            if (!TextUtils.isEmpty(b)) {
                return b;
            }
            String simCountryIso = ((TelephonyManager) ul4.a().getSystemService("phone")).getSimCountryIso();
            if (TextUtils.isEmpty(simCountryIso)) {
                return "";
            }
            String upperCase = simCountryIso.toUpperCase();
            b = upperCase;
            return upperCase;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String f() {
        if (TextUtils.isEmpty(e)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - g < 10000) {
                return e;
            }
            g = jCurrentTimeMillis;
            e = o9.e().j("device_util_ga_id");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public void run() {
                        DeviceUtil.t();
                    }
                });
            } else {
                t();
            }
        }
        return e;
    }

    public static int g() {
        if (f == 0) {
            f = o9.e().g("is_limit_ad_tracking_enabled", 0);
        }
        return f;
    }

    public static String h() {
        int cid;
        int lac;
        if (!b(a, c, 1)) {
            return a;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) ul4.a().getSystemService("phone");
            CellLocation cellLocation = telephonyManager.getCellLocation();
            if (cellLocation == null) {
                return "";
            }
            if (telephonyManager.getPhoneType() == 2) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                cid = cdmaCellLocation.getBaseStationId();
                lac = cdmaCellLocation.getNetworkId();
            } else {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                cid = gsmCellLocation.getCid();
                lac = gsmCellLocation.getLac();
            }
            String str = cid + "|" + lac;
            a = str;
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String i() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) ul4.a().getApplicationContext().getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if (networkInfo.isConnected()) {
                d = j();
            } else if (networkInfo2.isConnected()) {
                d = q(((WifiManager) ul4.a().getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress());
            }
        } catch (Exception e2) {
            ja1.Log().d("ssp", "获取本地ip地址失败 " + e2.getMessage());
        }
        return d;
    }

    public static String j() {
        String hostAddress = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && s(inetAddressNextElement.getHostAddress())) {
                        hostAddress = inetAddressNextElement.getHostAddress();
                    }
                }
            }
        } catch (SocketException e2) {
            ja1.Log().d("ssp", "获取本地ip地址失败 " + e2.getMessage());
        }
        return hostAddress;
    }

    public static String k() {
        try {
            return OneID.e().a(2411);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int l() {
        return Build.VERSION.SDK_INT;
    }

    public static String m() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) ul4.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String n() {
        return Build.VERSION.RELEASE.replace(ProcessInfo.SPLIT_NEW_VERSION, "");
    }

    public static long o() {
        try {
            ActivityManager activityManager = (ActivityManager) ul4.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem;
        } catch (Exception e2) {
            ja1.Log().d("ssp", "获取本地运行内存失败 " + e2.getMessage());
            return 0L;
        }
    }

    public static String p() {
        return UUID.randomUUID().toString();
    }

    public static String q(int i) {
        return (i & 255) + Consts.DOT + ((i >> 8) & 255) + Consts.DOT + ((i >> 16) & 255) + Consts.DOT + ((i >> 24) & 255);
    }

    public static boolean r() {
        try {
            Context contextA = ul4.a();
            return contextA.getResources() != null && (contextA.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean s(String str) {
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e2) {
            ja1.Log().d("ssp", "获取本地ip地址失败 " + e2.getMessage());
            return false;
        }
    }

    public static void t() {
        try {
            AdvertisingIdClient.a aVarA = AdvertisingIdClient.a(ul4.a());
            if (aVarA == null || aVarA.a().equals(e)) {
                return;
            }
            e = aVarA.a();
            boolean zB = aVarA.b();
            o9.e().r("device_util_ga_id", e);
            o9.e().p("is_limit_ad_tracking_enabled", zB ? 1 : 2);
            ja1.Log().i("ssp", "gaid limit ：" + zB + " GAID is ：" + e);
        } catch (Exception e2) {
            ja1.Log().e("DeviceUtil", Log.getStackTraceString(e2));
        }
    }
}

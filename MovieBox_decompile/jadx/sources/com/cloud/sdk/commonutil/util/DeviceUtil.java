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
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.athena.Constants;
import com.transsion.sdk.oneid.OneID;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class DeviceUtil {

    private static String f22491a = "";

    private static String f22492b;

    private static String f22494d;

    private static final AtomicInteger f22493c = new AtomicInteger(0);

    private static String f22495e = "";

    private static int f22496f = 0;

    private static long f22497g = 0;

    private static class a {

        public static final class C0289a {

            private final String f22498a;

            private final boolean f22499b;

            C0289a(String str, boolean z10) {
                this.f22498a = str;
                this.f22499b = z10;
            }

            public String a() {
                return this.f22498a;
            }

            public boolean b() {
                return this.f22499b;
            }
        }

        private static final class b implements ServiceConnection {

            boolean f22500a;

            private final LinkedBlockingQueue f22501b;

            public IBinder a() {
                if (this.f22500a) {
                    throw new IllegalStateException();
                }
                this.f22500a = true;
                return (IBinder) this.f22501b.take();
            }

            @Override
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    this.f22501b.put(iBinder);
                } catch (Exception e10) {
                    com.cloud.sdk.commonutil.util.c.Log().e(Log.getStackTraceString(e10));
                }
            }

            private b() {
                this.f22500a = false;
                this.f22501b = new LinkedBlockingQueue(1);
            }

            @Override
            public void onServiceDisconnected(ComponentName componentName) {
            }
        }

        private static final class c implements IInterface {

            private final IBinder f22502a;

            c(IBinder iBinder) {
                this.f22502a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f22502a;
            }

            public String getId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    this.f22502a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            boolean isLimitAdTrackingEnabled(boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    this.f22502a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        static C0289a a(Context context) throws PackageManager.NameNotFoundException, IOException {
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
                    c cVar = new c(bVar.a());
                    C0289a c0289a = new C0289a(cVar.getId(), cVar.isLimitAdTrackingEnabled(true));
                    context.unbindService(bVar);
                    return c0289a;
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th2) {
                context.unbindService(bVar);
                throw th2;
            }
        }
    }

    public static boolean b(String str, AtomicInteger atomicInteger, int i10) {
        return TextUtils.isEmpty(str) && atomicInteger.getAndIncrement() < i10;
    }

    public static String c() {
        String[] strArr = Build.SUPPORTED_ABIS;
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            sb2.append(strArr[i10]);
            if (i10 < strArr.length - 1) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    public static String d() {
        try {
            if (!TextUtils.isEmpty(f22492b)) {
                return f22492b;
            }
            String simCountryIso = ((TelephonyManager) e.a().getSystemService("phone")).getSimCountryIso();
            if (TextUtils.isEmpty(simCountryIso)) {
                return "";
            }
            String upperCase = simCountryIso.toUpperCase();
            f22492b = upperCase;
            return upperCase;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String e() {
        if (TextUtils.isEmpty(f22495e)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f22497g < 10000) {
                return f22495e;
            }
            f22497g = jCurrentTimeMillis;
            f22495e = l7.a.e().j("device_util_ga_id");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f22503a.i(new Runnable() {
                    @Override
                    public void run() {
                        DeviceUtil.s();
                    }
                });
            } else {
                s();
            }
        }
        return f22495e;
    }

    public static int f() {
        if (f22496f == 0) {
            f22496f = l7.a.e().g("is_limit_ad_tracking_enabled", 0);
        }
        return f22496f;
    }

    public static String g() {
        int cid;
        int lac;
        if (!b(f22491a, f22493c, 1)) {
            return f22491a;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) e.a().getSystemService("phone");
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
            f22491a = str;
            return str;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String h() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) e.a().getApplicationContext().getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if (networkInfo.isConnected()) {
                f22494d = i();
            } else if (networkInfo2.isConnected()) {
                f22494d = p(((WifiManager) e.a().getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress());
            }
        } catch (Exception e10) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e10.getMessage());
        }
        return f22494d;
    }

    private static String i() {
        String hostAddress = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && r(inetAddressNextElement.getHostAddress())) {
                        hostAddress = inetAddressNextElement.getHostAddress();
                    }
                }
            }
        } catch (SocketException e10) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e10.getMessage());
        }
        return hostAddress;
    }

    public static String j() {
        try {
            return OneID.e().a(Constants.AD_APPID);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int k() {
        return Build.VERSION.SDK_INT;
    }

    public static String l() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) e.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String m() {
        return Build.VERSION.RELEASE.replace(";", "");
    }

    public static long n() {
        try {
            ActivityManager activityManager = (ActivityManager) e.a().getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.totalMem;
        } catch (Exception e10) {
            c.Log().d("ssp", "获取本地运行内存失败 " + e10.getMessage());
            return 0L;
        }
    }

    public static String o() {
        return UUID.randomUUID().toString();
    }

    public static String p(int i10) {
        return (i10 & 255) + "." + ((i10 >> 8) & 255) + "." + ((i10 >> 16) & 255) + "." + ((i10 >> 24) & 255);
    }

    public static boolean q() {
        try {
            Context contextA = e.a();
            return contextA.getResources() != null && (contextA.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean r(String str) {
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e10) {
            c.Log().d("ssp", "获取本地ip地址失败 " + e10.getMessage());
            return false;
        }
    }

    public static void s() {
        try {
            a.C0289a c0289aA = a.a(e.a());
            if (c0289aA == null || c0289aA.a().equals(f22495e)) {
                return;
            }
            f22495e = c0289aA.a();
            boolean zB = c0289aA.b();
            l7.a.e().r("device_util_ga_id", f22495e);
            l7.a.e().p("is_limit_ad_tracking_enabled", zB ? 1 : 2);
            c.Log().i("ssp", "gaid limit ：" + zB + " GAID is ：" + f22495e);
        } catch (Exception e10) {
            c.Log().e("DeviceUtil", Log.getStackTraceString(e10));
        }
    }
}

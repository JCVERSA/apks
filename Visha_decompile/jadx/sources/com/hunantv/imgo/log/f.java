package com.hunantv.imgo.log;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class f {
    public static Boolean a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return Boolean.FALSE;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return Boolean.FALSE;
            }
            return Boolean.TRUE;
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return "UNKNOWN";
        }
        String typeName = activeNetworkInfo.getTypeName();
        if (typeName.equalsIgnoreCase("WIFI")) {
            return "WIFI";
        }
        if (typeName.equalsIgnoreCase("MOBILE")) {
            return TextUtils.isEmpty(Proxy.getDefaultHost()) ? f(context) : "WAP";
        }
        return "UNKNOWN";
    }

    public static String c(Context context) {
        String strB = b(context);
        if (context == null || !a(context).booleanValue()) {
            return ImgoP2pConstants.LOCAL_HOST;
        }
        return "WIFI".equals(strB) ? d(context) : a();
    }

    public static String d(Context context) {
        Context applicationContext;
        WifiManager wifiManager;
        if (context == null || (applicationContext = context.getApplicationContext()) == null || (wifiManager = (WifiManager) applicationContext.getSystemService("wifi")) == null) {
            return "wifiManager not found";
        }
        try {
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo == null) {
                return "wifiManager not found";
            }
            int ipAddress = connectionInfo.getIpAddress();
            return String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255));
        } catch (Exception e) {
            e.printStackTrace();
            return "wifiManager not found";
        }
    }

    public static String e(Context context) {
        Context applicationContext;
        WifiManager wifiManager;
        DhcpInfo dhcpInfo;
        String strB = b(context);
        if (!a(context).booleanValue() || !"WIFI".equals(strB) || (applicationContext = context.getApplicationContext()) == null || (wifiManager = (WifiManager) applicationContext.getSystemService("wifi")) == null || (dhcpInfo = wifiManager.getDhcpInfo()) == null) {
            return "";
        }
        int i = dhcpInfo.gateway;
        return String.format("%d.%d.%d.%d", Integer.valueOf(i & 255), Integer.valueOf((i >> 8) & 255), Integer.valueOf((i >> 16) & 255), Integer.valueOf((i >> 24) & 255));
    }

    private static String f(Context context) {
        int networkType;
        if (context == null) {
            return "UNKNOWN";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return "TM==null";
        }
        try {
            networkType = telephonyManager.getNetworkType();
        } catch (Throwable unused) {
            networkType = 0;
        }
        switch (networkType) {
            case 0:
                return "UNKNOWN";
            case 1:
            case 2:
                return "2G";
            case 3:
                return "3G";
            case 4:
                return "2G";
            case 5:
            case 6:
                return "3G";
            case 7:
                return "2G";
            case 8:
            case 9:
            case 10:
                return "3G";
            case 11:
                return "2G";
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
            default:
                return "4G";
        }
    }

    public static String a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Map<String, Object> a(String str) {
        long jCurrentTimeMillis;
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        boolean z = false;
        InetAddress[] allByName = new InetAddress[0];
        try {
            allByName = InetAddress.getAllByName(str);
            jCurrentTimeMillis = System.currentTimeMillis();
            try {
                if (allByName != null && allByName.length > 0) {
                    for (InetAddress inetAddress : allByName) {
                        arrayList.add(inetAddress.getHostAddress());
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                } else {
                    if (jCurrentTimeMillis - jCurrentTimeMillis2 > 10000) {
                        allByName = InetAddress.getAllByName(str);
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (allByName != null && allByName.length > 0) {
                            for (InetAddress inetAddress2 : allByName) {
                                arrayList.add(inetAddress2.getHostAddress());
                            }
                            jCurrentTimeMillis = System.currentTimeMillis();
                        }
                    }
                    map.put("parseDomainOk", Boolean.valueOf(z));
                    map.put("domainIpList", arrayList);
                    map.put("useTime", Long.valueOf(jCurrentTimeMillis - jCurrentTimeMillis2));
                    map.put("inetAddressList", allByName);
                    return map;
                }
                z = true;
            } catch (UnknownHostException e) {
                e = e;
                z = true;
                e.printStackTrace();
                jCurrentTimeMillis = System.currentTimeMillis();
            }
        } catch (UnknownHostException e2) {
            e = e2;
        }
        map.put("parseDomainOk", Boolean.valueOf(z));
        map.put("domainIpList", arrayList);
        map.put("useTime", Long.valueOf(jCurrentTimeMillis - jCurrentTimeMillis2));
        map.put("inetAddressList", allByName);
        return map;
    }

    public static String a(List<String> list) {
        String str = "";
        if (list == null || list.size() <= 0) {
            return "";
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            str = str + it.next() + StringUtils.COMMA;
        }
        return str.substring(0, str.length() - 1);
    }
}

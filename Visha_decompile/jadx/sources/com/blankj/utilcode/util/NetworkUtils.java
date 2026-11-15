package com.blankj.utilcode.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import androidx.media3.common.C;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class NetworkUtils {
    public static final Set a = new CopyOnWriteArraySet();
    public static Timer b;
    public static b c;

    class AnonymousClass1 extends Utils.Task<Boolean> {
        public AnonymousClass1(Utils.b bVar) {
            super(bVar);
        }

        @Override
        @RequiresPermission("android.permission.INTERNET")
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.n());
        }
    }

    class AnonymousClass2 extends Utils.Task<Boolean> {
        final String val$ip;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Utils.b bVar, String str) {
            super(bVar);
            this.val$ip = str;
        }

        @Override
        @RequiresPermission("android.permission.INTERNET")
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.q(this.val$ip));
        }
    }

    class AnonymousClass3 extends Utils.Task<Boolean> {
        final String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override
        @RequiresPermission("android.permission.INTERNET")
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.p(this.val$domain));
        }
    }

    class AnonymousClass4 extends Utils.Task<Boolean> {
        public AnonymousClass4(Utils.b bVar) {
            super(bVar);
        }

        @Override
        @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.INTERNET"})
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.u());
        }
    }

    class AnonymousClass5 extends Utils.Task<String> {
        final boolean val$useIPv4;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(Utils.b bVar, boolean z) {
            super(bVar);
            this.val$useIPv4 = z;
        }

        @Override
        @RequiresPermission("android.permission.INTERNET")
        public String doInBackground() {
            return NetworkUtils.j(this.val$useIPv4);
        }
    }

    class AnonymousClass6 extends Utils.Task<String> {
        final String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override
        @RequiresPermission("android.permission.INTERNET")
        public String doInBackground() {
            return NetworkUtils.i(this.val$domain);
        }
    }

    class AnonymousClass7 implements Runnable {
        final Utils.b val$consumer;

        public AnonymousClass7(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override
        public void run() {
            if (NetworkUtils.a.isEmpty()) {
                NetworkUtils.a.add(this.val$consumer);
                NetworkUtils.v();
            } else {
                this.val$consumer.accept(NetworkUtils.c);
                NetworkUtils.a.add(this.val$consumer);
            }
        }
    }

    class AnonymousClass9 implements Runnable {
        final Utils.b val$consumer;

        public AnonymousClass9(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override
        public void run() {
            NetworkUtils.a.remove(this.val$consumer);
            if (NetworkUtils.a.isEmpty()) {
                NetworkUtils.x();
            }
        }
    }

    public static final class NetworkChangedReceiver extends BroadcastReceiver {
        public NetworkType a;
        public final Set b = new HashSet();

        public static class a {
            public static final NetworkChangedReceiver a = new NetworkChangedReceiver();
        }

        public static NetworkChangedReceiver e() {
            return a.a;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                h.L(new Runnable() {
                    @Override
                    @RequiresPermission("android.permission.ACCESS_NETWORK_STATE")
                    public void run() {
                        NetworkType networkTypeK = NetworkUtils.k();
                        if (NetworkChangedReceiver.this.a == networkTypeK) {
                            return;
                        }
                        NetworkChangedReceiver.this.a = networkTypeK;
                        if (networkTypeK == NetworkType.NETWORK_NO) {
                            Iterator it = NetworkChangedReceiver.this.b.iterator();
                            while (it.hasNext()) {
                                ((a) it.next()).onDisconnected();
                            }
                        } else {
                            Iterator it2 = NetworkChangedReceiver.this.b.iterator();
                            while (it2.hasNext()) {
                                ((a) it2.next()).a(networkTypeK);
                            }
                        }
                    }
                }, 1000L);
            }
        }

        @RequiresPermission("android.permission.ACCESS_NETWORK_STATE")
        public void registerListener(final a aVar) {
            if (aVar == null) {
                return;
            }
            h.K(new Runnable() {
                @Override
                @RequiresPermission("android.permission.ACCESS_NETWORK_STATE")
                public void run() {
                    int size = NetworkChangedReceiver.this.b.size();
                    NetworkChangedReceiver.this.b.add(aVar);
                    if (size == 0 && NetworkChangedReceiver.this.b.size() == 1) {
                        NetworkChangedReceiver.this.a = NetworkUtils.k();
                        Utils.a().registerReceiver(NetworkChangedReceiver.e(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    }
                }
            });
        }

        public void unregisterListener(final a aVar) {
            if (aVar == null) {
                return;
            }
            h.K(new Runnable() {
                @Override
                public void run() {
                    int size = NetworkChangedReceiver.this.b.size();
                    NetworkChangedReceiver.this.b.remove(aVar);
                    if (size == 1 && NetworkChangedReceiver.this.b.size() == 0) {
                        Utils.a().unregisterReceiver(NetworkChangedReceiver.e());
                    }
                }
            });
        }
    }

    public enum NetworkType {
        NETWORK_ETHERNET,
        NETWORK_WIFI,
        NETWORK_5G,
        NETWORK_4G,
        NETWORK_3G,
        NETWORK_2G,
        NETWORK_UNKNOWN,
        NETWORK_NO
    }

    public interface a {
        void a(NetworkType networkType);

        void onDisconnected();
    }

    public static final class b {
        public List a = new ArrayList();
        public List b = new ArrayList();

        public static List b(List list) {
            ScanResult scanResult;
            if (list == null || list.isEmpty()) {
                return new ArrayList();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ScanResult scanResult2 = (ScanResult) it.next();
                if (!TextUtils.isEmpty(scanResult2.SSID) && ((scanResult = (ScanResult) linkedHashMap.get(scanResult2.SSID)) == null || scanResult.level < scanResult2.level)) {
                    linkedHashMap.put(scanResult2.SSID, scanResult2);
                }
            }
            return new ArrayList(linkedHashMap.values());
        }

        public void c(List list) {
            this.a = list;
            this.b = b(list);
        }
    }

    public static NetworkInfo h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    public static String i(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String j(boolean z) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            LinkedList<InetAddress> linkedList = new LinkedList();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        linkedList.addFirst(inetAddresses.nextElement());
                    }
                }
            }
            for (InetAddress inetAddress : linkedList) {
                if (!inetAddress.isLoopbackAddress()) {
                    String hostAddress = inetAddress.getHostAddress();
                    boolean z2 = hostAddress.indexOf(58) < 0;
                    if (z) {
                        if (z2) {
                            return hostAddress;
                        }
                    } else if (!z2) {
                        int iIndexOf = hostAddress.indexOf(37);
                        return iIndexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, iIndexOf).toUpperCase();
                    }
                }
            }
            return "";
        } catch (SocketException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static NetworkType k() {
        if (r()) {
            return NetworkType.NETWORK_ETHERNET;
        }
        NetworkInfo networkInfoH = h();
        if (networkInfoH == null || !networkInfoH.isAvailable()) {
            return NetworkType.NETWORK_NO;
        }
        if (networkInfoH.getType() == 1) {
            return NetworkType.NETWORK_WIFI;
        }
        if (networkInfoH.getType() != 0) {
            return NetworkType.NETWORK_UNKNOWN;
        }
        switch (networkInfoH.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkType.NETWORK_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkType.NETWORK_3G;
            case 13:
            case 18:
                return NetworkType.NETWORK_4G;
            case 19:
            default:
                String subtypeName = networkInfoH.getSubtypeName();
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? NetworkType.NETWORK_3G : NetworkType.NETWORK_UNKNOWN;
            case 20:
                return NetworkType.NETWORK_5G;
        }
    }

    public static boolean l() {
        WifiManager wifiManager = (WifiManager) Utils.a().getSystemService("wifi");
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    public static b m() {
        List<ScanResult> scanResults;
        b bVar = new b();
        if (l() && (scanResults = ((WifiManager) Utils.a().getSystemService("wifi")).getScanResults()) != null) {
            bVar.c(scanResults);
        }
        return bVar;
    }

    public static boolean n() {
        return o() || q(null);
    }

    public static boolean o() {
        return p("");
    }

    public static boolean p(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "www.baidu.com";
        }
        try {
            return InetAddress.getByName(str) != null;
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean q(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "223.5.5.5";
        }
        return f.a(String.format("ping -c 1 %s", str), false).a == 0;
    }

    public static boolean r() {
        NetworkInfo networkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || (state = networkInfo.getState()) == null) {
            return false;
        }
        return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
    }

    @RequiresPermission("android.permission.ACCESS_NETWORK_STATE")
    public static void registerNetworkStatusChangedListener(a aVar) {
        NetworkChangedReceiver.e().registerListener(aVar);
    }

    public static boolean s(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult != null && scanResult2 != null && h.f(scanResult.BSSID, scanResult2.BSSID) && h.f(scanResult.SSID, scanResult2.SSID) && h.f(scanResult.capabilities, scanResult2.capabilities) && scanResult.level == scanResult2.level;
    }

    public static boolean t(List list, List list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!s((ScanResult) list.get(i), (ScanResult) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean u() {
        return l() && n();
    }

    public static void unregisterNetworkStatusChangedListener(a aVar) {
        NetworkChangedReceiver.e().unregisterListener(aVar);
    }

    public static void v() {
        c = new b();
        Timer timer = new Timer();
        b = timer;
        timer.schedule(new TimerTask() {
            @Override
            @RequiresPermission(allOf = {"android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION"})
            public void run() {
                NetworkUtils.w();
                b bVarM = NetworkUtils.m();
                if (NetworkUtils.t(NetworkUtils.c.a, bVarM.a)) {
                    return;
                }
                b unused = NetworkUtils.c = bVarM;
                h.K(new Runnable() {
                    @Override
                    public void run() {
                        Iterator it = NetworkUtils.a.iterator();
                        while (it.hasNext()) {
                            ((Utils.b) it.next()).accept(NetworkUtils.c);
                        }
                    }
                });
            }
        }, 0L, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public static void w() {
        if (l()) {
            ((WifiManager) Utils.a().getSystemService("wifi")).startScan();
        }
    }

    public static void x() {
        Timer timer = b;
        if (timer != null) {
            timer.cancel();
            b = null;
        }
    }
}

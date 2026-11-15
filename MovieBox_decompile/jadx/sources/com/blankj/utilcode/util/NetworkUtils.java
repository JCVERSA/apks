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
import org.mvel2.ast.ASTNode;

public abstract class NetworkUtils {

    private static final Set f19400a = new CopyOnWriteArraySet();

    private static Timer f19401b;

    private static b f19402c;

    class AnonymousClass1 extends Utils.Task<Boolean> {
        AnonymousClass1(Utils.b bVar) {
            super(bVar);
        }

        @Override
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.n());
        }
    }

    class AnonymousClass2 extends Utils.Task<Boolean> {
        final String val$ip;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Utils.b bVar, String str) {
            super(bVar);
            this.val$ip = str;
        }

        @Override
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.q(this.val$ip));
        }
    }

    class AnonymousClass3 extends Utils.Task<Boolean> {
        final String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.p(this.val$domain));
        }
    }

    class AnonymousClass4 extends Utils.Task<Boolean> {
        AnonymousClass4(Utils.b bVar) {
            super(bVar);
        }

        @Override
        public Boolean doInBackground() {
            return Boolean.valueOf(NetworkUtils.u());
        }
    }

    class AnonymousClass5 extends Utils.Task<String> {
        final boolean val$useIPv4;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Utils.b bVar, boolean z10) {
            super(bVar);
            this.val$useIPv4 = z10;
        }

        @Override
        public String doInBackground() {
            return NetworkUtils.j(this.val$useIPv4);
        }
    }

    class AnonymousClass6 extends Utils.Task<String> {
        final String val$domain;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(Utils.b bVar, String str) {
            super(bVar);
            this.val$domain = str;
        }

        @Override
        public String doInBackground() {
            return NetworkUtils.i(this.val$domain);
        }
    }

    class AnonymousClass7 implements Runnable {
        final Utils.b val$consumer;

        AnonymousClass7(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override
        public void run() {
            if (NetworkUtils.f19400a.isEmpty()) {
                NetworkUtils.f19400a.add(this.val$consumer);
                NetworkUtils.x();
            } else {
                this.val$consumer.accept(NetworkUtils.f19402c);
                NetworkUtils.f19400a.add(this.val$consumer);
            }
        }
    }

    class AnonymousClass9 implements Runnable {
        final Utils.b val$consumer;

        AnonymousClass9(Utils.b bVar) {
            this.val$consumer = bVar;
        }

        @Override
        public void run() {
            NetworkUtils.f19400a.remove(this.val$consumer);
            if (NetworkUtils.f19400a.isEmpty()) {
                NetworkUtils.z();
            }
        }
    }

    public static final class NetworkChangedReceiver extends BroadcastReceiver {

        private NetworkType f19403a;

        private Set f19404b = new HashSet();

        private static class a {

            private static final NetworkChangedReceiver f19405a = new NetworkChangedReceiver();
        }

        public static NetworkChangedReceiver e() {
            return a.f19405a;
        }

        void f(final a aVar) {
            if (aVar == null) {
                return;
            }
            e0.J(new Runnable() {
                @Override
                public void run() {
                    int size = NetworkChangedReceiver.this.f19404b.size();
                    NetworkChangedReceiver.this.f19404b.add(aVar);
                    if (size == 0 && NetworkChangedReceiver.this.f19404b.size() == 1) {
                        NetworkChangedReceiver.this.f19403a = NetworkUtils.k();
                        Utils.a().registerReceiver(NetworkChangedReceiver.e(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    }
                }
            });
        }

        void g(final a aVar) {
            if (aVar == null) {
                return;
            }
            e0.J(new Runnable() {
                @Override
                public void run() {
                    int size = NetworkChangedReceiver.this.f19404b.size();
                    NetworkChangedReceiver.this.f19404b.remove(aVar);
                    if (size == 1 && NetworkChangedReceiver.this.f19404b.size() == 0) {
                        Utils.a().unregisterReceiver(NetworkChangedReceiver.e());
                    }
                }
            });
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                e0.K(new Runnable() {
                    @Override
                    public void run() {
                        NetworkType networkTypeK = NetworkUtils.k();
                        if (NetworkChangedReceiver.this.f19403a == networkTypeK) {
                            return;
                        }
                        NetworkChangedReceiver.this.f19403a = networkTypeK;
                        if (networkTypeK == NetworkType.NETWORK_NO) {
                            Iterator it = NetworkChangedReceiver.this.f19404b.iterator();
                            while (it.hasNext()) {
                                ((a) it.next()).onDisconnected();
                            }
                        } else {
                            Iterator it2 = NetworkChangedReceiver.this.f19404b.iterator();
                            while (it2.hasNext()) {
                                ((a) it2.next()).k(networkTypeK);
                            }
                        }
                    }
                }, 1000L);
            }
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
        void k(NetworkType networkType);

        void onDisconnected();
    }

    public static final class b {

        private List f19406a = new ArrayList();

        private List f19407b = new ArrayList();

        private static List b(List list) {
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
            this.f19406a = list;
            this.f19407b = b(list);
        }
    }

    public static void A(a aVar) {
        NetworkChangedReceiver.e().g(aVar);
    }

    private static NetworkInfo h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    public static String i(String str) {
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String j(boolean z10) {
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
                    boolean z11 = hostAddress.indexOf(58) < 0;
                    if (z10) {
                        if (z11) {
                            return hostAddress;
                        }
                    } else if (!z11) {
                        int iIndexOf = hostAddress.indexOf(37);
                        return iIndexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, iIndexOf).toUpperCase();
                    }
                }
            }
            return "";
        } catch (SocketException e10) {
            e10.printStackTrace();
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
        } catch (UnknownHostException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean q(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "223.5.5.5";
        }
        return z.a(String.format("ping -c 1 %s", str), false).f19507a == 0;
    }

    private static boolean r() {
        NetworkInfo networkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) Utils.a().getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || (state = networkInfo.getState()) == null) {
            return false;
        }
        return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
    }

    private static boolean s(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult != null && scanResult2 != null && e0.e(scanResult.BSSID, scanResult2.BSSID) && e0.e(scanResult.SSID, scanResult2.SSID) && e0.e(scanResult.capabilities, scanResult2.capabilities) && scanResult.level == scanResult2.level;
    }

    public static boolean t(List list, List list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!s((ScanResult) list.get(i10), (ScanResult) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean u() {
        return l() && n();
    }

    public static void v() {
        Utils.a().startActivity(new Intent("android.settings.WIRELESS_SETTINGS").setFlags(ASTNode.DEOP));
    }

    public static void w(a aVar) {
        NetworkChangedReceiver.e().f(aVar);
    }

    public static void x() {
        f19402c = new b();
        Timer timer = new Timer();
        f19401b = timer;
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                NetworkUtils.y();
                b bVarM = NetworkUtils.m();
                if (NetworkUtils.t(NetworkUtils.f19402c.f19406a, bVarM.f19406a)) {
                    return;
                }
                b unused = NetworkUtils.f19402c = bVarM;
                e0.J(new Runnable() {
                    @Override
                    public void run() {
                        Iterator it = NetworkUtils.f19400a.iterator();
                        while (it.hasNext()) {
                            ((Utils.b) it.next()).accept(NetworkUtils.f19402c);
                        }
                    }
                });
            }
        }, 0L, 3000L);
    }

    public static void y() {
        if (l()) {
            ((WifiManager) Utils.a().getSystemService("wifi")).startScan();
        }
    }

    public static void z() {
        Timer timer = f19401b;
        if (timer != null) {
            timer.cancel();
            f19401b = null;
        }
    }
}

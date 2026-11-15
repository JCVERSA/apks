package com.cloud.hisavana.sdk.manager;

import android.net.ConnectivityManager;
import android.net.Network;
import android.util.Log;
import com.cloud.hisavana.sdk.C0520g0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import defpackage.cgc;
import defpackage.ikd;
import defpackage.ul4;
import java.util.concurrent.atomic.AtomicBoolean;

public class NetStateManager {
    private static final int PROTECTION_TIME = 10000;
    private static final String TAG = "NetStateManager";
    private static AtomicBoolean isNetAvailable = new AtomicBoolean(false);
    private static AtomicBoolean isInitSuccessful = new AtomicBoolean(false);
    private static long lastRequestTime = 0;
    private static boolean isInit = false;

    public class a extends ConnectivityManager.NetworkCallback {
        @Override
        public void onAvailable(Network network) {
            super.onAvailable(network);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(true);
            ikd.b().d(NetStateManager.TAG, "onAvailable isNetAvailable " + NetStateManager.isNetAvailable);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - NetStateManager.lastRequestTime) > 10000) {
                long unused = NetStateManager.lastRequestTime = jCurrentTimeMillis;
                cgc.n().p(2);
                b.e.a().j();
                C0520g0.a.D();
            }
        }

        @Override
        public void onBlockedStatusChanged(Network network, boolean z) {
            super.onBlockedStatusChanged(network, z);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(true ^ z);
            ikd.b().d(NetStateManager.TAG, "onBlockedStatusChanged isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override
        public void onLosing(Network network, int i) {
            super.onLosing(network, i);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            ikd.b().d(NetStateManager.TAG, "onLosing isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override
        public void onLost(Network network) {
            super.onLost(network);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            NetStateManager.updateNetStatus(1000);
            ikd.b().d(NetStateManager.TAG, "onLost isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override
        public void onUnavailable() {
            super.onUnavailable();
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            ikd.b().d(NetStateManager.TAG, "onUnavailable isNetAvailable " + NetStateManager.isNetAvailable);
        }
    }

    public static boolean checkNetworkState(boolean z) {
        ikd.b().d(TAG, "checkNetworkState " + isNetAvailable + ", isInitSuccessful " + isInitSuccessful + ", isSync=" + z);
        if (!z) {
            return isNetAvailable.get();
        }
        boolean zC = MitNetUtil.c(ul4.a());
        isNetAvailable.set(zC);
        return zC;
    }

    public static void lambda$updateNetStatus$0() {
        isNetAvailable.set(MitNetUtil.c(ul4.a()));
    }

    public static void registerMonitorBroadcast() {
        if (isInit) {
            return;
        }
        isInit = true;
        try {
            ((ConnectivityManager) ul4.a().getSystemService("connectivity")).registerDefaultNetworkCallback(new a());
        } catch (Exception e) {
            ikd.b().e(TAG, "registerMonitorBroadcast " + Log.getStackTraceString(e));
        }
        updateNetStatus(0);
    }

    public static void setIsNetAvailable(boolean z) {
        isNetAvailable.set(z);
    }

    public static void updateNetStatus(int i) {
        HSScopeHelper.a.m(new Runnable() {
            @Override
            public final void run() {
                NetStateManager.lambda$updateNetStatus$0();
            }
        }, i);
    }
}

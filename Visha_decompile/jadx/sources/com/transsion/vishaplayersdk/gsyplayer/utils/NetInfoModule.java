package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.core.net.ConnectivityManagerCompat;

public class NetInfoModule {
    private static final String CONNECTION_TYPE_NONE = "NONE";
    private static final String CONNECTION_TYPE_UNKNOWN = "UNKNOWN";
    private static final String ERROR_MISSING_PERMISSION = "E_MISSING_PERMISSION";
    private static final String MISSING_PERMISSION_MESSAGE = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />";
    private final ConnectivityManager mConnectivityManager;
    private Context mContext;
    private NetChangeListener mNetChangeListener;
    private String mConnectivity = "";
    private boolean mNoNetworkPermission = false;
    private final ConnectivityBroadcastReceiver mConnectivityBroadcastReceiver = new ConnectivityBroadcastReceiver();

    public class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        public boolean isRegistered() {
            return this.isRegistered;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                    NetInfoModule.this.updateAndSendConnectionType();
                }
            } catch (Exception e) {
                Log.e("ConnectivityBroadcastReceiver", "ConnectivityBroadcastReceiver onReceive error: " + e.getMessage());
            }
        }

        public void setRegistered(boolean z) {
            this.isRegistered = z;
        }

        private ConnectivityBroadcastReceiver() {
            this.isRegistered = false;
        }
    }

    public interface NetChangeListener {
        void changed(String str);
    }

    public NetInfoModule(Context context) {
        this.mContext = context;
        this.mConnectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mContext.registerReceiver(this.mConnectivityBroadcastReceiver, intentFilter);
        this.mConnectivityBroadcastReceiver.setRegistered(true);
    }

    private void sendConnectivityChangedEvent() {
        NetChangeListener netChangeListener = this.mNetChangeListener;
        if (netChangeListener != null) {
            netChangeListener.changed(this.mConnectivity);
        }
    }

    private void unregisterReceiver() {
        if (this.mConnectivityBroadcastReceiver.isRegistered()) {
            this.mContext.unregisterReceiver(this.mConnectivityBroadcastReceiver);
            this.mConnectivityBroadcastReceiver.setRegistered(false);
        }
    }

    public void updateAndSendConnectionType() {
        String currentConnectionType = getCurrentConnectionType();
        if (currentConnectionType.equalsIgnoreCase(this.mConnectivity)) {
            return;
        }
        this.mConnectivity = currentConnectionType;
        sendConnectivityChangedEvent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    public String getCurrentConnectionType() {
        try {
            NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (!ConnectivityManager.isNetworkTypeValid(activeNetworkInfo.getType())) {
                    return CONNECTION_TYPE_UNKNOWN;
                }
                this = activeNetworkInfo.getTypeName().toUpperCase();
                return this;
            }
            return CONNECTION_TYPE_NONE;
        } catch (SecurityException unused) {
            this.mNoNetworkPermission = true;
            return CONNECTION_TYPE_UNKNOWN;
        }
    }

    public String getCurrentConnectivity() {
        return this.mNoNetworkPermission ? ERROR_MISSING_PERMISSION : this.mConnectivity;
    }

    public boolean isConnectionMetered() {
        if (this.mNoNetworkPermission) {
            return false;
        }
        return ConnectivityManagerCompat.isActiveNetworkMetered(this.mConnectivityManager);
    }

    public void onHostDestroy() {
    }

    public void onHostPause() {
        unregisterReceiver();
    }

    public void onHostResume() {
        registerReceiver();
    }

    public void setNetChangeListener(NetChangeListener netChangeListener) {
        this.mNetChangeListener = netChangeListener;
    }
}

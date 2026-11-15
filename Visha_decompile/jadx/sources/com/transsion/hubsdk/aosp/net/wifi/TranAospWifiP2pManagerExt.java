package com.transsion.hubsdk.aosp.net.wifi;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Looper;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranAospWifiP2pManagerExt {
    private static final String TAG = "TranAospWifiP2pManagerExt";
    private Context mContext;

    public interface TranActionListener {
        void onFailure(int i);

        void onSuccess();
    }

    public interface TranChannelListener {
        void onChannelDisconnected();
    }

    public TranAospWifiP2pManagerExt(Context context) {
        this.mContext = context;
    }

    @SuppressLint({"MissingPermission"})
    public void setWifiP2pChannels(int i, int i2, final TranChannelListener tranChannelListener, final TranActionListener tranActionListener) {
        try {
            TranSdkLog.d(TAG, "setWifiP2pChannels listeningChannel:" + i + ",operatingChannel:" + i2);
            WifiP2pManager wifiP2pManager = (WifiP2pManager) this.mContext.getSystemService("wifip2p");
            wifiP2pManager.setWifiP2pChannels(wifiP2pManager.initialize(this.mContext, Looper.myLooper(), new WifiP2pManager.ChannelListener() {
                @Override
                public void onChannelDisconnected() {
                    TranChannelListener tranChannelListener2 = tranChannelListener;
                    if (tranChannelListener2 != null) {
                        tranChannelListener2.onChannelDisconnected();
                    }
                }
            }), i, i2, new WifiP2pManager.ActionListener() {
                @Override
                public void onFailure(int i3) {
                    TranActionListener tranActionListener2 = tranActionListener;
                    if (tranActionListener2 != null) {
                        tranActionListener2.onFailure(i3);
                    }
                }

                @Override
                public void onSuccess() {
                    TranActionListener tranActionListener2 = tranActionListener;
                    if (tranActionListener2 != null) {
                        tranActionListener2.onSuccess();
                    }
                }
            });
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "setWifiP2pChannels fail");
        }
    }
}

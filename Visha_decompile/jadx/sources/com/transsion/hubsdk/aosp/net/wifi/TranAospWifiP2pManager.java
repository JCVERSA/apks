package com.transsion.hubsdk.aosp.net.wifi;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pManager;
import com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiP2pManagerAdapter;

public class TranAospWifiP2pManager implements ITranWifiP2pManagerAdapter {
    private static final String TAG = "TranAospWifiP2pManager";
    private Context mContext;
    private TranAospWifiP2pManagerExt mWifiP2pExt;

    public class TranAospActionListener implements TranAospWifiP2pManagerExt.TranActionListener {
        TranWifiP2pManager.TranActionListener mTranActionListener;

        public TranAospActionListener(TranWifiP2pManager.TranActionListener tranActionListener) {
            this.mTranActionListener = tranActionListener;
        }

        @Override
        public void onFailure(int i) {
            TranWifiP2pManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onFailure(i);
            }
        }

        @Override
        public void onSuccess() {
            TranWifiP2pManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onSuccess();
            }
        }
    }

    public class TranAospChannelListener implements TranAospWifiP2pManagerExt.TranChannelListener {
        TranWifiP2pManager.TranChannelListener mChannelListener;

        public TranAospChannelListener(TranWifiP2pManager.TranChannelListener tranChannelListener) {
            this.mChannelListener = tranChannelListener;
        }

        @Override
        public void onChannelDisconnected() {
            TranWifiP2pManager.TranChannelListener tranChannelListener = this.mChannelListener;
            if (tranChannelListener != null) {
                tranChannelListener.onChannelDisconnected();
            }
        }
    }

    public TranAospWifiP2pManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mWifiP2pExt = new TranAospWifiP2pManagerExt(context);
    }

    @Override
    public void deletePersistentGroup(WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener) {
        WifiP2pManager wifiP2pManager = (WifiP2pManager) this.mContext.getSystemService("wifip2p");
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(wifiP2pManager.getClass(), "deletePersistentGroup", WifiP2pManager.Channel.class, Integer.TYPE, WifiP2pManager.ActionListener.class), wifiP2pManager, channel, Integer.valueOf(i), actionListener);
    }

    @Override
    public void setWifiP2pChannels(int i, int i2, TranWifiP2pManager.TranChannelListener tranChannelListener, TranWifiP2pManager.TranActionListener tranActionListener) {
        this.mWifiP2pExt.setWifiP2pChannels(i, i2, tranChannelListener != null ? new TranAospChannelListener(tranChannelListener) : null, tranActionListener != null ? new TranAospActionListener(tranActionListener) : null);
    }
}

package com.transsion.hubsdk.core.net.wifi;

import android.net.wifi.p2p.WifiP2pManager;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiP2pManagerAdapter;
import com.transsion.hubsdk.net.wifi.ITranActionListener;
import com.transsion.hubsdk.net.wifi.ITranChannelListener;
import com.transsion.hubsdk.net.wifi.ITranWifiP2pManager;
import com.transsion.hubsdk.net.wifi.TranWifiP2pManager;

public class TranThubWifiP2pManager implements ITranWifiP2pManagerAdapter {
    private static final String TAG = "TranThubWifiP2pManager";
    private TranWifiP2pManager mManager;
    private ITranWifiP2pManager mService = ITranWifiP2pManager.Stub.asInterface(TranServiceManager.getServiceIBinder("wifi_p2p_manager"));

    public class TranActionListener extends ITranActionListener.Stub {
        com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranActionListener mTranActionListener;

        public TranActionListener(com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranActionListener tranActionListener) {
            this.mTranActionListener = tranActionListener;
        }

        public void onFailure(int i) throws RemoteException {
            com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onFailure(i);
            }
        }

        public void onSuccess() throws RemoteException {
            com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranActionListener tranActionListener = this.mTranActionListener;
            if (tranActionListener != null) {
                tranActionListener.onSuccess();
            }
        }
    }

    public class TranChannelListener extends ITranChannelListener.Stub {
        com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranChannelListener mTranChannelListener;

        public TranChannelListener(com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranChannelListener tranChannelListener) {
            this.mTranChannelListener = tranChannelListener;
        }

        public void onChannelDisconnected() throws RemoteException {
            com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranChannelListener tranChannelListener = this.mTranChannelListener;
            if (tranChannelListener != null) {
                tranChannelListener.onChannelDisconnected();
            }
        }
    }

    private TranWifiP2pManager getTranWifiP2pManagerImpl() {
        if (this.mManager == null) {
            this.mManager = new TranWifiP2pManager(TranHubSdkManager.getContext());
        }
        return this.mManager;
    }

    @Override
    public void deletePersistentGroup(WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener) {
        getTranWifiP2pManagerImpl().deletePersistentGroup(channel, i, actionListener);
    }

    @Override
    public void setWifiP2pChannels(int i, int i2, com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranChannelListener tranChannelListener, com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager.TranActionListener tranActionListener) {
        TranActionListener tranActionListener2 = new TranActionListener(tranActionListener);
        TranChannelListener tranChannelListener2 = new TranChannelListener(tranChannelListener);
        ITranWifiP2pManager iTranWifiP2pManager = this.mService;
        if (iTranWifiP2pManager != null) {
            try {
                iTranWifiP2pManager.setWifiP2pChannels(i, i2, tranChannelListener2, tranActionListener2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "forget fail " + e);
            }
        }
    }
}

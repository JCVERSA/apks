package com.transsion.hubsdk.api.net.wifi;

import android.net.wifi.p2p.WifiP2pManager;
import com.transsion.hubsdk.aosp.net.wifi.TranAospWifiP2pManager;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.net.wifi.TranThubWifiP2pManager;
import com.transsion.hubsdk.interfaces.net.wifi.ITranWifiP2pManagerAdapter;

public class TranWifiP2pManager {
    private static final String TAG = "TranWifiP2pManager";
    private TranAospWifiP2pManager mAospService;
    private TranThubWifiP2pManager mThubService;

    public interface TranActionListener {
        void onFailure(int i);

        void onSuccess();
    }

    public interface TranChannelListener {
        void onChannelDisconnected();
    }

    public void deletePersistentGroup(WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener) {
        getService(TranVersion.Core.VERSION_33181).deletePersistentGroup(channel, i, actionListener);
    }

    public ITranWifiP2pManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubWifiP2pManager tranThubWifiP2pManager = this.mThubService;
            if (tranThubWifiP2pManager != null) {
                return tranThubWifiP2pManager;
            }
            TranThubWifiP2pManager tranThubWifiP2pManager2 = new TranThubWifiP2pManager();
            this.mThubService = tranThubWifiP2pManager2;
            return tranThubWifiP2pManager2;
        }
        TranAospWifiP2pManager tranAospWifiP2pManager = this.mAospService;
        if (tranAospWifiP2pManager != null) {
            return tranAospWifiP2pManager;
        }
        TranAospWifiP2pManager tranAospWifiP2pManager2 = new TranAospWifiP2pManager();
        this.mAospService = tranAospWifiP2pManager2;
        return tranAospWifiP2pManager2;
    }

    public void setWifiP2pChannels(int i, int i2, TranChannelListener tranChannelListener, TranActionListener tranActionListener) {
        getService(TranVersion.Core.VERSION_33131).setWifiP2pChannels(i, i2, tranChannelListener, tranActionListener);
    }
}

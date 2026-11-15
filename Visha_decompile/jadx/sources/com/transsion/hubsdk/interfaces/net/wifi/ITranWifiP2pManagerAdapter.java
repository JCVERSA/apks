package com.transsion.hubsdk.interfaces.net.wifi;

import android.net.wifi.p2p.WifiP2pManager;
import com.transsion.hubsdk.api.net.wifi.TranWifiP2pManager;

public interface ITranWifiP2pManagerAdapter {
    void deletePersistentGroup(WifiP2pManager.Channel channel, int i, WifiP2pManager.ActionListener actionListener);

    void setWifiP2pChannels(int i, int i2, TranWifiP2pManager.TranChannelListener tranChannelListener, TranWifiP2pManager.TranActionListener tranActionListener);
}

package com.transsion.vishatransfer.manager;

import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pManager;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.WifiTransferManager$receiverDevices$1;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.i81;
import defpackage.y45;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "", "Landroid/net/wifi/p2p/WifiP2pDevice;", "devices", "Lzfb;", "onPeersAvailable", "(Ljava/util/List;)V", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WifiTransferManager$receiverDevices$1 implements AccessReceiverActionListener {
    final WifiTransferManager this$0;

    public WifiTransferManager$receiverDevices$1(WifiTransferManager wifiTransferManager) {
        this.this$0 = wifiTransferManager;
    }

    public static final void onPeersAvailable$lambda$1(WifiTransferManager wifiTransferManager, WifiP2pDeviceList wifiP2pDeviceList) {
        Collection<WifiP2pDevice> deviceList = wifiP2pDeviceList.getDeviceList();
        y45.i(deviceList, "getDeviceList(...)");
        List<? extends WifiP2pDevice> listB1 = i81.b1(deviceList);
        List<AccessReceiverActionListener> list = wifiTransferManager.mListeners;
        if (list != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onPeersAvailable(listB1);
                }
            }
        }
    }

    @Override
    public void onConnectionChanged(NetworkInfo networkInfo, int i) {
        AccessReceiverActionListener.DefaultImpls.onConnectionChanged(this, networkInfo, i);
    }

    @Override
    public void onConversationMessage(Conversation conversation) {
        AccessReceiverActionListener.DefaultImpls.onConversationMessage(this, conversation);
    }

    @Override
    public void onError(WifiModel wifiModel) {
        AccessReceiverActionListener.DefaultImpls.onError(this, wifiModel);
    }

    @Override
    public void onFileTranslated(FileData fileData, int i) {
        AccessReceiverActionListener.DefaultImpls.onFileTranslated(this, fileData, i);
    }

    @Override
    public void onPeersAvailable(List<? extends WifiP2pDevice> devices) {
        y45.j(devices, "devices");
        WifiTransferManager wifiTransferManager = this.this$0;
        if (wifiTransferManager.checkPermission(wifiTransferManager.context)) {
            this.this$0.checkCreateP2pAndChannel();
            WifiP2pManager wifiP2pManager = this.this$0.p2p;
            if (wifiP2pManager != null) {
                WifiP2pManager.Channel channel = this.this$0.channel;
                final WifiTransferManager wifiTransferManager2 = this.this$0;
                wifiP2pManager.requestPeers(channel, new WifiP2pManager.PeerListListener() {
                    @Override
                    public final void onPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
                        WifiTransferManager$receiverDevices$1.onPeersAvailable$lambda$1(wifiTransferManager2, wifiP2pDeviceList);
                    }
                });
            }
        }
    }

    @Override
    public void onProgress(long j, long j2, int i, int i2) {
        AccessReceiverActionListener.DefaultImpls.onProgress(this, j, j2, i, i2);
    }

    @Override
    public void onTransferState(ConnectedState connectedState) {
        AccessReceiverActionListener.DefaultImpls.onTransferState(this, connectedState);
    }
}

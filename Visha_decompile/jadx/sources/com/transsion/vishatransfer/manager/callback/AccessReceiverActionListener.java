package com.transsion.vishatransfer.manager.callback;

import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import com.lzy.okgo.model.Progress;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\f\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ/\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "", "", "Landroid/net/wifi/p2p/WifiP2pDevice;", "devices", "Lzfb;", "onPeersAvailable", "(Ljava/util/List;)V", "Landroid/net/NetworkInfo;", "networkInfo", "", "userType", "onConnectionChanged", "(Landroid/net/NetworkInfo;I)V", "", Progress.TOTAL_SIZE, "transferedSize", "fileNum", "totalNum", "onProgress", "(JJII)V", "Lcom/transsion/vishatransfer/data/WifiModel;", "wifiModel", "onError", "(Lcom/transsion/vishatransfer/data/WifiModel;)V", "Lcom/transsion/vishatransfer/data/ConnectedState;", "socketState", "onTransferState", "(Lcom/transsion/vishatransfer/data/ConnectedState;)V", "Lcom/transsion/vishatransfer/data/FileData;", "fileData", "onFileTranslated", "(Lcom/transsion/vishatransfer/data/FileData;I)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "onConversationMessage", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface AccessReceiverActionListener {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void onConnectionChanged(AccessReceiverActionListener accessReceiverActionListener, NetworkInfo networkInfo, int i) {
        }

        public static void onConversationMessage(AccessReceiverActionListener accessReceiverActionListener, Conversation conversation) {
            y45.j(conversation, "conversation");
        }

        public static void onError(AccessReceiverActionListener accessReceiverActionListener, WifiModel wifiModel) {
            y45.j(wifiModel, "wifiModel");
        }

        public static void onFileTranslated(AccessReceiverActionListener accessReceiverActionListener, FileData fileData, int i) {
            y45.j(fileData, "fileData");
        }

        public static void onPeersAvailable(AccessReceiverActionListener accessReceiverActionListener, List<? extends WifiP2pDevice> list) {
            y45.j(list, "devices");
        }

        public static void onProgress(AccessReceiverActionListener accessReceiverActionListener, long j, long j2, int i, int i2) {
        }

        public static void onTransferState(AccessReceiverActionListener accessReceiverActionListener, ConnectedState connectedState) {
            y45.j(connectedState, "socketState");
        }
    }

    void onConnectionChanged(NetworkInfo networkInfo, int userType);

    void onConversationMessage(Conversation conversation);

    void onError(WifiModel wifiModel);

    void onFileTranslated(FileData fileData, int userType);

    void onPeersAvailable(List<? extends WifiP2pDevice> devices);

    void onProgress(long totalSize, long transferedSize, int fileNum, int totalNum);

    void onTransferState(ConnectedState socketState);
}

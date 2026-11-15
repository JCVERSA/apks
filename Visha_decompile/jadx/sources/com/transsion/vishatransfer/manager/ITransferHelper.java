package com.transsion.vishatransfer.manager;

import android.net.wifi.p2p.WifiP2pDevice;
import androidx.annotation.RequiresApi;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.u74;
import defpackage.w74;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;
import org.greenrobot.greendao.generator.Schema;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ/\u0010\r\u001a\u00020\u00062\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u000f\u001a\u00020\u00062\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017¢\u0006\u0004\b\u000f\u0010\u000eJ/\u0010\u0010\u001a\u00020\u00062\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ7\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0017¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\u0015\u001a\u00020\u00062\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016¢\u0006\u0004\b\u0015\u0010\u000eJ/\u0010\u0016\u001a\u00020\u00062\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\tH\u0016¢\u0006\u0004\b\u0016\u0010\u000eJ\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0018J7\u0010&\u001a\u00020\u00062&\u0010\f\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010)J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0002H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b7\u00106J\u0017\u00108\u001a\u0002042\u0006\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b8\u00106¨\u00069"}, d2 = {"Lcom/transsion/vishatransfer/manager/ITransferHelper;", "", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "listener", "", "userType", "Lzfb;", "registerListener", "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V", "Lkotlin/Function3;", "", "", "callback", "createGroupAsync", "(Lu74;)V", "createGroupAsyncWithRetry", "searchDevicesAsync", "Landroid/net/wifi/p2p/WifiP2pDevice;", "device", "connectAsync", "(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V", "disconnectAsync", "removeGroupAsync", "release", "(I)V", "", "Lcom/transsion/vishatransfer/data/FileData;", "fileDataList", "sendFileDataToServerAsync", "(Ljava/util/List;)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "sendConversationToService", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "sendConversationToClient", "cancelTransfer", "Lkotlin/Function4;", "Landroid/net/wifi/p2p/WifiP2pInfo;", "getConnectionInfoAsync", "(Lw74;)V", "unRegisterServerReceiver", "()V", "unregisterP2pConnectReceiver", "accessReceiverActionListener", "unregisterCallback", "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V", "Lcom/transsion/vishatransfer/data/ConnectedState;", "getConnectState", "()Lcom/transsion/vishatransfer/data/ConnectedState;", "isClient", "getTotalNum", "(Z)I", "", "getTotalSize", "(Z)J", "getRecentSpeedPerSecond", "getAverageSpeedPerSecond", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ITransferHelper {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static void cancelTransfer(ITransferHelper iTransferHelper, int i) {
        }

        @RequiresApi(29)
        public static void connectAsync(ITransferHelper iTransferHelper, WifiP2pDevice wifiP2pDevice, u74 u74Var) {
            y45.j(wifiP2pDevice, "device");
            y45.j(u74Var, "callback");
        }

        @RequiresApi(29)
        public static void createGroupAsync(ITransferHelper iTransferHelper, u74 u74Var) {
            y45.j(u74Var, "callback");
        }

        @RequiresApi(29)
        public static void createGroupAsyncWithRetry(ITransferHelper iTransferHelper, u74 u74Var) {
            y45.j(u74Var, "callback");
        }

        public static void disconnectAsync(ITransferHelper iTransferHelper, u74 u74Var) {
            y45.j(u74Var, "callback");
        }

        public static long getAverageSpeedPerSecond(ITransferHelper iTransferHelper, boolean z) {
            return 0L;
        }

        public static ConnectedState getConnectState(ITransferHelper iTransferHelper) {
            return new ConnectedState(-1, Schema.DEFAULT_NAME, -1);
        }

        public static void getConnectionInfoAsync(ITransferHelper iTransferHelper, w74 w74Var) {
            y45.j(w74Var, "callback");
        }

        public static long getRecentSpeedPerSecond(ITransferHelper iTransferHelper, boolean z) {
            return 0L;
        }

        public static int getTotalNum(ITransferHelper iTransferHelper, boolean z) {
            return 0;
        }

        public static long getTotalSize(ITransferHelper iTransferHelper, boolean z) {
            return 0L;
        }

        public static void registerListener(ITransferHelper iTransferHelper, AccessReceiverActionListener accessReceiverActionListener, int i) {
            y45.j(accessReceiverActionListener, "listener");
        }

        public static void release(ITransferHelper iTransferHelper, int i) {
        }

        public static void removeGroupAsync(ITransferHelper iTransferHelper, u74 u74Var) {
            y45.j(u74Var, "callback");
        }

        public static void searchDevicesAsync(ITransferHelper iTransferHelper, u74 u74Var) {
            y45.j(u74Var, "callback");
        }

        public static void sendConversationToClient(ITransferHelper iTransferHelper, Conversation conversation) {
            y45.j(conversation, "conversation");
        }

        public static void sendConversationToService(ITransferHelper iTransferHelper, Conversation conversation) {
            y45.j(conversation, "conversation");
        }

        public static void sendFileDataToServerAsync(ITransferHelper iTransferHelper, List<FileData> list) {
            y45.j(list, "fileDataList");
        }

        public static void unRegisterServerReceiver(ITransferHelper iTransferHelper) {
        }

        public static void unregisterCallback(ITransferHelper iTransferHelper, AccessReceiverActionListener accessReceiverActionListener) {
            y45.j(accessReceiverActionListener, "accessReceiverActionListener");
        }

        public static void unregisterP2pConnectReceiver(ITransferHelper iTransferHelper) {
        }
    }

    void cancelTransfer(int userType);

    @RequiresApi(29)
    void connectAsync(WifiP2pDevice device, u74 callback);

    @RequiresApi(29)
    void createGroupAsync(u74 callback);

    @RequiresApi(29)
    void createGroupAsyncWithRetry(u74 callback);

    void disconnectAsync(u74 callback);

    long getAverageSpeedPerSecond(boolean isClient);

    ConnectedState getConnectState();

    void getConnectionInfoAsync(w74 callback);

    long getRecentSpeedPerSecond(boolean isClient);

    int getTotalNum(boolean isClient);

    long getTotalSize(boolean isClient);

    void registerListener(AccessReceiverActionListener listener, int userType);

    void release(int userType);

    void removeGroupAsync(u74 callback);

    void searchDevicesAsync(u74 callback);

    void sendConversationToClient(Conversation conversation);

    void sendConversationToService(Conversation conversation);

    void sendFileDataToServerAsync(List<FileData> fileDataList);

    void unRegisterServerReceiver();

    void unregisterCallback(AccessReceiverActionListener accessReceiverActionListener);

    void unregisterP2pConnectReceiver();
}

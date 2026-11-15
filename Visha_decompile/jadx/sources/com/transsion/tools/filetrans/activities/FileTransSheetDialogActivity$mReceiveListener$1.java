package com.transsion.tools.filetrans.activities;

import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.markpoint.a;
import com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity;
import com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity$mReceiveListener$1;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.DeviceInfo;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import com.transsion.widgetslib.dialog.d;
import defpackage.y45;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mReceiveListener$1", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "Lcom/transsion/vishatransfer/data/ConnectedState;", "socketState", "Lzfb;", "onTransferState", "(Lcom/transsion/vishatransfer/data/ConnectedState;)V", "Lcom/transsion/vishatransfer/data/WifiModel;", "wifiModel", "onError", "(Lcom/transsion/vishatransfer/data/WifiModel;)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "onConversationMessage", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "Landroid/net/NetworkInfo;", "networkInfo", "", "userType", "onConnectionChanged", "(Landroid/net/NetworkInfo;I)V", "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransSheetDialogActivity$mReceiveListener$1 implements AccessReceiverActionListener {
    final FileTransSheetDialogActivity this$0;

    public FileTransSheetDialogActivity$mReceiveListener$1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        this.this$0 = fileTransSheetDialogActivity;
    }

    public static final void onConversationMessage$lambda$2(FileTransSheetDialogActivity fileTransSheetDialogActivity, Conversation conversation) {
        fileTransSheetDialogActivity.S0(conversation.getTotalFileSize() / 1.073741824E9d);
    }

    @Override
    public void onConnectionChanged(NetworkInfo networkInfo, int userType) {
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive: " + this.this$0.mOpenType + ", onConnectionChanged: " + (networkInfo != null ? networkInfo.getState() : null));
    }

    @Override
    public void onConversationMessage(final Conversation conversation) {
        y45.j(conversation, "conversation");
        AccessReceiverActionListener.DefaultImpls.onConversationMessage(this, conversation);
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive: " + this.this$0.mOpenType + ", onConversationMessage type: " + conversation.getType() + " num: " + conversation.getFileNum() + " total: " + conversation.getTotalFileSize());
        if (conversation.getType() != 0) {
            if (conversation.getType() == 1) {
                final FileTransSheetDialogActivity fileTransSheetDialogActivity = this.this$0;
                fileTransSheetDialogActivity.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        FileTransSheetDialogActivity$mReceiveListener$1.onConversationMessage$lambda$2(fileTransSheetDialogActivity, conversation);
                    }
                });
                return;
            }
            return;
        }
        FileTransSheetDialogActivity fileTransSheetDialogActivity2 = this.this$0;
        WifiP2pDevice wifiP2pDevice = new WifiP2pDevice();
        DeviceInfo deviceInfo = conversation.getDeviceInfo();
        wifiP2pDevice.deviceName = deviceInfo != null ? deviceInfo.getDeviceName() : null;
        fileTransSheetDialogActivity2.F1(wifiP2pDevice);
        final FileTransSheetDialogActivity fileTransSheetDialogActivity3 = this.this$0;
        fileTransSheetDialogActivity3.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                FileTransSheetDialogActivity.N0(fileTransSheetDialogActivity3);
            }
        });
    }

    @Override
    public void onError(WifiModel wifiModel) {
        y45.j(wifiModel, "wifiModel");
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive, onError: " + wifiModel);
        a.a.g("scan", wifiModel.getErrorCode());
    }

    @Override
    public void onFileTranslated(FileData fileData, int i) {
        AccessReceiverActionListener.DefaultImpls.onFileTranslated(this, fileData, i);
    }

    @Override
    public void onPeersAvailable(List<? extends WifiP2pDevice> list) {
        AccessReceiverActionListener.DefaultImpls.onPeersAvailable(this, list);
    }

    @Override
    public void onProgress(long j, long j2, int i, int i2) {
        AccessReceiverActionListener.DefaultImpls.onProgress(this, j, j2, i, i2);
    }

    @Override
    public void onTransferState(ConnectedState socketState) {
        y45.j(socketState, "socketState");
        AccessReceiverActionListener.DefaultImpls.onTransferState(this, socketState);
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] receive, onTransferState: " + socketState.getState());
        int state = socketState.getState();
        if (state == 2 || state == 3) {
            if (this.this$0.mConnectDialog != null) {
                d dVar = this.this$0.mConnectDialog;
                if (dVar != null) {
                    dVar.dismiss();
                }
                this.this$0.mConnectDialog = null;
            }
            if (this.this$0.mStorageDialog != null) {
                d dVar2 = this.this$0.mStorageDialog;
                if (dVar2 != null) {
                    dVar2.dismiss();
                }
                this.this$0.mStorageDialog = null;
            }
            FileTransSheetDialogActivity.Q0(this.this$0, 0, false, 2, null);
        }
    }
}

package com.transsion.tools.filetrans.activities;

import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.activities.FileTransSheetDialogActivity$mSendListener$1;
import com.transsion.utils.ToastUtils;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.DeviceInfo;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.ITransferHelper;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000I\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"com/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$mSendListener$1", "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;", "Lcom/transsion/vishatransfer/data/FileData;", "fileData", "", "userType", "Lzfb;", "onFileTranslated", "(Lcom/transsion/vishatransfer/data/FileData;I)V", "Lcom/transsion/vishatransfer/data/ConnectedState;", "socketState", "onTransferState", "(Lcom/transsion/vishatransfer/data/ConnectedState;)V", "Lcom/transsion/vishatransfer/data/WifiModel;", "wifiModel", "onError", "(Lcom/transsion/vishatransfer/data/WifiModel;)V", "", "Landroid/net/wifi/p2p/WifiP2pDevice;", "devices", "onPeersAvailable", "(Ljava/util/List;)V", "Lcom/transsion/vishatransfer/data/Conversation;", "conversation", "onConversationMessage", "(Lcom/transsion/vishatransfer/data/Conversation;)V", "Landroid/net/NetworkInfo;", "networkInfo", "onConnectionChanged", "(Landroid/net/NetworkInfo;I)V", "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransSheetDialogActivity$mSendListener$1 implements AccessReceiverActionListener {
    final FileTransSheetDialogActivity this$0;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[NetworkInfo.State.values().length];
            try {
                iArr[NetworkInfo.State.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public FileTransSheetDialogActivity$mSendListener$1(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        this.this$0 = fileTransSheetDialogActivity;
    }

    public static final void onConversationMessage$lambda$2(FileTransSheetDialogActivity fileTransSheetDialogActivity) {
        ITransferHelper iTransferHelper = fileTransSheetDialogActivity.transfer;
        Iterator it = fileTransSheetDialogActivity.mDataList.iterator();
        long size = 0;
        while (it.hasNext()) {
            size += ((FileTransSheetDialogActivity.Companion.FileTransItem) it.next()).getSize();
        }
        iTransferHelper.sendConversationToService(new Conversation(1, size, true, 0, fileTransSheetDialogActivity.mDataList.size(), null, 40, null));
    }

    @Override
    public void onConnectionChanged(NetworkInfo networkInfo, int userType) {
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send: " + this.this$0.mOpenType + ", onConnectionChanged: " + (networkInfo != null ? networkInfo.getState() : null));
        if (networkInfo != null) {
            NetworkInfo.State state = networkInfo.getState();
            if ((state == null ? -1 : a.a[state.ordinal()]) == 1 && (this.this$0.mStatus == 4 || this.this$0.mStatus == 3)) {
                FileTransSheetDialogActivity.Q0(this.this$0, 5, false, 2, null);
                com.transsion.dbdata.markpoint.a.a.e(false, this.this$0.c1(), 1007);
            }
        }
        this.this$0.mIsWiFiConnect = (networkInfo != null ? networkInfo.getState() : null) == NetworkInfo.State.CONNECTED;
    }

    @Override
    public void onConversationMessage(Conversation conversation) {
        y45.j(conversation, "conversation");
        AccessReceiverActionListener.DefaultImpls.onConversationMessage(this, conversation);
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send: " + this.this$0.mOpenType + ", onConversationMessage type: " + conversation.getType() + " num: " + conversation.getFileNum() + " total: " + conversation.getTotalFileSize());
        if (conversation.getType() == 2) {
            final FileTransSheetDialogActivity fileTransSheetDialogActivity = this.this$0;
            fileTransSheetDialogActivity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    FileTransSheetDialogActivity$mSendListener$1.onConversationMessage$lambda$2(fileTransSheetDialogActivity);
                }
            });
        } else if (conversation.getType() == 3) {
            this.this$0.z1();
        } else if (conversation.getType() == 6) {
            ToastUtils.s(R.string.visha_share_be_refuse);
            FileTransSheetDialogActivity.Q0(this.this$0, 5, false, 2, null);
            com.transsion.dbdata.markpoint.a.a.e(false, this.this$0.c1(), 1006);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006b  */
    /* JADX WARN: Code duplicated, block: B:20:0x006e  */
    @Override
    public void onError(WifiModel wifiModel) {
        y45.j(wifiModel, "wifiModel");
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send, onError: " + wifiModel);
        String str = null;
        if (this.this$0.mStatus == 3 || this.this$0.mStatus == 4) {
            FileTransSheetDialogActivity.Q0(this.this$0, 5, false, 2, null);
            com.transsion.dbdata.markpoint.a.a.e(false, this.this$0.c1(), wifiModel.getErrorCode());
        } else if (this.this$0.mStatus == 0) {
            FileTransSheetDialogActivity.Q0(this.this$0, 1, false, 2, null);
        }
        int i = this.this$0.mStatus;
        if (i == 0) {
            str = "scan";
        } else if (i == 6) {
            str = "connect";
        } else if (i == 2) {
            str = "scan";
        } else if (i == 3 || i == 4) {
            str = "connect";
        }
        if (str != null) {
            com.transsion.dbdata.markpoint.a.a.g(str, wifiModel.getErrorCode());
        }
    }

    @Override
    public void onFileTranslated(FileData fileData, int userType) {
        y45.j(fileData, "fileData");
        AccessReceiverActionListener.DefaultImpls.onFileTranslated(this, fileData, userType);
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send, onFileTranslated: " + fileData);
    }

    @Override
    public void onPeersAvailable(List<? extends WifiP2pDevice> devices) {
        y45.j(devices, "devices");
        ArrayList arrayList = new ArrayList(devices);
        if (this.this$0.mStatus == 0 || this.this$0.mStatus == 2) {
            this.this$0.G1(arrayList);
        }
    }

    @Override
    public void onProgress(long j, long j2, int i, int i2) {
        AccessReceiverActionListener.DefaultImpls.onProgress(this, j, j2, i, i2);
    }

    @Override
    public void onTransferState(ConnectedState socketState) {
        y45.j(socketState, "socketState");
        AccessReceiverActionListener.DefaultImpls.onTransferState(this, socketState);
        LogUtils.v("FileTransSheetDialogActivity", "[TEST] send, onTransferState: " + socketState.getState() + " socketState.message: " + socketState.getMessage());
        int state = socketState.getState();
        if (state == 0) {
            if (this.this$0.mStatus == 3 || this.this$0.mStatus == 4) {
                LogUtils.v("FileTransSheetDialogActivity", "[TEST] send CLIENT_ASK, onTransferState: SOCKET_STATE_READY");
                this.this$0.transfer.sendConversationToService(new Conversation(0, 0L, false, 0, 0, new DeviceInfo(this.this$0.d1()), 14, null));
                FileTransSheetDialogActivity.Q0(this.this$0, 4, false, 2, null);
                return;
            }
            return;
        }
        if (state == 2) {
            FileTransSheetDialogActivity.Q0(this.this$0, 0, false, 2, null);
            return;
        }
        if (state != 3) {
            return;
        }
        if (this.this$0.mStatus == 4 || this.this$0.mStatus == 3) {
            FileTransSheetDialogActivity.Q0(this.this$0, 5, false, 2, null);
            com.transsion.dbdata.markpoint.a.a.e(false, this.this$0.c1(), 1002);
        }
    }
}

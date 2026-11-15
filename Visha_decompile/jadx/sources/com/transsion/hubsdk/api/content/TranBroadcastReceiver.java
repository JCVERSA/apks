package com.transsion.hubsdk.api.content;

import android.content.BroadcastReceiver;
import com.transsion.hubsdk.aosp.content.TranAospBroadcastReceiver;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.TranThubBroadcastReceiver;
import com.transsion.hubsdk.interfaces.content.ITranBroadcastReceiverAdapter;

public class TranBroadcastReceiver {
    private ITranBroadcastReceiverAdapter mAospService;
    private ITranBroadcastReceiverAdapter mThubService;

    public int getSendingUserId(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver == null) {
            return -1;
        }
        return getService(TranVersion.Core.VERSION_33411).getSendingUserId(broadcastReceiver);
    }

    public ITranBroadcastReceiverAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            ITranBroadcastReceiverAdapter iTranBroadcastReceiverAdapter = this.mThubService;
            if (iTranBroadcastReceiverAdapter != null) {
                return iTranBroadcastReceiverAdapter;
            }
            TranThubBroadcastReceiver tranThubBroadcastReceiver = new TranThubBroadcastReceiver();
            this.mThubService = tranThubBroadcastReceiver;
            return tranThubBroadcastReceiver;
        }
        ITranBroadcastReceiverAdapter iTranBroadcastReceiverAdapter2 = this.mAospService;
        if (iTranBroadcastReceiverAdapter2 != null) {
            return iTranBroadcastReceiverAdapter2;
        }
        TranAospBroadcastReceiver tranAospBroadcastReceiver = new TranAospBroadcastReceiver();
        this.mAospService = tranAospBroadcastReceiver;
        return tranAospBroadcastReceiver;
    }
}

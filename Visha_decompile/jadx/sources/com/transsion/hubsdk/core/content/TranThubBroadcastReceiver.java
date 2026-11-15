package com.transsion.hubsdk.core.content;

import android.content.BroadcastReceiver;
import com.transsion.hubsdk.content.TranBroadcastReceiverHelper;
import com.transsion.hubsdk.interfaces.content.ITranBroadcastReceiverAdapter;

public class TranThubBroadcastReceiver implements ITranBroadcastReceiverAdapter {
    private TranBroadcastReceiverHelper mHelper = new TranBroadcastReceiverHelper();

    @Override
    public int getSendingUserId(BroadcastReceiver broadcastReceiver) {
        return this.mHelper.getSendingUserId(broadcastReceiver);
    }
}

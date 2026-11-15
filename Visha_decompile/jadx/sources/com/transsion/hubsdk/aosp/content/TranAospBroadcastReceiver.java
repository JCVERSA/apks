package com.transsion.hubsdk.aosp.content;

import android.content.BroadcastReceiver;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.content.ITranBroadcastReceiverAdapter;
import java.lang.reflect.Method;

public class TranAospBroadcastReceiver implements ITranBroadcastReceiverAdapter {
    @Override
    public int getSendingUserId(BroadcastReceiver broadcastReceiver) {
        Method method = TranDoorMan.getMethod(BroadcastReceiver.class, "getSendingUserId", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, broadcastReceiver, new Object[0])).intValue();
        }
        return 0;
    }
}

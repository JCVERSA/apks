package com.transsion.hubsdk.aosp.view;

import android.content.Context;
import android.view.KeyEvent;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranKeyEventAdapter;

public class TranAospTranKeyEvent implements ITranKeyEventAdapter {
    private static final String TAG = "TranAospTranKeyEvent";
    private Context mContext = TranHubSdkManager.getContext();

    @Override
    public KeyEvent obtain(long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str) {
        Class cls = Long.TYPE;
        Class cls2 = Integer.TYPE;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(KeyEvent.class, "obtain", cls, cls, cls2, cls2, cls2, cls2, cls2, cls2, cls2, cls2, cls2, String.class), KeyEvent.class, Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), str);
        if (objInvokeMethod instanceof KeyEvent) {
            return (KeyEvent) objInvokeMethod;
        }
        return null;
    }
}

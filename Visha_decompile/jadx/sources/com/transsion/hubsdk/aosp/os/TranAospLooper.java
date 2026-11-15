package com.transsion.hubsdk.aosp.os;

import android.os.Looper;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.os.ITranLooperAdapter;
import java.lang.reflect.Method;

public class TranAospLooper implements ITranLooperAdapter {
    @Override
    public void setTraceTag(Looper looper, long j) {
        Method method = TranDoorMan.getMethod(looper.getClass(), "setTraceTag", Long.TYPE);
        if (method == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, looper, Long.valueOf(j));
    }
}

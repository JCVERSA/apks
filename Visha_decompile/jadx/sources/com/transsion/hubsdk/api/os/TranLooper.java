package com.transsion.hubsdk.api.os;

import android.os.Looper;
import com.transsion.hubsdk.aosp.os.TranAospLooper;
import com.transsion.hubsdk.interfaces.os.ITranLooperAdapter;

public class TranLooper {
    protected TranAospLooper mAospService;

    public ITranLooperAdapter getService() {
        TranAospLooper tranAospLooper = this.mAospService;
        if (tranAospLooper != null) {
            return tranAospLooper;
        }
        TranAospLooper tranAospLooper2 = new TranAospLooper();
        this.mAospService = tranAospLooper2;
        return tranAospLooper2;
    }

    public void setTraceTag(Looper looper, long j) {
        if (looper == null) {
            throw new NullPointerException("Looper cannot be null");
        }
        getService().setTraceTag(looper, j);
    }
}

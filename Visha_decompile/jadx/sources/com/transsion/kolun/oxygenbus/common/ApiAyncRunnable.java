package com.transsion.kolun.oxygenbus.common;

import android.os.Looper;
import com.transsion.apiinvoke.common.ApiInvokeLog;

public class ApiAyncRunnable implements Runnable {
    private static final String TAG = "KolunIPCChannel";
    public boolean isMainThreadCall;

    public ApiAyncRunnable() {
        this.isMainThreadCall = Looper.myLooper() == Looper.getMainLooper();
    }

    @Override
    public void run() {
        StringBuilder sb = new StringBuilder();
        sb.append("ApiAyncRunnable run in main:");
        sb.append(Looper.myLooper() == Looper.getMainLooper());
        ApiInvokeLog.logInfo(TAG, sb.toString());
    }
}

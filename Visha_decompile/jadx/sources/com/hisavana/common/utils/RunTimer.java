package com.hisavana.common.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.hisavana.common.constant.ComConstants;

public class RunTimer {
    private static final String TAG = "RunTimer";
    private Handler handler;
    private Runnable mTimeoutRunnable;
    private int scheduleTime = ComConstants.defScheduleTime;
    private TimeOutCallback timeOutCallback;

    public interface TimeOutCallback {
        void isTimeOut();
    }

    public void cancelTimeTask() {
        this.timeOutCallback = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.mTimeoutRunnable = null;
    }

    public void runTimerTask() {
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        if (this.mTimeoutRunnable == null) {
            this.mTimeoutRunnable = new Runnable() {
                @Override
                public void run() {
                    if (RunTimer.this.timeOutCallback != null) {
                        RunTimer.this.timeOutCallback.isTimeOut();
                    }
                }
            };
        }
        try {
            this.handler.postDelayed(this.mTimeoutRunnable, this.scheduleTime);
        } catch (Throwable th) {
            Log.e(TAG, Log.getStackTraceString(th));
        }
    }

    public void setScheduleTime(int i) {
        this.scheduleTime = i;
    }

    public void setTimeOutCallback(TimeOutCallback timeOutCallback) {
        this.timeOutCallback = timeOutCallback;
    }
}

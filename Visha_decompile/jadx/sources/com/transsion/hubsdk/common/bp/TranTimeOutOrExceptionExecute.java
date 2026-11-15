package com.transsion.hubsdk.common.bp;

import android.content.Context;
import android.os.RemoteException;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranTimeOutOrExceptionExecute<T> {
    private static final String TAG = "TranTimeOutOrExceptionExecute";
    private static final long TIMEOUT = 200;
    private Context mTranContext;

    public interface ExceptionRunnable<T> {
        T run() throws RemoteException;
    }

    public interface TimeOutAndExceptionRunnable<T> {
        T run() throws RemoteException;
    }

    public interface TimeOutRunnable<T> {
        T run() throws RemoteException;
    }

    public TranTimeOutOrExceptionExecute() {
    }

    public T exceptionRun(ExceptionRunnable exceptionRunnable, String str) {
        try {
            return (T) exceptionRunnable.run();
        } catch (RemoteException e) {
            if (this.mTranContext != null) {
                TranThubBpManager.recordException(this.mTranContext, str, e);
            } else {
                TranThubBpManager.recordException(str, e);
            }
            return null;
        }
    }

    public void recordTimeout(String str, long j) {
        if (j >= 200) {
            Context context = this.mTranContext;
            if (context != null) {
                TranThubBpManager.recordTimeout(context, str, j);
            } else {
                TranThubBpManager.recordTimeout(str, j);
            }
        }
    }

    public T timeOutAndExceptionRun(TimeOutAndExceptionRunnable timeOutAndExceptionRunnable, String str) {
        T t;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            t = (T) timeOutAndExceptionRunnable.run();
        } catch (RemoteException e) {
            if (this.mTranContext != null) {
                TranThubBpManager.recordException(this.mTranContext, str, e);
            } else {
                TranThubBpManager.recordException(str, e);
            }
            t = null;
        }
        recordTimeout(str, System.currentTimeMillis() - jCurrentTimeMillis);
        return t;
    }

    public T timeOutRun(TimeOutRunnable timeOutRunnable, String str) {
        T t;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            t = (T) timeOutRunnable.run();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "TimeOutException : " + e);
            t = null;
        }
        recordTimeout(str, System.currentTimeMillis() - jCurrentTimeMillis);
        return t;
    }

    public TranTimeOutOrExceptionExecute(Context context) {
        this.mTranContext = context;
    }
}

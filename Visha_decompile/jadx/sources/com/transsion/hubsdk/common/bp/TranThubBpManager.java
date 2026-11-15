package com.transsion.hubsdk.common.bp;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.app.ITranActivityManager;
import com.transsion.hubsdk.bp.ITranThubBp;
import com.transsion.hubsdk.common.BuildConfig;
import com.transsion.hubsdk.common.bp.TranThubBpManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.trancare.trancare.TranTrancareManager;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;

public class TranThubBpManager {
    private static final long EXCPC_TID = 933860000022L;
    private static final String EXCP_INFO_TAG = "thub_excp_info";
    private static final long EXCP_INFO_TID = 933861000041L;
    private static final int MAX_EXCP_INFO_LEN = 2000;
    private static final int STACK_COUNT = 10;
    private static final String TAG = "TranThubBpManager";
    private static final String THUB_CORE_VERSION_KEY = "c_v";
    private static final int THUB_MP_VERSION = 1;
    private static final String THUB_SDK_VERSION_KEY = "s_v";
    private static final String TRACE_INFO_KEY = "t_i";
    private static final String TRACE_TIMESTAMP_KEY = "s_t";
    private static Context mContext;
    private static ITranThubBp mService = ITranThubBp.Stub.asInterface(TranServiceManager.getServiceIBinder("thub_bp"));
    private static ExecutorService mExecutorService = Executors.newCachedThreadPool();

    public TranThubBpManager(Context context) {
        mContext = context;
    }

    private static String getExcpInfo(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        StringBuffer buffer = stringWriter.getBuffer();
        printWriter.close();
        return buffer.toString();
    }

    private static String getStackTrace(Throwable th, int i) {
        try {
            StackTraceElement[] stackTrace = th.getStackTrace();
            StringBuilder sb = new StringBuilder(th.toString());
            int i2 = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                sb.append("\n#" + stackTraceElement.getClassName());
                sb.append(Consts.DOT);
                sb.append(stackTraceElement.getMethodName());
                sb.append("[" + stackTraceElement.getLineNumber() + "]");
                i2++;
                if (i2 >= i) {
                    break;
                }
            }
            return sb.toString();
        } catch (Exception e) {
            TranSdkLog.w(TAG, "getStackTrace Exception" + e);
            return "";
        }
    }

    public static void lambda$recordException$0(String str, Throwable th) {
        boolean zRecordExcp;
        TranSdkLog.d(TAG, "Catch Thub-sdk Exception form " + str);
        try {
            zRecordExcp = mService.recordExcp(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            zRecordExcp = false;
        }
        String str2 = TAG;
        TranSdkLog.d(str2, "recordException.catchEnable=" + zRecordExcp);
        if (zRecordExcp) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            String strValueOf2 = String.valueOf(TranVersion.THUBCORE_VERSION);
            String strLocalExceptionLog = localExceptionLog(th, str);
            TranSdkLog.d(str2, strLocalExceptionLog.length() + " eStr=" + strLocalExceptionLog);
            trancareLog(strValueOf2, strValueOf, jCurrentTimeMillis, strLocalExceptionLog);
        }
        tneLog();
    }

    public static void lambda$recordException$1(String str, Throwable th) {
        boolean zRecordExcp;
        TranSdkLog.d(TAG, "Catch Thub-sdk Exception form " + str);
        try {
            zRecordExcp = mService.recordExcp(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            zRecordExcp = false;
        }
        String str2 = TAG;
        TranSdkLog.d(str2, "recordException.catchEnable=" + zRecordExcp);
        if (zRecordExcp) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            String strValueOf2 = String.valueOf(TranVersion.THUBCORE_VERSION);
            String strLocalExceptionLog = localExceptionLog(th, str);
            TranSdkLog.d(str2, strLocalExceptionLog.length() + " eStr=" + strLocalExceptionLog);
            trancareLog(strValueOf2, strValueOf, jCurrentTimeMillis, strLocalExceptionLog);
        }
    }

    public static void lambda$recordTimeout$2(String str, TimeoutException timeoutException) {
        boolean zRecordTimeout;
        TranSdkLog.d(TAG, "Thub-sdk Timeout from " + str);
        try {
            zRecordTimeout = mService.recordTimeout(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            zRecordTimeout = false;
        }
        TranSdkLog.d(TAG, "recordTimeout.catchEnable=" + zRecordTimeout);
        if (zRecordTimeout) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            String strValueOf2 = String.valueOf(TranVersion.THUBCORE_VERSION);
            String strLocalExceptionLog = localExceptionLog(timeoutException, str);
            if (strLocalExceptionLog.length() > 2000) {
                strLocalExceptionLog = strLocalExceptionLog.substring(0, 2000);
            }
            trancareLog(strValueOf2, strValueOf, jCurrentTimeMillis, strLocalExceptionLog);
        }
        tneLog();
    }

    public static void lambda$recordTimeout$3(String str, TimeoutException timeoutException) {
        boolean zRecordTimeout;
        TranSdkLog.d(TAG, "Thub-sdk Timeout form " + str);
        try {
            zRecordTimeout = mService.recordTimeout(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            zRecordTimeout = false;
        }
        TranSdkLog.d(TAG, "recordTimeout.catchEnable=" + zRecordTimeout);
        if (zRecordTimeout) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
            String strValueOf2 = String.valueOf(TranVersion.THUBCORE_VERSION);
            String strLocalExceptionLog = localExceptionLog(timeoutException, str);
            if (strLocalExceptionLog.length() > 2000) {
                strLocalExceptionLog = strLocalExceptionLog.substring(0, 2000);
            }
            trancareLog(strValueOf2, strValueOf, jCurrentTimeMillis, strLocalExceptionLog);
        }
    }

    private static String localExceptionLog(Throwable th, String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
        String excpInfo = getExcpInfo(th);
        sb.append(str2);
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(excpInfo);
        sb.append("  \r\n");
        return sb.length() > 2000 ? sb.substring(0, 2000) : sb.toString();
    }

    public static void recordException(Context context, final String str, final Throwable th) {
        if (!TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33101)) {
            TranSdkLog.e(TAG, "recordException fail, incompatible version");
        } else if (TranTrancareManager.isEnabled(EXCPC_TID)) {
            mExecutorService.submit(new Runnable() {
                @Override
                public final void run() {
                    TranThubBpManager.lambda$recordException$0(str, th);
                }
            });
        } else {
            TranSdkLog.d(TAG, "Thub-sdk thub_excpc(933860000022) is not enable!");
        }
    }

    public static void recordTimeout(Context context, final String str, long j) {
        if (!TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33101)) {
            TranSdkLog.e(TAG, "recordException fail, incompatible version");
            return;
        }
        if (!TranTrancareManager.isEnabled(EXCPC_TID)) {
            TranSdkLog.d(TAG, "Thub-sdk thub_excpc(933860000022) is not enable!");
            return;
        }
        final TimeoutException timeoutException = new TimeoutException("timeout: " + j + "ms");
        mExecutorService.submit(new Runnable() {
            @Override
            public final void run() {
                TranThubBpManager.lambda$recordTimeout$2(str, timeoutException);
            }
        });
    }

    private static void tneLog() {
        ITranActivityManager iTranActivityManagerAsInterface;
        if (!TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33101) || (iTranActivityManagerAsInterface = ITranActivityManager.Stub.asInterface(TranServiceManager.getServiceIBinder("activity"))) == null) {
            return;
        }
        try {
            iTranActivityManagerAsInterface.startTNE("0x01010001", 512L, Binder.getCallingPid(), "");
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "startTNE fail:" + e);
        }
    }

    private static void trancareLog(String str, String str2, long j, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString(THUB_CORE_VERSION_KEY, str);
        bundle.putString(THUB_SDK_VERSION_KEY, str2);
        bundle.putLong(TRACE_TIMESTAMP_KEY, j);
        bundle.putString(TRACE_INFO_KEY, str3);
        TranTrancareManager.serverLog(Long.valueOf(EXCP_INFO_TID), EXCP_INFO_TAG, 1, bundle);
    }

    public static void recordException(final String str, final Throwable th) {
        if (!TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33101)) {
            TranSdkLog.e(TAG, "recordException fail, incompatible version");
        } else if (!TranTrancareManager.isEnabled(EXCPC_TID)) {
            TranSdkLog.d(TAG, "Thub-sdk thub_excpc(933860000022) is not enable!");
        } else {
            mExecutorService.submit(new Runnable() {
                @Override
                public final void run() {
                    TranThubBpManager.lambda$recordException$1(str, th);
                }
            });
        }
    }

    public static void recordTimeout(final String str, long j) {
        if (!TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33101)) {
            TranSdkLog.e(TAG, "recordException fail, incompatible version");
            return;
        }
        if (!TranTrancareManager.isEnabled(EXCPC_TID)) {
            TranSdkLog.d(TAG, "Thub-sdk thub_excpc(933860000022) is not enable!");
            return;
        }
        final TimeoutException timeoutException = new TimeoutException("timeout: " + j + "ms");
        mExecutorService.submit(new Runnable() {
            @Override
            public final void run() {
                TranThubBpManager.lambda$recordTimeout$3(str, timeoutException);
            }
        });
    }
}

package com.facebook.biddingkit.logging;

import android.annotation.SuppressLint;
import android.os.Process;
import android.text.TextUtils;

class CrashReportHandler implements Thread.UncaughtExceptionHandler {
    private static final String BIDDING_KIT_PACKAGE = "com.facebook.biddingkit";
    private static final String TAG = "CrashReportHandler";
    private final Thread.UncaughtExceptionHandler mChainedHandler;

    public CrashReportHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.mChainedHandler = uncaughtExceptionHandler;
    }

    private void forwardExceptionIfPossible(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mChainedHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            killProcess();
        }
    }

    public static void initialize() {
        Thread.setDefaultUncaughtExceptionHandler(new CrashReportHandler(Thread.getDefaultUncaughtExceptionHandler()));
    }

    @SuppressLint({"CatchGeneralException"})
    private static void killProcess() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    @Override
    @SuppressLint({"CatchGeneralException"})
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            String strThrowableToString = EventLogUtils.throwableToString(th);
            if (!TextUtils.isEmpty(strThrowableToString) && strThrowableToString.contains(BIDDING_KIT_PACKAGE)) {
                BkLog.e(TAG, strThrowableToString);
            }
        } catch (Exception unused) {
        }
        forwardExceptionIfPossible(thread, th);
    }
}

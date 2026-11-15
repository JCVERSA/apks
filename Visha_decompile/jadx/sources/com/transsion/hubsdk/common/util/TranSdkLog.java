package com.transsion.hubsdk.common.util;

import android.os.Build;
import android.util.Log;

public class TranSdkLog {
    private static ITranLogger sLogger = new Default();
    public static boolean DEBUG = !"user".equals(Build.TYPE);

    public static class Default implements ITranLogger {
        @Override
        public int d(String str, String str2) {
            return Log.d(str, str2);
        }

        @Override
        public int e(String str, String str2) {
            return Log.e(str, str2);
        }

        @Override
        public int getLogLevel() {
            return 0;
        }

        @Override
        public int i(String str, String str2) {
            return Log.i(str, str2);
        }

        @Override
        public boolean isLoggable(String str, int i) {
            return Log.isLoggable(str, i);
        }

        @Override
        public void printStackTrace(Throwable th) {
            th.printStackTrace();
        }

        @Override
        public int setLogLevel(int i) {
            return 0;
        }

        @Override
        public int v(String str, String str2) {
            return Log.v(str, str2);
        }

        @Override
        public int w(String str, String str2) {
            return Log.w(str, str2);
        }

        @Override
        public int d(String str, String str2, Throwable th) {
            return Log.d(str, str2, th);
        }

        @Override
        public int e(String str, String str2, Throwable th) {
            return Log.e(str, str2, th);
        }

        @Override
        public int i(String str, String str2, Throwable th) {
            return Log.i(str, str2, th);
        }

        @Override
        public int v(String str, String str2, Throwable th) {
            return Log.v(str, str2, th);
        }

        @Override
        public int w(String str, String str2, Throwable th) {
            return Log.w(str, str2, th);
        }
    }

    public static int d(String str, String str2) {
        if (DEBUG) {
            return sLogger.d(str, str2);
        }
        return 0;
    }

    public static int e(String str, String str2) {
        return sLogger.e(str, str2);
    }

    public static int getLogLevel() {
        return sLogger.getLogLevel();
    }

    public static int i(String str, String str2) {
        if (DEBUG) {
            return sLogger.i(str, str2);
        }
        return 0;
    }

    public static boolean isLoggable(String str, int i) {
        return sLogger.isLoggable(str, i);
    }

    public static void printStackTrace(Throwable th) {
        sLogger.printStackTrace(th);
    }

    public static void setImpl(ITranLogger iTranLogger) {
        if (iTranLogger == null) {
            throw new IllegalArgumentException("logger must not be null");
        }
        sLogger = iTranLogger;
    }

    public static int setLogLevel(int i) {
        return sLogger.setLogLevel(i);
    }

    public static int v(String str, String str2) {
        if (DEBUG) {
            return sLogger.v(str, str2);
        }
        return 0;
    }

    public static int w(String str, String str2) {
        if (DEBUG) {
            return sLogger.w(str, str2);
        }
        return 0;
    }

    public static int e(String str, String str2, Throwable th) {
        return sLogger.e(str, str2, th);
    }

    public static int d(String str, String str2, Throwable th) {
        if (DEBUG) {
            return sLogger.d(str, str2, th);
        }
        return 0;
    }

    public static int i(String str, String str2, Throwable th) {
        if (DEBUG) {
            return sLogger.i(str, str2, th);
        }
        return 0;
    }

    public static int v(String str, String str2, Throwable th) {
        if (DEBUG) {
            return sLogger.v(str, str2, th);
        }
        return 0;
    }

    public static int w(String str, String str2, Throwable th) {
        if (DEBUG) {
            return sLogger.w(str, str2, th);
        }
        return 0;
    }
}

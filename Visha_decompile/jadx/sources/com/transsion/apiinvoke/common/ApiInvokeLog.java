package com.transsion.apiinvoke.common;

import java.util.logging.Level;
import java.util.logging.Logger;

public class ApiInvokeLog {
    private static boolean IS_DEBUG = false;
    public static final String LOG_NAME = "ApiInvoke";
    public static final String VERSION = "1.5.135";

    public static void logError(String str, String str2) {
        Logger.getLogger("ApiInvoke1.5.135").log(Level.SEVERE, str + ": " + str2);
    }

    public static void logInfo(String str, String str2) {
        logInfo(str, str2, false);
    }

    public static void logWarning(String str, String str2) {
        Logger.getLogger("ApiInvoke1.5.135").log(Level.WARNING, str + ": " + str2);
    }

    public static void setDebuggable(boolean z) {
        IS_DEBUG = z;
    }

    public static void logInfo(String str, String str2, boolean z) {
        if (IS_DEBUG || z) {
            Logger.getLogger("ApiInvoke1.5.135").log(Level.INFO, str + ": " + str2);
        }
    }
}

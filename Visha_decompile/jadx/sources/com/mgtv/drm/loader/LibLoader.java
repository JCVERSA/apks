package com.mgtv.drm.loader;

import android.content.Context;
import com.mgtv.drm.log.DebugLog;

public class LibLoader {
    public static final int LAYER_BACKUP_LOAD = 2;
    public static final int LAYER_EXCEPTION = -1;
    public static final int LAYER_LOAD = 1;
    public static final int LAYER_LOADLIBRARY = 0;
    private static final String TAG = "LibLoader";

    public static String getErrMsg(Throwable th) {
        return th != null ? th.getMessage() : "";
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0073  */
    /* JADX WARN: Code duplicated, block: B:20:0x008c A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0073, please report this as an issue */
    public static int loadLibrary(Context context, String str) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        StringBuilder sb;
        String str2;
        String string;
        try {
            DebugLog.i(TAG, "loadLibrary " + str);
            System.loadLibrary(str);
            DebugLog.i(TAG, "loadLibrary " + str + " success");
            return 0;
        } catch (Exception e) {
            e = e;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary Exception ";
            sb.append(str2);
            sb.append(getErrMsg(e));
            string = sb.toString();
            DebugLog.e(TAG, string);
            DebugLog.e(TAG, "change to retryload");
            if (context == null) {
                return -1;
            }
            DebugLog.i(TAG, "retryload " + str);
            return retryload(context, str, string);
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary UnsatisfiedLinkError ";
            sb.append(str2);
            sb.append(getErrMsg(e));
            string = sb.toString();
            DebugLog.e(TAG, string);
            DebugLog.e(TAG, "change to retryload");
            if (context == null) {
                return -1;
            }
            DebugLog.i(TAG, "retryload " + str);
            return retryload(context, str, string);
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary Throwable ";
            sb.append(str2);
            sb.append(getErrMsg(e));
            string = sb.toString();
            DebugLog.e(TAG, string);
            DebugLog.e(TAG, "change to retryload");
            if (context == null) {
                return -1;
            }
            DebugLog.i(TAG, "retryload " + str);
            return retryload(context, str, string);
        }
    }

    private static int retryload(Context context, String str, String str2) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        StringBuilder sb;
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        try {
            String str4 = context.getFilesDir().getParentFile().getAbsolutePath() + "/lib/" + System.mapLibraryName(str);
            DebugLog.i(TAG, "retry Load:" + str4);
            System.load(str4);
            return 1;
        } catch (Exception e) {
            e = e;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch Exception";
            sb.append(str3);
            sb.append(getErrMsg(e));
            String string = sb.toString();
            DebugLog.e(TAG, string);
            BackupLibLoader.load(context, str, string);
            return 2;
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch UnsatisfiedLinkError";
            sb.append(str3);
            sb.append(getErrMsg(e));
            String string2 = sb.toString();
            DebugLog.e(TAG, string2);
            BackupLibLoader.load(context, str, string2);
            return 2;
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch Throwable";
            sb.append(str3);
            sb.append(getErrMsg(e));
            String string3 = sb.toString();
            DebugLog.e(TAG, string3);
            BackupLibLoader.load(context, str, string3);
            return 2;
        }
    }
}

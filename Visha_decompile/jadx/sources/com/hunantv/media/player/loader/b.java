package com.hunantv.media.player.loader;

import android.content.Context;
import com.hunantv.media.player.pragma.DebugLog;

public class b {
    public static int a(Context context, String str) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        StringBuilder sb;
        String str2;
        try {
            DebugLog.i("LibLoader", "loadLibrary " + str);
            System.loadLibrary(str);
            DebugLog.i("LibLoader", "loadLibrary " + str + " success");
            return 0;
        } catch (Exception e) {
            e = e;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary Exception ";
            sb.append(str2);
            sb.append(a(e));
            String string = sb.toString();
            DebugLog.e("LibLoader", string);
            DebugLog.e("LibLoader", "change to retryload");
            DebugLog.i("LibLoader", "retryload " + str);
            return a(context, str, string);
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary UnsatisfiedLinkError ";
            sb.append(str2);
            sb.append(a(e));
            String string2 = sb.toString();
            DebugLog.e("LibLoader", string2);
            DebugLog.e("LibLoader", "change to retryload");
            DebugLog.i("LibLoader", "retryload " + str);
            return a(context, str, string2);
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            sb.append("");
            str2 = "loadLibrary Throwable ";
            sb.append(str2);
            sb.append(a(e));
            String string3 = sb.toString();
            DebugLog.e("LibLoader", string3);
            DebugLog.e("LibLoader", "change to retryload");
            DebugLog.i("LibLoader", "retryload " + str);
            return a(context, str, string3);
        }
    }

    private static int a(Context context, String str, String str2) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        StringBuilder sb;
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        try {
            String str4 = context.getFilesDir().getParentFile().getAbsolutePath() + "/lib/" + System.mapLibraryName(str);
            DebugLog.i("LibLoader", "retry Load:" + str4);
            System.load(str4);
            return 1;
        } catch (Exception e) {
            e = e;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch Exception";
            sb.append(str3);
            sb.append(a(e));
            String string = sb.toString();
            DebugLog.e("LibLoader", string);
            a.a(context, str, string);
            return 2;
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch UnsatisfiedLinkError";
            sb.append(str3);
            sb.append(a(e));
            String string2 = sb.toString();
            DebugLog.e("LibLoader", string2);
            a.a(context, str, string2);
            return 2;
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            sb.append(str2);
            str3 = "System.load catch Throwable";
            sb.append(str3);
            sb.append(a(e));
            String string3 = sb.toString();
            DebugLog.e("LibLoader", string3);
            a.a(context, str, string3);
            return 2;
        }
    }

    public static String a(Throwable th) {
        return th != null ? th.getMessage() : "";
    }
}

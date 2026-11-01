package com.snaptube.taskManager.ffmpeg;

import java.util.HashMap;
import o.c16;
import o.u88;

public class FFmpegHelper {
    private static boolean sLibLoaded;
    private static String sLibName;
    private static String sPluginName;
    private static String sPluginVersion;
    private static HashMap<String, a> sProcessProgressHashMap = new HashMap<>();

    public interface a {
    }

    public static native int execCommand(long j, String[] strArr);

    public static void ffmpegCancel(long j) {
        loadLibrary();
        if (j == 0 || !sLibLoaded) {
            return;
        }
        setCancel(j);
    }

    public static int ffmpegExecCommand(long j, String[] strArr) {
        loadLibrary();
        if (sLibLoaded) {
            return execCommand(j, strArr);
        }
        return -1;
    }

    public static String ffmpegGetErrorMsg(long j) {
        loadLibrary();
        return sLibLoaded ? getErrorMsg(j) : "";
    }

    public static long ffmpegInit(a aVar) {
        loadLibrary();
        if (!sLibLoaded) {
            return -1L;
        }
        long jInitFFMediaContext = initFFMediaContext();
        if (jInitFFMediaContext != 0 && aVar != null) {
            sProcessProgressHashMap.put(String.valueOf(jInitFFMediaContext), aVar);
        }
        return jInitFFMediaContext;
    }

    public static int ffmpegMuxesToWebM(long j, String str, String str2, String str3) {
        loadLibrary();
        if (sLibLoaded) {
            return muxesToWebM(j, str, str2, str3);
        }
        return -1;
    }

    public static long ffmpegRelease(long j) {
        loadLibrary();
        if (j == 0 || !sLibLoaded) {
            return 0L;
        }
        sProcessProgressHashMap.remove(String.valueOf(j));
        return release(j);
    }

    public static int ffmpegTranscodeTomp3(long j, String str, String str2, int i, int i2) {
        loadLibrary();
        if (sLibLoaded) {
            return transcodeTomp3(j, str, str2, i, i2);
        }
        return -1;
    }

    public static native String getErrorMsg(long j);

    public static native long initFFMediaContext();

    public static synchronized void loadLibrary() {
        if (sLibLoaded) {
            return;
        }
        try {
            c16.D(sPluginName, sPluginVersion, sLibName);
            sLibLoaded = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static native int muxesToWebM(long j, String str, String str2, String str3);

    public static void onProcessProgress(long j, long j2, long j3) {
        u88.a(sProcessProgressHashMap.get(String.valueOf(j)));
    }

    public static native long release(long j);

    public static native void setCancel(long j);

    public static void setLibInfo(String str, String str2, String str3) {
        sPluginName = str;
        sPluginVersion = str2;
        sLibName = str3;
    }

    public static native int transcodeTomp3(long j, String str, String str2, int i, int i2);
}

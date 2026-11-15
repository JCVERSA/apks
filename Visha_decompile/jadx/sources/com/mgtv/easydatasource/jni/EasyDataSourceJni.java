package com.mgtv.easydatasource.jni;

public class EasyDataSourceJni {

    public static class a {
        static EasyDataSourceJni a = new EasyDataSourceJni();
    }

    public static synchronized EasyDataSourceJni a() {
        return a.a;
    }

    public native String createTask(String str, String str2, int i);

    public native void enableHttpsReport(boolean z);

    public native void enableLogCallback(boolean z);

    public native void enableP2PDownload(boolean z);

    public native void enableP2PUpload(boolean z);

    public native void enableTrickleICE(boolean z);

    public native String genAgentUrl(String str);

    public native int getLocalServerPort();

    public native boolean getPreheatTaskEnable();

    public native int getPreheatTaskLimitCount();

    public native String getSdkVersion();

    public native int initSDK(String str, String str2, int i, int i2, String str3, c cVar);

    public native boolean isInited();

    public native int pauseTask(String str);

    public native com.mgtv.easydatasource.jni.a[] queryPreTaskInfo();

    public native int queryTaskInfo(String str, b bVar);

    public native int readDataDirect(String str, String str2, byte[] bArr, long j, long j2, long[] jArr, int[] iArr);

    public native int resumeTask(String str);

    public native int runTask(String str, int i, int i2, int i3);

    public native int seekTask(String str, int i);

    public native void setAppScene(int i);

    public native int setBackupUrlJson(String str, String str2);

    public native int setBusinessSuuid(String str, String str2);

    public native int setBusinessType(String str, int i);

    public native int setFileDuration(String str, int i);

    public native int setGlobalConfig(String str);

    public native int setGlobalConfigPair(String str, String str2);

    public native int setIndexesFileHash(String str, String str2);

    public native void setLogLevel(int i);

    public native int setM3u8Content(String str, String str2);

    public native int setPlaySpeed(String str, float f);

    public native int setPlayerBuffer(String str, int i);

    public native int setPlayerSuuid(String str, String str2);

    public native int setPriority(String str, int i);

    public native int shiftCachePolicy(String str, int i, int i2, int i3);

    public native int stopTask(String str);

    public native int syncStopTask(String str);

    public native int unInitSDK();
}

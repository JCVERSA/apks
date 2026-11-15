package com.mgtv.easydatasource;

import android.text.TextUtils;
import com.hisavana.common.bean.TAdErrorCode;
import com.hunantv.media.p2p.P2pMgr;
import com.mgtv.easydatasource.a.a;
import com.mgtv.easydatasource.jni.EasyDataSourceJni;
import com.mgtv.easydatasource.jni.b;
import com.mgtv.easydatasource.jni.c;

public class EasyDataSourceManager {
    private static final String TAG = "EasyDataSourceJni";
    private c onEasyDataSourceCallBack;
    private boolean initSuccess = false;
    private String taskHash = "";
    private int taskPort = 0;

    public static class ManagerHolder {
        static EasyDataSourceManager instance = new EasyDataSourceManager();

        private ManagerHolder() {
        }
    }

    public static synchronized EasyDataSourceManager instance() {
        return ManagerHolder.instance;
    }

    public String createP2PPlayer(String str, String str2, int i) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return "-10000";
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().createTask(str, str2, i);
        }
        a.a(TAG, "createP2PPlayer 传入参数不可以为null");
        return "-10001";
    }

    public int destoryP2PPlayer(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().stopTask(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public void enableHttpsReport(boolean z) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().enableHttpsReport(z);
        }
    }

    public void enableLogCallback(boolean z) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().enableLogCallback(z);
        }
    }

    public void enableP2PDownload(boolean z) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().enableP2PDownload(z);
        }
    }

    public void enableP2PUpload(boolean z) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().enableP2PUpload(z);
        }
    }

    public void enableTrickleICE(boolean z) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().enableTrickleICE(z);
        }
    }

    public String genAgentUrl(String str) {
        if (!isInitSuccess()) {
            return "-10000";
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().genAgentUrl(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return "-10001";
    }

    public int getHttpport() {
        if (isInitSuccess()) {
            return EasyDataSourceJni.a().getLocalServerPort();
        }
        a.a(TAG, "自研p2p初始化失败");
        return TAdErrorCode.CODE_UNKNOWN;
    }

    public String getLocalProxyPath(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return "-10000";
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().genAgentUrl(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return "-10001";
    }

    public c getOnEasyDataSourceCallBack() {
        return this.onEasyDataSourceCallBack;
    }

    public boolean getPreheatTaskEnable() {
        if (isInitSuccess()) {
            return EasyDataSourceJni.a().getPreheatTaskEnable();
        }
        return false;
    }

    public int getPreheatTaskLimitCount() {
        return !isInitSuccess() ? TAdErrorCode.CODE_UNKNOWN : EasyDataSourceJni.a().getPreheatTaskLimitCount();
    }

    public String getSdkVersion() {
        return !isInitSuccess() ? "-10000" : EasyDataSourceJni.a().getSdkVersion();
    }

    public String getTaskHash() {
        return this.taskHash;
    }

    public int getTaskPort() {
        return this.taskPort;
    }

    public int initSDK(String str, String str2, int i, int i2, String str3, c cVar) {
        if (!com.mgtv.easydatasource.b.a.a()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (isInited()) {
            return 0;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || cVar == null) {
            a.a(TAG, "传入参数不可以为null");
            return -10001;
        }
        setOnEasyDataSourceCallBack(cVar);
        int iInitSDK = EasyDataSourceJni.a().initSDK(str, str2, i, i2, str3, cVar);
        if (iInitSDK >= 0) {
            setInitSuccess(true);
        }
        return iInitSDK;
    }

    public boolean isInitSuccess() {
        return this.initSuccess;
    }

    public boolean isInited() {
        return isInitSuccess() ? EasyDataSourceJni.a().isInited() : isInitSuccess();
    }

    public void onLogCallBack(int i, String str) {
        if (getOnEasyDataSourceCallBack() != null) {
            getOnEasyDataSourceCallBack().a(i, str);
        }
    }

    public void onPreTaskCallBack(String str, int i) {
        if (getOnEasyDataSourceCallBack() != null) {
            getOnEasyDataSourceCallBack().a(str, i);
        }
    }

    public int pauseP2PPlayer(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().pauseTask(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public com.mgtv.easydatasource.jni.a[] queryPreTaskInfo() {
        if (isInitSuccess()) {
            return EasyDataSourceJni.a().queryPreTaskInfo();
        }
        return null;
    }

    public int queryTaskInfo(String str, b bVar) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().queryTaskInfo(str, bVar);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int readDataDirect(String str, String str2, byte[] bArr, long j, long j2, long[] jArr, int[] iArr) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().readDataDirect(str, str2, bArr, j, j2, jArr, iArr);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int resumeP2PPlayer(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().resumeTask(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int runP2PPlayer(String str, int i, int i2, int i3) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (TextUtils.isEmpty(str)) {
            a.a(TAG, "startP2PTask 创建任务失败");
            return -10002;
        }
        if (i == 0) {
            setTaskHash(str);
        }
        int iRunTask = EasyDataSourceJni.a().runTask(str, i, i2, i3);
        if (iRunTask != 0) {
            destoryP2PPlayer(str);
            a.a(TAG, "runP2PPlayer 启动任务失败");
        }
        return iRunTask;
    }

    public int seekTask(String str, int i) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && i >= 0) {
            return EasyDataSourceJni.a().seekTask(str, i);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public void setAppScene(int i) {
        if (isInitSuccess()) {
            EasyDataSourceJni.a().setAppScene(i);
        }
    }

    public int setBackupUrlJson(String str, String str2) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().setBackupUrlJson(str, str2);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setBusinessSuuid(String str, String str2) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().setBusinessSuuid(str, str2);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setBusinessType(String str, int i) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && i >= 0) {
            return EasyDataSourceJni.a().setBusinessType(str, i);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setFileDuration(String str, int i) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().setFileDuration(str, i);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setGlobalConfig(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().setGlobalConfig(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setGlobalConfigPair(String str, String str2) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().setGlobalConfigPair(str, str2);
        }
        a.a(TAG, "传入key不可以为null");
        return -10001;
    }

    public int setIndexesFileHash(String str, String str2) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().setIndexesFileHash(str, str2);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public void setInitSuccess(boolean z) {
        this.initSuccess = z;
    }

    public void setLogLevel(int i) {
        if (!isInitSuccess() || i <= 0) {
            return;
        }
        EasyDataSourceJni.a().setLogLevel(i);
    }

    public int setM3u8Content(String str, String str2) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().setM3u8Content(str, str2);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public void setOnEasyDataSourceCallBack(c cVar) {
        this.onEasyDataSourceCallBack = cVar;
    }

    public int setPlaySpeed(String str, float f) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && f > 0.0f) {
            return EasyDataSourceJni.a().setPlaySpeed(str, f);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setPlayerBuffer(String str, int i) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (TextUtils.isEmpty(str)) {
            a.a(TAG, "传入参数不可以为null");
            return -10001;
        }
        return EasyDataSourceJni.a().setPlayerBuffer(str, i / 1000);
    }

    public int setPlayerSuuid(String str, String str2) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return EasyDataSourceJni.a().setPlayerSuuid(str, str2);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int setPriority(String str, int i) {
        if (!isInitSuccess()) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().setPriority(str, i);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public void setTaskHash(String str) {
        this.taskHash = str;
    }

    public void setTaskPort(int i) {
        this.taskPort = i;
    }

    public int shiftCachePolicy(String str, int i, int i2, int i3) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str) && i >= 0) {
            return EasyDataSourceJni.a().shiftCachePolicy(str, i, i2, i3);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public String startP2PPlayer(String str, String str2, int i, int i2, int i3, int i4) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return "-10000";
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            a.a(TAG, "startP2PPlayer 传入参数不可以为null");
            return "-10001";
        }
        String strCreateTask = EasyDataSourceJni.a().createTask(str, str2, i);
        if (TextUtils.isEmpty(strCreateTask)) {
            a.a(TAG, "startP2PPlayer 创建任务失败");
            return "-10002";
        }
        int localServerPort = EasyDataSourceJni.a().getLocalServerPort();
        if (localServerPort <= 0) {
            a.a(TAG, "startP2PPlayer 获取端口号失败");
            return "" + localServerPort + (-10003);
        }
        setTaskPort(localServerPort);
        int iRunTask = EasyDataSourceJni.a().runTask(strCreateTask, i2, i3, i4);
        if (iRunTask >= 0) {
            return getLocalProxyPath(strCreateTask, localServerPort);
        }
        a.a(TAG, "startP2PPlayer 启动任务失败");
        return "" + iRunTask + (-10004);
    }

    public String startP2PTask(String str, int i, int i2, int i3) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return "-10000";
        }
        if (TextUtils.isEmpty(str)) {
            a.a(TAG, "startP2PTask 创建任务失败");
            return "-10002";
        }
        int localServerPort = EasyDataSourceJni.a().getLocalServerPort();
        if (localServerPort <= 0) {
            a.a(TAG, "startP2PTask 获取端口号失败");
            return "" + localServerPort + (-10003);
        }
        setTaskPort(localServerPort);
        int iRunTask = EasyDataSourceJni.a().runTask(str, i, i2, i3);
        if (iRunTask == 0) {
            return getLocalProxyPath(str, localServerPort);
        }
        destoryP2PPlayer(str);
        a.a(TAG, "startP2PTask 启动任务失败");
        return "" + iRunTask + (-10004);
    }

    public int syncStopTask(String str) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (!TextUtils.isEmpty(str)) {
            return EasyDataSourceJni.a().syncStopTask(str);
        }
        a.a(TAG, "传入参数不可以为null");
        return -10001;
    }

    public int unInitSDK() {
        try {
            if (!isInitSuccess()) {
                return -1;
            }
            setInitSuccess(false);
            return EasyDataSourceJni.a().unInitSDK();
        } catch (Exception e) {
            a.b(TAG, e.toString());
            return -1;
        }
    }

    public String getLocalProxyPath(String str, int i) {
        if (!isInitSuccess()) {
            a.a(TAG, "自研p2p初始化失败");
            return "-10000";
        }
        if (TextUtils.isEmpty(str) || i <= 0) {
            a.a(TAG, "传入参数不可以为null");
            return "-10001";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("http://127.0.0.1:");
        stringBuffer.append(i);
        stringBuffer.append(P2pMgr.PROXY_TAG_P2P_MGTV);
        stringBuffer.append(str);
        stringBuffer.append("/playlist.m3u8");
        return stringBuffer.toString();
    }
}

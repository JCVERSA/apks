package com.mgtv.downloader.p2p;

import android.content.Context;
import android.text.TextUtils;
import com.mgtv.downloader.p2p.yunfan.YFP2pMgr;
import com.yunfan.net.Yfnet;

public class ImgoP2pMgr implements IP2pMgr {
    public static final int CALLBACK_ID_CACHESTORAGE_NOSPACE = 1;
    public static final int CALLBACK_ID_CACHE_FINISH = 0;
    public static final int CALLBACK_ID_CDN_M3U8 = 19304;
    public static final int CALLBACK_ID_DISK_NOT_ACCESS = 2;
    public static final int CALLBACK_ID_FINISH_DOWNLOAD = 0;
    public static final int CALLBACK_ID_FLOW_INFO = 19212;
    public static final int CALLBACK_ID_HTTP_BEGIN = 18119;
    public static final int CALLBACK_ID_HTTP_END = 18120;
    public static final int CALLBACK_ID_HTTP_ERROR = 18117;
    public static final int CALLBACK_ID_MONGOTV_SPECIAL = 18116;
    public static final int CALLBACK_ID_NO_SPACE = 1;
    public static final int CALLBACK_ID_P2P_LOG = 18718;
    public static final int CALLBACK_ID_READDATA_CONFLICT = 18118;
    public static final int CALLBACK_ID_TASK_NOT_EXIST = 18731;
    public static final int CALLBACK_ID_URL_INVALID = 3;
    public static final int CALLBACK_ID_URL_OUTOFDATA = 3;
    public static final int E_NET_AUTH_DISABLE = -22;
    public static final int E_NET_AUTH_DOING = -18;
    public static final int E_NET_AUTH_EXCEED_CLIENT_NUM = -20;
    public static final int E_NET_AUTH_FAIL = -19;
    public static final int E_NET_BIND_LOCAL_HTTP_PORT_FAIL = -17;
    public static final int E_NET_BUFFER_NOT_ENOUGH = -11;
    public static final int E_NET_CON_ERROR = -4;
    public static final int E_NET_CREATE_TASK_FAILED = -10;
    public static final int E_NET_DISK_NOT_ENOUGH = -9;
    public static final int E_NET_DOMAIN_NOT_IN_WHITELIST = -21;
    public static final int E_NET_ERROR_PARA = -5;
    public static final int E_NET_FALSE = -1;
    public static final int E_NET_GET_JAVA_METHOD_FAIL = -15;
    public static final int E_NET_GET_JVM_FAIL = -16;
    public static final int E_NET_NO_DATA = -8;
    public static final int E_NET_NO_FILE = -6;
    public static final int E_NET_NO_INIT = -14;
    public static final int E_NET_NO_TASK_BY_HASH = -12;
    public static final int E_NET_OK = 0;
    public static final int E_NET_PATH_NOT_ACCESS = -13;
    public static final int E_NET_READ_AGAIN = -555;
    public static final int E_NET_RECV_ERROR = -3;
    public static final int E_NET_SEND_ERROR = -2;
    public static final int E_NET_TASK_FINISH = 1;
    public static final int E_NET_TIME_OUT = -7;
    public static final int HTTP_ERROR_TYPE_DNS_FAIL = 1;
    public static final int HTTP_ERROR_TYPE_HTTP_REQUEST_TIMEOUT = 6;
    public static final int HTTP_ERROR_TYPE_HTTP_STATUS_ERROR = 7;
    public static final int HTTP_ERROR_TYPE_TCP_CONNECT_ERROR = 2;
    public static final int HTTP_ERROR_TYPE_TCP_CONNECT_TIMEOUT = 3;
    public static final int HTTP_ERROR_TYPE_TCP_RECV_ERROR = 5;
    public static final int HTTP_ERROR_TYPE_TCP_SEND_ERROR = 4;
    public static final int RESULT_ID_COPY_FINISHED = 0;
    public static final int RESULT_ID_CREATE_TARGET_FAILED = 1;
    public static final int RESULT_ID_DOWNPATH_CANNOT_WRITE = 4;
    public static final int RESULT_ID_DOWNPATH_NOSPACE = 3;
    public static final int RESULT_ID_READDATA_FAILED = 2;
    public static final int RESULT_ID_WRITE_FAILED = 5;
    public static final int STATUS_ERROR = -1;
    public static final int STATUS_OK = 0;
    public static final int TYPE_PAD = 1;
    public static final int TYPE_PHONE = 0;
    private static ImgoP2pMgr mInstance;
    private IP2pMgr mP2pMgr = YFP2pMgr.getInstance();

    private ImgoP2pMgr(int i) {
    }

    public static ImgoP2pMgr getInstance() {
        if (mInstance == null) {
            syncInit(0);
        }
        return mInstance;
    }

    private boolean isSSWW() {
        return false;
    }

    private static synchronized void syncInit(int i) {
        if (mInstance == null) {
            mInstance = new ImgoP2pMgr(i);
        }
    }

    @Override
    public void CleanCache() {
        try {
            this.mP2pMgr.CleanCache();
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    @Override
    public void SetVideoDuration(ImgoP2pTask imgoP2pTask, int i) {
        this.mP2pMgr.SetVideoDuration(imgoP2pTask, i);
    }

    @Override
    public void addNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        this.mP2pMgr.addNotifyListener(onNotifyMsgListener);
    }

    @Override
    public int createTask(ImgoP2pTask imgoP2pTask) {
        return this.mP2pMgr.createTask(imgoP2pTask);
    }

    @Override
    public void deleteTask(ImgoP2pTask imgoP2pTask) {
        if (isSSWW()) {
            this.mP2pMgr.deleteTask(imgoP2pTask);
        }
    }

    @Override
    public void enableP2pDownload(boolean z) {
        this.mP2pMgr.enableP2pDownload(z);
    }

    @Override
    public void enableP2pUpload(boolean z) {
        this.mP2pMgr.enableP2pUpload(z);
    }

    @Override
    public int getHttpport() {
        return this.mP2pMgr.getHttpport();
    }

    @Override
    public String getProxyUrl(ImgoP2pTask imgoP2pTask) {
        return this.mP2pMgr.getProxyUrl(imgoP2pTask);
    }

    public int getSwitchP2p() {
        return 0;
    }

    @Override
    public ImgoTaskInfo getTaskInfo(ImgoP2pTask imgoP2pTask) {
        return this.mP2pMgr.getTaskInfo(imgoP2pTask);
    }

    @Override
    public boolean hasInit() {
        return this.mP2pMgr.hasInit();
    }

    @Override
    public synchronized int init(IP2pMgr.Config config, Context context) {
        return this.mP2pMgr.init(config, context);
    }

    @Override
    public int isTaskExist(ImgoP2pTask imgoP2pTask) {
        return this.mP2pMgr.isTaskExist(imgoP2pTask);
    }

    @Override
    public void pauseTask(ImgoP2pTask imgoP2pTask) {
        this.mP2pMgr.pauseTask(imgoP2pTask);
    }

    @Override
    public long readData(ImgoP2pTask imgoP2pTask, String str, byte[] bArr, long j, long j2, long[] jArr, int[] iArr) {
        return this.mP2pMgr.readData(imgoP2pTask, str, bArr, j, j2, jArr, iArr);
    }

    @Override
    public void removeNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        this.mP2pMgr.removeNotifyListener(onNotifyMsgListener);
    }

    @Override
    public int runTask(ImgoP2pTask imgoP2pTask) {
        return this.mP2pMgr.runTask(imgoP2pTask);
    }

    @Override
    public int setApkType(int i) {
        return this.mP2pMgr.setApkType(i);
    }

    public int setM3u8Data(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return -1;
        }
        return Yfnet.YfSetM3u8Data(str, str2);
    }

    @Override
    public void setNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        this.mP2pMgr.setNotifyListener(onNotifyMsgListener);
    }

    @Override
    public void setPlaySpeed(int i) {
        this.mP2pMgr.setPlaySpeed(i);
    }

    @Override
    public void setPlayingTimepoint(ImgoP2pTask imgoP2pTask, int i, boolean z) {
        this.mP2pMgr.setPlayingTimepoint(imgoP2pTask, i, z);
    }

    @Override
    public void setTaskPlayingStatus(ImgoP2pTask imgoP2pTask, boolean z) {
        this.mP2pMgr.setTaskPlayingStatus(imgoP2pTask, z);
    }

    @Override
    public int startLog() {
        return this.mP2pMgr.startLog();
    }

    @Override
    public int stopLog() {
        return this.mP2pMgr.stopLog();
    }

    @Override
    public synchronized void unInit() {
        this.mP2pMgr.unInit();
    }
}

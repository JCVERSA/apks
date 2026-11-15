package com.mgtv.downloader.p2p.yunfan;

import android.content.Context;
import com.hunantv.imgo.util.n;
import com.just.agentweb.DefaultWebClient;
import com.mgtv.downloader.p2p.IP2pMgr;
import com.mgtv.downloader.p2p.ImgoP2pTask;
import com.mgtv.downloader.p2p.ImgoTaskInfo;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.mgtv.easydatasource.flowreporter.BuildConfig;
import com.yunfan.net.TaskInfo;
import com.yunfan.net.Yfnet;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.CopyOnWriteArrayList;

public class YFP2pMgr implements IP2pMgr {
    public static final int CALLBACK_ID_CACHESTORAGE_NOSPACE = 2;
    public static final int CALLBACK_ID_FINISH_COPY_DOWNLOAD = 1;
    public static final int CALLBACK_ID_FINISH_DOWNLOAD = 0;
    public static final int CALLBACK_ID_URL_OUTOFDATA = 3;
    public static final int RESULT_ID_COPY_FINISHED = 0;
    public static final int RESULT_ID_CREATE_TARGET_FAILED = 1;
    public static final int RESULT_ID_DOWNPATH_CANNOT_WRITE = 4;
    public static final int RESULT_ID_DOWNPATH_NOSPACE = 3;
    public static final int RESULT_ID_READDATA_FAILED = 2;
    public static final int RESULT_ID_WRITE_FAILED = 5;
    public static final int STATUS_ERROR = -1;
    public static final int STATUS_OK = 0;
    private static YFP2pMgr mInstance;
    private static CopyOnWriteArrayList<IP2pMgr.OnNotifyMsgListener> mNotifyListenerList = new CopyOnWriteArrayList<>();
    public final String TAG = "p2p";
    public final String TOKEN = "62fe1121813abe476836cc8be57c7449d168e208";
    private String mConfigPath = null;
    private String mCachePath = null;
    private int mHttpport = 0;
    private int mMaxusespace = 0;
    private boolean mHasInit = false;
    private IP2pMgr.OnNotifyMsgListener mNotifyListener = null;

    private YFP2pMgr() {
    }

    private boolean checkResOk(int i) {
        return i >= 0;
    }

    public static YFP2pMgr getInstance() {
        if (mInstance == null) {
            syncInit();
        }
        return mInstance;
    }

    private String getLocalUrl(String str, String str2, String str3, String str4) {
        if (str == null || str2 == null || str3 == null || str4 == null || YFUrlUtils.notSupport(str)) {
            return str;
        }
        try {
            String str5 = DefaultWebClient.HTTP_SCHEME + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3 + "/" + ImgoP2pConstants.YF_PROXY_FIXED_STRING + "/" + str4;
            if (YFUrlUtils.isM3u8(str)) {
                str5 = str5 + "/playlist.m3u8";
            }
            return str5;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    private String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (Exception unused) {
            return BuildConfig.VERSION_NAME;
        }
    }

    private void onNotify(int i, int i2, String str) {
        IP2pMgr.OnNotifyMsgListener onNotifyMsgListener = this.mNotifyListener;
        if (onNotifyMsgListener != null) {
            onNotifyMsgListener.onNotify(i, i2, str);
        }
        for (IP2pMgr.OnNotifyMsgListener onNotifyMsgListener2 : mNotifyListenerList) {
            if (onNotifyMsgListener2 != null) {
                onNotifyMsgListener2.onNotify(i, i2, str);
            }
        }
    }

    private void resetData() {
        this.mConfigPath = null;
        this.mCachePath = null;
        this.mHttpport = 0;
        this.mMaxusespace = 0;
    }

    private static synchronized void syncInit() {
        if (mInstance == null) {
            mInstance = new YFP2pMgr();
        }
    }

    @Override
    public void CleanCache() {
        Yfnet.CleanCache();
    }

    @Override
    public void SetVideoDuration(ImgoP2pTask imgoP2pTask, int i) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null) {
            return;
        }
        Yfnet.SetVideoDuration(imgoP2pTask.getStrHash(), i);
    }

    @Override
    public void addNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        if (onNotifyMsgListener == null || mNotifyListenerList.contains(onNotifyMsgListener)) {
            return;
        }
        mNotifyListenerList.add(onNotifyMsgListener);
    }

    @Override
    public int createTask(ImgoP2pTask imgoP2pTask) {
        int iCreateTask;
        if (imgoP2pTask == null) {
            return -1;
        }
        if (YFUrlUtils.notSupport(imgoP2pTask.mOrgUrl)) {
            return 0;
        }
        if (imgoP2pTask.getStatus() == -1) {
            String keyUrl = YFUrlUtils.getKeyUrl(imgoP2pTask.mOrgUrl, imgoP2pTask.mIsOtherCdn, imgoP2pTask.mVideoId, imgoP2pTask.mDefinition);
            imgoP2pTask.mKeyUrl = keyUrl;
            iCreateTask = Yfnet.CreateTask(imgoP2pTask.mOrgUrl, keyUrl, imgoP2pTask.mReferer, imgoP2pTask.dnsPro, imgoP2pTask.attachedUrlPara, imgoP2pTask.mHash);
        } else {
            iCreateTask = 0;
        }
        n.c("p2p", "mOrgUrl:" + imgoP2pTask.mOrgUrl);
        n.c("p2p", "mKeyUrl:" + imgoP2pTask.mKeyUrl);
        n.c("p2p", "mHash:" + imgoP2pTask.mHash);
        n.c("p2p", "mReferer:" + imgoP2pTask.mReferer);
        if (!checkResOk(iCreateTask) || imgoP2pTask.mHash == null) {
            n.c("p2p", "createTask failed. res" + iCreateTask);
            return -1;
        }
        imgoP2pTask.setStatus(1);
        imgoP2pTask.setStrHash(new String(imgoP2pTask.mHash));
        n.c("p2p", "CreateTask hash:" + imgoP2pTask.getStrHash());
        if (iCreateTask == 1) {
            onNotify(0, 0, imgoP2pTask.getStrHash());
            n.c("p2p", "CreateTask CALLBACK_ID_FINISH_DOWNLOAD hash:" + imgoP2pTask.getStrHash());
        }
        return iCreateTask;
    }

    @Override
    public void deleteTask(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null || YFUrlUtils.notSupport(imgoP2pTask.mOrgUrl)) {
            return;
        }
        Yfnet.DeleteTask(imgoP2pTask.getStrHash());
        imgoP2pTask.setStatus(-1);
        imgoP2pTask.setStrHash(null);
    }

    @Override
    public void enableP2pDownload(boolean z) {
        Yfnet.EnableP2pDownload(z);
    }

    @Override
    public void enableP2pUpload(boolean z) {
        Yfnet.EnableUpload(z);
    }

    @Override
    public int getHttpport() {
        return this.mHttpport;
    }

    @Override
    public String getProxyUrl(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null) {
            return null;
        }
        return getLocalUrl(imgoP2pTask.mOrgUrl, ImgoP2pConstants.LOCAL_HOST, this.mHttpport + "", imgoP2pTask.getStrHash());
    }

    @Override
    public ImgoTaskInfo getTaskInfo(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null || YFUrlUtils.notSupport(imgoP2pTask.mOrgUrl)) {
            return null;
        }
        ImgoTaskInfo imgoTaskInfo = new ImgoTaskInfo();
        TaskInfo taskInfo = new TaskInfo();
        Yfnet.QueryTaskInfo(imgoP2pTask.getStrHash(), taskInfo);
        imgoTaskInfo.downloadlen = taskInfo.downloadlen;
        imgoTaskInfo.downloadspeed = taskInfo.downloadspeed;
        imgoTaskInfo.filelen = taskInfo.filelen;
        imgoTaskInfo.filepath = taskInfo.filepath;
        imgoTaskInfo.hash = taskInfo.hash;
        imgoTaskInfo.status = taskInfo.status;
        imgoTaskInfo.uploadspeed = taskInfo.uploadspeed;
        imgoTaskInfo.cdnIp = taskInfo.cdnIp;
        return imgoTaskInfo;
    }

    @Override
    public boolean hasInit() {
        return this.mHasInit;
    }

    @Override
    public synchronized int init(IP2pMgr.Config config, Context context) {
        if (config == null) {
            return -1;
        }
        try {
            if (this.mHasInit) {
                unInit();
            }
            this.mConfigPath = config.mConfigPath;
            this.mCachePath = config.mCachePath;
            this.mHttpport = config.mHttpport;
            this.mMaxusespace = config.mMaxusespace;
            Yfnet.SetAppContext(context);
            int iInit = Yfnet.Init(this.mConfigPath, this.mCachePath, this.mHttpport, this.mMaxusespace, "62fe1121813abe476836cc8be57c7449d168e208");
            Yfnet.SetAppVersion(getVersionName(context));
            if (checkResOk(iInit)) {
                Yfnet.SetCallbackFunction(this, "onNotify", "(IILjava/lang/String;)V");
                this.mHasInit = true;
            }
            return iInit;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public int isTaskExist(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null) {
            return -5;
        }
        return Yfnet.YfIsTaskExist(imgoP2pTask.getStrHash());
    }

    @Override
    public void pauseTask(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null || YFUrlUtils.notSupport(imgoP2pTask.mOrgUrl)) {
            return;
        }
        Yfnet.PauseTask(imgoP2pTask.getStrHash());
        imgoP2pTask.setStatus(1);
    }

    @Override
    public long readData(ImgoP2pTask imgoP2pTask, String str, byte[] bArr, long j, long j2, long[] jArr, int[] iArr) {
        if (imgoP2pTask == null) {
            return -5L;
        }
        return Yfnet.YfReadData(imgoP2pTask.getStrHash(), str, bArr, j, j2, jArr, iArr);
    }

    @Override
    public void removeNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        if (onNotifyMsgListener == null) {
            return;
        }
        mNotifyListenerList.remove(onNotifyMsgListener);
    }

    @Override
    public int runTask(ImgoP2pTask imgoP2pTask) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null) {
            return -1;
        }
        if (YFUrlUtils.notSupport(imgoP2pTask.mOrgUrl)) {
            return 0;
        }
        int iRunTask = Yfnet.RunTask(imgoP2pTask.getStrHash());
        imgoP2pTask.setStatus(0);
        n.c("p2p", "RunTask hash:" + imgoP2pTask.getStrHash());
        return iRunTask;
    }

    @Override
    public int setApkType(int i) {
        return Yfnet.SetDeviceType(i);
    }

    @Override
    public void setNotifyListener(IP2pMgr.OnNotifyMsgListener onNotifyMsgListener) {
        this.mNotifyListener = onNotifyMsgListener;
    }

    @Override
    public void setPlaySpeed(int i) {
        Yfnet.SetPlaySpeed(i);
    }

    @Override
    public void setPlayingTimepoint(ImgoP2pTask imgoP2pTask, int i, boolean z) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null) {
            return;
        }
        try {
            Yfnet.SetPlayingTimepoint(imgoP2pTask.getStrHash(), i, z);
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setTaskPlayingStatus(ImgoP2pTask imgoP2pTask, boolean z) {
        if (imgoP2pTask == null || imgoP2pTask.getStatus() == -1 || imgoP2pTask.getStrHash() == null) {
            return;
        }
        Yfnet.SetPlayingStatus(imgoP2pTask.getStrHash(), z);
    }

    @Override
    public int startLog() {
        return Yfnet.StartLog();
    }

    @Override
    public int stopLog() {
        return Yfnet.StopLog();
    }

    @Override
    public synchronized void unInit() {
        try {
            resetData();
            if (this.mHasInit) {
                Yfnet.Clear();
            }
            this.mHasInit = false;
        } catch (Throwable th) {
            throw th;
        }
    }
}

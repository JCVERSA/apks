package com.mgtv.downloader.p2p.mg;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.webkit.ProxyConfig;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hunantv.imgo.util.n;
import com.hunantv.media.p2p.P2pTaskFactory;
import com.mgtv.downloader.p2p.DownloadFacade;
import com.mgtv.downloader.p2p.MGP2pLoader;
import com.mgtv.downloader.p2p.yunfan.YFP2pLoader;
import com.mgtv.downloader.util.c;
import java.util.Map;

public class MgP2pMgr implements IMgP2pMgr {
    private static HandlerThread handlerThread;
    private static MgP2pMgr mInstance;
    public final String TAG = P2pTaskFactory.TAG;
    private boolean mIsInit = false;

    private MgP2pMgr() {
    }

    public static MgP2pMgr getInstance() {
        if (mInstance == null) {
            syncInit();
        }
        return mInstance;
    }

    public static void setUpdatePath(String str) {
        MGP2pLoader.setUpdatePath(str);
        YFP2pLoader.setUpdatePath(str);
    }

    private static synchronized void syncInit() {
        if (mInstance == null) {
            mInstance = new MgP2pMgr();
        }
    }

    @Override
    public String buildURL(int i) {
        return Utils.byteArrayToString(DownloadFacade.instance().buildURL(i));
    }

    @Override
    public int createTask(int i, int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4) {
        int iRunTask;
        int iCreateTask = DownloadFacade.instance().createTask(i, i2, str, str2, str3, str4, str5, i3, i4);
        return (iCreateTask < 0 || (iRunTask = runTask(iCreateTask)) >= 0) ? iCreateTask : iRunTask;
    }

    @Override
    public void deinitHLS() {
        c.a("hls p2p is deinit");
        this.mIsInit = false;
        DownloadFacade.instance().deinit();
    }

    @Override
    public int deleteOfflineCache(String str, String str2) {
        return DownloadFacade.instance().deleteOfflineCache(str, str2);
    }

    @Override
    public int deleteOfflineCacheAll() {
        return DownloadFacade.instance().deleteOfflineCacheAll();
    }

    @Override
    public int getErrorCode(int i) {
        return DownloadFacade.instance().getErrorCode(i);
    }

    @Override
    public String getOfflineM3U8Path(int i) {
        return Utils.byteArrayToString(DownloadFacade.instance().getOfflineM3U8Path(i));
    }

    @Override
    public MGTaskInfo getTaskInfo(int i) {
        MGTaskInfo mGTaskInfo = new MGTaskInfo();
        String strByteArrayToString = Utils.byteArrayToString(DownloadFacade.instance().getTaskInfoByJson(i));
        n.a(P2pTaskFactory.TAG, "taskInfo: " + strByteArrayToString);
        try {
            JsonObject jsonObject = (JsonObject) new JsonParser().parse(strByteArrayToString);
            if (jsonObject == null) {
                n.c(P2pTaskFactory.TAG, "json is null");
                return null;
            }
            mGTaskInfo.taskID = jsonObject.get("taskID") != null ? jsonObject.get("taskID").getAsInt() : 0;
            mGTaskInfo.taskType = jsonObject.get("taskType") != null ? jsonObject.get("taskType").getAsInt() : 0;
            mGTaskInfo.keyID = jsonObject.get("keyID") != null ? jsonObject.get("keyID").getAsString() : "";
            mGTaskInfo.httpSpeed = jsonObject.get("httpSpeed") != null ? jsonObject.get("httpSpeed").getAsInt() : 0;
            mGTaskInfo.vipSpeed = jsonObject.get("vipSpeed") != null ? jsonObject.get("vipSpeed").getAsInt() : 0;
            mGTaskInfo.cdnDownloadBytes = jsonObject.get(ProxyConfig.MATCH_HTTP) != null ? jsonObject.get(ProxyConfig.MATCH_HTTP).getAsLong() : 0L;
            mGTaskInfo.totalTsNum = jsonObject.get("totalTsNum") != null ? jsonObject.get("totalTsNum").getAsInt() : 0;
            mGTaskInfo.playableTsNum = jsonObject.get("playableTsNum") != null ? jsonObject.get("playableTsNum").getAsInt() : 0;
            mGTaskInfo.playableTime = jsonObject.get("playableTime") != null ? jsonObject.get("playableTime").getAsInt() : 0;
            mGTaskInfo.fileSize = jsonObject.get("fileSize") != null ? jsonObject.get("fileSize").getAsLong() : 0L;
            mGTaskInfo.downloadSize = jsonObject.get("downloadSize") != null ? jsonObject.get("downloadSize").getAsLong() : 0L;
            mGTaskInfo.checkMD5Success = jsonObject.get("checkMD5Success") != null ? jsonObject.get("checkMD5Success").getAsInt() : 0;
            mGTaskInfo.trialTime = jsonObject.get("trialTime") != null ? jsonObject.get("trialTime").getAsInt() : -1;
            mGTaskInfo.cdnIP = jsonObject.get("cdnIP") != null ? jsonObject.get("cdnIP").getAsString() : "";
            return mGTaskInfo;
        } catch (Throwable th) {
            n.c(P2pTaskFactory.TAG, th.toString());
        }
    }

    @Override
    public String getVersion() {
        return Utils.byteArrayToString(DownloadFacade.instance().getVersion());
    }

    @Override
    public int initHLS(Context context, String str, String str2, String str3, Map<String, Object> map) {
        Looper looper;
        if (this.mIsInit) {
            c.a("hls p2p is already init, return ");
            return 0;
        }
        if (handlerThread == null) {
            HandlerThread handlerThread2 = new HandlerThread("DownloadFacadeHandlerThread");
            handlerThread = handlerThread2;
            handlerThread2.setPriority(5);
            handlerThread.start();
        }
        HandlerThread handlerThread3 = handlerThread;
        if (handlerThread3 == null || (looper = handlerThread3.getLooper()) == null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                DownloadFacade.instance().initHandler(mainLooper);
            } else {
                Looper looperMyLooper = Looper.myLooper();
                if (looperMyLooper != null) {
                    DownloadFacade.instance().initHandler(looperMyLooper);
                } else {
                    c.a("Download init, handler is not init");
                }
            }
        } else {
            DownloadFacade.instance().initHandler(looper);
        }
        boolean zLoadLibrary = MGP2pLoader.loadLibrary();
        if (!zLoadLibrary) {
            int i = 2;
            while (true) {
                int i2 = i - 1;
                if (i <= 0 || (zLoadLibrary = MGP2pLoader.loadLibrary())) {
                    break;
                }
                i = i2;
            }
        }
        if (!MGP2pLoader.isSoLoad() || !zLoadLibrary) {
            c.a("MgP2PMgr so load failed, return");
            return -1;
        }
        int iInit = DownloadFacade.instance().init(str, str2, str3, map);
        if (iInit >= 0) {
            this.mIsInit = true;
        }
        return iInit;
    }

    @Override
    public int pauseTask(int i) {
        return DownloadFacade.instance().pauseTask(i);
    }

    @Override
    public void pushEvent(int i) {
        DownloadFacade.instance().pushEvent(i);
    }

    @Override
    public int runTask(int i) {
        return DownloadFacade.instance().runTask(i);
    }

    @Override
    public void setDownloadListener(IP2PListener iP2PListener) {
        DownloadFacade.instance().setDownloadListener(iP2PListener);
    }

    @Override
    public void setPlayTime(int i, int i2, int i3) {
        DownloadFacade.instance().setPlayTime(i, i2, i3);
    }

    @Override
    public void setPlayingPos(int i, int i2) {
        DownloadFacade.instance().setPlayingPos(i, i2);
    }

    @Override
    public void setReportThreeListener(IReportThreeListener iReportThreeListener) {
        DownloadFacade.instance().setReportDownloadListener(iReportThreeListener);
    }

    @Override
    public void setServerConfig(String str) {
        DownloadFacade.instance().setServerConfig(str);
    }

    @Override
    public void setUserData(Map<String, Object> map) {
        DownloadFacade.instance().setUserData(map);
    }

    @Override
    public int stopTask(int i) {
        return DownloadFacade.instance().stopTask(i);
    }
}

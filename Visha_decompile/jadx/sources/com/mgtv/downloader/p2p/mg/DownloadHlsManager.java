package com.mgtv.downloader.p2p.mg;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.dir.DownloadDirInfo;
import com.mgtv.downloader.dir.a;
import com.mgtv.downloader.util.c;
import com.mgtv.downloader.util.d;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class DownloadHlsManager {
    private static final String TAG = "DownloadSDK_1.8.0";
    private static DownloadHlsManager instance;
    private Context mContext;
    private int HLS_DOWNLOAD_SELECT = 0;
    private int hasReportCDN3 = 0;
    private int mErrorCode = 0;
    private final String mM3u8Version_1 = "playlist.m3u8";
    private MGTaskInfo taskInfo = new MGTaskInfo();
    private int mHlsInitState = -1;
    public IP2PListener iDownloadListener = new IP2PListener() {
        @Override
        public void onOfflineDownloadError(int i, int i2) {
            DownloadHlsManager.this.setHlsDownloadSelect(2);
            DownloadHlsManager.this.setErrorCode(i2);
            DownloadHlsManager.this.stopTask(i);
            c.a("onDownloadError, taskID: " + i + ", errorCode: " + i2);
        }

        @Override
        public void onOfflineDownloadFinish(int i) {
            DownloadHlsManager.this.setHlsDownloadSelect(1);
            DownloadHlsManager.this.stopTask(i);
            n.c(DownloadHlsManager.TAG, "onDownloadFinish, taskID: " + i);
        }

        @Override
        public void onOfflineDownloadProgress(int i, long j, int i2, long j2, String str) {
        }

        @Override
        public void onOfflineDownloadRemoved(int i) {
            DownloadHlsManager.this.setHlsDownloadSelect(3);
            DownloadHlsManager.this.stopTask(i);
            n.c(DownloadHlsManager.TAG, "onDownloadRemoved, taskID: " + i);
        }

        @Override
        public void onOfflinePlayError(int i) {
            DownloadHlsManager.this.stopTask(i);
            c.a("onOfflinePlayError, taskID: " + i);
        }

        @Override
        public void onOnlinePlayError(int i, int i2) {
            c.a("onOnlinePlayError, taskID: " + i + ",  errorCode: " + i2);
        }
    };
    public IReportThreeListener iReportThreeListener = new IReportThreeListener() {
        @Override
        public void onReportThreeFailed(int i, int i2) {
            DownloadHlsManager.this.setHasReportCDN3(2);
            DownloadHlsManager.this.setErrorCode(i2);
            c.a("onReportThreeFailed: " + i);
        }

        @Override
        public void onReportThreeSuccess(int i) {
            DownloadHlsManager.this.setHasReportCDN3(1);
            c.a("onReportThreeSuccess: " + i);
        }
    };

    public static DownloadHlsManager getInstance() {
        if (instance == null) {
            synchronized (DownloadHlsManager.class) {
                try {
                    if (instance == null) {
                        instance = new DownloadHlsManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private int isHlsVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return str.contains("playlist.m3u8") ? 1 : 2;
    }

    public static void setUpdatePath(String str) {
        MgP2pMgr.setUpdatePath(str);
    }

    public int createDownloadTask(int i, String str, String str2, String str3, String str4, String str5, long j, int i2) {
        c.a("[createDownloadTask]start, taskID: " + i + ", videoId: " + str2 + ", definition: " + str3 + ", free: " + i2 + ", fileId: " + str4 + ", path: " + str5 + ", url: " + str);
        if (this.mHlsInitState < 0) {
            c.a("[createDownloadTask][error] init state failed");
            return -1;
        }
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str)) {
            c.a("[createDownloadTask][error] videoId:" + str2 + ", definition: " + str3 + ", url: " + str);
            return -1;
        }
        int iIsHlsVersion = isHlsVersion(str);
        if (iIsHlsVersion == 1) {
            c.a("v1 version url");
            if (j > 0) {
                deleteOfflineCache(str4, str5);
                c.a("already exist，delete");
            }
        } else if (iIsHlsVersion == 2) {
            c.a("v2 version url");
        } else {
            c.a("other version url");
        }
        setHlsDownloadSelect(0);
        setHasReportCDN3(0);
        int iCreateTask = MgP2pMgr.getInstance().createTask(i, 10, str2, str3, str4, str, str5, i2, 0);
        if (iCreateTask < 0) {
            c.a("create task failed, taskID: " + iCreateTask);
        }
        return iCreateTask;
    }

    public int createOfflinePlayTask(int i, String str, String str2, String str3, String str4) {
        if (this.mHlsInitState < 0) {
            c.a("hls sdk not init, can`t offline play");
            return -1;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            c.a("param is error, videoID: " + str + ", definition: " + str2 + ", fileID: " + str3);
            return -2;
        }
        int iCreateTask = MgP2pMgr.getInstance().createTask(i, 11, str, str2, str3, "", str4, 0, 0);
        c.a("create task , taskID: " + iCreateTask);
        if (iCreateTask < 0) {
            c.a("create task failed, taskID: " + iCreateTask);
        }
        return iCreateTask;
    }

    public int createPlayTask(int i, String str, String str2, String str3, String str4, int i2, int i3, int i4, int i5) {
        c.a("[createPlayTask]start, taskID: " + i + ", videoId: " + str2 + ", definition: " + str3 + ", free: " + i4 + ", fileId: " + str4 + ", url: " + str);
        if (this.mHlsInitState < 0) {
            c.a("[createPlayTask][error] init state failed");
            return -1;
        }
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str)) {
            c.a("[createPlayTask][error] videoId:" + str2 + ", definition: " + str3 + ", url: " + str);
            return -1;
        }
        setHlsDownloadSelect(0);
        setHasReportCDN3(0);
        int iCreateTask = MgP2pMgr.getInstance().createTask(i, 1, str2, str3, str4, str, "", i4, i5);
        if (iCreateTask >= 0) {
            MgP2pMgr.getInstance().setPlayTime(iCreateTask, i2, i3);
            return iCreateTask;
        }
        c.a("[createPlayTask]create task failed, taskID: " + iCreateTask);
        return iCreateTask;
    }

    public int deleteOfflineCache(String str, String str2) {
        if (this.mHlsInitState < 0) {
            c.a("deleteOfflineCache failed, fileID: " + str);
            return -1;
        }
        c.a("delete hls Task fileID= " + str + ", path= " + str2);
        StringBuilder sb = new StringBuilder();
        String str3 = File.separator;
        if (!str2.endsWith(str3)) {
            str2 = str2.concat(str3);
        }
        sb.append(str2);
        sb.append("hls");
        return MgP2pMgr.getInstance().deleteOfflineCache(str, sb.toString());
    }

    public int downloaderDeinitialize() {
        if (this.mHlsInitState < 0) {
            return -1;
        }
        c.a("hls deinitialize");
        MgP2pMgr.getInstance().deinitHLS();
        return 0;
    }

    public int downloaderInitialize(Context context, String str) {
        StringBuilder sb;
        if (this.mHlsInitState >= 0) {
            c.a("downloader already init, return");
            return 0;
        }
        String str2 = TextUtils.isEmpty(str) ? "" : str;
        c.a("hls module start init");
        if (this.mContext == null) {
            this.mContext = context;
        }
        DownloadDirInfo downloadDirInfoE = a.c().e();
        if (downloadDirInfoE == null) {
            c.a("no cur dir, ask DownloadDirManager to initialize dirs again");
            a.c().a(this.mContext);
            downloadDirInfoE = a.c().e();
        }
        if (downloadDirInfoE != null) {
            MgP2pMgr.getInstance().setDownloadListener(this.iDownloadListener);
            MgP2pMgr.getInstance().setReportThreeListener(this.iReportThreeListener);
            String strConcat = downloadDirInfoE.path;
            StringBuilder sb2 = new StringBuilder();
            String str3 = File.separator;
            if (!strConcat.endsWith(str3)) {
                strConcat = strConcat.concat(str3);
            }
            sb2.append(strConcat);
            sb2.append("hls");
            String string = sb2.toString();
            HashMap map = new HashMap();
            try {
                try {
                    map.put(DownloadFacadeEnum.MOBILE_COMPANY, Integer.valueOf(d.c()));
                } catch (Throwable th) {
                    try {
                        c.a("getMobileCompany error：" + th.toString());
                    } catch (Exception e) {
                        c.a("init parameter error：" + e.toString());
                        try {
                            this.mHlsInitState = MgP2pMgr.getInstance().initHLS(this.mContext, string, string, str2, map);
                        } catch (Exception e2) {
                            e = e2;
                            this.mHlsInitState = -1;
                            sb = new StringBuilder();
                            sb.append("init hls error：");
                            sb.append(e.toString());
                            String string2 = sb.toString();
                        }
                        return this.mHlsInitState;
                    }
                }
                try {
                    map.put(DownloadFacadeEnum.NETWORK_TYPE, d.d());
                } catch (Throwable th2) {
                    c.a("getNetWorkType error：" + th2.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_GUID, b.K());
                } catch (Throwable th3) {
                    c.a("getGUID error：" + th3.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_DID, b.t());
                } catch (Throwable th4) {
                    c.a("getDeviceId error：" + th4.toString());
                }
                try {
                    map.put("uuid", b.n());
                } catch (Throwable th5) {
                    c.a("getUUId error：" + th5.toString());
                }
                try {
                    map.put("sid", com.mgtv.downloader.util.a.a());
                } catch (Throwable th6) {
                    c.a("getSid error：" + th6.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_NET, Integer.valueOf(p.d()));
                } catch (Throwable th7) {
                    c.a("getNetwork error：" + th7.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_MF, b.s());
                } catch (Throwable th8) {
                    c.a("getMf error：" + th8.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_MOD, b.p());
                } catch (Throwable th9) {
                    c.a("getModel error：" + th9.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_SVER, b.r());
                } catch (Throwable th10) {
                    c.a("getOsVersionWithAphone error：" + th10.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_AVER, b.g());
                } catch (Throwable th11) {
                    c.a("getVersionNameByTablet error：" + th11.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_CH, b.y());
                } catch (Throwable th12) {
                    c.a("getChannel error：" + th12.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_GPS, PreferencesUtil.c("PREF_GPS_MSG", ""));
                } catch (Throwable th13) {
                    c.a("PREF_GPS_MSG error：" + th13.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_IMEI, b.k());
                } catch (Throwable th14) {
                    c.a("getImei error：" + th14.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_MAC, b.v());
                } catch (Throwable th15) {
                    c.a("getMacAddress error：" + th15.toString());
                }
                try {
                    map.put(DownloadFacadeEnum.USER_UA, d.e());
                } catch (Throwable th16) {
                    c.a("getUA error：" + th16.toString());
                }
                map.put("platform", 3);
                map.put(DownloadFacadeEnum.USER_ISDEBUG, "0");
                try {
                    this.mHlsInitState = MgP2pMgr.getInstance().initHLS(this.mContext, string, string, str2, map);
                } catch (Exception e3) {
                    e = e3;
                    this.mHlsInitState = -1;
                    sb = new StringBuilder();
                    sb.append("init hls error：");
                    sb.append(e.toString());
                    String string3 = sb.toString();
                }
            } finally {
                try {
                    this.mHlsInitState = MgP2pMgr.getInstance().initHLS(this.mContext, string, string, str2, map);
                } catch (Exception e4) {
                    this.mHlsInitState = -1;
                    c.a("init hls error：" + e4.toString());
                }
            }
        }
        return this.mHlsInitState;
    }

    public void getDownloadInfoParameter(int i, com.mgtv.downloader.net.entity.a aVar) {
        if (this.mHlsInitState < 0) {
            return;
        }
        setTaskInfo(MgP2pMgr.getInstance().getTaskInfo(i));
        if (getTaskInfo() == null) {
            c.a("getTaskInfo= null");
            return;
        }
        if (getTaskInfo().fileSize > 0 && aVar.e().longValue() != getTaskInfo().fileSize) {
            aVar.b(Long.valueOf(getTaskInfo().fileSize));
            aVar.i("" + getTaskInfo().fileSize);
        }
        if (getTaskInfo().downloadSize > 0) {
            aVar.a(Long.valueOf(getTaskInfo().downloadSize));
        }
        if (getTaskInfo().httpSpeed > 0) {
            aVar.b(Integer.valueOf(getTaskInfo().httpSpeed >> 10));
        }
        if (getTaskInfo().vipSpeed >= 0) {
            aVar.c(Integer.valueOf(getTaskInfo().vipSpeed >> 10));
        }
        if (getTaskInfo().trialTime >= 0) {
            aVar.d(Integer.valueOf(getTaskInfo().trialTime));
            d.a(getTaskInfo().trialTime);
        }
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public int getHasReportCDN3() {
        return this.hasReportCDN3;
    }

    public int getHlsDownloadSelect() {
        return this.HLS_DOWNLOAD_SELECT;
    }

    public String getOfflineM3U8Path(int i) {
        return this.mHlsInitState < 0 ? "" : MgP2pMgr.getInstance().getOfflineM3U8Path(i);
    }

    public String getPlayUrl(int i) {
        if (i >= 0) {
            if (this.mHlsInitState >= 0) {
                return MgP2pMgr.getInstance().buildURL(i);
            }
            c.a("hls sdk not init, can`t get hls play url");
            return "";
        }
        c.a("taskID: " + i + ", can`t get hls play url");
        return "";
    }

    public MGTaskInfo getTaskInfo() {
        return this.taskInfo;
    }

    public boolean isInitHls() {
        return this.mHlsInitState >= 0;
    }

    public int pauseTask(int i) {
        if (this.mHlsInitState < 0) {
            c.a("hls not init, pause hls Task failed, taskID: " + i);
            return -1;
        }
        c.a("pause task taskID= " + i);
        return MgP2pMgr.getInstance().pauseTask(i);
    }

    public void pushEvent(int i, String str) {
        if (this.mHlsInitState < 0) {
            return;
        }
        MgP2pMgr.getInstance().pushEvent(i);
    }

    public int runTask(int i) {
        if (this.mHlsInitState < 0) {
            c.a("hls not init, run Task failed, taskID: " + i);
            return -1;
        }
        c.a("run Task failed, taskID: " + i);
        return MgP2pMgr.getInstance().runTask(i);
    }

    public void setDownloadListener(IP2PListener iP2PListener) {
        MgP2pMgr.getInstance().setDownloadListener(iP2PListener);
    }

    public void setErrorCode(int i) {
        this.mErrorCode = i;
    }

    public void setHasReportCDN3(int i) {
        this.hasReportCDN3 = i;
    }

    public void setHlsDownloadSelect(int i) {
        this.HLS_DOWNLOAD_SELECT = i;
    }

    public void setReportThreeListener(IReportThreeListener iReportThreeListener) {
        MgP2pMgr.getInstance().setReportThreeListener(iReportThreeListener);
    }

    public void setServerConfig(String str) {
        MgP2pMgr.getInstance().setServerConfig(str);
    }

    public void setTaskInfo(MGTaskInfo mGTaskInfo) {
        this.taskInfo = mGTaskInfo;
    }

    public void setUserData(Map<String, Object> map) {
        if (this.mHlsInitState < 0) {
            return;
        }
        MgP2pMgr.getInstance().setUserData(map);
    }

    public int stopTask(int i) {
        if (this.mHlsInitState < 0) {
            c.a("hls not init, stop Task failed, taskID: " + i);
            return -1;
        }
        c.a("stop task taskID= " + i);
        return MgP2pMgr.getInstance().stopTask(i);
    }
}

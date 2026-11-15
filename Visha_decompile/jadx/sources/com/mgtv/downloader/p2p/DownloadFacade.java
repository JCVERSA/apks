package com.mgtv.downloader.p2p;

import android.os.Handler;
import android.os.Looper;
import com.hunantv.imgo.util.n;
import com.mgtv.data.aphone.a.b.b;
import com.mgtv.downloader.p2p.mg.IP2PListener;
import com.mgtv.downloader.p2p.mg.IReportThreeListener;
import com.mgtv.downloader.p2p.mg.MGTaskInfo;
import com.mgtv.downloader.p2p.mg.Utils;
import com.mgtv.irouting.a;
import java.util.HashMap;
import java.util.Map;

public class DownloadFacade {
    private static final int MSG_DOWNLOAD_INFO = 11;
    private static final int MSG_OFFLINE_DOWNLOAD_ERROR = 101;
    private static final int MSG_OFFLINE_DOWNLOAD_FINISHED = 100;
    private static final int MSG_OFFLINE_PLAY_ERROR = 105;
    private static final int MSG_ONLINE_PLAY = 2;
    private static final int MSG_PARSE_M3U8_ERROR = 203;
    private static final int MSG_REP0RT_THREE_FAILED = 202;
    private static final int MSG_REPORT_P2P_PROXY = 200;
    private static final int MSG_REPORT_THREE_SUCCESS = 201;
    private static final String TAG = "DownloadSDK";
    private static DownloadFacade mInstance;
    private IP2PListener mDownloadListener;
    private Handler mMsgHandler;
    private IReportThreeListener mReportListener;

    private DownloadFacade() {
    }

    private static void addDomain(String str) {
        a.a(str);
    }

    public void dispatchCallerMessage(int i, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        try {
            if (i == 2) {
                n.c(TAG, "Dispatch callback: online play, taskID: " + obj);
                IP2PListener iP2PListener = this.mDownloadListener;
                if (iP2PListener != null) {
                    iP2PListener.onOnlinePlayError(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                    return;
                }
                return;
            }
            if (i != 11) {
                if (i == 105) {
                    n.c(TAG, "Dispatch callback: offline play error, taskID: " + obj);
                    IP2PListener iP2PListener2 = this.mDownloadListener;
                    if (iP2PListener2 != null) {
                        iP2PListener2.onOfflinePlayError(((Integer) obj).intValue());
                        return;
                    }
                    return;
                }
                if (i == 100) {
                    n.c(TAG, "Dispatch callback: offline download finish, taskID: " + obj);
                    IP2PListener iP2PListener3 = this.mDownloadListener;
                    if (iP2PListener3 != null) {
                        iP2PListener3.onOfflineDownloadFinish(((Integer) obj).intValue());
                        return;
                    }
                    return;
                }
                if (i == 101) {
                    n.c(TAG, "Dispatch callback: offline download taskID: " + obj + ", errorCode: " + obj2);
                    IP2PListener iP2PListener4 = this.mDownloadListener;
                    if (iP2PListener4 != null) {
                        iP2PListener4.onOfflineDownloadError(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                        return;
                    }
                    return;
                }
                switch (i) {
                    case 200:
                        String strByteArrayToString = Utils.byteArrayToString((byte[]) obj2);
                        n.c(TAG, "Dispatch callback: report info: " + strByteArrayToString);
                        HashMap map = new HashMap();
                        String[] strArrSplit = strByteArrayToString.split("&");
                        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                            String str = strArrSplit[i2];
                            if (str.contains("=")) {
                                map.put(str.substring(0, str.indexOf("=")), str.substring(str.indexOf("=") + 1, str.length()));
                            }
                        }
                        if (strByteArrayToString.contains("dlRs")) {
                            com.mgtv.data.aphone.a.a.a().b(true).a("event_hls_dlrs_new", map, (b) null);
                            return;
                        } else {
                            com.mgtv.data.aphone.a.a.a().b(true).a("event_hls_dlproc_new", map, (b) null);
                            return;
                        }
                    case 201:
                        n.c(TAG, "Dispatch callback: report three success, taskID: " + ((Integer) obj));
                        this.mReportListener.onReportThreeSuccess(((Integer) obj).intValue());
                        return;
                    case 202:
                        n.c(TAG, "Dispatch callback: report three failed, taskID: " + ((Integer) obj) + ", errorCode: " + ((Integer) obj2));
                        this.mReportListener.onReportThreeFailed(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                        return;
                    case 203:
                        n.c(TAG, "Dispatch callback: parse m3u8 error, taskID: " + ((Integer) obj) + ", errorCode: " + ((Integer) obj2));
                        this.mReportListener.onReportThreeFailed(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                        break;
                    default:
                        return;
                }
            }
            String strByteArrayToString2 = Utils.byteArrayToString((byte[]) obj2);
            n.c(TAG, "Dispatch callback: download info: " + strByteArrayToString2);
            this.mDownloadListener.onOfflineDownloadProgress(((Integer) obj).intValue(), 0L, 0, 0L, strByteArrayToString2);
        } catch (Throwable th) {
            n.c(TAG, th.toString());
        }
    }

    private native int initNative(String str, String str2, String str3);

    public static synchronized DownloadFacade instance() {
        try {
            if (mInstance == null) {
                mInstance = new DownloadFacade();
            }
        } catch (Throwable th) {
            throw th;
        }
        return mInstance;
    }

    private void printTag(String str, int i, int i2, String str2, String str3) {
        Utils.printTag(str, i2, str2, str3);
    }

    private static void pushCallerMessage(int i, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        instance().pushMessage(i, obj, obj2, obj3, obj4, obj5);
    }

    private synchronized void pushMessage(final int i, final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5) {
        this.mMsgHandler.post(new Runnable() {
            @Override
            public void run() {
                DownloadFacade.this.dispatchCallerMessage(i, obj, obj2, obj3, obj4, obj5);
            }
        });
    }

    public native byte[] buildURL(int i);

    public native int createTask(int i, int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4);

    public native void deinit();

    public native int deleteOfflineCache(String str, String str2);

    public native int deleteOfflineCacheAll();

    public native int getErrorCode(int i);

    public native byte[] getOfflineM3U8Path(int i);

    public native byte[] getTaskInfoByJson(int i);

    public native MGTaskInfo getTaskInfoByStruct(int i);

    public native byte[] getVersion();

    public int init(String str, String str2, String str3, Map<String, Object> map) {
        int iInitNative = initNative(str, str2, str3);
        setUserData(map);
        return iInitNative;
    }

    public void initHandler(Looper looper) {
        if (this.mMsgHandler == null) {
            this.mMsgHandler = new Handler(looper);
        }
    }

    public native int pauseTask(int i);

    public native void pushEvent(int i);

    public native int runTask(int i);

    public synchronized void setDownloadListener(IP2PListener iP2PListener) {
        this.mDownloadListener = iP2PListener;
    }

    public native void setPlayTime(int i, int i2, int i3);

    public native void setPlayingPos(int i, int i2);

    public synchronized void setReportDownloadListener(IReportThreeListener iReportThreeListener) {
        this.mReportListener = iReportThreeListener;
    }

    public native void setServerConfig(String str);

    public void setUserData(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry != null) {
                    try {
                        Object value = entry.getValue();
                        if (value != null) {
                            if (value.getClass() == Integer.class || value.getClass() == Long.class) {
                                if (((Integer) entry.getValue()).intValue() != -1) {
                                    setUserDataInt(entry.getKey(), ((Integer) entry.getValue()).intValue());
                                }
                            } else if (value.getClass() == String.class) {
                                setUserDataString(entry.getKey(), (String) entry.getValue());
                            }
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public native void setUserDataInt(String str, int i);

    public native void setUserDataString(String str, String str2);

    public native int stopTask(int i);
}

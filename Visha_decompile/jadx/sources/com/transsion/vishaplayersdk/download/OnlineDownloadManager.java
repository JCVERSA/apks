package com.transsion.vishaplayersdk.download;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.mgtv.ssp.downloadsdk.DlPluginContext;
import com.mgtv.ssp.downloadsdk.DownloadEventListener;
import com.mgtv.ssp.downloadsdk.DownloadTaskInfo;
import com.mgtv.ssp.downloadsdk.DownloaderManager;
import com.mgtv.ssp.downloadsdk.IDownloadManager;
import com.mgtv.ssp.downloadsdk.OnCreateTaskCallback;

public class OnlineDownloadManager {
    private static final String TAG = "OnlineDownloadManager";
    static OnlineDownloadManager i = new OnlineDownloadManager();
    private Context context;
    String _token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJWSVNIQS1DTElFTlQtVE9LRU4iLCJvcGVuaWQiOiJCcDkzcWd3TUh2eWtHeVVWNnhqdVRHYmlrWGpWUmNuVzhnK0RQNjZwUUJvPSIsImlzcyI6IlZpc2hhcGxheWVyIiwiZXhwIjoxNjk5ODYzNDkxLCJpYXQiOjE2OTkyNTg2OTEsImp0aSI6IjM4NjYzNTM3NzM2MTk0ODY3MiJ9.-0CIw135cYKQ24mNrdtMPorohwK9Jq6gLRjexb7h88w";
    String _openId = "94638628047917056";

    public static OnlineDownloadManager getInstance() {
        return i;
    }

    public void mgInit(final Context context) {
        this.context = context;
        DownloaderManager.getInstance().init(new DlPluginContext() {
            @Override
            public Context getAppContext() {
                return context;
            }

            @Override
            public Activity getHostActivity() {
                return (Activity) context;
            }

            @Override
            public String getLogPath() {
                return null;
            }

            @Override
            public String getSoLibPath() {
                return null;
            }
        }, new DownloadEventListener() {
            @Override
            public void onError(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo, String str) {
                Log.d(OnlineDownloadManager.TAG, "onError:  ============= " + str);
            }

            @Override
            public void onProgressUpdate(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo) {
                Log.d(OnlineDownloadManager.TAG, "onProgressUpdate: " + downloadTaskInfo.getContentId() + "======" + downloadTaskInfo.doneSizeStr + "/" + downloadTaskInfo.totalSizeStr);
            }

            @Override
            public void onStatusChanged(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo) {
                Log.d(OnlineDownloadManager.TAG, "onStatusChanged: " + downloadTaskInfo.getStatus());
            }
        });
    }

    public void startDownlaod(String str, String str2, String str3, String str4) {
        DownloaderManager.getInstance().startDownload(str, str2, this._openId, this._token, new OnCreateTaskCallback() {
            @Override
            public void createTaskResult(String str5, String str6) {
                Log.d(OnlineDownloadManager.TAG, " createTaskResult: " + str5 + " ============= " + str6);
            }

            @Override
            public void onOver(String str5, String str6) {
                Log.d(OnlineDownloadManager.TAG, " onOver: " + str5 + " ============= " + str6);
            }

            @Override
            public void onStatusChanged(String str5, int i2) {
                Log.d(OnlineDownloadManager.TAG, " onStatusChanged: " + str5 + " ============= " + i2);
            }

            @Override
            public void createTaskResult(String str5, String str6, String str7) {
                Log.d(OnlineDownloadManager.TAG, " createTaskResult: " + str5 + " ============= " + str6 + " ============= " + str7);
            }
        });
    }
}

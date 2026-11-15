package com.hunantv.media.source;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.source.jni.ImgoSourceNative;
import com.hunantv.media.utils.FileUtil;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class ImgoMultiCache implements IImgoMultiCache {
    private static final int CONNECT_TIMEOUT_MS = 3000;
    public static final int NULL = 0;
    private static final int REQUEST_TIMEOUT_MS = 5000;
    public static final String TAG = "ImgoCache";
    private static final String USER_AGENT = "ImgoDataSource";
    private String mCachePath;
    private ImgoSourceNative.Callback mCallback;
    private ImgoSourceNative.InitParams mInitParams;
    private Object mLock;
    protected long mManagerAddress;
    private Looper mMyLooper;
    private List<CacheTask> mStartTasks;
    private IImgoCache.TaskCallback mTaskCallback;

    public ImgoMultiCache(Context context, String str) {
        this(context, str, null);
    }

    private CacheTask findTask(String str) {
        for (CacheTask cacheTask : this.mStartTasks) {
            if (str.equals(cacheTask.getTaskID())) {
                return cacheTask;
            }
        }
        return null;
    }

    private boolean isStartTaskEmpty() {
        List<CacheTask> list = this.mStartTasks;
        return list == null || list.isEmpty();
    }

    private boolean isStartingTask(CacheTask cacheTask) {
        if (cacheTask == null || isStartTaskEmpty()) {
            return false;
        }
        return isStartingTask(cacheTask.getTaskID());
    }

    public void notifyTaskError(ImgoSourceNative.CbErrorParams cbErrorParams) {
        ImgoCacheLogger.d(TAG(), "notifyTaskError");
        synchronized (this.mLock) {
            try {
                ImgoCacheLogger.d(TAG(), "notifyTaskError in");
                if (cbErrorParams != null && isStartingTask(cbErrorParams.taskid)) {
                    CacheTask cacheTaskFindTask = findTask(cbErrorParams.taskid);
                    ImgoCacheLogger.i(TAG(), "notifyTaskError findTask " + cacheTaskFindTask);
                    if (cacheTaskFindTask != null) {
                        this.mStartTasks.remove(cacheTaskFindTask);
                        cacheTaskFindTask.setErrorCode(cbErrorParams.error_code);
                        cacheTaskFindTask.setDetailCode(cbErrorParams.detail_code);
                        ImgoCacheLogger.i(TAG(), "notifyTaskError FAILED IN");
                        cacheTaskFindTask.setTempPath(null);
                        cacheTaskFindTask.setCurrentStatus(CacheTask.Status.FAILED);
                        callOnFailed(cacheTaskFindTask);
                        ImgoCacheLogger.i(TAG(), "notifyTaskError FAILED OUT");
                        ImgoCacheLogger.i(TAG(), "notifyTaskError FINISH IN");
                        callOnFinish(cacheTaskFindTask);
                        ImgoCacheLogger.i(TAG(), "notifyTaskError FINISH OUT");
                    }
                }
                ImgoCacheLogger.d(TAG(), "notifyTaskError out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void notifyTaskResult(int i, ImgoSourceNative.CbResultParams cbResultParams) {
        ImgoCacheLogger.d(TAG(), "notifyTaskResult");
        synchronized (this.mLock) {
            try {
                ImgoCacheLogger.d(TAG(), "notifyTaskResult in");
                if (cbResultParams != null && isStartingTask(cbResultParams.taskid)) {
                    onTaskResult(findTask(cbResultParams.taskid), i, cbResultParams);
                }
                ImgoCacheLogger.d(TAG(), "notifyTaskResult out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String TAG() {
        return "ImgoCache[" + hashCode() + "]";
    }

    @Override
    public void cache(CacheTask cacheTask) {
        cache(cacheTask, false);
    }

    public void callOnFailed(CacheTask cacheTask) {
        IImgoCache.TaskCallback taskCallback = this.mTaskCallback;
        if (taskCallback != null) {
            taskCallback.onFailed(cacheTask);
        }
    }

    public void callOnFinish(CacheTask cacheTask) {
        IImgoCache.TaskCallback taskCallback = this.mTaskCallback;
        if (taskCallback != null) {
            taskCallback.onFinish(cacheTask);
        }
    }

    public void callOnStart(CacheTask cacheTask) {
        IImgoCache.TaskCallback taskCallback = this.mTaskCallback;
        if (taskCallback != null) {
            taskCallback.onStart(cacheTask);
        }
    }

    public void callOnSuccess(CacheTask cacheTask) {
        IImgoCache.TaskCallback taskCallback = this.mTaskCallback;
        if (taskCallback != null) {
            taskCallback.onSuccess(cacheTask);
        }
    }

    @Override
    public void cancel(CacheTask cacheTask) {
        synchronized (this.mLock) {
            try {
                if (this.mManagerAddress != 0 && cacheTask != null) {
                    ImgoCacheLogger.i(TAG(), "cancel in taskid:" + cacheTask.getTaskID() + " vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
                    cacheTask.setCurrentStatus(CacheTask.Status.NONE);
                    cacheTask.setTempPath(null);
                    ImgoSourceNative.cancelCache(this.mManagerAddress, cacheTask.getTaskID());
                    this.mStartTasks.remove(cacheTask);
                    ImgoCacheLogger.i(TAG(), "cancel out");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void create() {
        release();
        ImgoCacheLogger.i(TAG(), "create in");
        long jNewCacheManager = ImgoSourceNative.newCacheManager(this.mCachePath, this.mInitParams);
        this.mManagerAddress = jNewCacheManager;
        ImgoSourceNative.setMaxTask(jNewCacheManager, this.mInitParams.max_task_num);
        ImgoSourceNative.subscribeCallback(this.mCallback);
        ImgoCacheLogger.i(TAG(), "create out");
    }

    @Override
    public IImgoCache.ExtraInfo getExtraInfo() {
        return new IImgoCache.ExtraInfo(this.mManagerAddress);
    }

    public void onTaskResult(CacheTask cacheTask, int i, ImgoSourceNative.CbResultParams cbResultParams) {
        String strTAG;
        String str;
        ImgoCacheLogger.i(TAG(), "onResult findTask " + cacheTask);
        if (cacheTask != null) {
            this.mStartTasks.remove(cacheTask);
            if (cbResultParams != null) {
                updateParamsOnResult(cacheTask, cbResultParams);
            }
            if (i == 0) {
                ImgoCacheLogger.i(TAG(), "onResult OK IN");
                cacheTask.setCurrentStatus(CacheTask.Status.SUCCESS);
                callOnSuccess(cacheTask);
                strTAG = TAG();
                str = "onResult OK OUT";
            } else {
                ImgoCacheLogger.i(TAG(), "onResult FAILED IN");
                cacheTask.setTempPath(null);
                cacheTask.setCurrentStatus(CacheTask.Status.FAILED);
                callOnFailed(cacheTask);
                strTAG = TAG();
                str = "onResult FAILED OUT";
            }
            ImgoCacheLogger.i(strTAG, str);
            ImgoCacheLogger.i(TAG(), "onResult FINISH IN");
            callOnFinish(cacheTask);
            ImgoCacheLogger.i(TAG(), "onResult FINISH OUT");
        }
    }

    @Override
    public void pause(CacheTask cacheTask) {
        synchronized (this.mLock) {
            try {
                if (this.mManagerAddress != 0 && cacheTask != null && !StringUtil.isEmpty(cacheTask.getTaskID())) {
                    ImgoCacheLogger.i(TAG(), "pause in taskid:" + cacheTask.getTaskID() + " vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
                    cacheTask.setCurrentStatus(CacheTask.Status.PAUSE);
                    ImgoSourceNative.pauseCache(this.mManagerAddress, cacheTask.getTaskID());
                    ImgoCacheLogger.i(TAG(), "pause out");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void release() {
        if (this.mManagerAddress == 0) {
            return;
        }
        ImgoCacheLogger.i(TAG(), "release in");
        ImgoSourceNative.removeCallback(this.mCallback);
        ImgoSourceNative.freeCacheManager(this.mManagerAddress);
        this.mManagerAddress = 0L;
        ImgoCacheLogger.i(TAG(), "release out");
    }

    @Override
    public void resume(CacheTask cacheTask) {
        synchronized (this.mLock) {
            try {
                if (this.mManagerAddress != 0 && cacheTask != null && !StringUtil.isEmpty(cacheTask.getTaskID())) {
                    ImgoCacheLogger.i(TAG(), "resume in taskid:" + cacheTask.getTaskID() + " vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
                    cacheTask.setCurrentStatus(CacheTask.Status.START);
                    ImgoSourceNative.resumeCache(this.mManagerAddress, cacheTask.getTaskID());
                    ImgoCacheLogger.i(TAG(), "resume out");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setTaskCallback(IImgoCache.TaskCallback taskCallback) {
        this.mTaskCallback = taskCallback;
    }

    public void startCache(CacheTask cacheTask) {
        ImgoCacheLogger.i(TAG(), "startCache vid:" + cacheTask.getVid() + ",StreamId" + cacheTask.getStreamId());
        ImgoSourceNative.CbStartParams cbStartParamsStartCache = ImgoSourceNative.startCache(this.mManagerAddress, cacheTask.getUrl(), cacheTask.getVid(), cacheTask.getStreamId(), cacheTask.getStartTimeMs(), cacheTask.getTsNum(), cacheTask.getWriteM3u8());
        if (cbStartParamsStartCache != null) {
            updateParamsOnStart(cacheTask, cbStartParamsStartCache);
        }
        ImgoCacheLogger.i(TAG(), "startCache end");
    }

    public void updateParamsOnResult(@NonNull CacheTask cacheTask, @NonNull ImgoSourceNative.CbResultParams cbResultParams) {
        cacheTask.setFullPath(cbResultParams.fullpath);
        cacheTask.setFileName(cbResultParams.file_name);
        cacheTask.setType(cbResultParams.type);
        cacheTask.setTsNames(cbResultParams.ts_names);
    }

    public void updateParamsOnStart(@NonNull CacheTask cacheTask, @NonNull ImgoSourceNative.CbStartParams cbStartParams) {
        cacheTask.setTempPath(cbStartParams.filepath);
        cacheTask.setCurrentStatus(CacheTask.Status.START);
        cacheTask.setTaskID(cbStartParams.taskid);
    }

    public ImgoMultiCache(Context context, String str, ImgoSourceNative.InitParams initParams) {
        this.mLock = new Object();
        this.mStartTasks = Collections.synchronizedList(new LinkedList());
        this.mCallback = new ImgoSourceNative.Callback() {
            @Override
            public void onError(final ImgoSourceNative.CbErrorParams cbErrorParams) {
                if (cbErrorParams == null) {
                    ImgoCacheLogger.e(ImgoMultiCache.this.TAG(), "onError params null");
                    return;
                }
                ImgoCacheLogger.e(ImgoMultiCache.this.TAG(), "onError taskid:" + cbErrorParams.taskid + ",error_code:" + cbErrorParams.error_code + ",detail_code:" + cbErrorParams.detail_code);
                if (ImgoMultiCache.this.mMyLooper != null) {
                    ThreadUtil.runOnTargetLooper(ImgoMultiCache.this.mMyLooper, new Runnable() {
                        @Override
                        public void run() {
                            ImgoMultiCache.this.notifyTaskError(cbErrorParams);
                        }
                    });
                } else {
                    ThreadUtil.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            ImgoMultiCache.this.notifyTaskError(cbErrorParams);
                        }
                    });
                }
            }

            @Override
            public void onResult(final int i, final ImgoSourceNative.CbResultParams cbResultParams) {
                if (cbResultParams != null) {
                    ImgoCacheLogger.d(ImgoMultiCache.this.TAG(), "native_resultcallback result:" + i + ",taskid:" + cbResultParams.taskid + ",fullpath:" + cbResultParams.fullpath + ",type" + cbResultParams.type);
                    String[] strArr = cbResultParams.ts_names;
                    if (strArr != null && strArr.length > 0) {
                        for (String str2 : strArr) {
                            ImgoCacheLogger.i(ImgoMultiCache.this.TAG(), "native_callback ts_name:" + str2);
                        }
                    }
                }
                if (i == 0) {
                    if (ImgoMultiCache.this.mMyLooper != null) {
                        ThreadUtil.runOnTargetLooper(ImgoMultiCache.this.mMyLooper, new Runnable() {
                            @Override
                            public void run() {
                                ImgoMultiCache.this.notifyTaskResult(i, cbResultParams);
                            }
                        });
                    } else {
                        ThreadUtil.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                ImgoMultiCache.this.notifyTaskResult(i, cbResultParams);
                            }
                        });
                    }
                }
            }
        };
        if (!ImgoCacheLibLoader.loadLibs(context) || StringUtil.isEmpty(str)) {
            return;
        }
        this.mCachePath = str;
        FileUtil.mkdirs(str);
        if (initParams != null) {
            this.mInitParams = initParams;
        } else {
            ImgoSourceNative.InitParams initParams2 = new ImgoSourceNative.InitParams();
            this.mInitParams = initParams2;
            initParams2.useragent = USER_AGENT;
            initParams2.connect_timeout_ms = 3000;
            initParams2.request_timeout_ms = 5000;
        }
        this.mMyLooper = Looper.myLooper();
        create();
    }

    private boolean isStartingTask(String str) {
        return (isStartTaskEmpty() || StringUtil.isEmpty(str) || findTask(str) == null) ? false : true;
    }

    @Override
    public void cache(CacheTask cacheTask, boolean z) {
        synchronized (this.mLock) {
            try {
                if (this.mManagerAddress != 0 && cacheTask != null && cacheTask.getVid() != null && cacheTask.getUrl() != null && !isStartingTask(cacheTask)) {
                    if (cacheTask.isStart()) {
                        ImgoCacheLogger.i(TAG(), "cache in started cache taskid:" + cacheTask.getTaskID());
                        return;
                    }
                    ImgoCacheLogger.i(TAG(), "cache in vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
                    startCache(cacheTask);
                    this.mStartTasks.add(cacheTask);
                    callOnStart(cacheTask);
                    ImgoCacheLogger.i(TAG(), "cache out force:" + z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

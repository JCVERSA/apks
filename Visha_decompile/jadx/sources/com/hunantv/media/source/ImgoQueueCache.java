package com.hunantv.media.source;

import android.content.Context;
import androidx.annotation.NonNull;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.source.jni.ImgoSourceNative;
import com.hunantv.media.utils.FileUtil;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class ImgoQueueCache implements IImgoQueueCache {
    private static final int CONNECT_TIMEOUT_MS = 3000;
    private static final int MAX_RUNNING_SIZE = 1;
    private static final int NULL = 0;
    private static final int REQUEST_TIMEOUT_MS = 5000;
    public static final String TAG = "ImgoQueueCache";
    private static final String USER_AGENT = "ImgoDataSource";
    private String mCachePath;
    private ImgoSourceNative.Callback mCallback;
    private ImgoSourceNative.InitParams mInitParams;
    protected long mManagerAddress;
    private Queue<CacheTask> mPrepareTasks;
    private List<CacheTask> mRunningTasks;
    private Object mSyncLock;
    private IImgoCache.TaskCallback mTaskCallback;

    public ImgoQueueCache(Context context, String str) {
        this(context, str, null);
    }

    private void cancelImpl(CacheTask cacheTask) {
        if (this.mManagerAddress == 0 || cacheTask == null) {
            return;
        }
        ImgoCacheLogger.i(TAG(), "cancel in vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
        cacheTask.setCurrentStatus(CacheTask.Status.NONE);
        cacheTask.setTempPath(null);
        if (this.mRunningTasks.contains(cacheTask)) {
            ImgoCacheLogger.i(TAG(), "cancel from mRunningTasks");
            this.mRunningTasks.remove(cacheTask);
        }
        if (this.mPrepareTasks.contains(cacheTask)) {
            ImgoCacheLogger.i(TAG(), "cancel from mPrepareTasks");
            this.mPrepareTasks.remove(cacheTask);
        }
        ImgoSourceNative.cancelCache(this.mManagerAddress, cacheTask.getTaskID());
        ImgoCacheLogger.i(TAG(), "cancel out");
    }

    private void moveToRunningTasks(CacheTask cacheTask) {
        if (cacheTask == null || this.mRunningTasks.contains(cacheTask)) {
            return;
        }
        if (this.mPrepareTasks.contains(cacheTask)) {
            this.mPrepareTasks.remove(cacheTask);
        }
        ImgoCacheLogger.i(TAG(), "moveToRunningTasks vid:" + cacheTask.getVid() + ",StreamId" + cacheTask.getStreamId());
        startCache(cacheTask);
        this.mRunningTasks.add(cacheTask);
        callOnStart(cacheTask);
    }

    public String TAG() {
        return "ImgoQueueCache[" + hashCode() + "]";
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
        synchronized (this.mSyncLock) {
            cancelImpl(cacheTask);
        }
    }

    public void create() {
        release();
        synchronized (this.mSyncLock) {
            ImgoCacheLogger.i(TAG(), "create in");
            long jNewCacheManager = ImgoSourceNative.newCacheManager(this.mCachePath, this.mInitParams);
            this.mManagerAddress = jNewCacheManager;
            ImgoSourceNative.setMaxTask(jNewCacheManager, 1);
            ImgoSourceNative.subscribeCallback(this.mCallback);
            ImgoCacheLogger.i(TAG(), "create out");
        }
    }

    @Override
    public IImgoCache.ExtraInfo getExtraInfo() {
        return new IImgoCache.ExtraInfo(this.mManagerAddress);
    }

    @Override
    public Queue<CacheTask> getPrepareQueue() {
        return this.mPrepareTasks;
    }

    @Override
    public List<CacheTask> getRunningList() {
        return this.mRunningTasks;
    }

    public void onTaskResult(CacheTask cacheTask, int i, ImgoSourceNative.CbResultParams cbResultParams) {
        String strTAG;
        String str;
        ImgoCacheLogger.i(TAG(), "onResult findTask " + cacheTask);
        if (cacheTask != null) {
            this.mRunningTasks.remove(cacheTask);
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
        }
    }

    @Override
    public void release() {
        synchronized (this.mSyncLock) {
            try {
                if (this.mManagerAddress == 0) {
                    return;
                }
                ImgoCacheLogger.i(TAG(), "release in");
                ImgoSourceNative.removeCallback(this.mCallback);
                ImgoSourceNative.freeCacheManager(this.mManagerAddress);
                this.mManagerAddress = 0L;
                Queue<CacheTask> queue = this.mPrepareTasks;
                if (queue != null) {
                    queue.clear();
                }
                List<CacheTask> list = this.mRunningTasks;
                if (list != null) {
                    list.clear();
                }
                ImgoCacheLogger.i(TAG(), "release out");
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
        ImgoSourceNative.CbStartParams cbStartParamsStartCache = ImgoSourceNative.startCache(this.mManagerAddress, cacheTask.getUrl(), cacheTask.getVid(), cacheTask.getStreamId(), 0, 0, cacheTask.getWriteM3u8());
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

    public ImgoQueueCache(Context context, String str, ImgoSourceNative.InitParams initParams) {
        this.mPrepareTasks = new LinkedList();
        this.mRunningTasks = new LinkedList();
        this.mSyncLock = new Object();
        this.mCallback = new ImgoSourceNative.Callback() {
            public CacheTask findTask(List<CacheTask> list, String str2) {
                if (list != null && str2 != null) {
                    for (CacheTask cacheTask : list) {
                        if (cacheTask != null && str2.equals(cacheTask.getTaskID())) {
                            return cacheTask;
                        }
                    }
                }
                return null;
            }

            @Override
            public void onError(ImgoSourceNative.CbErrorParams cbErrorParams) {
            }

            @Override
            public void onResult(final int i, final ImgoSourceNative.CbResultParams cbResultParams) {
                ImgoCacheLogger.d(ImgoQueueCache.this.TAG(), "onResult IN");
                if (cbResultParams != null) {
                    ImgoCacheLogger.i(ImgoQueueCache.this.TAG(), "native_resultcallback result:" + i + ",taskid:" + cbResultParams.taskid + ",fullpath:" + cbResultParams.fullpath + ",type" + cbResultParams.type);
                    String[] strArr = cbResultParams.ts_names;
                    if (strArr != null && strArr.length > 0) {
                        for (String str2 : strArr) {
                            ImgoCacheLogger.i(ImgoQueueCache.this.TAG(), "native_callback ts_name:" + str2);
                        }
                    }
                }
                ThreadUtil.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        CacheTask cacheTaskFindTask;
                        ImgoCacheLogger.d(ImgoQueueCache.this.TAG(), "onResult attach to UI thread");
                        if (cbResultParams != null) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            cacheTaskFindTask = anonymousClass1.findTask(ImgoQueueCache.this.mRunningTasks, cbResultParams.taskid);
                            ImgoQueueCache.this.onTaskResult(cacheTaskFindTask, i, cbResultParams);
                        } else {
                            cacheTaskFindTask = null;
                        }
                        if (cacheTaskFindTask == null || !cacheTaskFindTask.isSuccess()) {
                            return;
                        }
                        ImgoQueueCache imgoQueueCache = ImgoQueueCache.this;
                        imgoQueueCache.cache((CacheTask) imgoQueueCache.mPrepareTasks.poll(), true);
                    }
                });
                ImgoCacheLogger.d(ImgoQueueCache.this.TAG(), "onResult OUT");
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
        create();
    }

    @Override
    public void cache(CacheTask cacheTask, boolean z) {
        synchronized (this.mSyncLock) {
            try {
                if (this.mManagerAddress != 0 && cacheTask != null && cacheTask.getVid() != null && cacheTask.getUrl() != null) {
                    ImgoCacheLogger.i(TAG(), "cache in vid:" + cacheTask.getVid() + ",streamid:" + cacheTask.getStreamId());
                    if (!z) {
                        if (this.mRunningTasks.size() >= 1) {
                            ImgoCacheLogger.i(TAG(), "add to mPrepareTasks vid:" + cacheTask.getVid());
                            if (!this.mPrepareTasks.contains(cacheTask)) {
                                this.mPrepareTasks.add(cacheTask);
                            }
                        }
                        ImgoCacheLogger.i(TAG(), "cache out force:" + z);
                    }
                    if (this.mRunningTasks.size() > 0) {
                        ImgoCacheLogger.i(TAG(), "force cache vid:" + cacheTask.getVid() + ",StreamId" + cacheTask.getStreamId());
                        CacheTask cacheTask2 = this.mRunningTasks.get(0);
                        if (cacheTask2 != cacheTask) {
                            cancelImpl(cacheTask2);
                            if (!this.mPrepareTasks.contains(cacheTask2)) {
                                ImgoCacheLogger.i(TAG(), "add RunningTask to mPrepareTasks vid:" + cacheTask2.getVid());
                                this.mPrepareTasks.add(cacheTask2);
                            }
                        }
                    }
                    moveToRunningTasks(cacheTask);
                    ImgoCacheLogger.i(TAG(), "cache out force:" + z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

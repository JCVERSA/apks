package com.hunantv.media.gif;

import android.app.Application;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.libnative.FFmpegApi;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.FileUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.report.a;
import java.io.File;
import java.lang.ref.WeakReference;

public class GifProcessor {
    public static final int ERROR_GIF = 7001999;
    private static String TAG = "GifProcessor";
    private static Application sApplication;
    private static GifProcessor sInstance;
    private GifProcessHandler mGifProcessHandler;
    private HandlerThread mGifProcessThread;
    private a mReporter;
    private Object mSafeLocker = new Object();
    private WeakReference<Callback> mWeakCallback;

    public interface Callback {
        void onFailure(int i, Task task);

        void onSuccess(String str, Task task);
    }

    public static class GifProcessHandler extends Handler {
        public static final int MSG_GIF_PROCESS = 100;
        private WeakReference<GifProcessor> mWeakProcessor;

        public GifProcessHandler(GifProcessor gifProcessor, Looper looper) {
            super(looper);
            this.mWeakProcessor = new WeakReference<>(gifProcessor);
        }

        private void callbackFail(int i, Task task) {
            reportErr(7001999, i);
            GifProcessor gifProcessor = this.mWeakProcessor.get();
            if (gifProcessor != null) {
                gifProcessor.callbackFailure(i, task);
            }
        }

        private void callbackSuc(Task task) {
            reportVV();
            GifProcessor gifProcessor = this.mWeakProcessor.get();
            if (gifProcessor != null) {
                gifProcessor.callbackSuccess(task.targetFile, task);
            }
        }

        private void processGif(Message message) {
            int i;
            reportPV();
            if (message == null) {
                i = -200;
            } else {
                Task task = (Task) message.obj;
                DebugLog.i(GifProcessor.TAG, "processGif in. " + task);
                if (task != null) {
                    task.targetFile = task.targetDir + "/" + ("gif_" + System.currentTimeMillis() + ".gif");
                    int iA = com.hunantv.media.player.e.a.a(GifProcessor.sApplication, task.url, task.startS, task.durationS, task.w, task.h, task.fps, task.targetFile);
                    DebugLog.i(GifProcessor.TAG, "processGif out. ret=" + iA);
                    if (iA == 0) {
                        callbackSuc(task);
                        return;
                    } else {
                        callbackFail(iA, task);
                        return;
                    }
                }
                i = -201;
            }
            callbackFail(i, null);
        }

        private void reportErr(int i, int i2) {
            GifProcessor gifProcessor = this.mWeakProcessor.get();
            if (gifProcessor == null || gifProcessor.mReporter == null) {
                return;
            }
            gifProcessor.mReporter.a(i, i2, "");
        }

        private void reportPV() {
            GifProcessor gifProcessor = this.mWeakProcessor.get();
            if (gifProcessor == null || gifProcessor.mReporter == null) {
                return;
            }
            gifProcessor.mReporter.a();
        }

        private void reportVV() {
            GifProcessor gifProcessor = this.mWeakProcessor.get();
            if (gifProcessor == null || gifProcessor.mReporter == null) {
                return;
            }
            gifProcessor.mReporter.b();
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 100) {
                return;
            }
            processGif(message);
        }
    }

    public static class Task {
        public int durationS;
        public int fps;
        public int h;
        public int startS;
        public String targetDir;
        private String targetFile;
        public String url;
        public int w;

        public static class Size {
            public int height;
            public int width;

            public Size(int i, int i2) {
                this.width = i;
                this.height = i2;
            }

            public String toString() {
                return "Size{width=" + this.width + ", height=" + this.height + '}';
            }
        }

        public Task(String str, int i, int i2, int i3, int i4, int i5, String str2) {
            this.url = str;
            this.startS = i;
            this.durationS = i2;
            this.w = i3;
            this.h = i4;
            this.fps = i5;
            this.targetDir = str2;
        }

        public static Size getAutoSize(int i, int i2) {
            if (i <= 0 || i2 <= 0) {
                return new Size(0, 0);
            }
            DebugLog.i(GifProcessor.TAG, "getAutoSize in." + i + "-" + i2);
            if (i < i2) {
                if (i2 >= 480) {
                    i = (i * 480) / i2;
                    i2 = 480;
                }
            } else if (i >= 480) {
                i2 = (i2 * 480) / i;
                i = 480;
            }
            DebugLog.i(GifProcessor.TAG, "getAutoSize out." + i + "-" + i2);
            return new Size(i, i2);
        }

        public void autoSize(int i, int i2) {
            Size autoSize = getAutoSize(i, i2);
            if (autoSize != null) {
                this.w = autoSize.width;
                this.h = autoSize.height;
            }
        }

        public String getTargetFile() {
            return this.targetFile;
        }

        public String toString() {
            return "Task{url='" + this.url + "', startS=" + this.startS + ", durationS=" + this.durationS + ", w=" + this.w + ", h=" + this.h + ", fps=" + this.fps + ", targetDir='" + this.targetDir + "', targetFile='" + this.targetFile + "'}";
        }
    }

    private GifProcessor() {
        init();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0021, B:7:0x002b, B:12:0x003b, B:13:0x003e, B:15:0x0048), top: B:22:0x0001, inners: #0 }] */
    public synchronized void callbackFailure(int i, Task task) {
        Callback callback;
        DebugLog.i(TAG, "callbackFailure ret:" + i + ", " + task);
        if (task == null || StringUtil.isEmpty(task.targetFile)) {
            callback = this.mWeakCallback.get();
            if (callback != null) {
                callback.onFailure(i, task);
            }
        } else {
            try {
                FileUtil.deleteFile(new File(task.targetFile));
            } catch (Exception e) {
                e.printStackTrace();
            }
            callback = this.mWeakCallback.get();
            if (callback != null) {
                callback.onFailure(i, task);
            }
        }
        throw th;
    }

    public void callbackSuccess(String str, Task task) {
        DebugLog.i(TAG, "callbackSuccess targetFile=" + str + ", " + task);
        Callback callback = this.mWeakCallback.get();
        if (callback != null) {
            callback.onSuccess(str, task);
        }
    }

    public static synchronized GifProcessor getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new GifProcessor();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    private void init() {
        if (this.mGifProcessThread == null) {
            HandlerThread handlerThread = new HandlerThread("MgtvGifProcessThread");
            this.mGifProcessThread = handlerThread;
            handlerThread.start();
        }
        if (this.mGifProcessHandler == null) {
            this.mGifProcessHandler = new GifProcessHandler(this, this.mGifProcessThread.getLooper());
        }
    }

    private boolean validTask(Task task) {
        return task != null && !StringUtil.isEmpty(task.url) && task.startS >= 0 && task.durationS > 0 && task.fps > 0;
    }

    public void bindApplication(Application application) {
        sApplication = application;
        a aVar = new a(sApplication, (MgtvMediaPlayer) null);
        this.mReporter = aVar;
        aVar.a(new ReportParams().setVideoType(ReportParams.VideoType.GIF_CREATOR));
    }

    public void cancel() {
        synchronized (this.mSafeLocker) {
            try {
                DebugLog.i(TAG, "cancel in");
                try {
                    FFmpegApi.fftool_process_interrupt();
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                } catch (Throwable th) {
                    e = th;
                    e.printStackTrace();
                }
                DebugLog.i(TAG, "cancel out");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean isSupported() {
        return com.hunantv.media.player.e.a.b();
    }

    public void processAsync(Task task) {
        cancel();
        synchronized (this.mSafeLocker) {
            try {
                DebugLog.i(TAG, "processAsync in. " + task);
                if (this.mGifProcessHandler != null && this.mGifProcessThread != null) {
                    if (!validTask(task)) {
                        callbackFailure(-101, task);
                        return;
                    }
                    this.mGifProcessHandler.removeMessages(100);
                    Message message = new Message();
                    message.what = 100;
                    message.obj = task;
                    this.mGifProcessHandler.sendMessage(message);
                    DebugLog.i(TAG, "processAsync out.");
                    return;
                }
                callbackFailure(-100, task);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        synchronized (this.mSafeLocker) {
            try {
                DebugLog.i(TAG, "release in");
                try {
                    FFmpegApi.fftool_process_interrupt();
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                } catch (Throwable th) {
                    e = th;
                    e.printStackTrace();
                }
                GifProcessHandler gifProcessHandler = this.mGifProcessHandler;
                if (gifProcessHandler != null) {
                    gifProcessHandler.removeMessages(100);
                    this.mGifProcessHandler = null;
                }
                HandlerThread handlerThread = this.mGifProcessThread;
                if (handlerThread != null) {
                    handlerThread.quit();
                    this.mGifProcessThread = null;
                }
                DebugLog.i(TAG, "release out");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setWeakCallback(Callback callback) {
        this.mWeakCallback = new WeakReference<>(callback);
    }
}

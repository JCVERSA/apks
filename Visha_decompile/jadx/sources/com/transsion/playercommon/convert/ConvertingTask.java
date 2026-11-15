package com.transsion.playercommon.convert;

import android.annotation.SuppressLint;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.convert.ConvertingTask;
import com.transsion.utils.BaseConstant;
import defpackage.ao;
import defpackage.av3;
import defpackage.ii1;
import defpackage.lpb;
import defpackage.o5b;
import defpackage.r0a;
import defpackage.tpb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.concurrent.ThreadPoolExecutor;

public class ConvertingTask implements Runnable, ii1 {
    public static final int COMPLETE = 3;
    public static final int CONVERTING = 2;
    public static final int FAILED = 1;
    public static final int HOLDING = 0;
    public static final int NOT_AUDIO_TRACK_FAILED = 11;
    public static final int NOT_SUPPORTED_AC4 = -2;
    public static final int STOP = 4;
    private static final String TAG = "ConvertingTask";
    protected volatile b convertTaskListener;
    private lpb convertUtils;
    protected final ThreadPoolExecutor executor = ConvertingTaskManager.j().m().a();
    protected String mOutPath;
    protected Handler mProgressHandler;
    protected volatile boolean mStop;
    public MediaItem mediaItem;
    public double progress;
    public int taskStatus;

    public class a implements MediaScannerConnection.OnScanCompletedListener {
        public a() {
        }

        @Override
        public void onScanCompleted(String str, Uri uri) {
            Log.d(ConvertingTask.TAG, "onScanCompleted path:" + str);
            AudioItem audioItemG = ao.U().G(str);
            int i = audioItemG == null ? 0 : audioItemG.id;
            Log.d(ConvertingTask.TAG, "onScanCompleted mediaId:" + i + StringUtils.COMMA + ao.U().h(i, str));
            ConvertingTask convertingTask = ConvertingTask.this;
            convertingTask.taskStatus = 3;
            convertingTask.onExportCompleted(0);
        }
    }

    public interface b {
        void a(int i);

        void b(double d);
    }

    public ConvertingTask(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
        this.taskStatus = mediaItem.isConvertedFailed;
    }

    public void lambda$deleteOutPathFile$0() {
        if (this.mOutPath != null) {
            File file = new File(this.mOutPath);
            if (!file.exists() || this.taskStatus == 3) {
                return;
            }
            file.delete();
        }
    }

    public static void lambda$onExportCanceled$1() {
    }

    public void lambda$onExportFailed$2() {
        if (this.convertTaskListener != null) {
            this.convertTaskListener.a(this.taskStatus);
        }
        ConvertingTaskManager.j().J(this);
    }

    @SuppressLint({"CheckResult"})
    private void startConvertVideo() {
        String str;
        MediaItem mediaItem = this.mediaItem;
        if (mediaItem == null || (str = mediaItem.data) == null) {
            Log.w(TAG, "startConvertVideo failed");
            return;
        }
        Log.w(TAG, "startConvertVideo srcPath:" + str);
        String str2 = this.mediaItem.mineType;
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            Log.w(TAG, "startConvertVideo failed index -1");
            return;
        }
        String strSubstring = str.substring(iLastIndexOf);
        this.mOutPath = BaseConstant.i + av3.b(strSubstring.substring(0, strSubstring.lastIndexOf(Consts.DOT)), ".mp3");
        File file = new File(this.mOutPath);
        if (file.exists()) {
            return;
        }
        Log.d(TAG, "convertToMp3 " + str + "\n" + this.mOutPath);
        startingConvert(str2, str, file);
    }

    public static boolean statusNotFailed(int i) {
        return (i == 1 || i == 11 || i == -2) ? false : true;
    }

    public void clearMediaItemCover() {
        MediaItem mediaItem = this.mediaItem;
        if (mediaItem != null) {
            mediaItem.clearDefaultCover();
        }
    }

    public void deleteOutPathFile() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$deleteOutPathFile$0();
            }
        });
    }

    @Override
    public void onExportCanceled() {
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                ConvertingTask.lambda$onExportCanceled$1();
            }
        });
    }

    public void onExportCompleted(int i) {
        tpb.j0().o(this.mediaItem.id);
        ThreadUtils.o().post(new Runnable() {
            @Override
            public void run() {
                ConvertingTaskManager.j().H(ConvertingTask.this);
                ConvertingTaskManager.j().N();
                ConvertingTask.this.unregister();
            }
        });
    }

    @Override
    public void onExportFailed(@NonNull Throwable th) {
        MediaItem mediaItem = this.mediaItem;
        if (mediaItem == null || r0a.g(mediaItem.data) || o5b.e(this.mediaItem.data)) {
            this.taskStatus = 1;
        } else {
            this.taskStatus = 11;
        }
        if (this.mediaItem != null) {
            tpb.j0().J(this.mediaItem.id, this.taskStatus);
        }
        clearMediaItemCover();
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onExportFailed$2();
            }
        });
    }

    @Override
    public void onExportProgress(final double d) {
        ThreadUtils.o().post(new Runnable() {
            @Override
            public void run() {
                ConvertingTask convertingTask = ConvertingTask.this;
                convertingTask.progress = d;
                if (convertingTask.convertTaskListener != null) {
                    ConvertingTask.this.convertTaskListener.b(d);
                }
            }
        });
    }

    public ConvertingTask register(b bVar) {
        this.convertTaskListener = bVar;
        return this;
    }

    public void remove() {
        this.mStop = true;
        this.convertTaskListener = null;
        reset();
        clearMediaItemCover();
        if (this.executor.remove(this)) {
            Log.e(TAG, "remove success");
            deleteOutPathFile();
        }
    }

    public void reset() {
        lpb lpbVar = this.convertUtils;
        if (lpbVar != null) {
            lpbVar.k();
        }
    }

    @Override
    public void run() {
        if (this.mProgressHandler == null) {
            this.mProgressHandler = new Handler(Looper.getMainLooper());
        }
        startConvertVideo();
    }

    public void scanFile() {
        Log.e(TAG, "scanFile " + this.mOutPath);
        MediaScannerConnection.scanFile(Utils.a(), new String[]{this.mOutPath}, new String[]{"mp3"}, new a());
    }

    public void start() {
        this.executor.execute(this);
    }

    public void startingConvert(String str, String str2, File file) {
        boolean zC;
        lpb lpbVar = new lpb();
        this.convertUtils = lpbVar;
        lpbVar.j(this);
        try {
            this.taskStatus = 2;
            ThreadUtils.o().post(new Runnable() {
                @Override
                public void run() {
                    if (ConvertingTask.this.convertTaskListener != null) {
                        ConvertingTask.this.convertTaskListener.a(2);
                    }
                }
            });
            zC = this.convertUtils.c(str, str2, this.mOutPath, -1, -1, true, false);
        } catch (Exception e) {
            Log.e(TAG, "convertVideo " + e);
            zC = false;
        }
        if (zC && !this.mStop) {
            scanFile();
        } else if (file.exists()) {
            file.delete();
        }
    }

    public void unregister() {
        this.convertTaskListener = null;
    }
}

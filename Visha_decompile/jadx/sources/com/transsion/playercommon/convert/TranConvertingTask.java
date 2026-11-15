package com.transsion.playercommon.convert;

import android.os.Handler;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.tranplayer.TranPlayerTranscoder;
import com.transsion.utils.BaseConstant;
import defpackage.tpb;
import java.io.File;

public class TranConvertingTask extends ConvertingTask implements TranPlayerTranscoder.onErrorListener, TranPlayerTranscoder.onCompletionListener {
    private static final String TAG = "TranConvertingTask";
    private TranPlayerTranscoder mTranPlayerTranscoder;
    private final Runnable progressRunnable;

    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        public void lambda$run$0(long j) {
            try {
                TranConvertingTask.this.onExportProgress(((double) (TranConvertingTask.this.mTranPlayerTranscoder.getCurrentTranscodeTimeSecond() * 1000)) / j);
            } catch (Exception e) {
                Log.e(TranConvertingTask.TAG, "progress " + e);
            }
            TranConvertingTask tranConvertingTask = TranConvertingTask.this;
            Handler handler = tranConvertingTask.mProgressHandler;
            if (handler != null) {
                handler.postDelayed(tranConvertingTask.progressRunnable, 1000L);
            }
        }

        @Override
        public void run() {
            if (TranConvertingTask.this.mStop) {
                return;
            }
            TranConvertingTask tranConvertingTask = TranConvertingTask.this;
            if (tranConvertingTask.taskStatus != 2 || tranConvertingTask.mTranPlayerTranscoder == null) {
                return;
            }
            final long j = TranConvertingTask.this.mediaItem.duration;
            ThreadUtils.l().execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$run$0(j);
                }
            });
        }
    }

    public TranConvertingTask(MediaItem mediaItem) {
        super(mediaItem);
        this.progressRunnable = new AnonymousClass1();
    }

    public void lambda$onNotSupportFailed$1(int i) {
        if (this.convertTaskListener != null) {
            this.convertTaskListener.a(i);
        }
        ConvertingTaskManager.j().J(this);
    }

    public void lambda$startingConvert$0() {
        if (this.convertTaskListener != null) {
            this.convertTaskListener.a(2);
        }
        this.progressRunnable.run();
    }

    private void onNotSupportFailed(final int i) {
        this.taskStatus = i;
        if (this.mediaItem != null) {
            tpb.j0().J(this.mediaItem.id, i);
        }
        clearMediaItemCover();
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onNotSupportFailed$1(i);
            }
        });
    }

    @Override
    public void onCompletion() {
        Log.d(TAG, "onCompletion taskStatus:" + this.taskStatus);
        if (this.taskStatus != 4) {
            scanFile();
        }
    }

    @Override
    public void onError() {
        onExportFailed(new Exception("onError"));
    }

    @Override
    public void remove() {
        if (!this.mStop) {
            reset();
        }
        this.taskStatus = 4;
        this.mStop = true;
        clearMediaItemCover();
        Log.e(TAG, "remove ");
        if (this.executor.remove(this)) {
            Log.e(TAG, "remove success");
            deleteOutPathFile();
        }
    }

    @Override
    public void reset() {
        int i;
        super.reset();
        Log.e(TAG, "reset " + this.taskStatus);
        TranPlayerTranscoder tranPlayerTranscoder = this.mTranPlayerTranscoder;
        if (tranPlayerTranscoder != null && (i = this.taskStatus) != 3) {
            if (i != 1 && i != -2) {
                tranPlayerTranscoder.transcodeStop();
            }
            deleteOutPathFile();
        }
        Handler handler = this.mProgressHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mProgressHandler = null;
        }
    }

    @Override
    public void startingConvert(String str, String str2, File file) {
        TranPlayerTranscoder tranPlayerTranscoder = new TranPlayerTranscoder(TranPlayerTranscoder.TrancoderType.TYPE_TRANSCODE_TO_MP3);
        this.mTranPlayerTranscoder = tranPlayerTranscoder;
        tranPlayerTranscoder.setInputOutput(str2, this.mOutPath);
        this.mTranPlayerTranscoder.setOnCompletionListener(new TranPlayerTranscoder.onCompletionListener() {
            @Override
            public final void onCompletion() {
                this.b.onCompletion();
            }
        });
        this.mTranPlayerTranscoder.setOnErrorListener(new TranPlayerTranscoder.onErrorListener() {
            @Override
            public final void onError() {
                this.b.onError();
            }
        });
        Log.d(TAG, "convertToMp3 " + str2 + "\n" + this.mOutPath);
        try {
            this.taskStatus = 2;
            ThreadUtils.o().post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$startingConvert$0();
                }
            });
            File file2 = new File(BaseConstant.i);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            int iTranscoderVideo = this.mTranPlayerTranscoder.transcoderVideo();
            if (iTranscoderVideo == -2) {
                onNotSupportFailed(iTranscoderVideo);
            }
        } catch (Exception e) {
            Log.e(TAG, "convertVideo " + e);
        }
    }
}

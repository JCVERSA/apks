package com.aliyun.downloader;

import android.content.Context;
import com.aliyun.downloader.nativeclass.JniDownloader;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.source.VidAuth;
import com.aliyun.player.source.VidSts;
import java.lang.ref.WeakReference;

class ApsaraDownloader extends AliMediaDownloader {
    private Context mAppContext;
    private JniDownloader mCoreDownloader;
    private AliMediaDownloader.OnCompletionListener mOuterCompletionListener = null;
    private AliMediaDownloader.OnErrorListener mOuterOnErrorListener = null;
    private AliMediaDownloader.OnPreparedListener mOuterOnPreparedListener = null;
    private AliMediaDownloader.OnProgressListener mOuterOnProgressListener = null;

    private static class InnerCompletionListener implements AliMediaDownloader.OnCompletionListener {
        private WeakReference<ApsaraDownloader> downloaderWk;

        @Override
        public void onCompletion() {
            ApsaraDownloader apsaraDownloader = this.downloaderWk.get();
            if (apsaraDownloader != null) {
                apsaraDownloader.onCompletion();
            }
        }

        private InnerCompletionListener(ApsaraDownloader apsaraDownloader) {
            this.downloaderWk = new WeakReference<>(apsaraDownloader);
        }
    }

    private static class InnerErrorListener implements AliMediaDownloader.OnErrorListener {
        private WeakReference<ApsaraDownloader> downloaderWk;

        @Override
        public void onError(ErrorInfo errorInfo) {
            ApsaraDownloader apsaraDownloader = this.downloaderWk.get();
            if (apsaraDownloader != null) {
                apsaraDownloader.onError(errorInfo);
            }
        }

        private InnerErrorListener(ApsaraDownloader apsaraDownloader) {
            this.downloaderWk = new WeakReference<>(apsaraDownloader);
        }
    }

    private static class InnerOnProgressListener implements AliMediaDownloader.OnProgressListener {
        private WeakReference<ApsaraDownloader> downloaderWk;

        @Override
        public void onDownloadingProgress(int i10) {
            ApsaraDownloader apsaraDownloader = this.downloaderWk.get();
            if (apsaraDownloader != null) {
                apsaraDownloader.onDownloadingProgress(i10);
            }
        }

        @Override
        public void onProcessingProgress(int i10) {
            ApsaraDownloader apsaraDownloader = this.downloaderWk.get();
            if (apsaraDownloader != null) {
                apsaraDownloader.onProcessingProgress(i10);
            }
        }

        private InnerOnProgressListener(ApsaraDownloader apsaraDownloader) {
            this.downloaderWk = new WeakReference<>(apsaraDownloader);
        }
    }

    private static class InnerPreparedListener implements AliMediaDownloader.OnPreparedListener {
        private WeakReference<ApsaraDownloader> downloaderWk;

        @Override
        public void onPrepared(MediaInfo mediaInfo) {
            ApsaraDownloader apsaraDownloader = this.downloaderWk.get();
            if (apsaraDownloader != null) {
                apsaraDownloader.onPrepared(mediaInfo);
            }
        }

        private InnerPreparedListener(ApsaraDownloader apsaraDownloader) {
            this.downloaderWk = new WeakReference<>(apsaraDownloader);
        }
    }

    public ApsaraDownloader(Context context) {
        this.mAppContext = context;
        JniDownloader jniDownloader = new JniDownloader(context);
        this.mCoreDownloader = jniDownloader;
        jniDownloader.setOnCompletionListener(new InnerCompletionListener());
        this.mCoreDownloader.setOnErrorListener(new InnerErrorListener());
        this.mCoreDownloader.setOnPreparedListener(new InnerPreparedListener());
        this.mCoreDownloader.setOnProgressListener(new InnerOnProgressListener());
    }

    public void onCompletion() {
        AliMediaDownloader.OnCompletionListener onCompletionListener = this.mOuterCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion();
        }
    }

    public void onDownloadingProgress(int i10) {
        AliMediaDownloader.OnProgressListener onProgressListener = this.mOuterOnProgressListener;
        if (onProgressListener != null) {
            onProgressListener.onDownloadingProgress(i10);
        }
    }

    public void onError(ErrorInfo errorInfo) {
        AliMediaDownloader.OnErrorListener onErrorListener = this.mOuterOnErrorListener;
        if (onErrorListener != null) {
            onErrorListener.onError(errorInfo);
        }
    }

    public void onPrepared(MediaInfo mediaInfo) {
        AliMediaDownloader.OnPreparedListener onPreparedListener = this.mOuterOnPreparedListener;
        if (onPreparedListener != null) {
            onPreparedListener.onPrepared(mediaInfo);
        }
    }

    public void onProcessingProgress(int i10) {
        AliMediaDownloader.OnProgressListener onProgressListener = this.mOuterOnProgressListener;
        if (onProgressListener != null) {
            onProgressListener.onProcessingProgress(i10);
        }
    }

    @Override
    public void deleteFile() {
        this.mCoreDownloader.deleteFile();
    }

    @Override
    public String getFilePath() {
        return this.mCoreDownloader.getFilePath();
    }

    @Override
    public void prepare(VidAuth vidAuth) {
        this.mCoreDownloader.prepare(vidAuth);
    }

    @Override
    public void release() {
        this.mCoreDownloader.release();
    }

    @Override
    public void selectItem(int i10) {
        this.mCoreDownloader.selectItem(i10);
    }

    @Override
    public void setDownloaderConfig(DownloaderConfig downloaderConfig) {
        this.mCoreDownloader.setDownloaderConfig(downloaderConfig);
    }

    @Override
    public void setOnCompletionListener(AliMediaDownloader.OnCompletionListener onCompletionListener) {
        this.mOuterCompletionListener = onCompletionListener;
    }

    @Override
    public void setOnErrorListener(AliMediaDownloader.OnErrorListener onErrorListener) {
        this.mOuterOnErrorListener = onErrorListener;
    }

    @Override
    public void setOnPreparedListener(AliMediaDownloader.OnPreparedListener onPreparedListener) {
        this.mOuterOnPreparedListener = onPreparedListener;
    }

    @Override
    public void setOnProgressListener(AliMediaDownloader.OnProgressListener onProgressListener) {
        this.mOuterOnProgressListener = onProgressListener;
    }

    @Override
    public void setSaveDir(String str) {
        this.mCoreDownloader.setSaveDir(str);
    }

    @Override
    public void start() {
        this.mCoreDownloader.start();
    }

    @Override
    public void stop() {
        this.mCoreDownloader.stop();
    }

    @Override
    public void updateSource(VidSts vidSts) {
        this.mCoreDownloader.updateSource(vidSts);
    }

    @Override
    public void prepare(VidSts vidSts) {
        this.mCoreDownloader.prepare(vidSts);
    }

    @Override
    public void updateSource(VidAuth vidAuth) {
        this.mCoreDownloader.updateSource(vidAuth);
    }
}

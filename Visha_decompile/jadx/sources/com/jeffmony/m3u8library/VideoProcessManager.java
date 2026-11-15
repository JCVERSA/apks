package com.jeffmony.m3u8library;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.jeffmony.m3u8library.listener.IVideoTransformProgressListener;
import com.jeffmony.m3u8library.thread.VideoProcessThreadHandler;
import com.transsion.moduleservice.IM3U8MergeService;
import java.io.File;

public class VideoProcessManager {
    private static volatile VideoProcessManager sInstance;

    public static VideoProcessManager getInstance() {
        if (sInstance == null) {
            synchronized (VideoProcessManager.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new VideoProcessManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    public void notifyOnMergeFailed(@NonNull final IM3U8MergeService.IVideoTransformListener iVideoTransformListener, final int i) {
        VideoProcessThreadHandler.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                iVideoTransformListener.onTransformFailed(new Exception("mergeVideo failed, result=" + i));
            }
        });
    }

    public void notifyOnTransformFinished(@NonNull final IM3U8MergeService.IVideoTransformListener iVideoTransformListener) {
        VideoProcessThreadHandler.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                iVideoTransformListener.onTransformFinished();
            }
        });
    }

    public void notifyOnTransformProgress(@NonNull final IM3U8MergeService.IVideoTransformListener iVideoTransformListener, final float f) {
        VideoProcessThreadHandler.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                iVideoTransformListener.onTransformProgress(f);
            }
        });
    }

    public void transformM3U8ToMp4(final String str, final String str2, @NonNull final IM3U8MergeService.IVideoTransformListener iVideoTransformListener) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            iVideoTransformListener.onTransformFailed(new Exception("Input or output File is empty"));
        } else if (new File(str).exists()) {
            VideoProcessThreadHandler.submitRunnableTask(new Runnable() {
                @Override
                public void run() {
                    VideoProcessor videoProcessor = new VideoProcessor();
                    videoProcessor.setOnVideoTransformProgressListener(new IVideoTransformProgressListener() {
                        @Override
                        public void onTransformProgress(float f) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            VideoProcessManager.this.notifyOnTransformProgress(iVideoTransformListener, f);
                        }
                    });
                    int iTransformVideo = videoProcessor.transformVideo(str, str2);
                    if (iTransformVideo == 1) {
                        VideoProcessManager.this.notifyOnTransformFinished(iVideoTransformListener);
                    } else {
                        VideoProcessManager.this.notifyOnMergeFailed(iVideoTransformListener, iTransformVideo);
                    }
                }
            });
        } else {
            iVideoTransformListener.onTransformFailed(new Exception("Input file is not existing"));
        }
    }
}

package com.transsion.vishaplayersdk.gsyplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import java.util.ArrayList;
import java.util.List;

public class GSYVideoManager extends GSYVideoBaseManager {

    @SuppressLint({"StaticFieldLeak"})
    private static GSYVideoManager videoManager;
    public static final int SMALL_ID = R.id.small_id;
    public static final int FULLSCREEN_ID = R.id.full_id;
    public static String TAG = "GSYVideoManager";

    private GSYVideoManager() {
        init();
    }

    public static boolean backFromWindowFull(Context context) {
        if (((ViewGroup) CommonUtil.scanForActivity(context).findViewById(android.R.id.content)).findViewById(FULLSCREEN_ID) == null) {
            return false;
        }
        CommonUtil.hideNavKey(context);
        if (instance().lastListener() != null) {
            instance().lastListener().onBackFullscreen();
        }
        return true;
    }

    public static synchronized GSYVideoManager instance() {
        try {
            if (videoManager == null) {
                videoManager = new GSYVideoManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return videoManager;
    }

    public static boolean isFullState(Activity activity) {
        View viewFindViewById = ((ViewGroup) CommonUtil.scanForActivity(activity).findViewById(android.R.id.content)).findViewById(FULLSCREEN_ID);
        return (viewFindViewById != null ? (GSYVideoPlayer) viewFindViewById : null) != null;
    }

    public static void lambda$onLossAudio$0() {
        if (instance().listener() != null) {
            instance().listener().onVideoPause();
        }
    }

    public static void onPause() {
        if (instance().listener() != null) {
            instance().listener().onVideoPause();
        }
    }

    public static void onResume() {
        if (instance().listener() != null) {
            instance().listener().onVideoResume();
        }
    }

    public static void releaseAllVideos() {
        if (instance().listener() != null) {
            instance().listener().onCompletion();
        } else {
            LogUtils.j(TAG, "releaseMediaPlayer");
            instance().releaseMediaPlayer();
        }
    }

    @Override
    public void OnVideoFirstFrameShow(IMediaPlayer iMediaPlayer) {
        if (instance().listener() != null) {
            instance().listener().onVideoFirstFrameShow();
        }
    }

    @Override
    public void onLossAudio() {
        super.onLossAudio();
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public final void run() {
                GSYVideoManager.lambda$onLossAudio$0();
            }
        });
    }

    @Override
    public void setVideoDefinitions(List<VideoDefinition> list) {
        List<VideoDefinition> list2 = this.mVideoDefinitions;
        if (list2 != null) {
            list2.clear();
        }
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            this.mVideoDefinitions = arrayList;
            arrayList.addAll(list);
        }
    }

    public static void onResume(boolean z) {
        if (instance().listener() != null) {
            instance().listener().onVideoResume(z);
        }
    }
}

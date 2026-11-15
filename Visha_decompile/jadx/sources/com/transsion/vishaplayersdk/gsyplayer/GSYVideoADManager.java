package com.transsion.vishaplayersdk.gsyplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import java.util.List;

public class GSYVideoADManager extends GSYVideoBaseManager {

    @SuppressLint({"StaticFieldLeak"})
    private static GSYVideoADManager videoManager;
    public static final int SMALL_ID = R.id.ad_small_id;
    public static final int FULLSCREEN_ID = R.id.ad_full_id;
    public static String TAG = "GSYVideoADManager";

    private GSYVideoADManager() {
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

    public static synchronized GSYVideoADManager instance() {
        try {
            if (videoManager == null) {
                videoManager = new GSYVideoADManager();
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
        }
        instance().releaseMediaPlayer();
    }

    @Override
    public void OnVideoFirstFrameShow(IMediaPlayer iMediaPlayer) {
    }

    @Override
    public void backToFront() {
    }

    @Override
    public void changeAreaLanguage(int i, boolean z) {
    }

    @Override
    public float getCurrentSpeed() {
        return 0.0f;
    }

    @Override
    public List<VideoDefinition> getVideoDefinitions() {
        return null;
    }

    @Override
    public void gotoBackground() {
    }

    @Override
    public void noticePlayViewMode(int i) {
    }

    @Override
    public void onActivityStart(boolean z) {
    }

    @Override
    public void onActivityStop() {
    }

    @Override
    public void setAspectRatio(int i) {
    }

    @Override
    public void setVideoDefinitions(List<VideoDefinition> list) {
    }

    @Override
    public void switchResolution(int i) {
    }

    @Override
    public void switchSubtitleSource(int i) {
    }

    public static void onResume(boolean z) {
        if (GSYVideoManager.instance().listener() != null) {
            GSYVideoManager.instance().listener().onVideoResume(z);
        }
    }
}

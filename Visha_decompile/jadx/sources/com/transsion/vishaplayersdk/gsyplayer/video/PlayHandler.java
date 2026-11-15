package com.transsion.vishaplayersdk.gsyplayer.video;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.view.View;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.data.OptionMenu;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.data.Speed;
import defpackage.pp3;
import defpackage.pz6;
import defpackage.se;
import defpackage.vz6;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class PlayHandler {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + PlayHandler.class.getSimpleName();
    public static ConcurrentHashMap<String, vz6> netCallbackMap = new ConcurrentHashMap<>();
    public boolean mIsTryWatch;
    public VideoDefinition mMiniDefinition;
    public int mProgressOffset;
    public Drawable mProgressThumb;
    private List<VideoSubtitle> mSubtileList;
    public int mSubtitleCodeByUser;
    public VideoDefinition mVideoDefinition;
    private View.OnClickListener pipListerner;
    private View.OnClickListener playListListener;
    private View.OnClickListener playNextListener;
    public String mCureentSubTitle = "";
    public int mSubtitleCode = 1314520;
    public float mSpeed = 1.0f;
    public int mFitType = 1;
    public boolean mIsInit = false;
    public long mInitStartTime = 0;
    public boolean mIsPip = false;
    public boolean mIsLast = false;
    public boolean mIsLoading = true;
    public boolean mIsLogin = false;
    public boolean mShowMobileData = true;
    public boolean mIsGravity = true;
    public boolean mIsGravityLand = false;
    public volatile boolean mIsShowWitchClarity = false;
    public volatile long mStartBuffering = -1;
    public volatile boolean mTearing = false;
    public volatile int mTryPriviewTime = 2;
    public int mClaritySwithIndex = -3;
    private final vz6 networkStatusCallback = new vz6() {
        @Override
        public void onConnect(int i) {
            for (vz6 vz6Var : PlayHandler.netCallbackMap.values()) {
                if (vz6Var != null) {
                    vz6Var.onConnect(i);
                }
            }
        }

        @Override
        public void onDisconnect() {
            for (vz6 vz6Var : PlayHandler.netCallbackMap.values()) {
                if (vz6Var != null) {
                    vz6Var.onDisconnect();
                }
            }
        }

        @Override
        public void onMobile() {
            for (vz6 vz6Var : PlayHandler.netCallbackMap.values()) {
                if (vz6Var != null) {
                    vz6Var.onMobile();
                }
            }
        }

        @Override
        public void onWifi() {
            for (vz6 vz6Var : PlayHandler.netCallbackMap.values()) {
                if (vz6Var != null) {
                    vz6Var.onWifi();
                }
            }
        }

        @Override
        public void unknowNet() {
            super.unknowNet();
        }
    };
    public String mClarity = "";
    public int mSwitchingResolution = -1;
    public volatile boolean mProgressChange = false;
    public long mPortPlayTime = 0;
    public long mPortPlayDuration = 0;
    public long mPlayTime = 0;
    public long mPauseTime = 0;
    public long mPlayDuration = 0;
    public long mPlayItemTime = 0;
    public long mPlayItemDuration = 0;
    public long mPlayLongPressSeekDuration = 0;
    public long mPlayStartTime = 0;
    public boolean mShowTryWatch = true;
    public boolean mIsLiveShow = false;
    public String mPlayTitle = "";
    public boolean mIsYoutube = false;
    public boolean mIsVk = false;
    public boolean mVkInitMute = true;
    public boolean mVkTouchCheck = false;
    public boolean mIsTaskAutoPlay = false;
    public boolean mIsBannerAd = false;

    public static class InnerPlayHandler {
        private static final PlayHandler instance = new PlayHandler();

        private InnerPlayHandler() {
        }
    }

    public PlayHandler() {
        this.mSubtitleCodeByUser = -1;
        this.mSubtitleCodeByUser = w6c.d(se.a(), "ott_subtitle_init", -1);
    }

    public static PlayHandler getInstance() {
        return InnerPlayHandler.instance;
    }

    public void addNetCallback(String str, vz6 vz6Var) {
        netCallbackMap.put(str, vz6Var);
    }

    public void clearSubtitle() {
        List<VideoSubtitle> list = this.mSubtileList;
        if (list != null) {
            list.clear();
        }
    }

    public View.OnClickListener getPipListener() {
        return this.pipListerner;
    }

    public View.OnClickListener getPlayListListener() {
        return this.playListListener;
    }

    public View.OnClickListener getPlayNextListener() {
        return this.playNextListener;
    }

    public VideoSubtitle getSelectSubtitle() {
        List<VideoSubtitle> list = this.mSubtileList;
        if (list == null) {
            return null;
        }
        for (VideoSubtitle videoSubtitle : list) {
            if (videoSubtitle.isSelected()) {
                return videoSubtitle;
            }
        }
        return null;
    }

    public List<OptionMenu> getSettings() {
        ArrayList arrayList = new ArrayList();
        int i = R.string.fit_screen;
        int i2 = R.drawable.video_play_pic_in_pic;
        arrayList.add(new OptionMenu(i, 8, i2, i2, false));
        if (pp3.u()) {
            arrayList.add(new OptionMenu(R.string.pip, 1, i2, i2, false));
        }
        int i3 = R.string.feedback;
        int i4 = R.drawable.ic_feedabck_audio_w;
        arrayList.add(new OptionMenu(i3, 11, i4, i4, false));
        return arrayList;
    }

    public List<Speed> getSpeeds() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Speed(2.0f, "2X"));
        arrayList.add(new Speed(1.5f, "1.5X"));
        arrayList.add(new Speed(1.25f, "1.25X"));
        arrayList.add(new Speed(1.0f, "1.0X"));
        arrayList.add(new Speed(0.75f, "0.75X"));
        arrayList.add(new Speed(0.5f, "0.5X"));
        return arrayList;
    }

    public List<VideoSubtitle> getSubtitleList() {
        return this.mSubtileList;
    }

    public boolean hasSubtitles() {
        List<VideoSubtitle> list = this.mSubtileList;
        return list != null && list.size() > 0;
    }

    public boolean isSubtitleAvailable(int i) {
        List<VideoSubtitle> list = this.mSubtileList;
        if (list == null) {
            return false;
        }
        Iterator<VideoSubtitle> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getLanguage() == i) {
                return true;
            }
        }
        return false;
    }

    public void registerNetStatus(Context context) {
        if (this.mIsInit) {
            return;
        }
        ((ConnectivityManager) se.a().getSystemService("connectivity")).registerDefaultNetworkCallback(new pz6(context, this.networkStatusCallback));
        this.mIsInit = true;
    }

    public void release() {
        this.playNextListener = null;
        this.pipListerner = null;
        this.playListListener = null;
        this.mShowMobileData = true;
        clearSubtitle();
        this.mPlayTitle = "";
        this.mCureentSubTitle = "";
        this.mSubtitleCode = 1314520;
        this.mSpeed = 1.0f;
        this.mFitType = 1;
        this.mIsLast = false;
        this.mIsGravity = true;
        this.mIsGravityLand = false;
        this.mClarity = "";
        this.mPortPlayTime = 0L;
        this.mPortPlayDuration = 0L;
        this.mPlayTime = 0L;
        this.mPauseTime = 0L;
        this.mPlayDuration = 0L;
        this.mPlayItemTime = 0L;
        this.mPlayItemDuration = 0L;
        this.mPlayLongPressSeekDuration = 0L;
        this.mPlayStartTime = 0L;
        this.mIsLoading = true;
        this.mProgressThumb = null;
        this.mProgressOffset = 0;
        this.mIsLiveShow = false;
        this.mIsPip = false;
        this.mIsYoutube = false;
        this.mIsVk = false;
        this.mIsTaskAutoPlay = false;
        this.mIsBannerAd = false;
        this.mSwitchingResolution = -1;
        ConcurrentHashMap<String, vz6> concurrentHashMap = netCallbackMap;
        if (concurrentHashMap == null || concurrentHashMap.size() <= 0) {
            return;
        }
        netCallbackMap.clear();
    }

    public void setBannerAd(boolean z) {
        this.mIsBannerAd = z;
    }

    public void setCustomThumb(Drawable drawable, int i) {
        this.mProgressThumb = drawable;
        this.mProgressOffset = i;
    }

    public void setPipListener(View.OnClickListener onClickListener) {
        this.pipListerner = onClickListener;
    }

    public void setPlayListListener(View.OnClickListener onClickListener) {
        this.playListListener = onClickListener;
    }

    public void setPlayNextListener(View.OnClickListener onClickListener) {
        this.playNextListener = onClickListener;
    }

    public void setSubtitleList(List<VideoSubtitle> list) {
        this.mSubtileList = list;
    }

    public void setTaskAutoPlay(boolean z) {
        this.mIsTaskAutoPlay = z;
    }
}

package com.transsion.vishaplayersdk.gsyplayer.builder;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoProgressListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.LockClickListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.render.effect.NoEffect;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;
import java.io.File;
import java.util.Map;

public class GSYVideoOptionBuilder {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + GSYVideoOptionBuilder.class.getSimpleName();
    protected Drawable mBottomProgressDrawable;
    protected Drawable mBottomShowProgressDrawable;
    protected Drawable mBottomShowProgressThumbDrawable;
    protected File mCachePath;
    protected boolean mCacheWithPlay;
    protected Drawable mDialogProgressBarDrawable;
    protected GSYVideoProgressListener mGSYVideoProgressListener;
    protected LockClickListener mLockClickListener;
    protected Map<String, String> mMapHeadData;
    protected boolean mNeedLockFull;
    protected String mOverrideExtension;
    protected PlayerInitConfig mPlayerInitConfig;
    protected long mSerialID;
    protected boolean mSounchTouch;
    protected View mThumbImageView;
    protected boolean mThumbPlay;
    protected String mUrl;
    protected VideoAllCallBack mVideoAllCallBack;
    protected long mVideoID;
    protected Drawable mVolumeProgressDrawable;
    protected int mShrinkImageRes = -1;
    protected int mEnlargeImageRes = -1;
    protected int mPlayPosition = -22;
    protected int mDialogProgressHighLightColor = -11;
    protected int mDialogProgressNormalColor = -11;
    protected int mDismissControlTime = 2500;
    protected long mSeekOnStart = -1;
    protected float mSeekRatio = 1.0f;
    protected float mSpeed = 1.0f;
    protected boolean mHideKey = true;
    protected boolean mShowFullAnimation = false;
    protected boolean mAutoFullWithSize = false;
    protected boolean mNeedShowWifiTip = true;
    protected boolean mRotateViewAuto = true;
    protected boolean mLockLand = false;
    protected boolean mLooping = false;
    protected boolean mIsTouchWiget = true;
    protected boolean mIsTouchWigetFull = true;
    protected boolean mShowPauseCover = true;
    protected boolean mRotateWithSystem = true;
    protected boolean mSetUpLazy = false;
    protected boolean mStartAfterPrepared = true;
    protected boolean mReleaseWhenLossAudio = false;
    protected boolean mActionBar = false;
    protected boolean mStatusBar = false;
    protected String mPlayTag = "";
    protected String mVideoTitle = null;
    protected GSYVideoGLView.ShaderInterface mEffectFilter = new NoEffect();
    protected boolean mbHardwareAccelerated = true;
    protected boolean bShowSubtitles = true;

    public void build(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i;
        Drawable drawable;
        Drawable drawable2 = this.mBottomShowProgressDrawable;
        if (drawable2 != null && (drawable = this.mBottomShowProgressThumbDrawable) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable2, drawable);
        }
        Drawable drawable3 = this.mBottomProgressDrawable;
        if (drawable3 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable3);
        }
        Drawable drawable4 = this.mVolumeProgressDrawable;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.mDialogProgressBarDrawable;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i2 = this.mDialogProgressHighLightColor;
        if (i2 > 0 && (i = this.mDialogProgressNormalColor) > 0) {
            standardGSYVideoPlayer.setDialogProgressColor(i2, i);
        }
        build((GSYVideoWndView) standardGSYVideoPlayer);
    }

    public GSYVideoOptionBuilder setAutoFullWithSize(boolean z) {
        this.mAutoFullWithSize = z;
        return this;
    }

    public GSYVideoOptionBuilder setBottomProgressBarDrawable(Drawable drawable) {
        this.mBottomProgressDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setBottomShowProgressBarDrawable(Drawable drawable, Drawable drawable2) {
        this.mBottomShowProgressDrawable = drawable;
        this.mBottomShowProgressThumbDrawable = drawable2;
        return this;
    }

    public GSYVideoOptionBuilder setCachePath(File file) {
        this.mCachePath = file;
        return this;
    }

    public GSYVideoOptionBuilder setCacheWithPlay(boolean z) {
        this.mCacheWithPlay = z;
        return this;
    }

    public GSYVideoOptionBuilder setDialogProgressBar(Drawable drawable) {
        this.mDialogProgressBarDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setDialogProgressColor(int i, int i2) {
        this.mDialogProgressHighLightColor = i;
        this.mDialogProgressNormalColor = i2;
        return this;
    }

    public GSYVideoOptionBuilder setDialogVolumeProgressBar(Drawable drawable) {
        this.mVolumeProgressDrawable = drawable;
        return this;
    }

    public GSYVideoOptionBuilder setDismissControlTime(int i) {
        this.mDismissControlTime = i;
        return this;
    }

    public GSYVideoOptionBuilder setEffectFilter(GSYVideoGLView.ShaderInterface shaderInterface) {
        this.mEffectFilter = shaderInterface;
        return this;
    }

    public GSYVideoOptionBuilder setEnlargeImageRes(int i) {
        this.mEnlargeImageRes = i;
        return this;
    }

    public GSYVideoOptionBuilder setFullHideActionBar(boolean z) {
        this.mActionBar = z;
        return this;
    }

    public GSYVideoOptionBuilder setFullHideStatusBar(boolean z) {
        this.mStatusBar = z;
        return this;
    }

    public GSYVideoOptionBuilder setGSYVideoProgressListener(GSYVideoProgressListener gSYVideoProgressListener) {
        this.mGSYVideoProgressListener = gSYVideoProgressListener;
        return this;
    }

    public GSYVideoOptionBuilder setHardwareAccelerated(boolean z) {
        LogUtils.P(TAG, "hardwareAccelerated :", Boolean.valueOf(z));
        this.mbHardwareAccelerated = z;
        return this;
    }

    public GSYVideoOptionBuilder setHideKey(boolean z) {
        this.mHideKey = z;
        return this;
    }

    public GSYVideoOptionBuilder setIsTouchWiget(boolean z) {
        this.mIsTouchWiget = z;
        return this;
    }

    public GSYVideoOptionBuilder setIsTouchWigetFull(boolean z) {
        this.mIsTouchWigetFull = z;
        return this;
    }

    public GSYVideoOptionBuilder setLockClickListener(LockClickListener lockClickListener) {
        this.mLockClickListener = lockClickListener;
        return this;
    }

    public GSYVideoOptionBuilder setLockLand(boolean z) {
        this.mLockLand = z;
        return this;
    }

    public GSYVideoOptionBuilder setLooping(boolean z) {
        this.mLooping = z;
        return this;
    }

    public GSYVideoOptionBuilder setMapHeadData(Map<String, String> map) {
        this.mMapHeadData = map;
        return this;
    }

    public GSYVideoOptionBuilder setNeedLockFull(boolean z) {
        this.mNeedLockFull = z;
        return this;
    }

    public GSYVideoOptionBuilder setNeedShowWifiTip(boolean z) {
        this.mNeedShowWifiTip = z;
        return this;
    }

    public GSYVideoOptionBuilder setOverrideExtension(String str) {
        this.mOverrideExtension = str;
        return this;
    }

    public GSYVideoOptionBuilder setPlayPosition(int i) {
        this.mPlayPosition = i;
        return this;
    }

    public GSYVideoOptionBuilder setPlayTag(String str) {
        this.mPlayTag = str;
        return this;
    }

    public GSYVideoOptionBuilder setPlayerInitConfig(PlayerInitConfig playerInitConfig) {
        LogUtils.j(TAG, "playerInitConfig :", playerInitConfig);
        this.mPlayerInitConfig = playerInitConfig;
        return this;
    }

    public GSYVideoOptionBuilder setReleaseWhenLossAudio(boolean z) {
        this.mReleaseWhenLossAudio = z;
        return this;
    }

    public GSYVideoOptionBuilder setRotateViewAuto(boolean z) {
        this.mRotateViewAuto = z;
        return this;
    }

    public GSYVideoOptionBuilder setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
        return this;
    }

    public GSYVideoOptionBuilder setSeekOnStart(long j) {
        this.mSeekOnStart = j;
        return this;
    }

    public GSYVideoOptionBuilder setSeekRatio(float f) {
        if (f < 0.0f) {
            return this;
        }
        this.mSeekRatio = f;
        return this;
    }

    public GSYVideoOptionBuilder setSerialID(long j) {
        LogUtils.j(TAG, "serial id: " + j);
        this.mSerialID = j;
        return this;
    }

    @Deprecated
    public GSYVideoOptionBuilder setSetUpLazy(boolean z) {
        this.mSetUpLazy = z;
        return this;
    }

    public GSYVideoOptionBuilder setShowFullAnimation(boolean z) {
        this.mShowFullAnimation = z;
        return this;
    }

    public GSYVideoOptionBuilder setShowPauseCover(boolean z) {
        this.mShowPauseCover = z;
        return this;
    }

    public GSYVideoOptionBuilder setShowSubtitle(boolean z) {
        this.bShowSubtitles = z;
        return this;
    }

    public GSYVideoOptionBuilder setShrinkImageRes(int i) {
        this.mShrinkImageRes = i;
        return this;
    }

    public GSYVideoOptionBuilder setSoundTouch(boolean z) {
        this.mSounchTouch = z;
        return this;
    }

    public GSYVideoOptionBuilder setSpeed(float f) {
        this.mSpeed = f;
        return this;
    }

    public GSYVideoOptionBuilder setStartAfterPrepared(boolean z) {
        this.mStartAfterPrepared = z;
        return this;
    }

    public GSYVideoOptionBuilder setThumbImageView(View view) {
        this.mThumbImageView = view;
        return this;
    }

    public GSYVideoOptionBuilder setThumbPlay(boolean z) {
        this.mThumbPlay = z;
        return this;
    }

    public GSYVideoOptionBuilder setUrl(String str) {
        LogUtils.j(TAG, "play source url: " + str);
        this.mUrl = str;
        return this;
    }

    public GSYVideoOptionBuilder setVideoAllCallBack(VideoAllCallBack videoAllCallBack) {
        this.mVideoAllCallBack = videoAllCallBack;
        return this;
    }

    public GSYVideoOptionBuilder setVideoID(long j) {
        LogUtils.j(TAG, "video id: " + j);
        this.mVideoID = j;
        return this;
    }

    public GSYVideoOptionBuilder setVideoTitle(String str) {
        this.mVideoTitle = str;
        return this;
    }

    public void build(GSYVideoWndView gSYVideoWndView) {
        gSYVideoWndView.setPlayTag(this.mPlayTag);
        gSYVideoWndView.setPlayPosition(this.mPlayPosition);
        gSYVideoWndView.setThumbPlay(this.mThumbPlay);
        View view = this.mThumbImageView;
        if (view != null) {
            gSYVideoWndView.setThumbImageView(view);
        }
        gSYVideoWndView.setNeedLockFull(this.mNeedLockFull);
        LockClickListener lockClickListener = this.mLockClickListener;
        if (lockClickListener != null) {
            gSYVideoWndView.setLockClickListener(lockClickListener);
        }
        gSYVideoWndView.setDismissControlTime(this.mDismissControlTime);
        long j = this.mSeekOnStart;
        if (j > 0) {
            gSYVideoWndView.setSeekOnStart(j);
        }
        gSYVideoWndView.setShowFullAnimation(this.mShowFullAnimation);
        gSYVideoWndView.setLooping(this.mLooping);
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            gSYVideoWndView.setVideoAllCallBack(videoAllCallBack);
        }
        GSYVideoProgressListener gSYVideoProgressListener = this.mGSYVideoProgressListener;
        if (gSYVideoProgressListener != null) {
            gSYVideoWndView.setGSYVideoProgressListener(gSYVideoProgressListener);
        }
        gSYVideoWndView.setOverrideExtension(this.mOverrideExtension);
        gSYVideoWndView.setAutoFullWithSize(this.mAutoFullWithSize);
        gSYVideoWndView.setRotateViewAuto(this.mRotateViewAuto);
        gSYVideoWndView.setLockLand(this.mLockLand);
        gSYVideoWndView.setSpeed(this.mSpeed, this.mSounchTouch);
        gSYVideoWndView.setHideKey(this.mHideKey);
        gSYVideoWndView.setIsTouchWiget(this.mIsTouchWiget);
        gSYVideoWndView.setIsTouchWigetFull(this.mIsTouchWigetFull);
        gSYVideoWndView.setNeedShowWifiTip(this.mNeedShowWifiTip);
        gSYVideoWndView.setEffectFilter(this.mEffectFilter);
        gSYVideoWndView.setStartAfterPrepared(this.mStartAfterPrepared);
        gSYVideoWndView.setReleaseWhenLossAudio(this.mReleaseWhenLossAudio);
        gSYVideoWndView.setFullHideActionBar(this.mActionBar);
        gSYVideoWndView.setFullHideStatusBar(this.mStatusBar);
        gSYVideoWndView.setHardwareAccelerated(this.mbHardwareAccelerated);
        gSYVideoWndView.setPlayerInitConfig(this.mPlayerInitConfig);
        int i = this.mEnlargeImageRes;
        if (i > 0) {
            gSYVideoWndView.setEnlargeImageRes(i);
        }
        int i2 = this.mShrinkImageRes;
        if (i2 > 0) {
            gSYVideoWndView.setShrinkImageRes(i2);
        }
        gSYVideoWndView.setShowPauseCover(this.mShowPauseCover);
        gSYVideoWndView.setSeekRatio(this.mSeekRatio);
        gSYVideoWndView.setRotateWithSystem(this.mRotateWithSystem);
        gSYVideoWndView.setShowSubtitle(this.bShowSubtitles);
        if (this.mSetUpLazy) {
            gSYVideoWndView.setUpLazy(this.mUrl, this.mCacheWithPlay, this.mCachePath, this.mMapHeadData, this.mVideoTitle);
        } else {
            gSYVideoWndView.setUp(this.mUrl, this.mVideoID, this.mSerialID, this.mCacheWithPlay, this.mVideoTitle);
        }
    }
}

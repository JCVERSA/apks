package com.transsion.audio.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.media3.common.C;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.tencent.mmkv.MMKV;
import com.transsion.WindowInfoViewModel;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayListSheetDialogActivity;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.AudioPlayerLayout;
import com.transsion.audio.widgets.videowidgets.MVPlayerMediaView;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MusicBrainzResponseBean;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CustomIconItemData;
import com.transsion.playercommon.videomodel.AudioAlbumViewModel;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.videomodel.SmartEditViewModel;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.playercommon.widgets.CustomMediaOperateIconView;
import com.transsion.push.PushConstants;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.GestureUtil;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.a64;
import defpackage.ao;
import defpackage.av3;
import defpackage.b39;
import defpackage.be0;
import defpackage.cd;
import defpackage.gd1;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.in9;
import defpackage.iz;
import defpackage.jf;
import defpackage.k29;
import defpackage.lc3;
import defpackage.p06;
import defpackage.p10;
import defpackage.pcc;
import defpackage.pp3;
import defpackage.qy5;
import defpackage.rc2;
import defpackage.ry5;
import defpackage.sg9;
import defpackage.t53;
import defpackage.ul;
import defpackage.vb;
import defpackage.vdb;
import defpackage.vf;
import defpackage.vha;
import defpackage.w6c;
import defpackage.wna;
import defpackage.woc;
import defpackage.xm9;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.Callable;

public class AudioPlayerLayout extends RelativeLayout implements View.OnClickListener, h27.b {
    private static final int MAX_UPDATE_INTERVAL_MS = 250;
    static final String TAG = "AudioPlayerLayout";
    private final Runnable errorNextRunnable;
    protected TextView mArtistName;
    private AudioAlbumViewModel mAudioAlbumViewModel;
    private AudioPlayClickListener mAudioPlayClickListener;
    private AudioSwitchView mAudioVideoSwitchView;
    protected OSSeekbar mBottomSeekBar;
    ValueAnimator mCollapseWidthAnim;
    private Context mContext;
    private AudioItem mCurrentMediaItem;
    private final CustomMediaOperateIconView.a mCustomIconItemClickListener;
    private HashMap<Integer, View> mCustomIconMap;
    private CustomMediaOperateIconView mCustomMediaOperateIconView;
    protected int mDefaultSpeedTxSize;
    private final Runnable mDeferredSpeedUpdateRunnable;
    private gd1 mDisposables;
    protected long mDuration;
    AnimatorSet mExpandAnimatorSet;
    private long mFirstClickTime;
    public String mFromPage;
    public boolean mFromShare;
    private View mGestureView;
    private View mGestureViewButton;
    private boolean mIsAudioCoverChanged;
    private boolean mIsAudioInfoChanged;
    private boolean mIsFoldSmall;
    private boolean mIsFoldSmallInit;
    protected boolean mIsInFavorites;
    private boolean mIsInitPlayPause;
    private boolean mIsPlaying;
    private AudioSwitchView.IsSelectedListener mIsSelectedListener;
    private ImageView mIvCancelEditInfo;
    private ImageView mIvFavorites;
    private ImageView mIvMore;
    private ImageView mIvSaveEditInfo;
    private SmartEditAnimationView mIvSmartEdit;
    private long mLastCoverClickTime;
    private View mLlAudioinfo;
    private LinearLayout mLlSmartEdit;
    private LinearLayout mLlSpaceAlbum;
    private MVPlayerMediaView mMVPlayerMediaView;
    private FrameLayout mMusicAlbumContainer;
    private RoundImageView mMusicAlbumView;
    private PlayListModel mMusicModel;
    private MusicPlayListView mMusicPlayListView;
    private String mNewCoverPath;
    private final OSSeekbar.c mOnSeekBarChangeListener;
    private MotionLayout mPanelMotionLayout;
    private Runnable mPauseButtonUpdateRunnable;
    private final PlayAudioListData mPlayListData;
    private MusicPlayManager mPlayManager;
    private ImageView mPlayNext;
    private ImageView mPlayPause;
    private ImageView mPlayPrevious;
    private final MusicPlayManager.d mPlayerListener;
    protected Runnable mProgressUpdateRunnable;
    private OSIconTextView mRepeat;
    private SmartEditViewModel mSmartEditViewModel;
    private float mSpeed;
    protected int mSpeedTxSize;
    private final MVPlayerMediaView.SurfaceCallback mSurfaceCallback;
    protected boolean mTracking;
    protected TextView mTvCover;
    protected TextView mTvCurrentProgress;
    protected TextView mTvTitle;
    protected TextView mTvTotalProgress;
    private WindowInfoViewModel mWindowInfoViewModel;

    public class AnonymousClass1 implements CustomMediaOperateIconView.a {
        public AnonymousClass1() {
        }

        public void lambda$getItemClickListener$0(View view) {
            showEq();
        }

        public void lambda$getItemClickListener$1(View view) {
            showSpeed();
        }

        public void lambda$getItemClickListener$2(View view) {
            showTimer();
        }

        @Override
        public View.OnClickListener getItemClickListener(CustomIconItemData customIconItemData) {
            View.OnClickListener itemClickListener = super.getItemClickListener(customIconItemData);
            int type = customIconItemData.getType();
            if (type == 3) {
                return new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.lambda$getItemClickListener$2(view);
                    }
                };
            }
            if (type != 4) {
                return type != 5 ? itemClickListener : new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.lambda$getItemClickListener$0(view);
                    }
                };
            }
            return new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$getItemClickListener$1(view);
                }
            };
        }

        public void showEq() {
            AudioPlayerLayout.this.mAudioPlayClickListener.showEq();
        }

        public void showSpeed() {
            AudioPlayerLayout.this.mAudioPlayClickListener.speedSetting();
        }

        public void showTimer() {
            AudioPlayerLayout.this.mAudioPlayClickListener.showTimer();
        }
    }

    public interface AudioPlayClickListener {
        default void addForFavorites(boolean z) {
        }

        default void addToPlayList() {
        }

        default void audioPlayNext() {
        }

        default void audioPlayPause() {
        }

        default void audioPlayPrevious() {
        }

        default void audioPlayRepeatModeChange() {
        }

        default void choiceBackground() {
        }

        default void showAudioInfo() {
        }

        default void showEq() {
        }

        default void showInfo() {
        }

        default void showMore(String str) {
        }

        default void showTimer() {
        }

        default void speedSetting() {
        }

        default void switchMusicMode(boolean z) {
        }

        default void updateDisplayUI(AudioItem audioItem) {
        }

        default void updatePlayPause(int i) {
        }
    }

    public AudioPlayerLayout(Context context) {
        super(context);
        this.mIsPlaying = true;
        this.mIsInitPlayPause = true;
        this.mPlayListData = PlayAudioListData.getInstance();
        this.errorNextRunnable = new Runnable() {
            @Override
            public final void run() {
                AudioPlayerLayout.lambda$new$0();
            }
        };
        this.mFromPage = "";
        this.mFromShare = false;
        this.mCustomIconMap = new HashMap<>();
        this.mDisposables = new gd1();
        this.mDeferredSpeedUpdateRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.updateSpeed();
            }
        };
        this.mCustomIconItemClickListener = new AnonymousClass1();
        this.mIsSelectedListener = new AudioSwitchView.IsSelectedListener() {
            @Override
            public void isSelected(boolean z) {
                if (AudioPlayerLayout.this.mMVPlayerMediaView == null || AudioPlayerLayout.this.mMusicAlbumContainer == null || AudioPlayerLayout.this.mMusicAlbumView == null) {
                    return;
                }
                AudioPlayerLayout.this.updateMVPlayView(z);
                if (AudioPlayerLayout.this.mAudioPlayClickListener != null) {
                    AudioPlayerLayout.this.mAudioPlayClickListener.switchMusicMode(z);
                }
            }
        };
        this.mSurfaceCallback = new MVPlayerMediaView.SurfaceCallback() {
            @Override
            public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceChanged " + surfaceHolder + StringUtils.COMMA + i2 + StringUtils.COMMA + i3);
            }

            @Override
            public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceCreated " + surfaceHolder);
                if (AudioPlayerLayout.this.mPlayManager != null) {
                    AudioPlayerLayout.this.mPlayManager.r1(false);
                    AudioPlayerLayout.this.mPlayManager.o1(surfaceHolder, true);
                }
            }

            @Override
            public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceDestroyed " + surfaceHolder);
                if (AudioPlayerLayout.this.mPlayManager != null) {
                    AudioPlayerLayout.this.mPlayManager.r1(true);
                    AudioPlayerLayout.this.mPlayManager.o1(surfaceHolder, false);
                }
            }
        };
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$new$4();
            }
        };
        this.mPauseButtonUpdateRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$10();
            }
        };
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                if (audioItem == null) {
                    return;
                }
                AudioPlayerLayout.this.mCurrentMediaItem = audioItem;
                a64.c((BaseActivity) AudioPlayerLayout.this.mContext);
                AudioPlayerLayout.this.mIsInFavorites = ao.U().c0(false, AudioPlayerLayout.this.mCurrentMediaItem);
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.updateFavoriteIcon(audioPlayerLayout.mIsInFavorites);
                AudioPlayerLayout.this.updateDisplayUI(audioItem);
                AudioPlayerLayout.this.updatePreviousAndNextButton();
                AudioPlayerLayout.this.updateAudioPlayList();
                AudioPlayerLayout audioPlayerLayout2 = AudioPlayerLayout.this;
                audioPlayerLayout2.updateSmartEditLayout((!Boolean.FALSE.equals(audioPlayerLayout2.mAudioAlbumViewModel.f.getValue()) || AudioPlayerLayout.this.mCurrentMediaItem == null || AudioPlayerLayout.this.mCurrentMediaItem.isMusicVideo) ? false : true, false);
            }

            @Override
            public void onPlayListLoadFinished(ArrayList<AudioItem> arrayList) {
                AudioPlayerLayout.this.updatePreviousAndNextButton();
                AudioItem audioItemP = MusicPlayManager.S().P();
                if ((AudioPlayerLayout.this.mCurrentMediaItem != null || AudioPlayerLayout.this.mFromShare) && audioItemP != null && audioItemP.isAudioItemChanged(AudioPlayerLayout.this.mCurrentMediaItem)) {
                    AudioPlayerLayout.this.updateDisplayUI(audioItemP);
                }
            }

            @Override
            public void onPlayerStateUpdate(int i) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.removeCallbacks(audioPlayerLayout.mPauseButtonUpdateRunnable);
                if (!com.transsion.utils.a.D(AudioPlayerLayout.this.mContext)) {
                    AudioPlayerLayout.this.updatePlayPauseButton(i);
                } else {
                    AudioPlayerLayout audioPlayerLayout2 = AudioPlayerLayout.this;
                    audioPlayerLayout2.postDelayed(audioPlayerLayout2.mPauseButtonUpdateRunnable, 200L);
                }
            }

            @Override
            public void onShowError(int i, int i2) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.postDelayed(audioPlayerLayout.errorNextRunnable, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            }

            @Override
            public void onTimerShow(long j) {
                AudioPlayerLayout.this.updateTimer(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                String str = AudioPlayerLayout.this.mFromPage;
                if (str == null || !str.equals("audio_list_item_click")) {
                    onPlayerStateUpdate(AudioPlayerLayout.this.mPlayManager.b0());
                }
                onPlayListLoadFinished(AudioPlayerLayout.this.mPlayManager.Y().getPlayList());
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                Log.d(AudioPlayerLayout.TAG, "onVideoSizeChanged " + i + " " + i2);
                if (AudioPlayerLayout.this.mMVPlayerMediaView != null) {
                    AudioPlayerLayout.this.mMVPlayerMediaView.onVideoSizeChanged(i, i2);
                }
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        this.mOnSeekBarChangeListener = new OSSeekbar.c() {
            @Override
            public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
                long jQ;
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                if (audioPlayerLayout.mTracking) {
                    jQ = audioPlayerLayout.mDuration;
                    long j = (((long) i) * jQ) / 100;
                    if (j <= jQ) {
                        jQ = j;
                    }
                } else {
                    jQ = MusicPlayManager.S().Q();
                }
                AudioPlayerLayout.this.mTvCurrentProgress.setText(wna.d(jQ));
            }

            @Override
            public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
                AudioPlayerLayout.this.mTracking = true;
            }

            @Override
            public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.mTracking = false;
                AudioPlayerLayout.this.mPlayManager.n1((int) ((audioPlayerLayout.mDuration * ((long) audioPlayerLayout.mBottomSeekBar.getProgress())) / 100), true);
                p06.h0("audio_play_seekbar");
            }
        };
        init(context);
    }

    private void checkSmallWindow() {
        MotionLayout motionLayout;
        if (this.mIsFoldSmallInit) {
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.audio_player_layout_album_space_height);
        boolean z = this.mLlSpaceAlbum.getHeight() < dimensionPixelOffset;
        this.mIsFoldSmall = z;
        this.mIsFoldSmallInit = true;
        if (z && (motionLayout = this.mPanelMotionLayout) != null) {
            motionLayout.jumpToState(R.id.fold_window_small);
        }
        Log.i(TAG, "checkSmallWindow: " + this.mLlSpaceAlbum.getHeight() + ", minHeight: " + dimensionPixelOffset + ", mIsFoldSmall: " + this.mIsFoldSmall);
    }

    private void collapseSmartEditLayout(final boolean z) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.mLlSmartEdit.getWidth(), 0);
        this.mCollapseWidthAnim = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.lambda$collapseSmartEditLayout$7(valueAnimator);
            }
        });
        this.mCollapseWidthAnim.setDuration(300L);
        this.mCollapseWidthAnim.setInterpolator(new t53(0.2f, 0.0f, 0.1f, 1.0f));
        this.mCollapseWidthAnim.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animator) {
                if (AudioPlayerLayout.this.mLlSmartEdit != null) {
                    AudioPlayerLayout.this.mLlSmartEdit.setVisibility(8);
                }
                if (AudioPlayerLayout.this.mIvSmartEdit != null) {
                    AudioPlayerLayout.this.mIvSmartEdit.setVisibility(z ? 0 : 8);
                }
            }
        });
        this.mCollapseWidthAnim.start();
    }

    private void doPlayListDialog(boolean z) {
        if (!z) {
            LiveEventBus.b().c("is_hide_audio_play_list", Boolean.TRUE);
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("theme", true);
        intent.setClass(this.mContext, AudioPlayListSheetDialogActivity.class);
        this.mContext.startActivity(intent);
    }

    public void expandSmartEditLayout() {
        int iD = com.transsion.utils.a.d(getContext(), 54.0f);
        int iD2 = com.transsion.utils.a.d(getContext(), 84.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, iD);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.lambda$expandSmartEditLayout$5(valueAnimator);
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, iD2);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.lambda$expandSmartEditLayout$6(valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.mExpandAnimatorSet = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        this.mExpandAnimatorSet.setDuration(300L);
        this.mExpandAnimatorSet.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animator) {
                if (AudioPlayerLayout.this.mIvSmartEdit != null) {
                    AudioPlayerLayout.this.mIvSmartEdit.setVisibility(8);
                }
            }

            @Override
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                if (AudioPlayerLayout.this.mIvSmartEdit != null) {
                    AudioPlayerLayout.this.mLlSmartEdit.setVisibility(0);
                }
            }
        });
        this.mExpandAnimatorSet.start();
    }

    private int getLayoutId() {
        return R.layout.audio_play_operate_foldable;
    }

    public void handleSaveError(Throwable th) {
        LogUtils.m(TAG, "Error saving audio edit info: " + th.getMessage());
        ToastUtils.s(com.transsion.playercommon.R.string.audio_edit_error_tip);
    }

    public void handleSaveSuccess(Boolean bool) {
        LogUtils.j(TAG, "Audio edit info saved result: " + bool);
        if (bool.booleanValue()) {
            collapseSmartEditLayout(false);
            getContext().sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
            if (this.mIsAudioCoverChanged) {
                LiveEventBus.b().c("change_audio_cover", this.mCurrentMediaItem);
            }
        }
    }

    private void initCoverChangeObserver() {
        SmartEditViewModel smartEditViewModel = this.mSmartEditViewModel;
        if (smartEditViewModel != null) {
            smartEditViewModel.h().observe((LifecycleOwner) getContext(), new Observer<String>() {
                @Override
                public void onChanged(@Nullable String str) {
                    if (str == null || AudioPlayerLayout.this.mCurrentMediaItem == null || str.equals(AudioPlayerLayout.this.mCurrentMediaItem.data)) {
                        return;
                    }
                    AudioPlayerLayout.this.setNewCover(str);
                }
            });
        }
        AudioAlbumViewModel audioAlbumViewModel = this.mAudioAlbumViewModel;
        if (audioAlbumViewModel != null) {
            audioAlbumViewModel.f.observe((LifecycleOwner) getContext(), new Observer<Boolean>() {
                @Override
                public void onChanged(@Nullable Boolean bool) {
                    LogUtils.j(AudioPlayerLayout.TAG, "hasCustomAlbum = " + bool);
                    AudioPlayerLayout.this.updateSmartEditLayout((!Boolean.FALSE.equals(bool) || AudioPlayerLayout.this.mCurrentMediaItem == null || AudioPlayerLayout.this.mCurrentMediaItem.isMusicVideo) ? false : true, false);
                }
            });
        }
    }

    private void initDisplayUI() {
        int iD = w6c.d(getContext(), "audio_play_repeat_mode", 1);
        this.mPlayListData.setRepeatMode(iD);
        vdb.g(TAG, "initDisplayUI repeatMode " + iD);
        setRepeatImg(iD, this.mRepeat, false);
    }

    private void initDolbyOrEqShow() {
        updateDolbyOrEqCustomIcon(lc3.c(getContext()));
    }

    private boolean isPlayListShow() {
        return sg9.e("audio").c("audio_play_list_status", false);
    }

    public void lambda$collapseSmartEditLayout$7(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = this.mLlSmartEdit.getLayoutParams();
        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.mLlSmartEdit.setLayoutParams(layoutParams);
    }

    public void lambda$expandSmartEditLayout$5(ValueAnimator valueAnimator) {
        if (this.mIvSmartEdit != null) {
            this.mIvSmartEdit.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public void lambda$expandSmartEditLayout$6(ValueAnimator valueAnimator) {
        LinearLayout linearLayout = this.mLlSmartEdit;
        if (linearLayout != null) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.mLlSmartEdit.setLayoutParams(layoutParams);
        }
    }

    public boolean lambda$init$1(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    public void lambda$init$2(Integer num) {
        vdb.g(TAG, "mMusicModel.getAudioPlayRepeatMode().observe repeatMode" + num);
        setRepeatImg(num.intValue(), this.mRepeat, false);
    }

    public void lambda$init$3(Integer num) {
        vdb.g(TAG, "LiveEventBus.getInstance().with(EventKey.EVENT_KEY_AUDIO_SWITCH_REPEAT_MODE).observe repeatMode" + num);
        setRepeatImg(num.intValue(), this.mRepeat, false);
    }

    public static void lambda$initGesture$14(int i) {
        if (2 == i) {
            p06.h0("audio_play_switch");
            return;
        }
        if (1 == i) {
            p06.h0("audio_play_switch");
        } else if (4 == i) {
            p06.i0("vd_audio_play", "1", false);
        } else if (5 == i) {
            hb0.markDirect("vd_audio_cover_cl_enter_lyrics");
        }
    }

    public static void lambda$initGesture$15(int i) {
    }

    public static void lambda$new$0() {
        MusicPlayManager.S().R0();
    }

    public void lambda$new$10() {
        updatePlayPauseButton(MusicPlayManager.S().b0());
    }

    public void lambda$onVisibilityChanged$16() {
        updateDolbyOrEq(lc3.c(getContext()));
    }

    public void lambda$registerEqOpen$8(Boolean bool) {
        updateDolbyOrEq(Boolean.TRUE.equals(bool));
    }

    public Boolean lambda$saveAudioEditInfo$17(String str, String str2) throws Exception {
        AudioFile audioFile = AudioFileIO.read(new File(this.mCurrentMediaItem.data));
        if (!TextUtils.equals(this.mCurrentMediaItem.artistName, str)) {
            ul.a(audioFile, FieldKey.ARTIST, str);
        }
        if (!TextUtils.equals(this.mCurrentMediaItem.displayName, str2)) {
            ul.a(audioFile, FieldKey.TITLE, str2);
        }
        AudioFileIO.write(audioFile);
        return Boolean.TRUE;
    }

    public Boolean lambda$saveAudioEditInfo$18() throws Exception {
        saveAudioCover();
        return Boolean.TRUE;
    }

    public static Boolean lambda$saveAudioEditInfo$19(Boolean bool, Boolean bool2) throws Exception {
        return Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
    }

    public void lambda$setMusicPlayListStyle$11() {
        this.mMusicPlayListView.scrollToPlayIndex();
    }

    public void lambda$triggerFavoriteButton$12() {
        h27.c().e(1055, new Object[0]);
        updateFavoriteIcon(this.mIsInFavorites);
        vf.f(this.mContext);
        AudioPlayClickListener audioPlayClickListener = this.mAudioPlayClickListener;
        if (audioPlayClickListener != null) {
            audioPlayClickListener.addForFavorites(this.mIsInFavorites);
        }
        if (this.mIsInFavorites) {
            cd.g(getContext(), this.mIvFavorites);
        } else {
            cd.i(this.mIvFavorites);
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("audio_favorite", this.mIsInFavorites ? 1 : 0);
        trackData.add("audio_favorite", this.mIsInFavorites ? 1 : 0);
        p06.q0(trackData, bundle, "vd_audio_play", 9324L);
    }

    public void lambda$triggerFavoriteButton$13(AudioItem audioItem) {
        ao.U().l0(this.mIsInFavorites, audioItem);
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$triggerFavoriteButton$12();
            }
        });
    }

    public void lambda$updateDisplayUI$9() {
        Context context = this.mContext;
        if (context instanceof AudioPlayerActivity) {
            ((AudioPlayerActivity) context).O1();
        } else if (context instanceof Activity) {
            ((Activity) context).startPostponedEnterTransition();
        }
    }

    private void loadStaticCover(String str) {
        RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(getContext()).load2(str).centerCrop().diskCacheStrategy(DiskCacheStrategy.ALL);
        int i = R.drawable.def_music_cover;
        requestBuilderDiskCacheStrategy.placeholder(i).error(i).into(this.mMusicAlbumView);
        pcc.b(this.mMusicAlbumView);
    }

    private void onCancelSmartEditInfo() {
        collapseSmartEditLayout(true);
        updateTitleInfo(this.mCurrentMediaItem);
    }

    private void onSaveSmartEditInfo() {
        qy5.b(this.mTvTitle.getText().toString(), this.mArtistName.getText().toString(), this.mCurrentMediaItem.albumName, "list");
        saveAudioEditInfo(this.mTvTitle.getText().toString(), this.mArtistName.getText().toString());
    }

    private void playNextPre(boolean z) {
        if (z) {
            removeCallbacks(this.errorNextRunnable);
            this.mPlayManager.U0();
            this.mAudioPlayClickListener.audioPlayNext();
        } else {
            removeCallbacks(this.errorNextRunnable);
            this.mPlayManager.Y0();
            this.mAudioPlayClickListener.audioPlayPrevious();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void registerEqOpen() {
        lc3.h.observe((LifecycleOwner) this.mContext, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$registerEqOpen$8((Boolean) obj);
            }
        });
        if (pp3.u) {
            updateDolbyOrEq(lc3.c(getContext()));
        } else {
            Boolean bool = (Boolean) lc3.h.getValue();
            updateDolbyOrEq(bool != null ? bool.booleanValue() : lc3.d());
        }
    }

    private void releaseAnimation() {
        ValueAnimator valueAnimator = this.mCollapseWidthAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mCollapseWidthAnim.removeAllListeners();
            this.mCollapseWidthAnim = null;
        }
        AnimatorSet animatorSet = this.mExpandAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mExpandAnimatorSet.removeAllListeners();
            this.mExpandAnimatorSet = null;
        }
    }

    private void saveAudioCover() {
        String str;
        if (!this.mIsAudioCoverChanged || (str = this.mNewCoverPath) == null) {
            return;
        }
        this.mAudioAlbumViewModel.e(str);
    }

    private void saveAudioEditInfo(final String str, final String str2) {
        this.mDisposables.b(xm9.y(xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.lambda$saveAudioEditInfo$17(str2, str);
            }
        }).r(k29.c()), xm9.j(new Callable() {
            @Override
            public final Object call() {
                return this.b.lambda$saveAudioEditInfo$18();
            }
        }).r(k29.c()), new be0() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return AudioPlayerLayout.lambda$saveAudioEditInfo$19((Boolean) obj, (Boolean) obj2);
            }
        }).m(vb.a()).p(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.handleSaveSuccess((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.handleSaveError((Throwable) obj);
            }
        }));
    }

    private void setDefCoverImage() {
        this.mMusicAlbumView.setImageResource(R.drawable.def_music_cover);
        pcc.b(this.mMusicAlbumView);
    }

    private void setMusicPlayListStyle() {
        this.mMusicPlayListView.setPadding(0, 0, 0, !b39.b(this.mContext) ? com.transsion.utils.a.d(this.mContext, 50.0f) : 0);
        this.mMusicPlayListView.adaptFoldState(false);
        this.mMusicPlayListView.setNightType(true);
        this.mMusicPlayListView.refresh(false, true);
        this.mMusicPlayListView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setMusicPlayListStyle$11();
            }
        });
    }

    public void setNewCover(String str) {
        this.mAudioAlbumViewModel.f(this.mCurrentMediaItem);
        this.mNewCoverPath = str;
        loadStaticCover(str);
        this.mIsAudioCoverChanged = true;
        updateSmartEditLayout(false, true);
    }

    private void setRepeatImg(int i, OSIconTextView oSIconTextView, boolean z) {
        if (i == 1) {
            oSIconTextView.setText(com.transsion.widgetslib.R.string.os_single_loop);
        } else if (i == 2) {
            oSIconTextView.setText(com.transsion.widgetslib.R.string.os_List_loop);
        } else {
            oSIconTextView.setText(com.transsion.widgetslib.R.string.os_shuffle);
        }
        if (z) {
            p10.b(i);
        }
    }

    public void setSmartEditInfo(MusicBrainzResponseBean musicBrainzResponseBean) {
        String musicName = musicBrainzResponseBean.getMusicName();
        String artistName = musicBrainzResponseBean.getArtistName();
        LogUtils.j(TAG, "title:" + musicName + " artistName:" + artistName + " albumName:" + musicBrainzResponseBean.getAlbumName() + " albumYear:" + musicBrainzResponseBean.getAlbumYear());
        if (!TextUtils.isEmpty(musicName) && !musicName.equals(this.mCurrentMediaItem.title)) {
            this.mTvTitle.setText(musicName);
            this.mIsAudioInfoChanged = true;
        }
        if (!TextUtils.isEmpty(artistName) && !artistName.equals(this.mCurrentMediaItem.artistName)) {
            this.mArtistName.setText(artistName);
            this.mIsAudioInfoChanged = true;
        }
        if (this.mIsAudioInfoChanged) {
            updateSmartEditLayout(false, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean shouldHideAlbumForWindow() {
        woc wocVar;
        WindowInfoViewModel windowInfoViewModel = this.mWindowInfoViewModel;
        if (windowInfoViewModel != null && (wocVar = (woc) windowInfoViewModel.a.getValue()) != null) {
            return wocVar.c || wocVar.d;
        }
        Context context = this.mContext;
        if (context instanceof BaseActivity) {
            return ((BaseActivity) context).isInSplitScreen(true);
        }
        return false;
    }

    public static boolean shouldShowPauseButton() {
        return MusicPlayManager.S().b0() == 3;
    }

    private void startSmartEditLoadingAnim() {
        SmartEditAnimationView smartEditAnimationView = this.mIvSmartEdit;
        if (smartEditAnimationView != null) {
            smartEditAnimationView.setLoading(true);
        }
    }

    public void stopSmartEditLoadingAnim() {
        SmartEditAnimationView smartEditAnimationView = this.mIvSmartEdit;
        if (smartEditAnimationView != null) {
            smartEditAnimationView.setLoading(false);
        }
    }

    private void triggerFavoriteButton() {
        final AudioItem audioItemP = MusicPlayManager.S().P();
        if (audioItemP != null) {
            this.mIsInFavorites = !ao.U().c0(true, audioItemP);
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$triggerFavoriteButton$13(audioItemP);
                }
            });
        }
    }

    private int triggerRepeatMode() {
        int iD = iz.d(w6c.d(getContext(), "audio_play_repeat_mode", 1));
        setRepeatImg(iD, this.mRepeat, false);
        w6c.t(getContext(), "audio_play_repeat_mode", iD);
        this.mPlayManager.k1(new iz(iD));
        Context context = getContext();
        if (context instanceof AudioPlayerActivity) {
            ((PlayListModel) ((AudioPlayerActivity) context).getViewModel(PlayListModel.class)).r(iD);
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String[] strArr = p06.c;
        int i = iD - 1;
        bundle.putString("audio_loop", strArr[i]);
        trackData.add("audio_loop", strArr[i]);
        p06.q0(trackData, bundle, "vd_audio_play", 9324L);
        LiveEventBus.b().d("audio_switch_repeat_mode").postValue(Integer.valueOf(iD));
        return iD;
    }

    private void unRegisterEqOpen() {
        lc3.h.removeObservers((LifecycleOwner) this.mContext);
    }

    public void updateAudioPlayList() {
        if (Boolean.FALSE.equals(this.mWindowInfoViewModel.i.getValue()) && isPlayListShow() && this.mMusicPlayListView != null) {
            setMusicPlayListStyle();
        }
    }

    private void updateAudioSwitchView(AudioItem audioItem) {
        AudioSwitchView audioSwitchView;
        if (audioItem == null || (audioSwitchView = this.mAudioVideoSwitchView) == null) {
            return;
        }
        if (!audioItem.isMusicVideo) {
            audioSwitchView.setVisibility(8);
        } else {
            audioSwitchView.setVisibility(0);
            updateSmartEditLayout(false, false);
        }
    }

    private void updateDolbyOrEq(boolean z) {
        updateDolbyOrEqCustomIcon(z);
    }

    private void updateDolbyOrEqCustomIcon(boolean z) {
        int i = R.drawable.ic_audio_player_eq_on_new;
        if (pp3.u) {
            int i2 = z ? R.drawable.ic_custom_dolby_open : R.drawable.ic_custom_dolby_close;
            if (this.mCustomIconMap.containsKey(5)) {
                this.mCustomMediaOperateIconView.updateItemIcon(this.mCustomIconMap.get(5), i2);
                return;
            } else {
                this.mCustomIconMap.put(5, this.mCustomMediaOperateIconView.addItem(new CustomIconItemData(i2, null, true, false, 5)));
                return;
            }
        }
        if (lc3.d() && !this.mCustomIconMap.containsKey(5)) {
            this.mCustomIconMap.put(5, this.mCustomMediaOperateIconView.addItem(new CustomIconItemData(i, null, true, false, 5)));
        } else {
            if (!this.mCustomIconMap.containsKey(5) || lc3.d()) {
                return;
            }
            removeCustomView(5);
        }
    }

    public void updateMVPlayView(boolean z) {
        MVPlayerMediaView mVPlayerMediaView = this.mMVPlayerMediaView;
        if (mVPlayerMediaView == null || this.mMusicAlbumContainer == null || this.mMusicAlbumView == null) {
            return;
        }
        if (z) {
            mVPlayerMediaView.hideLayout();
        } else {
            mVPlayerMediaView.showLayout();
        }
        boolean z2 = z && !shouldHideAlbumForWindow();
        this.mMusicAlbumContainer.setVisibility(z2 ? 0 : 8);
        this.mMusicAlbumView.setVisibility(z2 ? 0 : 8);
    }

    private void updatePlayerViewWhenChanged(AudioItem audioItem) {
        if (audioItem != null) {
            updateMVPlayView(true);
            AudioSwitchView audioSwitchView = this.mAudioVideoSwitchView;
            if (audioSwitchView != null) {
                audioSwitchView.setIsMusic(true);
            }
        }
    }

    private void updateProgress(long j, long j2, long j3) {
        Log.i(TAG, "updateProgress: bufferedPosition = " + j3);
        if (this.mDuration != j2) {
            this.mDuration = j2;
            this.mTvTotalProgress.setText(wna.c(j2));
        }
        long j4 = this.mDuration;
        if (j > j4) {
            j = j4;
        }
        int iRound = Math.round((100 * j) / j2);
        if (this.mTracking) {
            return;
        }
        this.mTvCurrentProgress.setText(wna.d(j));
        this.mBottomSeekBar.setProgress(iRound);
    }

    public void updateTimer(long j) {
        if (j <= 0) {
            removeCustomView(3);
            return;
        }
        View view = this.mCustomIconMap.get(3);
        if (view != null) {
            this.mCustomMediaOperateIconView.updateItemText(view, wna.c(j));
        } else {
            this.mCustomIconMap.put(3, this.mCustomMediaOperateIconView.addItem(new CustomIconItemData(R.drawable.music_custom_timer, wna.c(j), true, true, 3), 0));
        }
    }

    private void updateTitleInfo(AudioItem audioItem) {
        AudioItem audioItemP;
        if (audioItem == null) {
            return;
        }
        String strQ = audioItem.displayName;
        if (strQ == null) {
            Uri uri = audioItem.uri;
            strQ = uri != null ? av3.q(uri.getPath()) : "";
        }
        String str = audioItem.artistName;
        if (TextUtils.isEmpty(str) && (audioItemP = MusicPlayManager.S().P()) != null) {
            str = audioItemP.artistName;
        }
        this.mArtistName.setText(str);
        this.mTvTitle.setText(strQ);
    }

    public void changeDefImage(Drawable drawable) {
        try {
            this.mMusicAlbumView.setImageDrawable(drawable);
            pcc.b(this.mMusicAlbumView);
        } catch (Exception e) {
            Log.e(TAG, "setDefCoverImg: ", e);
            setDefCoverImage();
        }
    }

    public void changePlayImage(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            try {
                this.mMusicAlbumView.setImageBitmap(bitmap);
                pcc.b(this.mMusicAlbumView);
                return;
            } catch (Exception e) {
                Log.e(TAG, "setCoverImg " + e);
            }
        }
        setDefCoverImage();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1057) {
            initDisplayUI();
            return;
        }
        if (i == 1070) {
            ((Activity) getContext()).finish();
            return;
        }
        if (i != 1055) {
            if (i == 1141) {
                updateSpeed();
            }
        } else {
            if (this.mIvFavorites == null || this.mCurrentMediaItem == null) {
                return;
            }
            boolean zC0 = ao.U().c0(false, this.mCurrentMediaItem);
            this.mIsInFavorites = zC0;
            updateFavoriteIcon(zC0);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void init(Context context) {
        this.mContext = context;
        this.mPlayManager = MusicPlayManager.S();
        this.mCurrentMediaItem = MusicPlayManager.S().P();
        AudioPlayerActivity audioPlayerActivity = (AudioPlayerActivity) getContext();
        View viewInflate = View.inflate(context, getLayoutId(), this);
        this.mLlSpaceAlbum = (LinearLayout) viewInflate.findViewById(R.id.ll_space_album);
        this.mGestureView = viewInflate.findViewById(R.id.gesture_view);
        this.mGestureViewButton = viewInflate.findViewById(R.id.gesture_view_button);
        this.mLlAudioinfo = viewInflate.findViewById(R.id.ll_audio_info);
        this.mTvTitle = (TextView) viewInflate.findViewById(R.id.tv_audio_play_title);
        this.mArtistName = (TextView) viewInflate.findViewById(R.id.tv_audio_artist);
        updateTitleInfo(this.mCurrentMediaItem);
        this.mTvCurrentProgress = (TextView) viewInflate.findViewById(R.id.tv_video_play_current_progress);
        this.mTvTotalProgress = (TextView) viewInflate.findViewById(R.id.tv_video_play_total_progress);
        this.mIvSmartEdit = (SmartEditAnimationView) viewInflate.findViewById(R.id.iv_smart_edit);
        this.mLlSmartEdit = (LinearLayout) viewInflate.findViewById(R.id.ll_smart_edit_info);
        this.mIvSaveEditInfo = (ImageView) viewInflate.findViewById(R.id.iv_save_edit_info);
        this.mIvCancelEditInfo = (ImageView) viewInflate.findViewById(R.id.iv_cancel_edit_info);
        this.mBottomSeekBar = (OSSeekbar) viewInflate.findViewById(R.id.seekbar_video_play_bottom);
        this.mPlayPause = (ImageView) viewInflate.findViewById(R.id.iv_audio_play_pause);
        this.mPlayPrevious = (ImageView) viewInflate.findViewById(R.id.iv_audio_play_previous);
        this.mPlayNext = (ImageView) viewInflate.findViewById(R.id.iv_audio_play_next);
        this.mRepeat = (OSIconTextView) viewInflate.findViewById(R.id.iv_audio_play_repeat);
        this.mIvMore = (ImageView) viewInflate.findViewById(R.id.iv_more);
        this.mAudioVideoSwitchView = (AudioSwitchView) viewInflate.findViewById(R.id.as_audio_video);
        MVPlayerMediaView mVPlayerMediaView = (MVPlayerMediaView) viewInflate.findViewById(R.id.player_media_view);
        this.mMVPlayerMediaView = mVPlayerMediaView;
        mVPlayerMediaView.setSurfaceListener(this.mSurfaceCallback);
        this.mIvFavorites = (ImageView) viewInflate.findViewById(R.id.iv_favorites);
        this.mMusicAlbumContainer = (FrameLayout) viewInflate.findViewById(R.id.music_alumb_container);
        this.mMusicAlbumView = (RoundImageView) viewInflate.findViewById(R.id.music_alumb_view);
        this.mTvCover = (TextView) viewInflate.findViewById(R.id.tv_cover);
        this.mPanelMotionLayout = (MotionLayout) viewInflate.findViewById(R.id.panel);
        this.mMusicPlayListView = (MusicPlayListView) viewInflate.findViewById(R.id.play_list_view);
        this.mDefaultSpeedTxSize = getResources().getDimensionPixelSize(R.dimen.default_speed_size);
        this.mSpeedTxSize = getResources().getDimensionPixelSize(R.dimen.speed_size);
        this.mPlayPause.setOnClickListener(this);
        this.mPlayPrevious.setOnClickListener(this);
        this.mPlayNext.setOnClickListener(this);
        this.mRepeat.setOnClickListener(this);
        this.mMusicAlbumView.setOnClickListener(this);
        this.mIvFavorites.setOnClickListener(this);
        this.mIvMore.setOnClickListener(this);
        this.mLlAudioinfo.setOnClickListener(this);
        this.mIvSmartEdit.setOnClickListener(this);
        this.mIvCancelEditInfo.setOnClickListener(this);
        this.mIvSaveEditInfo.setOnClickListener(this);
        this.mBottomSeekBar.setOnProgressChangedListener(this.mOnSeekBarChangeListener);
        if (vha.s(this.mContext)) {
            this.mBottomSeekBar.setThumb(vha.e(this.mContext));
        }
        this.mBottomSeekBar.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.lambda$init$1(view, motionEvent);
            }
        });
        this.mMusicModel = (PlayListModel) audioPlayerActivity.getViewModel(PlayListModel.class);
        CustomMediaOperateIconView customMediaOperateIconView = (CustomMediaOperateIconView) viewInflate.findViewById(R.id.custom_media_operate_icon_view);
        this.mCustomMediaOperateIconView = customMediaOperateIconView;
        customMediaOperateIconView.setOnItemClick(this.mCustomIconItemClickListener);
        initDisplayUI();
        initGesture();
        this.mMusicModel.e().observe(audioPlayerActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$init$2((Integer) obj);
            }
        });
        this.mWindowInfoViewModel = (WindowInfoViewModel) audioPlayerActivity.getViewModel(WindowInfoViewModel.class);
        this.mSmartEditViewModel = (SmartEditViewModel) audioPlayerActivity.getViewModel(SmartEditViewModel.class);
        this.mAudioAlbumViewModel = (AudioAlbumViewModel) audioPlayerActivity.getViewModel(AudioAlbumViewModel.class);
        LiveEventBus.b().d("audio_switch_repeat_mode").observe(audioPlayerActivity, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$init$3((Integer) obj);
            }
        });
        initDolbyOrEqShow();
        post(this.mDeferredSpeedUpdateRunnable);
        updateTimer(this.mPlayManager.d0());
        initCoverChangeObserver();
    }

    public void initAudioItem(AudioItem audioItem) {
        this.mCurrentMediaItem = audioItem;
    }

    public void initGesture() {
        GestureUtil.scrollGesturesForAudio(this.mGestureView, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                AudioPlayerLayout.lambda$initGesture$14(i);
            }
        });
        com.transsion.audio.a.f(this.mGestureViewButton);
        GestureUtil.scrollGesturesForAudio(findViewById(R.id.gesture_view_title), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                AudioPlayerLayout.lambda$initGesture$15(i);
            }
        });
    }

    public void initSurfaceViewAndSwitchView(AudioItem audioItem) {
        MVPlayerMediaView mVPlayerMediaView;
        if (audioItem != null && (mVPlayerMediaView = this.mMVPlayerMediaView) != null) {
            if (audioItem.isMusicVideo) {
                mVPlayerMediaView.setDisplaySurfaceView(true);
            } else {
                mVPlayerMediaView.setDisplaySurfaceView(false);
            }
        }
        updateAudioSwitchView(audioItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onAttachedToWindow() throws Throwable {
        super.onAttachedToWindow();
        Log.i(TAG, "onAttachedToWindowAudioPlayerLayout");
        this.mPlayManager.f1(this.mPlayerListener);
        lambda$new$4();
        registerEqOpen();
        h27.c().b(this, 1057);
        h27.c().b(this, 1070);
        h27.c().b(this, 1055);
        h27.c().b(this, 1141);
        initDisplayUI();
        windowOptionsChange((woc) this.mWindowInfoViewModel.a.getValue());
        AudioSwitchView audioSwitchView = this.mAudioVideoSwitchView;
        if (audioSwitchView != null) {
            audioSwitchView.registerIsSelectedListener(this.mIsSelectedListener);
        }
    }

    @Override
    public void onClick(View view) {
        if (this.mAudioPlayClickListener == null) {
            return;
        }
        Context context = getContext();
        if (context instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) context;
            if (!baseActivity.isOnResumed() || baseActivity.isFinishing()) {
                return;
            }
        } else if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || !activity.hasWindowFocus()) {
                return;
            }
        }
        if (jf.j(this.mFirstClickTime)) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        if (view.getId() == R.id.iv_audio_play_pause) {
            Log.d(TAG, "triggerPlayOrPause " + shouldShowPauseButton());
            ry5.g("audioplaypage");
            p06.h0(shouldShowPauseButton() ? "audio_pause" : "audio_play");
            this.mPlayManager.A1(true, !shouldShowPauseButton());
            this.mAudioPlayClickListener.audioPlayPause();
            return;
        }
        if (view.getId() == R.id.iv_audio_play_repeat) {
            triggerRepeatMode();
            this.mAudioPlayClickListener.audioPlayRepeatModeChange();
            h27.c().e(1057, new Object[0]);
            return;
        }
        if (view.getId() == R.id.iv_audio_play_next) {
            playNextPre(true);
            p06.h0("audio_play_next");
            return;
        }
        if (view.getId() == R.id.iv_audio_play_previous) {
            playNextPre(false);
            p06.h0("audio_play_previous");
            return;
        }
        if (view.getId() == R.id.music_alumb_view) {
            AudioItem audioItem = this.mCurrentMediaItem;
            if (audioItem != null && !audioItem.isMusicVideo && this.mAudioPlayClickListener != null) {
                if (jf.k(this.mLastCoverClickTime, 1000L)) {
                    return;
                }
                this.mLastCoverClickTime = System.currentTimeMillis();
                this.mAudioPlayClickListener.choiceBackground();
            }
            p06.h0("audio_play_coverset");
            return;
        }
        if (view.getId() == R.id.iv_speed_setting || view.getId() == R.id.tv_speed_setting) {
            this.mAudioPlayClickListener.speedSetting();
            MMKV.p().y("mmkv_key_audio_speed_setting", true);
            p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "audio_speed");
            return;
        }
        if (view.getId() == R.id.tv_audio_play_title) {
            this.mAudioPlayClickListener.showInfo();
            return;
        }
        if (view.getId() == R.id.iv_favorites) {
            triggerFavoriteButton();
            return;
        }
        if (view.getId() == R.id.iv_more) {
            this.mAudioPlayClickListener.showMore(this.mTvTitle.getText().toString());
            p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "audio_play_more_cl");
            return;
        }
        if (view.getId() == R.id.ll_audio_info) {
            this.mAudioPlayClickListener.showAudioInfo();
            return;
        }
        if (view.getId() == R.id.iv_smart_edit) {
            p06.o0("vd_audio_play", hb0.KEY_NAME_BTN, "smartedit");
            p06.o0("vd_audio_play_smartedit_cl", "clicktype", "lookup");
            requestAudioInfoFromMusicBrain(this.mCurrentMediaItem.data);
        } else if (view.getId() == R.id.iv_save_edit_info) {
            p06.o0("vd_audio_play_smartedit_cl", "clicktype", "confirm");
            onSaveSmartEditInfo();
        } else if (view.getId() == R.id.iv_cancel_edit_info) {
            p06.o0("vd_audio_play_smartedit_cl", "clicktype", "cancel");
            onCancelSmartEditInfo();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mDeferredSpeedUpdateRunnable);
        removeProgressUpdate();
        this.mPlayManager.F1(this.mPlayerListener);
        this.mDisposables.d();
        removeCallbacks(this.errorNextRunnable);
        if (getContext() instanceof BaseActivity) {
            BaseActivity baseActivity = (BaseActivity) getContext();
            PlayListModel playListModel = this.mMusicModel;
            if (playListModel != null) {
                playListModel.e().removeObservers(baseActivity);
                this.mMusicModel.h().removeObservers(baseActivity);
            }
            baseActivity.removeScreenTypeListener(TAG);
        }
        LiveEventBus.b().d("audio_switch_repeat_mode").c();
        unRegisterEqOpen();
        h27.c().f(this, 1057);
        h27.c().f(this, 1070);
        h27.c().f(this, 1055);
        h27.c().f(this, 1141);
        AudioSwitchView audioSwitchView = this.mAudioVideoSwitchView;
        if (audioSwitchView != null) {
            audioSwitchView.unregisterIsSelectedListener();
        }
        releaseAnimation();
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkSmallWindow();
    }

    public void onProgressUpdateError(long j, long j2, long j3) {
        this.mBottomSeekBar.setProgress(0.0f);
        this.mDuration = 0L;
        this.mTvCurrentProgress.setText(wna.c(0L));
        this.mTvTotalProgress.setText(wna.c(0L));
    }

    public void onResume() {
        updateDolbyOrEq(lc3.c(getContext()));
    }

    public void onStart() {
        if (getVisibility() == 0) {
            lambda$new$4();
        }
    }

    public void onStop() {
        removeProgressUpdate();
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view instanceof AudioPlayerLayout) {
            Log.d(TAG, "onVisibilityChanged=" + i);
            if (i == 0) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$onVisibilityChanged$16();
                    }
                });
            }
        }
    }

    public void removeCustomView(int i) {
        CustomMediaOperateIconView customMediaOperateIconView = this.mCustomMediaOperateIconView;
        customMediaOperateIconView.removeItem(customMediaOperateIconView.getItemViewIndex(this.mCustomIconMap.get(Integer.valueOf(i))));
        this.mCustomIconMap.remove(Integer.valueOf(i));
    }

    public void removeProgressUpdate() {
        ThreadUtils.o().removeCallbacks(this.mProgressUpdateRunnable);
    }

    public void requestAudioInfoFromMusicBrain(String str) {
        if (MainApp.w == 0) {
            ToastUtils.s(com.transsion.playercommon.R.string.net_not_connect);
        } else {
            startSmartEditLoadingAnim();
            this.mSmartEditViewModel.f(str).a(new in9() {
                @Override
                public void onError(Throwable th) {
                    ToastUtils.s(com.transsion.playercommon.R.string.visha_no_smart_match_info);
                    AudioPlayerLayout.this.stopSmartEditLoadingAnim();
                }

                @Override
                public void onSubscribe(rc2 rc2Var) {
                }

                @Override
                public void onSuccess(MusicBrainzResponseBean musicBrainzResponseBean) {
                    AudioPlayerLayout.this.setSmartEditInfo(musicBrainzResponseBean);
                    AudioPlayerLayout.this.expandSmartEditLayout();
                }
            });
        }
    }

    public void lambda$new$4() throws Throwable {
        long jR;
        long jQ;
        long j;
        try {
            jR = this.mPlayManager.R();
            try {
                jQ = this.mPlayManager.Q();
                Handler handlerO = ThreadUtils.o();
                handlerO.removeCallbacks(this.mProgressUpdateRunnable);
                handlerO.postDelayed(this.mProgressUpdateRunnable, 250L);
                j = 0;
                if (jR > 0) {
                    updateProgress(jQ, jR, 0L);
                    return;
                }
            } catch (Throwable th) {
                th = th;
                Handler handlerO2 = ThreadUtils.o();
                handlerO2.removeCallbacks(this.mProgressUpdateRunnable);
                handlerO2.postDelayed(this.mProgressUpdateRunnable, 250L);
                jQ = 0;
                j = 0;
                if (jR > 0) {
                    updateProgress(0L, jR, 0L);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            jR = 0;
        }
        onProgressUpdateError(jQ, jR, j);
    }

    @Override
    public void setAlpha(float f) {
        super.setAlpha(f);
        invalidate();
    }

    public void setAudioPlayClickListener(AudioPlayClickListener audioPlayClickListener) {
        this.mAudioPlayClickListener = audioPlayClickListener;
    }

    public void setCoverText(String str) {
    }

    public void setCoverTextVisibility(boolean z) {
    }

    @Override
    public void setVisibility(int i) throws Throwable {
        if (i != getVisibility()) {
            if (i == 0) {
                lambda$new$4();
            } else {
                removeProgressUpdate();
            }
        }
        super.setVisibility(i);
    }

    public void updateDisplayUI(AudioItem audioItem) {
        String str;
        if (audioItem == null) {
            return;
        }
        Log.d(TAG, "updateDisplayUI " + audioItem);
        updatePlayerViewWhenChanged(audioItem);
        initSurfaceViewAndSwitchView(audioItem);
        this.mCurrentMediaItem = audioItem;
        this.mMusicModel.c(audioItem.id, this.mContext);
        boolean zC0 = ao.U().c0(false, this.mCurrentMediaItem);
        this.mIsInFavorites = zC0;
        updateFavoriteIcon(zC0);
        this.mPlayListData.setPlayMediaItem(audioItem).selectedPlayMediaItem();
        String strQ = audioItem.displayName;
        if (strQ == null) {
            Uri uri = audioItem.uri;
            strQ = uri != null ? av3.q(uri.getPath()) : "";
        }
        String str2 = audioItem.artistName;
        AudioItem audioItemP = MusicPlayManager.S().P();
        if (audioItemP != null) {
            if (TextUtils.isEmpty(audioItem.artistName)) {
                str2 = audioItemP.artistName;
            }
            if (TextUtils.isEmpty(strQ) && (str = audioItemP.displayName) != null) {
                strQ = str;
            }
        }
        AudioPlayClickListener audioPlayClickListener = this.mAudioPlayClickListener;
        if (audioPlayClickListener != null) {
            audioPlayClickListener.updateDisplayUI(audioItem);
        }
        this.mArtistName.setText(str2);
        this.mTvTitle.setText(strQ);
        postDelayed(this.mPauseButtonUpdateRunnable, 200L);
        this.mMusicAlbumView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateDisplayUI$9();
            }
        }, 10L);
    }

    public void updateFavoriteIcon(boolean z) {
        ImageView imageView;
        if (this.mCurrentMediaItem == null || (imageView = this.mIvFavorites) == null) {
            return;
        }
        this.mIsInFavorites = z;
        int i = z ? R.drawable.ic_farvorited_on_music : R.drawable.ic_favorites_music;
        Object tag = imageView.getTag();
        StringBuilder sb = new StringBuilder();
        sb.append("updateFavoriteIcon ");
        sb.append(z);
        sb.append(StringUtils.COMMA);
        sb.append(this.mCurrentMediaItem);
        sb.append(",skip");
        boolean z2 = tag instanceof Integer;
        sb.append(z2 && i == ((Integer) tag).intValue());
        Log.d(TAG, sb.toString());
        if (z2 && i == ((Integer) tag).intValue()) {
            return;
        }
        this.mIvFavorites.setImageResource(i);
        this.mIvFavorites.setTag(Integer.valueOf(i));
    }

    public void updatePlayPauseButton(int i) {
        boolean z = true;
        if (i != 3 && (!this.mIsInitPlayPause || i != 1)) {
            z = false;
        }
        this.mIsInitPlayPause = false;
        if (this.mIsPlaying == z) {
            return;
        }
        LogUtils.v("updatePlayPauseButton: " + i);
        this.mIsPlaying = z;
        cd.f(this.mPlayPause, z ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new);
        this.mPlayPause.setContentDescription(this.mIsPlaying ? getResources().getString(R.string.talkback_pause) : getResources().getString(R.string.talkback_play));
        this.mAudioPlayClickListener.updatePlayPause(i);
    }

    public void updatePreviousAndNextButton() {
        this.mPlayPrevious.setEnabled(this.mPlayManager.h0());
        this.mPlayNext.setEnabled(this.mPlayManager.g0());
    }

    public void updateSmartEditLayout(boolean z, boolean z2) {
        boolean zBooleanValue = SmartEditConfigHelper.getSmartEditEnable().booleanValue();
        int i = 8;
        this.mIvSmartEdit.setVisibility((z && zBooleanValue) ? 0 : 8);
        LinearLayout linearLayout = this.mLlSmartEdit;
        if (z2 && zBooleanValue) {
            i = 0;
        }
        linearLayout.setVisibility(i);
    }

    public void updateSpeed() {
        String str;
        float fB = w6c.b(getContext());
        if (this.mSpeed == fB) {
            return;
        }
        this.mSpeed = fB;
        if (fB == 1.0f) {
            str = "";
        } else {
            str = fB + getContext().getResources().getString(R.string.speed_icon);
        }
        String str2 = str;
        if (fB == 1.0f) {
            if (this.mCustomIconMap.containsKey(4)) {
                removeCustomView(4);
            }
        } else if (this.mCustomIconMap.containsKey(4)) {
            this.mCustomMediaOperateIconView.updateItemText(this.mCustomIconMap.get(4), str2);
        } else {
            this.mCustomIconMap.put(4, this.mCustomMediaOperateIconView.addItem(new CustomIconItemData(R.drawable.ic_music_speed_light, str2, true, true, 4), 0));
        }
    }

    public void windowOptionsChange(woc wocVar) {
        if (wocVar == null) {
            return;
        }
        int i = wocVar.a;
        boolean z = wocVar.g;
        boolean z2 = wocVar.f;
        boolean z3 = wocVar.c;
        boolean z4 = wocVar.d;
        Log.d(TAG, "windowState: " + i + " isLandScape: " + z + " isSmallWindow: " + z2 + " isSplitWindow: " + z3 + " isSmallSplitWindow: " + z4);
        if (i == 0 || i == 1) {
            if (z3) {
                if (z) {
                    this.mPanelMotionLayout.jumpToState(R.id.fold_split_land);
                } else {
                    this.mPanelMotionLayout.jumpToState(R.id.fold_split);
                }
            } else if (z2) {
                this.mPanelMotionLayout.jumpToState(R.id.fold_small);
            } else if (this.mIsFoldSmall) {
                this.mPanelMotionLayout.jumpToState(R.id.fold_window_small);
            } else {
                this.mPanelMotionLayout.jumpToState(R.id.fold);
            }
        } else if (i == 2 || i == 3) {
            if (z3) {
                this.mPanelMotionLayout.jumpToState(R.id.flat_split_land);
            } else if (z2) {
                this.mPanelMotionLayout.jumpToState(R.id.flat_small);
            } else if (isPlayListShow()) {
                this.mPanelMotionLayout.jumpToState(z ? R.id.play_list_land : R.id.play_list);
                updateAudioPlayList();
            } else {
                this.mPanelMotionLayout.jumpToState(z ? R.id.flat_land : R.id.flat);
            }
            doPlayListDialog(false);
        }
        AudioSwitchView audioSwitchView = this.mAudioVideoSwitchView;
        if (audioSwitchView != null) {
            boolean z5 = (z3 || z4 || !audioSwitchView.isMusic()) ? false : true;
            this.mMusicAlbumContainer.setVisibility(z5 ? 0 : 8);
            this.mMusicAlbumView.setVisibility(z5 ? 0 : 8);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("windowState: ");
        sb.append(this.mMusicAlbumContainer.getVisibility() == 0 ? PushConstants.PUSH_SERVICE_TYPE_SHOW : "hide");
        sb.append(" , ");
        sb.append(this.mMusicAlbumView.getVisibility() == 0 ? PushConstants.PUSH_SERVICE_TYPE_SHOW : "hide");
        Log.i(TAG, sb.toString());
        requestLayout();
    }

    public void changePlayImage(String str) {
        if (TextUtils.isEmpty(str)) {
            setDefCoverImage();
        } else {
            if (str.toLowerCase(Locale.ROOT).endsWith(".gif")) {
                RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(getContext()).asGif().load2(str).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE);
                int i = R.drawable.def_music_cover;
                requestBuilderDiskCacheStrategy.placeholder(i).error(i).into(this.mMusicAlbumView);
                return;
            }
            loadStaticCover(str);
        }
    }

    public AudioPlayerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsPlaying = true;
        this.mIsInitPlayPause = true;
        this.mPlayListData = PlayAudioListData.getInstance();
        this.errorNextRunnable = new Runnable() {
            @Override
            public final void run() {
                AudioPlayerLayout.lambda$new$0();
            }
        };
        this.mFromPage = "";
        this.mFromShare = false;
        this.mCustomIconMap = new HashMap<>();
        this.mDisposables = new gd1();
        this.mDeferredSpeedUpdateRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.updateSpeed();
            }
        };
        this.mCustomIconItemClickListener = new AnonymousClass1();
        this.mIsSelectedListener = new AudioSwitchView.IsSelectedListener() {
            @Override
            public void isSelected(boolean z) {
                if (AudioPlayerLayout.this.mMVPlayerMediaView == null || AudioPlayerLayout.this.mMusicAlbumContainer == null || AudioPlayerLayout.this.mMusicAlbumView == null) {
                    return;
                }
                AudioPlayerLayout.this.updateMVPlayView(z);
                if (AudioPlayerLayout.this.mAudioPlayClickListener != null) {
                    AudioPlayerLayout.this.mAudioPlayClickListener.switchMusicMode(z);
                }
            }
        };
        this.mSurfaceCallback = new MVPlayerMediaView.SurfaceCallback() {
            @Override
            public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceChanged " + surfaceHolder + StringUtils.COMMA + i2 + StringUtils.COMMA + i3);
            }

            @Override
            public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceCreated " + surfaceHolder);
                if (AudioPlayerLayout.this.mPlayManager != null) {
                    AudioPlayerLayout.this.mPlayManager.r1(false);
                    AudioPlayerLayout.this.mPlayManager.o1(surfaceHolder, true);
                }
            }

            @Override
            public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
                Log.d(AudioPlayerLayout.TAG, "onSurfaceDestroyed " + surfaceHolder);
                if (AudioPlayerLayout.this.mPlayManager != null) {
                    AudioPlayerLayout.this.mPlayManager.r1(true);
                    AudioPlayerLayout.this.mPlayManager.o1(surfaceHolder, false);
                }
            }
        };
        this.mProgressUpdateRunnable = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.lambda$new$4();
            }
        };
        this.mPauseButtonUpdateRunnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$10();
            }
        };
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                if (audioItem == null) {
                    return;
                }
                AudioPlayerLayout.this.mCurrentMediaItem = audioItem;
                a64.c((BaseActivity) AudioPlayerLayout.this.mContext);
                AudioPlayerLayout.this.mIsInFavorites = ao.U().c0(false, AudioPlayerLayout.this.mCurrentMediaItem);
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.updateFavoriteIcon(audioPlayerLayout.mIsInFavorites);
                AudioPlayerLayout.this.updateDisplayUI(audioItem);
                AudioPlayerLayout.this.updatePreviousAndNextButton();
                AudioPlayerLayout.this.updateAudioPlayList();
                AudioPlayerLayout audioPlayerLayout2 = AudioPlayerLayout.this;
                audioPlayerLayout2.updateSmartEditLayout((!Boolean.FALSE.equals(audioPlayerLayout2.mAudioAlbumViewModel.f.getValue()) || AudioPlayerLayout.this.mCurrentMediaItem == null || AudioPlayerLayout.this.mCurrentMediaItem.isMusicVideo) ? false : true, false);
            }

            @Override
            public void onPlayListLoadFinished(ArrayList<AudioItem> arrayList) {
                AudioPlayerLayout.this.updatePreviousAndNextButton();
                AudioItem audioItemP = MusicPlayManager.S().P();
                if ((AudioPlayerLayout.this.mCurrentMediaItem != null || AudioPlayerLayout.this.mFromShare) && audioItemP != null && audioItemP.isAudioItemChanged(AudioPlayerLayout.this.mCurrentMediaItem)) {
                    AudioPlayerLayout.this.updateDisplayUI(audioItemP);
                }
            }

            @Override
            public void onPlayerStateUpdate(int i) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.removeCallbacks(audioPlayerLayout.mPauseButtonUpdateRunnable);
                if (!com.transsion.utils.a.D(AudioPlayerLayout.this.mContext)) {
                    AudioPlayerLayout.this.updatePlayPauseButton(i);
                } else {
                    AudioPlayerLayout audioPlayerLayout2 = AudioPlayerLayout.this;
                    audioPlayerLayout2.postDelayed(audioPlayerLayout2.mPauseButtonUpdateRunnable, 200L);
                }
            }

            @Override
            public void onShowError(int i, int i2) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.postDelayed(audioPlayerLayout.errorNextRunnable, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            }

            @Override
            public void onTimerShow(long j) {
                AudioPlayerLayout.this.updateTimer(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                String str = AudioPlayerLayout.this.mFromPage;
                if (str == null || !str.equals("audio_list_item_click")) {
                    onPlayerStateUpdate(AudioPlayerLayout.this.mPlayManager.b0());
                }
                onPlayListLoadFinished(AudioPlayerLayout.this.mPlayManager.Y().getPlayList());
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                Log.d(AudioPlayerLayout.TAG, "onVideoSizeChanged " + i + " " + i2);
                if (AudioPlayerLayout.this.mMVPlayerMediaView != null) {
                    AudioPlayerLayout.this.mMVPlayerMediaView.onVideoSizeChanged(i, i2);
                }
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        this.mOnSeekBarChangeListener = new OSSeekbar.c() {
            @Override
            public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
                long jQ;
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                if (audioPlayerLayout.mTracking) {
                    jQ = audioPlayerLayout.mDuration;
                    long j = (((long) i) * jQ) / 100;
                    if (j <= jQ) {
                        jQ = j;
                    }
                } else {
                    jQ = MusicPlayManager.S().Q();
                }
                AudioPlayerLayout.this.mTvCurrentProgress.setText(wna.d(jQ));
            }

            @Override
            public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
                AudioPlayerLayout.this.mTracking = true;
            }

            @Override
            public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
                AudioPlayerLayout audioPlayerLayout = AudioPlayerLayout.this;
                audioPlayerLayout.mTracking = false;
                AudioPlayerLayout.this.mPlayManager.n1((int) ((audioPlayerLayout.mDuration * ((long) audioPlayerLayout.mBottomSeekBar.getProgress())) / 100), true);
                p06.h0("audio_play_seekbar");
            }
        };
        init(context);
    }
}

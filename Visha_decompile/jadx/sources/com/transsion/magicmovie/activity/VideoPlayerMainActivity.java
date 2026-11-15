package com.transsion.magicmovie.activity;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p003activity.OnBackPressedCallback;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.cloud.tupdate.TUpdate;
import com.just.agentweb.AgentWebUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.shortcut.AudioShortCutHelper;
import com.transsion.blur.ShapeBlurView;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.CloudDownloadMainFragment;
import com.transsion.cloud.fragment.SearchCloudFragment;
import com.transsion.cloud.share.KtShareLinkHandleManager;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.FileHandlerData;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.appconfig.BottomBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.dbdata.utils.MigrationUtils;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicmovie.R;
import com.transsion.magicmovie.activity.VideoPlayerMainActivity;
import com.transsion.magicmovie.application.VideoApplication;
import com.transsion.magicmovie.fragments.PlayerMainFragment;
import com.transsion.magicmovie.widget.BottomOperateBarLayoutV3;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.activities.VideoSheetDialogActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.utils.GpReviewUtils;
import com.transsion.playercommon.activities.BaseShowAudioVideoListActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.audiomodel.AudioDataListModel;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CloudHistoryRequestDataForDelete;
import com.transsion.playercommon.data.OnlineFootOperationBarImage;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppLayoutConfigHelper;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.playercommon.widgets.AppFootActionBar;
import com.transsion.playercommon.widgets.CloudUploadView;
import com.transsion.playercommon.widgets.NewAppFootActionBar;
import com.transsion.playercommon.widgets.SearchFileView;
import com.transsion.playercommon.widgets.TabOperationBar;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sysbar.ImmersionBar;
import com.transsion.tools.activities.NewFeatureActivity;
import com.transsion.tools.activities.SkinsGuideActivity;
import com.transsion.tools.utils.UpdateDialogUtils;
import com.transsion.transsion_gdpr.GdprUtil;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaads.datasource.AdsDataManager;
import com.transsion.widgetslib.view.OSLoadingView;
import com.transsion.widgetslib.widget.FootOperationBar;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.a41;
import defpackage.a64;
import defpackage.af9;
import defpackage.az5;
import defpackage.b39;
import defpackage.b3c;
import defpackage.bs8;
import defpackage.c39;
import defpackage.cl4;
import defpackage.cz5;
import defpackage.dy0;
import defpackage.e6b;
import defpackage.e74;
import defpackage.ea7;
import defpackage.ehb;
import defpackage.et;
import defpackage.f5;
import defpackage.ge;
import defpackage.ghb;
import defpackage.gq9;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hdb;
import defpackage.hf7;
import defpackage.hhb;
import defpackage.it1;
import defpackage.k29;
import defpackage.kz5;
import defpackage.mc7;
import defpackage.mu3;
import defpackage.nu1;
import defpackage.o5b;
import defpackage.oc2;
import defpackage.os0;
import defpackage.p06;
import defpackage.pp3;
import defpackage.s06;
import defpackage.s53;
import defpackage.se;
import defpackage.sf0;
import defpackage.sg9;
import defpackage.sy5;
import defpackage.t08;
import defpackage.t74;
import defpackage.ti5;
import defpackage.v00;
import defpackage.vb;
import defpackage.vf;
import defpackage.vg9;
import defpackage.vha;
import defpackage.vw4;
import defpackage.w6c;
import defpackage.xn9;
import defpackage.ydc;
import defpackage.zdc;
import defpackage.zf1;
import defpackage.zfb;
import defpackage.zz0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

@Route(path = VishaRouterTable.PATH_PAGE_ACTIVITY_VIDEO_PLAYER_MAIN)
public class VideoPlayerMainActivity extends BaseShowAudioVideoListActivity implements TabOperationBar.p, FootOperationBar.n {
    private static final long AUDIO_COVER_UPDATE_DELAY_MS = 400;
    private static final long DUPLICATE_THRESHOLD_MS = 1000;
    private static final int HANDLE_DELAY_RECREATE = 100;
    private static final long HAVE_AUDIO_DEBOUNCE_MS = 300;
    private static final long MEDIA_SCAN_MIN_INTERVAL_MS = 60000;
    private static final int M_MUSIC_PAGE_INDEX = 1;
    private static final int NAVIGATION_STATE_EDIT_MODE = 16;
    public static final int NAVIGATION_STATE_MASK = 16777215;
    private static final int NAVIGATION_STATE_MUSIC_BAR_SHOW = 256;
    private static final int NAVIGATION_STATE_SHOW_TAB_BAR = 1;
    private static final int NAVIGATION_STATE_VIDEO_BAR_SHOW = 4096;
    private static final long REFRESH_DEBOUNCE_MS = 800;
    static final String TAG = "VideoPlayerMain_Activity";
    private static volatile long sLastMediaScanTimeMs;
    private boolean hasAllAudioList;
    private boolean hasAllVideoList;
    private AudioDataListModel mAudioDataListModel;
    private boolean mAudioDataPreloaded;
    private View mBlurView;
    private boolean mBottomInAnimate;
    private BottomOperateBarLayoutV3 mBottomPlayerLayout;
    private CloudUploadView mCloudUploadView;
    private ConstraintLayout mConstraintLayout;
    private NewAppFootActionBar mEditFootOperationBar;
    private FileOperateUtils mFileOperateUtils;
    protected long mFirstClickTime;
    private int mFootBarBackground;
    private TabOperationBar mFootOperationBar;
    private FrameLayout mFragmentContentLayout;
    public boolean mFromGuide;
    private boolean mHasDownloadFragment;
    private boolean mHasOnlineVideoFragment;
    private volatile boolean mHaveNar;
    private FileOperateUtils mHideFileOperateUtils;
    private OnBackPressedCallback mInAppBackCallback;
    private boolean mInConvertPage;
    private boolean mIsEditMode;
    private boolean mIsPrivacyEnable;
    private boolean mIsVideo;
    private int mLastSelectTab;
    private int mListFlag;
    private MainViewModel mMainViewModel;
    private boolean mManualSort;
    private int mManualSortFrom;
    private View mMarkView;
    View mMigrateDialogContentView;
    private Runnable mMiniBarStartRunnable;
    private int mNavigationFlag;
    private AudioItem mPendingAudioCoverItem;
    private Boolean mPendingHaveAudio;
    private boolean mPendingResumeAudioCoverUpdate;
    private ViewGroup mPlayerLayout;
    private boolean mPrivacyAgreed;
    SearchFileView mSearchView;
    private ArrayList<MediaItem> mSelectItems;
    private boolean mShowDolbySplash;
    private Runnable mShowMvGuideRunnable;
    private xn9 mSkinChangeUtils;
    private boolean mSkipNextVideoMiniBarShowAnim;
    private boolean mSuccessWritePermission;
    private boolean mUpdateDialogShow;
    private ArrayList<VideoCloudData> mVideoDataList;
    private VideoDataListModel mVideoDataListModel;
    private boolean mVideoDataPreloaded;
    private boolean mWaitShowUpdateDialog;
    private WindowInsets mWindowInsets;
    private ObjectAnimator miniBarAnim;
    private final SparseArray<BaseFragment> mMapFragment = new SparseArray<>();
    private final Runnable mDebouncedRefreshRunnable = new Runnable() {
        @Override
        public final void run() {
            this.b.performRefreshData();
        }
    };
    private final Runnable mApplyPendingAudioCoverRunnable = new Runnable() {
        @Override
        public final void run() {
            this.b.applyPendingAudioCoverUpdate();
        }
    };
    private final Runnable mApplyHaveAudioRunnable = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$0();
        }
    };
    private final Runnable mMediaScanRunnable = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$1();
        }
    };
    private int mDefaultPosition = 0;
    private final int mOnlineVideoTabPosition = 2;
    private boolean mIsDrawShadow = false;
    private boolean mAllSelected = false;
    private boolean mbSelectedTabFromRouter = false;
    private boolean mIsInitLayoutModelAndOttNull = false;
    private boolean cacheHideEnable = true;
    boolean mIsShowMVTip = false;
    private boolean mIsFullScreenGuideShow = false;
    com.transsion.widgetslib.dialog.d mMigrationDialog = null;
    private OSLoadingView mMigrationLoading = null;
    private TextView mMigrationContent = null;
    private TextView mMigrationRetry = null;
    private String mLastProcessedUri = null;
    private long mLastProcessedTime = 0;
    private final Runnable mFinishchangeRunnable = new Runnable() {
        @Override
        public void run() {
            Log.d(VideoPlayerMainActivity.TAG, "mFinishchangeRunnable " + VideoPlayerMainActivity.this.mSkinChangeUtils.d());
            if (VideoPlayerMainActivity.this.mSkinChangeUtils.d()) {
                VideoPlayerMainActivity.this.mSkinChangeUtils.b();
            }
        }
    };
    long firstTime = 0;
    private final os0 mListener = new m();
    private final Handler mReCreateHandler = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.lambda$new$19(message);
        }
    });

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(Boolean bool) {
            if (!ydc.e() || !zz0.d()) {
                VideoPlayerMainActivity.this.switchTabItem(3);
                return;
            }
            CloudDownloadMainFragment cloudDownloadMainFragment = new CloudDownloadMainFragment();
            cloudDownloadMainFragment.setBaseActivity(VideoPlayerMainActivity.this);
            a64.n(cloudDownloadMainFragment, true, true);
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(Boolean bool) {
        }
    }

    public class c implements Observer {
        public c() {
        }

        @Override
        public void onChanged(Boolean bool) {
            VideoPlayerMainActivity.this.mIsDrawShadow = bool.booleanValue();
        }
    }

    public class d implements Animator.AnimatorListener {
        public final boolean b;
        public final boolean c;

        public d(boolean z, boolean z2) {
            this.b = z;
            this.c = z2;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            VideoPlayerMainActivity.this.mBottomInAnimate = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (!this.b) {
                VideoPlayerMainActivity.this.mBottomPlayerLayout.setVisibility(8);
            }
            VideoPlayerMainActivity.this.mBottomInAnimate = false;
            VideoPlayerMainActivity.this.mMainViewModel.g.postValue(Boolean.valueOf(this.b));
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.b) {
                VideoPlayerMainActivity.this.mBottomPlayerLayout.setVisibility(this.c, true);
            }
        }
    }

    public class e implements DialogInterface.OnClickListener {

        public class a extends sf0 {
            public a() {
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                if (baseResponse.isSuccess()) {
                    h27.c().e(1131, new Object[0]);
                } else {
                    h27.c().e(1129, new Object[0]);
                }
            }

            @Override
            public void onError(Throwable th) {
                h27.c().e(1129, new Object[0]);
                Log.d(VideoPlayerMainActivity.TAG, "showCloudMultiClearDialog " + th.getMessage());
            }
        }

        public e() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).deletePlayRecord(new CloudHistoryRequestDataForDelete((List) VideoPlayerMainActivity.this.mVideoDataList.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((VideoCloudData) obj).getFileId();
                }
            }).collect(Collectors.toList()))).d0(k29.c()).M(vb.a()).subscribe(new a());
        }
    }

    public class f implements DialogInterface.OnClickListener {

        public class a implements e74 {
            public a() {
            }

            @Override
            public zfb invoke(Boolean bool) {
                h27.c().e(1133, new FileHandlerData(bool.booleanValue(), 3, new VideoCloudData(), VideoPlayerMainActivity.this.mVideoDataList));
                h27.c().e(1131, new Object[0]);
                return null;
            }
        }

        public f() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            az5.i(VideoPlayerMainActivity.this.mVideoDataList.size());
            if (MainApp.p()) {
                a41.a.c(VideoPlayerMainActivity.this.getApplicationContext()).k(VideoPlayerMainActivity.this.mVideoDataList, new a());
            } else {
                ToastUtils.s(R.string.net_not_connect);
            }
        }
    }

    public class g extends hf7 {
        public g(String str) {
            super(str);
        }

        @Override
        public void a(int i) {
            b(i == 0 ? 1000 : 500);
            VideoPlayerMainActivity.this.onItemClick(i);
        }
    }

    public class h implements View.OnClickListener {
        public h() {
        }

        public final void b(boolean z) {
            if (z) {
                CloudFileOperate cloudFileOperate = CloudFileOperate.getInstance();
                VideoPlayerMainActivity videoPlayerMainActivity = VideoPlayerMainActivity.this;
                cloudFileOperate.startBatchUploadByVideoCloudDataList(videoPlayerMainActivity, videoPlayerMainActivity.mCloudUploadView.getVideoDataList());
                h27.c().e(1129, new Object[0]);
            }
        }

        @Override
        public void onClick(View view) {
            VideoPlayerMainActivity videoPlayerMainActivity = VideoPlayerMainActivity.this;
            videoPlayerMainActivity.markCloudTransmitList(videoPlayerMainActivity.mCloudUploadView.getVideoDataList(), true);
            new e6b(VideoPlayerMainActivity.this, new e6b.c() {
                @Override
                public final void a(boolean z) {
                    this.a.b(z);
                }
            }).b(true);
        }
    }

    public class i implements Observer {
        public i() {
        }

        @Override
        public void onChanged(Boolean bool) {
            VideoPlayerMainActivity.this.mIsFullScreenGuideShow = bool.booleanValue();
        }
    }

    public class j implements vw4 {
        public j() {
        }

        @Override
        public void a() {
        }

        @Override
        public boolean b() {
            return true;
        }

        @Override
        public void onDismiss() {
        }
    }

    public class k implements hhb {
        public k() {
        }

        @Override
        public void a(ehb ehbVar) {
            Log.i(VideoPlayerMainActivity.TAG, "checkUpgradeTask onRequestSuccess: " + ehbVar);
            if (ehbVar.b) {
                VideoPlayerMainActivity.this.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.d();
                    }
                });
            }
        }

        @Override
        public void b(String str) {
            Log.i(VideoPlayerMainActivity.TAG, "checkUpgradeTask onRequestFail: " + str);
        }

        public final void d() {
            VideoPlayerMainActivity.this.showUpgradeSdkDefaultDialog();
        }
    }

    public class l extends OnBackPressedCallback {
        public l(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() {
            if (pp3.u && (MainApp.r || VideoPlayerMainActivity.this.mShowDolbySplash)) {
                VideoPlayerMainActivity.this.dismissDolbySplash();
            } else {
                a64.a(VideoPlayerMainActivity.this);
                VideoPlayerMainActivity.this.updatePredictiveBackState();
            }
        }
    }

    public class m implements os0 {
        public m() {
        }

        @Override
        public void a() {
            VideoPlayerMainActivity.this.mReCreateHandler.sendEmptyMessageDelayed(100, 100L);
            h27.c().e(1124, new Object[0]);
        }
    }

    private void animAudioPlayerActivity(PlayAudioData playAudioData) {
        Intent intent = new Intent(this, (Class<?>) AudioPlayerActivity.class);
        playAudioData.toIntent(intent);
        PlayAudioListData.getInstance().setSource(playAudioData, "");
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        ImageView coverView = bottomOperateBarLayoutV3 != null ? bottomOperateBarLayoutV3.getAudioBar().getMCover() : null;
        String transitionName = coverView != null ? ViewCompat.getTransitionName(coverView) : null;
        if (coverView == null || TextUtils.isEmpty(transitionName)) {
            AudioPlayerActivity.D1(this, playAudioData);
            return;
        }
        int[] iArr = new int[2];
        coverView.getLocationOnScreen(iArr);
        intent.putExtra("audio_cover_originX", iArr[0]);
        intent.putExtra("audio_cover_originY", iArr[1]);
        Bundle bundle = ActivityOptionsCompat.makeSceneTransitionAnimation(this, coverView, transitionName).toBundle();
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!b39.b(this)) {
            bundle.putInt("tran:activity.orientation.overlay", -1);
        }
        startActivity(intent, bundle);
    }

    private void animBar(boolean z, boolean z2) {
        this.mBottomInAnimate = true;
        Runnable runnable = this.mMiniBarStartRunnable;
        if (runnable != null) {
            this.mUpdateDataHandler.removeCallbacks(runnable);
            this.mMiniBarStartRunnable = null;
        }
        ObjectAnimator objectAnimator = this.miniBarAnim;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.miniBarAnim.cancel();
        }
        if (z) {
            BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
            this.miniBarAnim = ObjectAnimator.ofFloat(bottomOperateBarLayoutV3, "translationY", bottomOperateBarLayoutV3.getHeight(), 0.0f);
            BottomOperateBarLayoutV3 bottomOperateBarLayoutV4 = this.mBottomPlayerLayout;
            bottomOperateBarLayoutV4.setTranslationY(bottomOperateBarLayoutV4.getHeight());
        } else {
            BottomOperateBarLayoutV3 bottomOperateBarLayoutV5 = this.mBottomPlayerLayout;
            this.miniBarAnim = ObjectAnimator.ofFloat(bottomOperateBarLayoutV5, "translationY", 0.0f, bottomOperateBarLayoutV5.getHeight());
            this.mBottomPlayerLayout.setTranslationY(0.0f);
        }
        this.miniBarAnim.setInterpolator(new s53(0.2f, 0.0f, 0.1f, 1.0f));
        this.miniBarAnim.setDuration(350L);
        this.miniBarAnim.addListener(new d(z, z2));
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$animBar$33();
            }
        };
        this.mMiniBarStartRunnable = runnable2;
        this.mUpdateDataHandler.postDelayed(runnable2, z ? 0L : 500L);
    }

    private void animMiniAudioPlayer(boolean z, PlayAudioData playAudioData, boolean z2) {
        Log.i(TAG, "animMiniAudioPlayer---->isShow=" + z + ", isFromAudioList=" + z2 + ", playAudioData=" + playAudioData);
        if (playAudioData != null && !z) {
            playAudioData.fromInternal = true;
            if (z2) {
                AudioPlayerActivity.F1(this, playAudioData);
                return;
            } else {
                animAudioPlayerActivity(playAudioData);
                return;
            }
        }
        boolean zA0 = VideoPlayManager.X().A0();
        if (this.mBottomPlayerLayout == null || !shouldShowPlayerMiniBar() || (z && zA0)) {
            LogUtils.j(TAG, "animMiniAudioPlayer,not show>> showAudioBar:" + zA0);
            return;
        }
        if (z && this.mBottomPlayerLayout.getVisibility() == 0 && this.mBottomPlayerLayout.getTranslationY() == 0.0f) {
            this.mBottomPlayerLayout.updateState();
            requestBottomAudioCoverUpdate(null, 0L);
            this.mBottomPlayerLayout.setVisibility(true, true);
            this.mMainViewModel.g.postValue(Boolean.TRUE);
            return;
        }
        if (z) {
            this.mBottomPlayerLayout.updateState();
            requestBottomAudioCoverUpdate(null, 0L);
        }
        Log.d(TAG, "start miniBarAnim:" + z);
        animBar(z, true);
    }

    private void animMiniVideoPlayer(boolean z, PlayVideoData playVideoData, Intent intent) {
        Log.i(TAG, "animMiniVideoPlayer---->isShow=" + z + ", playVideoData=" + playVideoData);
        if (playVideoData != null && !z) {
            playVideoData.fromInternal = true;
            VideoPlayerActivityInner.F2(this, playVideoData);
        } else if (intent != null && !z) {
            f5.d(intent, this, R.anim.activity_audio_slide_in_up);
        }
        boolean zQ0 = MusicPlayManager.S().q0();
        if (this.mBottomPlayerLayout == null || !shouldShowPlayerMiniBar() || (z && zQ0)) {
            LogUtils.j(TAG, "animMiniVideoPlayer,not show>> showVideoBar:" + zQ0);
            return;
        }
        if (!z || !this.mSkipNextVideoMiniBarShowAnim) {
            this.mSkipNextVideoMiniBarShowAnim = false;
            Log.d(TAG, "start miniVideoAnim:" + z);
            animBar(z, false);
            return;
        }
        this.mSkipNextVideoMiniBarShowAnim = false;
        Runnable runnable = this.mMiniBarStartRunnable;
        if (runnable != null) {
            this.mUpdateDataHandler.removeCallbacks(runnable);
            this.mMiniBarStartRunnable = null;
        }
        ObjectAnimator objectAnimator = this.miniBarAnim;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.miniBarAnim.cancel();
        }
        this.mBottomPlayerLayout.setVisibility(false, true);
        this.mBottomPlayerLayout.setTranslationY(0.0f);
        this.mBottomInAnimate = false;
        this.mMainViewModel.g.postValue(Boolean.TRUE);
    }

    private void applyEditFootBarBottomInset(int i2) {
        if (this.mEditFootOperationBar == null || !isTargetSdkAtLeastBaklava()) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.transsion.widgetslib.R.dimen.os_foot_bar_min_height) + i2;
        View viewFindViewById = this.mEditFootOperationBar.findViewById(com.transsion.widgetslib.R.id.fob_root);
        if (viewFindViewById != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams != null && layoutParams.height != dimensionPixelSize) {
                layoutParams.height = dimensionPixelSize;
                viewFindViewById.setLayoutParams(layoutParams);
            }
            if (viewFindViewById.getPaddingBottom() != i2) {
                viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight(), i2);
            }
        }
        if (this.mEditFootOperationBar.getPaddingBottom() != 0) {
            NewAppFootActionBar newAppFootActionBar = this.mEditFootOperationBar;
            newAppFootActionBar.setPadding(newAppFootActionBar.getPaddingLeft(), this.mEditFootOperationBar.getPaddingTop(), this.mEditFootOperationBar.getPaddingRight(), 0);
        }
        if (this.mEditFootOperationBar.getMinimumHeight() != dimensionPixelSize) {
            this.mEditFootOperationBar.setMinimumHeight(dimensionPixelSize);
        }
    }

    public void applyPendingAudioCoverUpdate() {
        if (this.mPendingAudioCoverItem == null || this.mBottomPlayerLayout == null || !isOnResumed() || this.mBottomInAnimate || VideoPlayManager.X().A0() || !this.mBottomPlayerLayout.isAudioShowing()) {
            return;
        }
        AudioItem audioItem = this.mPendingAudioCoverItem;
        this.mPendingAudioCoverItem = null;
        if (isCurrentPlayingAudio(audioItem)) {
            syncCurrentAudioCoverPath(audioItem);
            this.mBottomPlayerLayout.loadPlayBackground(audioItem);
        } else {
            Log.d(TAG, "[AudioMiniBar] skip cover update for non-playing item, pendingId=" + audioItem.id);
        }
    }

    @RequiresApi(api = 30)
    private void applySafeInsetHorizontal(WindowInsets windowInsets) {
        View viewFindViewById;
        if (windowInsets == null || (viewFindViewById = findViewById(android.R.id.content)) == null) {
            return;
        }
        if (!isTargetSdkAtLeastBaklava()) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            viewFindViewById.setPadding(displayCutout != null ? displayCutout.getSafeInsetLeft() : 0, viewFindViewById.getPaddingTop(), displayCutout != null ? displayCutout.getSafeInsetRight() : 0, viewFindViewById.getPaddingBottom());
            return;
        }
        Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
        viewFindViewById.setPadding(insets.left, viewFindViewById.getPaddingTop(), insets.right, 0);
        applyTabBarBottomInset(insets.bottom);
        applyEditFootBarBottomInset(insets.bottom);
        setPlayerMiniBarMarginBottom(b39.b(this));
    }

    private void applyTabBarBottomInset(int i2) {
        TabOperationBar tabOperationBar = this.mFootOperationBar;
        if (tabOperationBar == null || tabOperationBar.getPaddingBottom() == i2) {
            return;
        }
        TabOperationBar tabOperationBar2 = this.mFootOperationBar;
        tabOperationBar2.setPadding(tabOperationBar2.getPaddingLeft(), this.mFootOperationBar.getPaddingTop(), this.mFootOperationBar.getPaddingRight(), i2);
    }

    private void cancelPendingMediaStoreScan() {
        if (getWindow() == null) {
            return;
        }
        getWindow().getDecorView().removeCallbacks(this.mMediaScanRunnable);
    }

    private void cancelShowMvGuideTip() {
        TabOperationBar tabOperationBar;
        if (this.mShowMvGuideRunnable != null && (tabOperationBar = this.mFootOperationBar) != null && tabOperationBar.getFootItemView(1) != null) {
            this.mFootOperationBar.getFootItemView(1).removeCallbacks(this.mShowMvGuideRunnable);
        }
        this.mShowMvGuideRunnable = null;
    }

    private void changeFragmentContentLayoutBackground() {
        if (this.mFragmentContentLayout == null) {
            return;
        }
        boolean zB = b39.b(this);
        int iResolveOsBgPrimaryColor = 0;
        boolean z = this.mScreenType == BaseConstant.SCREEN_TYPE.TABLE;
        boolean z2 = !zB && this.mIsLoadCustomSkin;
        if (z) {
            if (isOnlineVideoTabPosition()) {
                iResolveOsBgPrimaryColor = getResources().getColor(R.color.online_video_bottom_player_operate_bar, getTheme());
            } else if (!z2) {
                iResolveOsBgPrimaryColor = zB ? this.mFootBarBackground : resolveOsBgPrimaryColor();
            }
            this.mFragmentContentLayout.setBackgroundColor(iResolveOsBgPrimaryColor);
            return;
        }
        if (this.mIsLoadCustomSkin) {
            this.mFragmentContentLayout.setBackgroundColor(0);
            return;
        }
        TypedValue typedValue = new TypedValue();
        if (getTheme().resolveAttribute(android.R.attr.windowBackground, typedValue, true)) {
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.mFragmentContentLayout.setBackgroundResource(i2);
            } else {
                this.mFragmentContentLayout.setBackgroundColor(typedValue.data);
            }
        }
    }

    private void changeLightStatusNavigationBar(boolean z) {
        if (z) {
            return;
        }
        Window window = getWindow();
        if (window == null) {
            Log.e(TAG, "changeLightStatusNavigationBar failed");
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility((z || hasDarkTheme()) ? systemUiVisibility & (-8209) : systemUiVisibility | 8208);
    }

    private void changeTabOperationBarBackground() {
        boolean zB = b39.b(this);
        int iResolveOsBgPrimaryColor = 0;
        boolean z = !zB && this.mIsLoadCustomSkin;
        if (z && this.mBlurView == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.vs_blur_view)).inflate();
            this.mBlurView = viewInflate;
            if (viewInflate != null) {
                ((ShapeBlurView) viewInflate).callDraw();
            }
        }
        View view = this.mBlurView;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        if (this.mFootOperationBar != null) {
            if (isOnlineVideoTabPosition()) {
                iResolveOsBgPrimaryColor = getResources().getColor(R.color.online_video_bottom_player_operate_bar, getTheme());
            } else if (!z) {
                iResolveOsBgPrimaryColor = zB ? this.mFootBarBackground : resolveOsBgPrimaryColor();
            }
            this.mFootOperationBar.setContainerBackgroundColor(iResolveOsBgPrimaryColor);
        }
    }

    public void checkAfterPermissionDialog() {
        if (this.mSuccessWritePermission) {
            checkUpdateDialog();
        }
    }

    private void createGDPR() {
        MarkPointUtil.p(932460000088L, "privacy_policy_cl", "version");
        showGdprDialog();
    }

    public void dismissDolbySplash() {
        if (this.mShowDolbySplash || MainApp.r) {
            MainApp.r = false;
            this.mShowDolbySplash = false;
            w6c.r(this, "need_dolby_splash_show", false);
            View viewFindViewById = findViewById(R.id.dolby_view);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            ViewGroup viewGroup = this.mPlayerLayout;
            if (viewGroup != null) {
                viewGroup.setImportantForAccessibility(0);
            }
            createGDPR();
            showUpdateDialog();
            ImmersionBar.with(this).statusBarDarkFont(!isDarkMode(), 1.0f).init();
            hideNavigationBar(false);
            setNaviColor();
            changeNavigationBarColor();
            fitSystemStatusBar();
            if (MarkPointUtil.c(getApplicationContext()) || UpdateUtils.b(getApplicationContext())) {
                checkFilePermission();
            }
            showMvGuideTip(500L);
            h27.c().e(1176, 500L);
            updatePredictiveBackState();
        }
    }

    private void ensureDataPreloadForTab(int i2) {
        if (i2 == 1) {
            if (this.mAudioDataPreloaded) {
                return;
            }
            this.mAudioDataPreloaded = true;
            preloadAllAudioDataList();
            return;
        }
        if (i2 != 0 || this.mVideoDataPreloaded) {
            return;
        }
        this.mVideoDataPreloaded = true;
        preloadAllVideoDataList();
    }

    private void ensureInAppBackCallback() {
        if (this.mInAppBackCallback != null) {
            return;
        }
        this.mInAppBackCallback = new l(true);
        getOnBackPressedDispatcher().addCallback(this, this.mInAppBackCallback);
    }

    private void fitSystemStatusBar() {
        Log.d(TAG, "fitSystemStatusBar:");
        final boolean zB = b39.b(this);
        Window window = getWindow();
        if (window == null) {
            Log.e(TAG, "fitSystemStatusBar failed");
            return;
        }
        try {
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            changeLightStatusNavigationBar(false);
            window.getDecorView().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$fitSystemStatusBar$21(zB);
                }
            }, 150L);
        } catch (Exception e2) {
            Log.e(TAG, "fitSystemStatusBar " + e2);
        }
    }

    private void flushPendingHaveAudio() {
        getWindow().getDecorView().removeCallbacks(this.mApplyHaveAudioRunnable);
        Boolean bool = this.mPendingHaveAudio;
        if (bool != null) {
            this.hasAllAudioList = bool.booleanValue();
            this.mPendingHaveAudio = null;
        }
    }

    private int getCurrentItem() {
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            return playerMainFragment.F0();
        }
        return 0;
    }

    @SuppressLint({"NonConstantResourceId"})
    private BaseFragment getFragmentByItemId(int i2) {
        BaseFragment baseActivity = this.mMapFragment.get(i2);
        if (baseActivity == null) {
            if (i2 == R.id.nv_movies || i2 == R.id.nv_files) {
                baseActivity = new PlayerMainFragment().setBaseActivity(this);
            }
            this.mMapFragment.put(i2, baseActivity);
        }
        return baseActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int getLogicalMainTabIndex() {
        Integer num;
        MainViewModel mainViewModel = this.mMainViewModel;
        return (mainViewModel == null || (num = (Integer) mainViewModel.b.getValue()) == null) ? Repository.INSTANCE.mainTab : num.intValue();
    }

    public PlayerMainFragment getPlayerMainFragment() {
        BaseFragment baseFragment = this.mMapFragment.get(R.id.nv_files);
        if (baseFragment instanceof PlayerMainFragment) {
            return (PlayerMainFragment) baseFragment;
        }
        return null;
    }

    private int getTabCount() {
        int i2 = this.mHasDownloadFragment ? 4 : 3;
        return this.mHasOnlineVideoFragment ? i2 + 1 : i2;
    }

    private void handleAppFootActionBarClick(int i2) {
        ArrayList<VideoCloudData> arrayList;
        if (i2 != 0) {
            if (i2 == 1 && (arrayList = this.mVideoDataList) != null) {
                az5.h(arrayList.size());
                FileOperateUtils.h0(this, this.mVideoDataList.size(), new f());
                return;
            }
            return;
        }
        if (this.mListFlag == 1001) {
            FileOperateUtils.g0(this.mAllSelected, this, this.mVideoDataList.size(), new e());
        } else {
            markCloudTransmitList(this.mVideoDataList, false);
            new e6b(this, new e6b.c() {
                @Override
                public final void a(boolean z) {
                    this.a.lambda$handleAppFootActionBarClick$34(z);
                }
            }).b(false);
        }
    }

    private void handleDeepLink(Intent intent) {
        Uri data;
        Log.d(TAG, "handleDeepLink " + intent);
        if (intent == null || !"android.intent.action.VIEW".equals(intent.getAction()) || (data = intent.getData()) == null) {
            return;
        }
        String string = data.toString();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!string.equals(this.mLastProcessedUri) || jCurrentTimeMillis - this.mLastProcessedTime >= 1000) {
            this.mLastProcessedUri = string;
            this.mLastProcessedTime = jCurrentTimeMillis;
            Log.i(TAG, "Processing URI: " + string);
            nu1.a.a(this, data);
            return;
        }
        Log.w(TAG, "Duplicate URI ignored: " + string + ", time diff: " + (jCurrentTimeMillis - this.mLastProcessedTime) + "ms");
    }

    private boolean hasDarkTheme() {
        return (getResources().getConfiguration().uiMode & 48) == 32;
    }

    private void hideNavigationBar(boolean z) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z) {
            attributes.systemUiVisibility = 2050;
        } else {
            attributes.systemUiVisibility &= -2051;
        }
        window.setAttributes(attributes);
    }

    private void inflateBubbleText() {
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            playerMainFragment.J0();
        }
    }

    private void inflatePlayerLayout() {
        Log.d(TAG, "inflateFragmentView " + this.mPlayerLayout);
        if (this.mPlayerLayout == null) {
            this.mPlayerLayout = (ViewGroup) ((ViewStub) findViewById(R.id.activity_local_player_layout)).inflate();
        }
        initData(this.mPlayerLayout);
    }

    private void initDolbyView() {
        this.mShowDolbySplash = true;
        w6c.r(this, "need_dolby_splash_show", false);
        View viewInflate = ((ViewStub) findViewById(R.id.dolby_view)).inflate();
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.tv_dolby);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) imageView.getLayoutParams();
        boolean z = pp3.c;
        ((ViewGroup.MarginLayoutParams) layoutParams).width = !z ? c39.a(270.0f) : -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = z ? -2 : c39.a(30.0f);
        layoutParams.setMargins(((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, c39.a(z ? 16.0f : 39.0f));
        imageView.setLayoutParams(layoutParams);
        imageView.setImageDrawable(getDrawable(z ? R.drawable.ic_dolby_log_pre : R.drawable.ic_dolby_log));
        viewInflate.setVisibility(0);
        ViewGroup viewGroup = this.mPlayerLayout;
        if (viewGroup != null) {
            viewGroup.setImportantForAccessibility(4);
        }
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                VideoPlayerMainActivity.lambda$initDolbyView$2(view);
            }
        });
        getWindow().setNavigationBarContrastEnforced(false);
        findViewById(R.id.tv_start).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initDolbyView$3(view);
            }
        });
        updatePredictiveBackState();
    }

    private void initFootOperationBar() {
        this.mFootOperationBar = (TabOperationBar) findViewById(R.id.content_operation_layout);
        checkFootOperationBar();
        this.mFootOperationBar.setOnHeadViewClickListener(this);
        this.mFootOperationBar.setOnFootOptBarClickListener(new TabOperationBar.o() {
            @Override
            public final void onItemClick(int i2) {
                this.a.lambda$initFootOperationBar$11(i2);
            }
        });
    }

    private void initLayoutModel() {
        if (this.mIsEditMode) {
            return;
        }
        BottomBean ottTab = AppLayoutConfigHelper.getInstance().getOttTab();
        if (ottTab == null || AppLayoutConfigHelper.getInstance().getOttChannelsBean() == null) {
            this.mIsInitLayoutModelAndOttNull = true;
        }
        LogUtils.P(TAG, "[OTT] the default position:" + this.mDefaultPosition + " :" + this.mHasOnlineVideoFragment, " bottomBean:" + ottTab);
        if (this.mHasOnlineVideoFragment && ottTab != null && AppLayoutConfigHelper.getInstance().getOttChannelsBean() != null && this.mFootOperationBar.getItemCount() < getTabCount()) {
            this.mFootOperationBar.addItem(new OnlineFootOperationBarImage(ottTab.getUnselectIcon(), ottTab.getUnselectIcon(), ottTab.getIcon(), ottTab.getName(), R.drawable.ic_tab_ott, R.drawable.ic_tab_ott_select), 2);
            if (this.mFromGuide || this.mbSelectedTabFromRouter) {
                this.mFootOperationBar.setItemSelectState(getCurrentItem());
                return;
            }
            setCurrentItem(this.mDefaultPosition);
            this.mFootOperationBar.setItemSelectState(getCurrentItem());
            int i2 = this.mDefaultPosition;
            changeBackgroundForOnlineVideo(i2 == 2, i2);
            switchTabItem(this.mDefaultPosition);
            return;
        }
        if (this.mFootOperationBar.getItemCount() != getTabCount() && !this.mHasOnlineVideoFragment) {
            this.mFootOperationBar.removeItemView(2);
            setCurrentItem(this.mDefaultPosition);
        } else {
            if (this.mHasOnlineVideoFragment || getCurrentItem() != 2) {
                return;
            }
            setCurrentItem(this.mDefaultPosition);
            int i3 = this.mDefaultPosition;
            changeBackgroundForOnlineVideo(i3 == 2, i3);
            changeTabOperationBarItem(getCurrentItem());
        }
    }

    private void initMainViewModel() {
        this.mMainViewModel.c.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initMainViewModel$12((Boolean) obj);
            }
        });
        this.mMainViewModel.d.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initMainViewModel$13((Boolean) obj);
            }
        });
        this.mMainViewModel.f.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initMainViewModel$14((Boolean) obj);
            }
        });
        this.mMainViewModel.j.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                VideoPlayerMainActivity.lambda$initMainViewModel$15((Boolean) obj);
            }
        });
        this.mMainViewModel.a.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initMainViewModel$16((Boolean) obj);
            }
        });
    }

    private void initTUpdate() {
        if (ydc.e()) {
            TUpdate.c.c(se.a()).i(DeviceInfo.e()).j().k(new j()).l();
        }
    }

    @RequiresApi(api = 30)
    private void installMainWindowInsetsListener() {
        getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return this.a.lambda$installMainWindowInsetsListener$20(view, windowInsets);
            }
        });
        requestApplyInsetsSafe();
    }

    private boolean isCurrentPlayingAudio(AudioItem audioItem) {
        if (audioItem == null) {
            return false;
        }
        AudioItem audioItemP = MusicPlayManager.S().P();
        if (audioItemP == null) {
            audioItemP = MusicPlayManager.S().a0();
        }
        return audioItemP != null && audioItemP.id == audioItem.id;
    }

    private boolean isOnlineVideoTabPosition() {
        int logicalMainTabIndex = getLogicalMainTabIndex();
        Log.d(TAG, "isOnlineVideoTabPosition mHasOnlineVideoFragment：" + this.mHasOnlineVideoFragment + " logicalTab：" + logicalMainTabIndex + " viewPagerItem：" + getCurrentItem() + " mOnlineVideoTabPosition：2");
        return this.mHasOnlineVideoFragment && logicalMainTabIndex == 2;
    }

    private boolean isTabFirstLevelForPredictiveBack() {
        if (pp3.u && (MainApp.r || this.mShowDolbySplash)) {
            return false;
        }
        try {
            BaseFragment baseFragment = (BaseFragment) getSupportFragmentManager().getPrimaryNavigationFragment();
            if (baseFragment != null && (baseFragment instanceof PlayerMainFragment)) {
                return ((PlayerMainFragment) baseFragment).L0();
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void lambda$animBar$33() {
        ObjectAnimator objectAnimator = this.miniBarAnim;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
        this.mMiniBarStartRunnable = null;
    }

    public void lambda$createUpdateDialog$6() {
        this.mUpdateDialogShow = false;
        showNewFeatureDialog();
    }

    public static void lambda$didReceivedNotification$17(View view) {
        o5b.f((Context) MainApp.E.get(), null);
    }

    public void lambda$didReceivedNotification$18(View view) {
        o5b.f(this, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void lambda$enterEditMode$40() {
        applyEditFootBarBottomInset(resolveNavigationBarBottom());
        MainViewModel mainViewModel = this.mMainViewModel;
        if (mainViewModel != null) {
            MutableLiveData mutableLiveData = mainViewModel.g;
            mutableLiveData.setValue((Boolean) mutableLiveData.getValue());
        }
    }

    public void lambda$fitSystemStatusBar$21(boolean z) {
        WindowInsets windowInsets;
        int iN = com.transsion.utils.a.n(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fragment_content);
        if (frameLayout != null) {
            frameLayout.setPadding(0, isOnlineVideoTabPosition() ? 0 : iN, 0, 0);
        }
        TabOperationBar tabOperationBar = (TabOperationBar) findViewById(R.id.content_operation_layout);
        if (tabOperationBar != null) {
            int paddingBottom = isTargetSdkAtLeastBaklava() ? tabOperationBar.getPaddingBottom() : 0;
            if (z) {
                iN = 0;
            }
            tabOperationBar.setPadding(0, iN, 0, paddingBottom);
        }
        if (!isTargetSdkAtLeastBaklava() || (windowInsets = this.mWindowInsets) == null || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Insets insets = windowInsets.getInsets(WindowInsets.Type.navigationBars());
        applyTabBarBottomInset(insets.bottom);
        applyEditFootBarBottomInset(insets.bottom);
    }

    public void lambda$handleAppFootActionBarClick$34(boolean z) {
        if (z) {
            CloudFileOperate.getInstance().startBatchDownload(this, this.mVideoDataList);
            h27.c().e(1130, new Object[0]);
        }
    }

    public void lambda$initData$10(Integer num) {
        changeTabOperationBarItem(reCalcFootTabBarIndex(num.intValue()));
        updatePlayerMiniBarLayout();
        updateFragmentContentParams(this.mScreenType);
        updateAudioShortcutNotice(num);
        updatePredictiveBackState();
    }

    public static void lambda$initData$9(View view) {
    }

    public static void lambda$initDolbyView$2(View view) {
    }

    public void lambda$initDolbyView$3(View view) {
        dismissDolbySplash();
    }

    public void lambda$initFootOperationBar$11(int i2) {
        if (!this.mHasOnlineVideoFragment && i2 >= 2) {
            i2++;
        }
        if (i2 != this.mFootOperationBar.getItemCount() - 1 || this.mHasDownloadFragment) {
            switchTabItem(i2);
        } else {
            switchTabItem(i2 + 1);
        }
    }

    public void lambda$initMainViewModel$12(Boolean bool) {
        updateTabOperationBarVisibility();
    }

    public void lambda$initMainViewModel$13(Boolean bool) {
        this.mNavigationFlag = bool.booleanValue() ? this.mNavigationFlag | 16 : this.mNavigationFlag & (-17);
        changeNavigationBarColor();
        updateLayout();
    }

    public void lambda$initMainViewModel$14(Boolean bool) {
        this.mNavigationFlag = bool.booleanValue() && !b39.b(this) ? this.mNavigationFlag | 16 : this.mNavigationFlag & (-17);
        changeNavigationBarColor();
        updateLayout();
    }

    public static void lambda$initMainViewModel$15(Boolean bool) {
    }

    public void lambda$initMainViewModel$16(Boolean bool) {
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            bottomOperateBarLayoutV3.setShouldUpdate(!bool.booleanValue());
            if (bool.booleanValue()) {
                return;
            }
            this.mBottomPlayerLayout.updateState();
        }
    }

    public WindowInsets lambda$installMainWindowInsetsListener$20(View view, WindowInsets windowInsets) {
        this.mWindowInsets = windowInsets;
        setSafeInsetBottom();
        applySafeInsetHorizontal(windowInsets);
        return view.onApplyWindowInsets(windowInsets);
    }

    public void lambda$listenEventKeyChange$22(Boolean bool) {
        this.mNavigationFlag = bool.booleanValue() ? this.mNavigationFlag | 256 : this.mNavigationFlag & (-257);
        changeNavigationBarColor();
    }

    public void lambda$listenEventKeyChange$23(PlayVideoData playVideoData) {
        Log.d(TAG, "[VideoMiniBar]EVENT_KEY_LAUNCH_VIDEO_PLAYER_ACTIVITY");
        animMiniVideoPlayer(false, playVideoData, null);
    }

    public void lambda$listenEventKeyChange$24(Intent intent) {
        Log.d(TAG, "[VideoMiniBar]EVENT_KEY_INTENT_LAUNCH_VIDEO_PLAYER_ACTIVITY");
        animMiniVideoPlayer(false, null, intent);
    }

    public void lambda$listenEventKeyChange$25(Boolean bool) {
        if (this.mBottomPlayerLayout != null) {
            Log.d(TAG, "[MiniBar]EVENT_KEY_FINISH_MEDIA_PLAYER_ACTIVITY");
            if (MusicPlayManager.S().q0()) {
                animMiniAudioPlayer(bool.booleanValue(), null, false);
            } else {
                this.mSkipNextVideoMiniBarShowAnim = bool.booleanValue();
                animMiniVideoPlayer(bool.booleanValue(), null, null);
            }
        }
    }

    public void lambda$listenEventKeyChange$26(PlayAudioData playAudioData) {
        Log.d(TAG, "[AudioMiniBar]EVENT_KEY_LAUNCH_AUDIO_PLAYER_ACTIVITY");
        animMiniAudioPlayer(false, playAudioData, false);
    }

    public void lambda$listenEventKeyChange$27(PlayAudioData playAudioData) {
        animMiniAudioPlayer(false, playAudioData, true);
    }

    public void lambda$listenEventKeyChange$28(AudioItem audioItem) {
        if (isCurrentPlayingAudio(audioItem)) {
            requestBottomAudioCoverUpdate(audioItem, AUDIO_COVER_UPDATE_DELAY_MS);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[AudioMiniBar] ignore cover change of non-playing item, id=");
        sb.append(audioItem == null ? "null" : Integer.valueOf(audioItem.id));
        Log.d(TAG, sb.toString());
    }

    public void lambda$listenEventKeyChange$29(Boolean bool) {
        if (bool == null) {
            return;
        }
        Log.d(TAG, "EVENT_KEY_HAVE_AUDIO , haveAudio = " + bool);
        this.mPendingHaveAudio = bool;
        View decorView = getWindow().getDecorView();
        decorView.removeCallbacks(this.mApplyHaveAudioRunnable);
        decorView.postDelayed(this.mApplyHaveAudioRunnable, 300L);
    }

    public void lambda$listenEventKeyChange$30(Boolean bool) {
        Log.d(TAG, "EVENT_KEY_HAVE_VIDEO , haveVideo = " + bool);
        if (bool.booleanValue() != this.hasAllVideoList) {
            this.hasAllVideoList = bool.booleanValue();
            updatePlayerMiniBarLayout();
        }
    }

    public void lambda$listenEventKeyChange$31(Boolean bool) {
        Log.d(TAG, "EVENT_KEY_SKIP_DOWNLOAD_GUIDE: " + bool);
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            bottomOperateBarLayoutV3.setVisibility(bool.booleanValue() ? 8 : 0);
        }
    }

    public void lambda$listenEventKeyChange$32(Boolean bool) {
        int iF = zdc.f();
        Log.d(TAG, "EVENT_KEY_CHANGE_MINIBAR_STATE: " + bool + ", lastPlayState=" + iF);
        if (this.mBottomPlayerLayout != null) {
            if (!bool.booleanValue()) {
                this.mBottomPlayerLayout.setVisibility(8);
                return;
            }
            if (iF == zdc.b && !this.mBottomPlayerLayout.isAudioShowing()) {
                animMiniAudioPlayer(true, null, false);
            } else {
                if (iF != zdc.a || this.mBottomPlayerLayout.isVideoShowing()) {
                    return;
                }
                animMiniVideoPlayer(true, null, null);
            }
        }
    }

    public static Long lambda$markCloudTransmitList$38(List list, boolean z, List list2) throws Exception {
        return Long.valueOf(cz5.c(list, z));
    }

    public static void lambda$markCloudTransmitList$39(List list, boolean z, Long l2) throws Exception {
        cz5.f(l2.longValue(), list.size(), z);
    }

    public void lambda$migrateDialog$41(View view) {
        this.mMigrationLoading.setVisibility(0);
        this.mMigrationContent.setText(R.string.visha_fun_optimizing);
        this.mMigrationRetry.setVisibility(8);
        MigrationUtils.a.u(1);
        MediaRoomDatabase.i(this);
    }

    public void lambda$new$0() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        updatePlayerMiniBarLayout();
    }

    public void lambda$new$1() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        sLastMediaScanTimeMs = System.currentTimeMillis();
        sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
    }

    public boolean lambda$new$19(Message message) {
        if (message.what != 100) {
            return true;
        }
        recreate();
        return true;
    }

    public void lambda$onItemClick$35() {
        enterEditMode(false);
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            playerMainFragment.startEditMode(false, this.mListFlag, this.mIsVideo);
        }
    }

    public static Integer lambda$onItemClick$36(MediaItem mediaItem) {
        return Integer.valueOf(mediaItem.id);
    }

    public void lambda$showGdprDialog$8(GdprUtil.GDPRConfig gDPRConfig) {
        MarkPointUtil.y(this, getFragmentManager(), true, gDPRConfig);
    }

    public Boolean lambda$showUpdateDialog$4(VideoPlayerMainActivity videoPlayerMainActivity) throws Exception {
        if (!MainApp.p()) {
            return Boolean.FALSE;
        }
        if (DateUtils.isToday(UpdateUtils.d(this)) || MainApp.c) {
            bs8.a = UpdateUtils.e(this);
        } else {
            UpdateUtils.v(this, System.currentTimeMillis());
            bs8.a = UpdateUtils.g(this, false, false);
            StringBuilder sb = new StringBuilder();
            sb.append("has cloud data:");
            sb.append(bs8.a == null);
            Log.i(TAG, sb.toString());
            MainApp.c = true;
        }
        boolean zN = UpdateUtils.n(this, VideoApplication.H);
        if (VideoApplication.H) {
            VideoApplication.H = false;
        }
        return Boolean.valueOf(zN);
    }

    public void lambda$showUpdateDialog$5(Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            showNewFeatureDialog();
            triggerUpgradeSdkCheck();
            return;
        }
        this.mPrivacyAgreed = MarkPointUtil.c(getApplicationContext());
        this.mIsPrivacyEnable = UpdateUtils.b(getApplicationContext());
        LogUtils.v(TAG, "mPrivacyAgreed:" + this.mPrivacyAgreed + ",mIsPrivacyEnable:" + this.mIsPrivacyEnable);
        if (!this.mIsPrivacyEnable && !this.mPrivacyAgreed) {
            this.mWaitShowUpdateDialog = true;
            return;
        }
        createUpdateDialog();
        this.mUpdateDialogShow = true;
        bs8.b();
    }

    private void listenEventKeyChange() {
        LiveEventBus.b().d("bottom_bar_show").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$22((Boolean) obj);
            }
        });
        LiveEventBus.b().d("launch_video_player_activity").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$23((PlayVideoData) obj);
            }
        });
        LiveEventBus.b().d("launch_intent_video_player_activity").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$24((Intent) obj);
            }
        });
        LiveEventBus.b().d("finish_media_player_activity").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$25((Boolean) obj);
            }
        });
        LiveEventBus.b().d("launch_audio_player_activity").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$26((PlayAudioData) obj);
            }
        });
        LiveEventBus.b().d("launch_audio_player_activity_from_audio_list").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$27((PlayAudioData) obj);
            }
        });
        LiveEventBus.b().d("change_audio_cover").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$28((AudioItem) obj);
            }
        });
        LiveEventBus.b().d("have_audio").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$29((Boolean) obj);
            }
        });
        LiveEventBus.b().d("have_video").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$30((Boolean) obj);
            }
        });
        LiveEventBus.b().d("go_download_tab").observe(this, new a());
        LiveEventBus.b().d("video_music_mode_change").observe(this, new b());
        LiveEventBus.b().d("draw_shadow").observe(this, new c());
        LiveEventBus.b().d("skip_download_guide").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$31((Boolean) obj);
            }
        });
        LiveEventBus.b().d("change_minibar_state").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$listenEventKeyChange$32((Boolean) obj);
            }
        });
    }

    @SuppressLint({"CheckResult"})
    public void markCloudTransmitList(final List list, final boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        mc7.K(list).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayerMainActivity.lambda$markCloudTransmitList$38(list, z, (List) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                VideoPlayerMainActivity.lambda$markCloudTransmitList$39(list, z, (Long) obj);
            }
        });
    }

    private void migrateDialog(boolean z) {
        if (this.mMigrationDialog == null) {
            this.mMigrateDialogContentView = View.inflate(this, R.layout.layout_show_migrate_dialog, null);
            this.mMigrationDialog = new com.transsion.widgetslib.dialog.d.a(this).E(this.mMigrateDialogContentView).e(false).f(false).a();
        }
        if (!z) {
            if (!this.mMigrationDialog.isShowing() || isFinishing() || isDestroyed()) {
                return;
            }
            try {
                this.mMigrationDialog.dismiss();
                return;
            } catch (Exception e2) {
                Log.e(TAG, "migrateDialog dismiss failed", e2);
                return;
            }
        }
        this.mMigrationDialog.show();
        this.mMigrationLoading = (OSLoadingView) this.mMigrationDialog.findViewById(R.id.os_loading_view);
        this.mMigrationContent = (TextView) this.mMigrationDialog.findViewById(R.id.show_content);
        this.mMigrationRetry = (TextView) this.mMigrationDialog.findViewById(R.id.retry);
        this.mMigrationContent.setText(R.string.visha_fun_optimizing);
        this.mMigrationRetry.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$migrateDialog$41(view);
            }
        });
        if (MigrationUtils.k()) {
            MediaRoomDatabase.i(this);
        }
    }

    private void onBottomFilterMenuClick() {
        ArrayList<MediaItem> arrayList = this.mSelectItems;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        AudioFilterUtils.k((Set) this.mSelectItems.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaItem) obj).data;
            }
        }).collect(Collectors.toSet()));
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            playerMainFragment.startEditMode(false, this.mListFlag, this.mIsVideo);
        }
        h27.c().e(1109, new Object[0]);
        hb0.markDirect("vd_mul_filt_cl");
    }

    private void onBottomHideMenuCLick() {
        FileOperateUtils fileOperateUtils = new FileOperateUtils(this, this.mSelectItems, this.mListFlag, true);
        this.mHideFileOperateUtils = fileOperateUtils;
        if (pp3.p) {
            fileOperateUtils.x("video_bottom");
        } else {
            fileOperateUtils.V();
        }
        p06.f0(null, "vd_mul_encry_cl", 932460000039L);
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            playerMainFragment.startEditMode(false, this.mListFlag, this.mIsVideo);
        }
        this.mHideFileOperateUtils.f0(new FileOperateUtils.k() {
            @Override
            public void b() {
                PlayerMainFragment playerMainFragment2 = VideoPlayerMainActivity.this.getPlayerMainFragment();
                if (playerMainFragment2 != null) {
                    playerMainFragment2.startEditMode(false, VideoPlayerMainActivity.this.mListFlag, VideoPlayerMainActivity.this.mIsVideo);
                }
            }

            @Override
            public void d() {
            }

            @Override
            public void e() {
                ((BaseShowAudioVideoListActivity) VideoPlayerMainActivity.this).mUpdateDataHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        VideoPlayManager.X().b1();
                        PlayerMainFragment playerMainFragment2 = VideoPlayerMainActivity.this.getPlayerMainFragment();
                        if (playerMainFragment2 != null) {
                            playerMainFragment2.refresh();
                        }
                    }
                }, 300L);
                hb0.markTrackTwo("vd_more_hide_file_add", "from", 2, hb0.KEY_NAME_NUM, Integer.valueOf(VideoPlayerMainActivity.this.mSelectItems.size()));
                if (pp3.p) {
                    h27.c().e(1139, new Object[0]);
                }
            }

            @Override
            public void g(String str, String str2) {
            }
        });
    }

    public void lambda$showTabFromRouter$7(Intent intent) {
        if (intent == null || !intent.getBooleanExtra("appWidget", false)) {
            return;
        }
        h27.c().e(1100, Integer.valueOf(intent.getIntExtra("turn", 0)));
        setIntent(null);
    }

    public void performRefreshData() {
        BaseFragment fragmentByItemId = getFragmentByItemId(R.id.nv_files);
        if (fragmentByItemId != null) {
            fragmentByItemId.refresh();
        }
    }

    private int reCalcFootTabBarIndex(int i2) {
        return (this.mHasOnlineVideoFragment || i2 < 2) ? i2 : i2 - 1;
    }

    private void relayoutPlayerMiniBar(boolean z) {
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bottomOperateBarLayoutV3.getLayoutParams();
            if (z) {
                layoutParams.removeRule(12);
                layoutParams.removeRule(18);
                layoutParams.removeRule(19);
                layoutParams.addRule(2, R.id.container_operation_layout);
            } else if (com.transsion.utils.a.A()) {
                layoutParams.removeRule(2);
                layoutParams.addRule(12);
                int i2 = R.id.fragment_content;
                layoutParams.addRule(18, i2);
                layoutParams.addRule(19, i2);
            } else {
                layoutParams.removeRule(2);
                layoutParams.removeRule(18);
                layoutParams.removeRule(19);
                layoutParams.addRule(12);
            }
            layoutParams.setMarginStart(0);
            layoutParams.setMarginEnd(0);
            this.mBottomPlayerLayout.setLayoutParams(layoutParams);
        }
    }

    private void releaseInAppBackCallback() {
        OnBackPressedCallback onBackPressedCallback = this.mInAppBackCallback;
        if (onBackPressedCallback != null) {
            onBackPressedCallback.remove();
            this.mInAppBackCallback = null;
        }
    }

    private void requestApplyInsetsSafe() {
        try {
            View decorView = getWindow().getDecorView();
            if (decorView != null) {
                decorView.requestApplyInsets();
            }
        } catch (Throwable th) {
            Log.w(TAG, "requestApplyInsetsSafe error: " + th);
        }
    }

    private void requestBottomAudioCoverUpdate(AudioItem audioItem, long j2) {
        if (audioItem != null) {
            this.mPendingAudioCoverItem = audioItem;
        }
        if (this.mPendingAudioCoverItem == null || this.mBottomPlayerLayout == null) {
            return;
        }
        View decorView = getWindow().getDecorView();
        decorView.removeCallbacks(this.mApplyPendingAudioCoverRunnable);
        decorView.postDelayed(this.mApplyPendingAudioCoverRunnable, Math.max(0L, j2));
    }

    private void requestMediaStoreScanIfNeeded() {
        if (System.currentTimeMillis() - sLastMediaScanTimeMs < 60000) {
            return;
        }
        View decorView = getWindow().getDecorView();
        decorView.removeCallbacks(this.mMediaScanRunnable);
        decorView.postDelayed(this.mMediaScanRunnable, 300L);
    }

    private void requestRefreshData() {
        View decorView = getWindow().getDecorView();
        decorView.removeCallbacks(this.mDebouncedRefreshRunnable);
        decorView.postDelayed(this.mDebouncedRefreshRunnable, REFRESH_DEBOUNCE_MS);
    }

    private int resolveNavigationBarBottom() {
        int i2;
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        WindowInsets windowInsets = this.mWindowInsets;
        if (windowInsets != null && (i2 = windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom) > 0) {
            return i2;
        }
        WindowInsets rootWindowInsets = getWindow() != null ? getWindow().getDecorView().getRootWindowInsets() : null;
        if (rootWindowInsets != null) {
            return rootWindowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
        }
        return 0;
    }

    private int resolveOsBgPrimaryColor() {
        TypedValue typedValue = new TypedValue();
        if (getTheme().resolveAttribute(R.attr.OsBgPrimary, typedValue, true)) {
            return typedValue.resourceId != 0 ? getResources().getColor(typedValue.resourceId, getTheme()) : typedValue.data;
        }
        return getResources().getColor(R.color.tab_operation_bar_bg, getTheme());
    }

    private void setCurrentItem(int i2) {
        PlayerMainFragment playerMainFragment = getPlayerMainFragment();
        if (playerMainFragment != null) {
            playerMainFragment.g1(i2, false, "", false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setEditModeFromEditSource() {
        int iIntValue = ((Integer) this.mMainViewModel.e.getValue()).intValue();
        boolean zBooleanValue = ((Boolean) this.mMainViewModel.d.getValue()).booleanValue();
        Log.d(TAG, "editFrom: " + iIntValue + " isEditMode: " + zBooleanValue + " mManualSort: " + this.mManualSort + " mManualSortFrom : " + this.mManualSortFrom);
        if (zBooleanValue && iIntValue != 21) {
            this.mMainViewModel.d.setValue(Boolean.FALSE);
        }
        if (!this.mManualSort || this.mManualSortFrom == 21) {
            return;
        }
        BaseFragment baseFragment = this.mMapFragment.get(R.id.nv_files);
        if (baseFragment instanceof PlayerMainFragment) {
            ((PlayerMainFragment) baseFragment).f1();
        }
        this.mManualSort = false;
    }

    private void setMainTabIndex(int i2) {
        Repository repository = Repository.INSTANCE;
        this.mLastSelectTab = repository.mainTab;
        repository.mainTab = i2;
    }

    private void setNaviColor() {
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.foot_bar_background, typedValue, true);
        this.mActivityNavigationColor = getResources().getColor(typedValue.resourceId);
        getWindow().setNavigationBarColor(this.mActivityNavigationColor);
    }

    private void setPlayerMiniBarMarginBottom(boolean z) {
        TabOperationBar tabOperationBar;
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) bottomOperateBarLayoutV3.getLayoutParams();
        int i2 = 0;
        if (isTargetSdkAtLeastBaklava()) {
            int iResolveNavigationBarBottom = resolveNavigationBarBottom();
            MainViewModel mainViewModel = this.mMainViewModel;
            boolean z2 = mainViewModel != null && Boolean.TRUE.equals(mainViewModel.c.getValue());
            if (!z || (tabOperationBar = this.mFootOperationBar) == null || tabOperationBar.getVisibility() != 0 || !z2) {
                i2 = iResolveNavigationBarBottom;
            }
        }
        if (layoutParams.bottomMargin != i2) {
            layoutParams.bottomMargin = i2;
            this.mBottomPlayerLayout.setLayoutParams(layoutParams);
        }
    }

    private void setSearch() {
        int iA;
        SearchFileView searchFileView = this.mSearchView;
        if (searchFileView == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) searchFileView.getLayoutParams();
        BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
        if (screen_type == BaseConstant.SCREEN_TYPE.TABLE) {
            iA = oc2.a(this, 216.0f);
        } else {
            iA = screen_type != BaseConstant.SCREEN_TYPE.FOLD ? oc2.a(this, 160.0f) : oc2.a(this, 0.0f);
        }
        marginLayoutParams.setMarginStart(iA);
        this.mSearchView.setLayoutParams(marginLayoutParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean shouldShowPlayerMiniBar() {
        boolean zBooleanValue = ((Boolean) this.mMainViewModel.d.getValue()).booleanValue();
        boolean zBooleanValue2 = ((Boolean) this.mMainViewModel.f.getValue()).booleanValue();
        boolean z = this.mManualSort;
        boolean zIsOnlineVideoTabPosition = isOnlineVideoTabPosition();
        int iF = zdc.f();
        boolean z2 = false;
        boolean z3 = (VideoPlayManager.X().A0() || iF == zdc.a) && !PlayListData.getInstance().isCurrentListEmpty();
        boolean z4 = (MusicPlayManager.S().q0() || iF == zdc.b || !(iF == zdc.a || PlayAudioListData.getInstance().playMediaItem() == null)) && !PlayAudioListData.getInstance().isCurrentListEmpty();
        boolean z5 = (zBooleanValue2 || zBooleanValue || z || zIsOnlineVideoTabPosition || (!z3 && !z4)) ? false : true;
        MutableLiveData mutableLiveData = this.mMainViewModel.l;
        if (!zBooleanValue2 && !zBooleanValue && !z && (z3 || z4)) {
            z2 = true;
        }
        mutableLiveData.setValue(Boolean.valueOf(z2));
        Log.i(TAG, "shouldShowBottomOperateBar---->show=" + z5 + ",isEditMode:" + zBooleanValue + ",hasAllAudioList:" + this.hasAllAudioList + " isDragMode " + z + " isOnlineTab:" + zIsOnlineVideoTabPosition + " hasAllVideoList:" + this.hasAllVideoList + " isVideoPlaying:" + z3 + " isAudioPlaying:" + z4);
        return z5;
    }

    private void showBottomOperateBar(boolean z) {
        if (!z) {
            Log.d(TAG, "showBottomOperateBar: hide miniBar");
            this.mBottomPlayerLayout.setVisibility(8);
        } else {
            if (this.mBottomInAnimate) {
                Log.d(TAG, "miniBarAnim isRunning, return");
                return;
            }
            boolean zS0 = MusicPlayManager.S().s0();
            boolean zA0 = VideoPlayManager.X().A0();
            int iF = zdc.f();
            Log.d(TAG, "showBottomOperateBar: isMusicPlaying:" + zS0 + ",isVideoPlaying:" + zA0 + ",lastPlayState:" + iF);
            if (zS0) {
                this.mBottomPlayerLayout.setVisibility(true, true);
            } else if (zA0) {
                this.mBottomPlayerLayout.setVisibility(false, true);
            } else if (iF == zdc.a && !PlayListData.getInstance().isCurrentListEmpty()) {
                Log.d(TAG, "showBottomOperateBar: show video miniBar");
                this.mBottomPlayerLayout.setVisibility(false, true);
            } else if ((iF == zdc.b || !(iF == zdc.a || PlayAudioListData.getInstance().playMediaItem() == null)) && !PlayAudioListData.getInstance().isCurrentListEmpty()) {
                Log.d(TAG, "showBottomOperateBar: show audio miniBar");
                this.mBottomPlayerLayout.setVisibility(true, true);
            } else {
                Log.d(TAG, "showBottomOperateBar: nothing play, hide miniBar");
                this.mBottomPlayerLayout.setVisibility(8);
                z = false;
            }
        }
        this.mMainViewModel.g.postValue(Boolean.valueOf(z));
    }

    private void showGdprDialog() {
        final GdprUtil.GDPRConfig gDPRConfig = new GdprUtil.GDPRConfig();
        gDPRConfig.setIgnoreUserExperience(true);
        gDPRConfig.setGdprStyle(0);
        gDPRConfig.setTitleText(getString(R.string.visha_welcome_to, getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player)));
        gDPRConfig.setContentText(getString(com.transsion.audio.R.string.gdpr_notice_visha_translatable));
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$showGdprDialog$8(gDPRConfig);
            }
        }, 500L);
    }

    private void showMvGuideTip(long j2) {
        TabOperationBar tabOperationBar;
        if (ydc.e()) {
            MMKV.p().y("mmkv_key_show_mv_tip", false);
            return;
        }
        if (!this.mIsFullScreenGuideShow && MMKV.p().e("mmkv_key_show_mv_tip", true)) {
            if ((pp3.u && MainApp.r) || this.mIsShowMVTip || isFinishing() || (tabOperationBar = this.mFootOperationBar) == null || tabOperationBar.getFootItemView(1) == null) {
                return;
            }
            this.mIsShowMVTip = true;
            cancelShowMvGuideTip();
            this.mShowMvGuideRunnable = new Runnable() {
                @Override
                public void run() {
                    try {
                        ea7.p(VideoPlayerMainActivity.this.mFootOperationBar.getFootItemView(1), VideoPlayerMainActivity.this.getResources().getString(R.string.visha_mixed_audio_listen), 48);
                        MMKV.p().y("mmkv_key_show_mv_tip", false);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            };
            this.mFootOperationBar.getFootItemView(1).postDelayed(this.mShowMvGuideRunnable, j2);
            s06.c();
        }
    }

    private void showNewFeatureDialog() {
        if (ge.c() || this.mFromGuide || ydc.e()) {
            return;
        }
        if (!w6c.q(this)) {
            w6c.E(this, true);
            boolean zC = w6c.c(this, "new_version_application_first_start", false);
            ThemeData themeData = (ThemeData) w6c.f(this, "theme_preview_key");
            if (zC) {
                return;
            }
            if (pp3.p || themeData == null) {
                w6c.r(this, "new_version_application_first_start", true);
                return;
            }
            return;
        }
        if (w6c.c(this, "new_feature_poster_dialog_2", true)) {
            w6c.r(this, "new_feature_poster_dialog_2", false);
            if (isOnResumed()) {
                if (pp3.p) {
                    f5.c(new Intent(this, (Class<?>) NewFeatureActivity.class), this);
                } else if (((ThemeData) w6c.f(this, "theme_preview_key")) == null) {
                    f5.c(new Intent(this, (Class<?>) SkinsGuideActivity.class), this);
                }
            }
            w6c.r(this, "new_version_application_first_start", true);
            TaskExecutor.c(new Runnable() {
                @Override
                public void run() {
                    ti5.b(0, VideoPlayerMainActivity.this.getApplicationContext());
                }
            });
        }
    }

    private void showPlayerMainFragment(int i2) {
        a64.l(getFragmentByItemId(i2));
        a64.b(getSupportFragmentManager(), this.mMapFragment.get(R.id.nv_movies), this.mMapFragment.get(R.id.nv_files));
    }

    public void showUpgradeSdkDefaultDialog() {
        Log.i(TAG, "showUpgradeSdkDefaultDialog: ");
        ghb.a().c(this, false);
        Log.i(TAG, "showUpgradeDialog: ");
    }

    private void startOrStopMusicProgress(boolean z) {
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            bottomOperateBarLayoutV3.startOrStopMusicProgress(z);
        }
    }

    public void switchTabItem(int i2) {
        setMainTabIndex(i2);
        PlayerMainFragment playerMainFragment = (PlayerMainFragment) getFragmentByItemId(R.id.nv_files);
        a64.f(this);
        if (playerMainFragment != null) {
            playerMainFragment.c1(i2);
        }
        this.mMainViewModel.b.setValue(Integer.valueOf(i2));
    }

    private void syncCurrentAudioCoverPath(AudioItem audioItem) {
        AudioItem mCurrentMediaItem;
        if (audioItem == null) {
            return;
        }
        String customCoverPath = audioItem.getCustomCoverPath();
        AudioItem audioItemP = MusicPlayManager.S().P();
        if (audioItemP != null && audioItemP.id == audioItem.id) {
            audioItemP.setCustomCoverPath(customCoverPath);
            audioItemP.albumPath = audioItem.albumPath;
        }
        AudioItem audioItemA0 = MusicPlayManager.S().a0();
        if (audioItemA0 != null && audioItemA0.id == audioItem.id) {
            audioItemA0.setCustomCoverPath(customCoverPath);
            audioItemA0.albumPath = audioItem.albumPath;
        }
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 == null || (mCurrentMediaItem = bottomOperateBarLayoutV3.getAudioBar().getMCurrentMediaItem()) == null || mCurrentMediaItem.id != audioItem.id) {
            return;
        }
        mCurrentMediaItem.setCustomCoverPath(customCoverPath);
        mCurrentMediaItem.albumPath = audioItem.albumPath;
    }

    private void triggerUpgradeSdkCheck() {
        if (ge.d()) {
            Log.i(TAG, "triggerUpgradeSdkCheck: ");
            ghb.a().b(this, false, new k());
        }
    }

    private void updateAudioShortcutNotice(Integer num) {
        if (ydc.b || num.intValue() != 1 || num.intValue() == this.mLastSelectTab) {
            return;
        }
        int iG = MMKV.p().g("MMKV_AUDIO_MIAN_SHOW_TIME", 0);
        if (iG < 1) {
            MMKV.p().t("MMKV_AUDIO_MIAN_SHOW_TIME", iG + 1);
        } else {
            if (AudioShortCutHelper.b()) {
                return;
            }
            AudioShortCutHelper.f(true);
            AudioShortCutHelper.g(this, true);
        }
    }

    private void updateEditFootOperationBarParams() {
        if (this.mEditFootOperationBar != null) {
            boolean zB = b39.b(this);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mEditFootOperationBar.getLayoutParams();
            if (zB) {
                layoutParams.removeRule(17);
            } else {
                layoutParams.addRule(17, R.id.container_operation_layout);
            }
            this.mEditFootOperationBar.setLayoutParams(layoutParams);
        }
    }

    private void updateFragmentContentParams(BaseConstant.SCREEN_TYPE screen_type) {
        int iD = 0;
        boolean z = screen_type == BaseConstant.SCREEN_TYPE.FOLD;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mFragmentContentLayout.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.removeRule(2);
        if (z) {
            layoutParams.removeRule(17);
        } else {
            layoutParams.addRule(17, R.id.container_operation_layout);
        }
        if (this.mIsEditMode && !z) {
            iD = com.transsion.utils.a.d(this, 70.0f);
        }
        layoutParams.bottomMargin = iD;
        this.mFragmentContentLayout.setLayoutParams(layoutParams);
    }

    private void updateLayout() {
        updateTabOperationBarVisibility();
        updateMarkViewVisibility();
        updatePlayerMiniBarLayout();
    }

    private void updateLayoutScreenType(BaseConstant.SCREEN_TYPE screen_type) {
        fitSystemStatusBar();
        if (this.mFootOperationBar == null) {
            Log.e(TAG, "updateLayoutScreenType failed");
            return;
        }
        boolean z = screen_type == BaseConstant.SCREEN_TYPE.TABLE;
        boolean z2 = screen_type == BaseConstant.SCREEN_TYPE.FOLD;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mConstraintLayout.getLayoutParams();
        if (z2) {
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.removeRule(2);
            layoutParams.removeRule(20);
            layoutParams.addRule(12);
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
            layoutParams.removeRule(12);
            layoutParams.addRule(20);
        }
        this.mConstraintLayout.setLayoutParams(layoutParams);
        this.mFootOperationBar.changeHeaderViewVisibility((pp3.c || z2 || z) ? 8 : 0);
        this.mFootOperationBar.onScreenTypeChange(screen_type);
        relayoutPlayerMiniBar(z2);
        updateFragmentContentParams(this.mScreenType);
        updateEditFootOperationBarParams();
        updateMarkViewVisibility();
        updateTabOperationBarVisibility();
        changeTabOperationBarBackground();
        updateRightBorder();
        changeFragmentContentLayoutBackground();
        setPlayerMiniBarMarginBottom(z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateMarkViewVisibility() {
        if (this.mMarkView == null) {
            return;
        }
        this.mMarkView.setVisibility((b39.b(this) || !(((Boolean) this.mMainViewModel.d.getValue()).booleanValue() || ((Boolean) this.mMainViewModel.f.getValue()).booleanValue())) ? 8 : 0);
    }

    private void updatePlayerMiniBarLayout() {
        ObjectAnimator objectAnimator;
        flushPendingHaveAudio();
        boolean zShouldShowPlayerMiniBar = shouldShowPlayerMiniBar();
        if (zShouldShowPlayerMiniBar) {
            boolean z = getScreenType() == BaseConstant.SCREEN_TYPE.FOLD;
            relayoutPlayerMiniBar(z);
            startOrStopMusicProgress(this.mActivityStart);
            setPlayerMiniBarMarginBottom(z);
        }
        if (this.mBottomPlayerLayout != null) {
            showBottomOperateBar(zShouldShowPlayerMiniBar);
            if (!zShouldShowPlayerMiniBar || (objectAnimator = this.miniBarAnim) == null || objectAnimator.isRunning()) {
                return;
            }
            this.mBottomPlayerLayout.setTranslationY(0.0f);
        }
    }

    public void updatePredictiveBackState() {
        if (isTabFirstLevelForPredictiveBack()) {
            releaseInAppBackCallback();
        } else {
            ensureInAppBackCallback();
        }
        BaseFragment baseFragment = (BaseFragment) getSupportFragmentManager().getPrimaryNavigationFragment();
        PlayerMainFragment playerMainFragment = baseFragment instanceof PlayerMainFragment ? (PlayerMainFragment) baseFragment : null;
        StringBuilder sb = new StringBuilder();
        sb.append("predictiveBack tabFirstLevel=");
        sb.append(isTabFirstLevelForPredictiveBack());
        sb.append(" primary=");
        sb.append(baseFragment != null ? baseFragment.getClass().getSimpleName() : "null");
        sb.append(" tabFirstPage=");
        sb.append(playerMainFragment != null && playerMainFragment.L0());
        sb.append(" inAppCb=");
        sb.append(this.mInAppBackCallback != null);
        sb.append(" enabledCallbacks=");
        sb.append(getOnBackPressedDispatcher().getHasEnabledCallbacks());
        LogUtils.j(TAG, sb.toString());
    }

    private void updateRightBorder() {
        if (this.mConstraintLayout == null) {
            return;
        }
        boolean z = getScreenType() == BaseConstant.SCREEN_TYPE.TABLE;
        int iApplyDimension = (int) TypedValue.applyDimension(1, 1.0f, this.mConstraintLayout.getResources().getDisplayMetrics());
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(getResources().getColor(R.color.devider_color));
        gradientDrawable.setSize(iApplyDimension, 1);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable});
        layerDrawable.setLayerGravity(0, GravityCompat.END);
        if (z) {
            this.mConstraintLayout.setForeground(layerDrawable);
        } else {
            this.mConstraintLayout.setForeground(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateTabOperationBarVisibility() {
        boolean z;
        if (this.mFootOperationBar == null) {
            return;
        }
        if (b39.b(this)) {
            boolean zBooleanValue = ((Boolean) this.mMainViewModel.c.getValue()).booleanValue();
            boolean z2 = ((Boolean) this.mMainViewModel.d.getValue()).booleanValue() || ((Boolean) this.mMainViewModel.f.getValue()).booleanValue();
            Log.i(TAG, "updateTabOperationBarVisibility " + zBooleanValue + StringUtils.COMMA + z2);
            z = (zBooleanValue || this.mBottomPlayerLayout.isVideoShowing()) ? true : z2;
            this.mFootOperationBar.setAlpha(z2 ? 0.0f : 1.0f);
            this.mFootOperationBar.setVisibility(zBooleanValue ? 0 : 8);
            setPlayerMiniBarMarginBottom(true);
        } else {
            this.mFootOperationBar.setAlpha(1.0f);
            this.mFootOperationBar.setVisibility(0);
            setPlayerMiniBarMarginBottom(false);
            z = true;
        }
        this.mFootOperationBar.initShow(z);
        this.mNavigationFlag = z ? this.mNavigationFlag | 1 : this.mNavigationFlag & (-2);
        changeNavigationBarColor();
    }

    @Override
    public void changeBackgroundForOnlineVideo(boolean z, int i2) {
        if (Build.VERSION.SDK_INT > 30) {
            getWindow().setStatusBarColor(z ? getResources().getColor(R.color.transparent, getTheme()) : this.mActivityStatusBarColor);
        }
        changeNavigationBarColor();
        changeLightStatusNavigationBar(z);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fragment_content);
        if (frameLayout != null) {
            int iN = com.transsion.utils.a.n(this);
            if (isOnlineVideoTabPosition()) {
                iN = 0;
            }
            frameLayout.setPadding(0, iN, 0, 0);
        }
        changeTabOperationBarBackground();
        TabOperationBar tabOperationBar = this.mFootOperationBar;
        if (tabOperationBar != null && i2 < tabOperationBar.getItemCount()) {
            this.mFootOperationBar.changeToDarkMode(z, i2);
        }
        updatePlayerMiniBarLayout();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    public void changeNavigationBarColor() {
        boolean z;
        if (isOnlineVideoTabPosition()) {
            getWindow().setNavigationBarColor(getResources().getColor(R.color.online_video_bottom_player_operate_bar));
            return;
        }
        if (pp3.u && MainApp.r) {
            return;
        }
        boolean z2 = (this.mNavigationFlag & 16777215) == 0;
        if (this.mIsGestureNavigationEnabled) {
            boolean z3 = Boolean.TRUE.equals(this.mMainViewModel.c.getValue()) && b39.b(this);
            if (z2) {
                z = true;
            } else {
                if (!z3) {
                    int i2 = this.mNavigationFlag;
                    if ((i2 & 256) != 0 || (i2 & 4096) != 0) {
                        z = true;
                    }
                }
                z = false;
            }
            WindowCompat.setDecorFitsSystemWindows(getWindow(), !z);
        }
        resetNavigationBarColor((this.mNavigationFlag & 16777215) == 0);
    }

    @Override
    public void changeTabOperationBarItem(int i2) {
        Log.i(TAG, "changeTabOperationBarItem--->tabIndex=" + i2);
        super.changeTabOperationBarItem(i2);
        TabOperationBar tabOperationBar = this.mFootOperationBar;
        if (tabOperationBar == null || tabOperationBar.getItemCount() != getTabCount()) {
            return;
        }
        Log.i(TAG, "changeTabOperationBarItem--->tabIndex=" + i2 + ",mFootOperationBar.getItemCount()=" + this.mFootOperationBar.getItemCount());
        this.mFootOperationBar.setItemSelectState(i2);
    }

    public void checkAfterGpdrDialog() {
        this.mUpdateDataHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                VideoPlayerMainActivity.this.checkAfterPermissionDialog();
            }
        }, 200L);
        notifyOnlineFragment();
    }

    public void checkFootOperationBar() {
        Drawable drawable;
        String string;
        if (this.mFootOperationBar == null || !pp3.w) {
            return;
        }
        try {
            try {
                Log.i(TAG, "checkFootOperationBar " + zz0.d());
                if (zz0.d()) {
                    try {
                        drawable = getResources().getDrawable(R.drawable.icon_cloud_tab, getTheme());
                        string = getString(R.string.visha_cloud_drive);
                    } catch (Resources.NotFoundException e2) {
                        Log.w(TAG, "checkFootOperationBar activity resources missing, use app context", e2);
                        drawable = getApplicationContext().getDrawable(R.drawable.icon_cloud_tab);
                        string = getApplicationContext().getString(R.string.visha_cloud_drive);
                    }
                    if (drawable == null || TextUtils.isEmpty(string)) {
                        return;
                    }
                    this.mFootOperationBar.resetFootBarIconText(drawable, string, 2);
                }
            } catch (Resources.NotFoundException e3) {
                Log.e(TAG, "checkFootOperationBar resource not found", e3);
            }
        } catch (RuntimeException e4) {
            Log.e(TAG, "checkFootOperationBar failed", e4);
        }
    }

    public void checkUpdateDialog() {
        if (this.mWaitShowUpdateDialog) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    VideoPlayerMainActivity.this.createUpdateDialog();
                    VideoPlayerMainActivity.this.mUpdateDialogShow = true;
                    bs8.b();
                    VideoPlayerMainActivity.this.mWaitShowUpdateDialog = false;
                }
            });
        }
    }

    public void createUpdateDialog() {
        new UpdateDialogUtils(new UpdateDialogUtils.b() {
            @Override
            public final void finish() {
                this.a.lambda$createUpdateDialog$6();
            }
        }).b(this, bs8.a);
    }

    public void customTabIconPreload(ThemeData themeData) {
        for (int i2 = 0; i2 < 4; i2++) {
            try {
                Glide.with((FragmentActivity) this).load2(vha.h(themeData, i2)).diskCacheStrategy(DiskCacheStrategy.RESOURCE).preload();
                Log.i(TAG, "saveTab success: " + i2);
            } catch (Exception e2) {
                Log.w(TAG, "saveTab error: " + e2.getMessage());
            }
        }
    }

    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        super.didReceivedNotification(i2, objArr);
        if (i2 == 1112) {
            if (this.mInConvertPage) {
                return;
            }
            WeakReference weakReference = MainApp.E;
            if (weakReference == null || weakReference.get() == null) {
                gq9.a(this, new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.lambda$didReceivedNotification$18(view);
                    }
                }, getResources().getString(R.string.convert_success), getResources().getString(R.string.snackbar_check));
                return;
            } else {
                gq9.a((Activity) MainApp.E.get(), new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        VideoPlayerMainActivity.lambda$didReceivedNotification$17(view);
                    }
                }, getResources().getString(R.string.convert_success), getResources().getString(R.string.snackbar_check));
                return;
            }
        }
        if (i2 == 1070 || i2 == 1149) {
            Log.d(TAG, "[AudioMiniBar]EVENT_MUSIC_NONE,animMiniAudioPlayer");
            showBottomOperateBar(false);
            return;
        }
        if (i2 == 1069) {
            Log.i(TAG, "[AudioMiniBar]EVENT_MUSIC_RESTORE, updatePlayerMiniBarLayout");
            updatePlayerMiniBarLayout();
            return;
        }
        if (i2 == 1142) {
            this.mManualSort = ((Boolean) objArr[0]).booleanValue();
            this.mManualSortFrom = ((Integer) objArr[1]).intValue();
            Log.d(TAG, "EVENT_AUDIO_MANUAL_SORT ,is Manual Sort :" + this.mManualSort + ", from:" + this.mManualSortFrom);
            this.mNavigationFlag = this.mManualSort ? this.mNavigationFlag | 16 : this.mNavigationFlag & (-17);
            changeNavigationBarColor();
            updateLayout();
            return;
        }
        if (i2 == 1028) {
            Log.d(TAG, "EVENT_VIDEO_MUSIC_MODE_STOP");
            showBottomOperateBar(false);
            return;
        }
        if (i2 == 1151) {
            try {
                if (this.mIsInitLayoutModelAndOttNull) {
                    initLayoutModel();
                    return;
                }
                return;
            } catch (Exception e2) {
                Log.e(TAG, "onEventMainThread: ", e2);
                return;
            }
        }
        if (i2 == 1160) {
            Object obj = objArr[0];
            if (obj == null || !(obj instanceof ThemeData)) {
                return;
            }
            customTabIconPreload((ThemeData) obj);
            return;
        }
        if (i2 == 1173) {
            Object obj2 = objArr[0];
            if (obj2 == null || !(obj2 instanceof MediaItem)) {
                return;
            }
            mu3.a.k(this, true, hdb.a(new Object[]{(MediaItem) obj2}));
            return;
        }
        if (i2 == 1181) {
            LogUtils.i(TAG, "[VideoMiniBar]EVENT_KEY_LAUNCH_VIDEO_PLAYER_ACTIVITY_VALUE");
            if (objArr == null || objArr.length <= 0) {
                return;
            }
            Object obj3 = objArr[0];
            if (obj3 instanceof PlayVideoData) {
                animMiniVideoPlayer(false, (PlayVideoData) obj3, null);
                return;
            }
            return;
        }
        if (i2 == 1182) {
            if (objArr == null || objArr.length <= 0) {
                return;
            }
            Object obj4 = objArr[0];
            if (obj4 instanceof Boolean) {
                if (!((Boolean) obj4).booleanValue() || shouldShowPlayerMiniBar()) {
                    animBar(((Boolean) objArr[0]).booleanValue(), false);
                    return;
                } else {
                    Log.d(TAG, "[VideoMiniBar]EVENT_KEY_VIDEO_MINI_BAR_SHOW ignored on OTT/hidden state");
                    return;
                }
            }
            return;
        }
        if (i2 != 1185) {
            if (i2 == 1132) {
                KtShareLinkHandleManager.a.h(this, (String) objArr[0], false, KtShareLinkHandleManager.LinkSource.DEEPLINK);
                return;
            }
            return;
        }
        MigrationUtils migrationUtils = MigrationUtils.a;
        int iF = migrationUtils.f();
        if (iF == 1) {
            migrateDialog(true);
            return;
        }
        if (iF == 2) {
            MediaCombineCacheManager.INSTANCE.getInstance().forceReloadAll();
            migrateDialog(false);
            recreate();
            et.b(this);
            v00.b(this);
            return;
        }
        if (iF != 3) {
            return;
        }
        int iG = migrationUtils.g();
        if (iG != 1) {
            if (iG != 2) {
                if (iG == 3 && MMKV.p().g("mmkv_key_all_migrate_retry_count", 0) > 3) {
                    MMKV.p().y("mmkv_key_audio_is_migrate", false);
                    MMKV.p().y("mmkv_key_video_is_migrate", false);
                    migrateDialog(false);
                    recreate();
                }
            } else if (MMKV.p().g("mmkv_key_video_migrate_retry_count", 0) > 3) {
                MMKV.p().y("mmkv_key_video_is_migrate", false);
                migrateDialog(false);
                recreate();
            }
        } else if (MMKV.p().g("mmkv_key_audio_migrate_retry_count", 0) > 3) {
            MMKV.p().y("mmkv_key_audio_is_migrate", false);
            migrateDialog(false);
            recreate();
        }
        TextView textView = this.mMigrationRetry;
        if (textView == null || this.mMigrationLoading == null || this.mMigrationContent == null) {
            return;
        }
        textView.setVisibility(0);
        this.mMigrationLoading.setVisibility(8);
        this.mMigrationContent.setText(R.string.visha_fun_optimize_failed);
        this.mMigrationDialog.setView(this.mMigrateDialogContentView);
    }

    @Override
    public void enterCloudUploadEditMode(boolean z, int i2) {
        inflateUploadBottomView();
        this.mListFlag = i2;
        this.mCloudUploadView.setVisibility(z ? 0 : 8);
        if (this.mCloudUploadView.getBtnUploadView() != null) {
            this.mCloudUploadView.getBtnUploadView().setOnClickListener(new h());
        }
    }

    @Override
    public void enterEditMode(boolean z, int i2, boolean z2) {
        FrameLayout frameLayout;
        super.enterEditMode(z, i2, z2);
        if (this.mIsEditMode != z && (frameLayout = this.mFragmentContentLayout) != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams.bottomMargin = (!z || b39.b(this)) ? 0 : com.transsion.utils.a.d(this, 70.0f);
            this.mFragmentContentLayout.setLayoutParams(layoutParams);
        }
        this.mIsEditMode = z;
        this.mListFlag = i2;
        this.mIsVideo = z2;
        enterEditMode(z);
    }

    @Override
    public void finishSetWindowBackground() {
        super.finishSetWindowBackground();
        View view = this.mBlurView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        ((ShapeBlurView) this.mBlurView).callDraw();
    }

    public SearchFileView getSearchFileView() {
        if (this.mSearchView == null) {
            this.mSearchView = (SearchFileView) ((ViewStub) findViewById(R.id.search_file_layout)).inflate();
            setSearch();
        }
        return this.mSearchView;
    }

    public void inflateOperationBar() {
        ViewStub viewStub;
        if (this.mEditFootOperationBar != null || (viewStub = (ViewStub) findViewById(R.id.activity_bottom_edit_foot_bar_stub)) == null) {
            return;
        }
        NewAppFootActionBar newAppFootActionBar = (NewAppFootActionBar) viewStub.inflate();
        this.mEditFootOperationBar = newAppFootActionBar;
        newAppFootActionBar.setEnabled(1, this.cacheHideEnable);
        this.mEditFootOperationBar.setEnabled(3, this.cacheHideEnable);
        this.mEditFootOperationBar.setOnFootOptBarClickListener(new g(TAG));
        this.mEditFootOperationBar.setListFlag(this.mListFlag);
        this.mEditFootOperationBar.setAnim(true);
        updateEditFootOperationBarParams();
        if (isTargetSdkAtLeastBaklava()) {
            applyEditFootBarBottomInset(resolveNavigationBarBottom());
        }
    }

    public void inflateUploadBottomView() {
        ViewStub viewStub;
        if (this.mCloudUploadView != null || (viewStub = (ViewStub) findViewById(R.id.upload_bottom_view)) == null) {
            return;
        }
        this.mCloudUploadView = (CloudUploadView) viewStub.inflate();
    }

    public void initData(View view) {
        TabOperationBar tabOperationBar;
        if (view == null) {
            Log.e(TAG, "initData error");
            return;
        }
        this.mFragmentContentLayout = (FrameLayout) view.findViewById(R.id.fragment_content);
        this.mConstraintLayout = (ConstraintLayout) view.findViewById(R.id.container_operation_layout);
        View viewFindViewById = view.findViewById(R.id.mask_view);
        this.mMarkView = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                VideoPlayerMainActivity.lambda$initData$9(view2);
            }
        });
        this.mBottomPlayerLayout = (BottomOperateBarLayoutV3) findViewById(R.id.bottom_player_bar_layout);
        getLifecycle().addObserver(this.mBottomPlayerLayout);
        showPlayerMainFragment(R.id.nv_files);
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(com.transsion.magicvideo.R.attr.foot_bar_background, typedValue, true);
        this.mFootBarBackground = getResources().getColor(typedValue.resourceId);
        initFootOperationBar();
        initLayoutModel();
        if ((!pp3.k || !this.mHasDownloadFragment) && (tabOperationBar = this.mFootOperationBar) != null) {
            tabOperationBar.removeItemView(2);
        }
        this.mMainViewModel.b.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initData$10((Integer) obj);
            }
        });
        setMainTabIndex(this.mDefaultPosition);
        MutableLiveData mutableLiveData = this.mMainViewModel.b;
        Repository repository = Repository.INSTANCE;
        mutableLiveData.setValue(Integer.valueOf(repository.mainTab));
        ensureDataPreloadForTab(repository.mainTab);
        this.mMainViewModel.c.setValue(Boolean.TRUE);
        updateLayoutScreenType(this.mScreenType);
        com.transsion.utils.a.b(this);
        updatePlayerMiniBarLayout();
        initMainViewModel();
        listenEventKeyChange();
        updatePredictiveBackState();
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1112);
        this.mNotifys.add(1142);
        this.mNotifys.add(1070);
        this.mNotifys.add(1069);
        this.mNotifys.add(1149);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED));
        this.mNotifys.add(1151);
        this.mNotifys.add(1160);
        this.mNotifys.add(1173);
        this.mNotifys.add(1181);
        this.mNotifys.add(1182);
        this.mNotifys.add(1185);
        this.mNotifys.add(1132);
    }

    public boolean isHistoryEdit() {
        int i2 = this.mListFlag;
        return i2 == 1 || i2 == 32;
    }

    public void notifyOnlineFragment() {
        BaseFragment baseFragment = this.mMapFragment.get(R.id.nv_files);
        if (baseFragment instanceof PlayerMainFragment) {
            ((PlayerMainFragment) baseFragment).b1();
        }
    }

    @Override
    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
        FileOperateUtils fileOperateUtils;
        super.onActivityResult(i2, i3, intent);
        if (i3 == -1) {
            if (i2 == 1247) {
                PlayerMainFragment playerMainFragment = getPlayerMainFragment();
                if (playerMainFragment != null) {
                    playerMainFragment.startEditMode(false, this.mListFlag, this.mIsVideo);
                    return;
                }
                return;
            }
            if (i2 == 1246 && pp3.p && (fileOperateUtils = this.mHideFileOperateUtils) != null) {
                fileOperateUtils.x("video");
            }
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        fitSystemStatusBar();
    }

    @Override
    public void onBackNavigationStateChanged() {
        updatePredictiveBackState();
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mUpdateDialogShow) {
            createUpdateDialog();
        }
        if (MarkPointUtil.j(getFragmentManager()) && !MarkPointUtil.c(this)) {
            MarkPointUtil.v(getFragmentManager());
            showGdprDialog();
        }
        this.mFootOperationBar.setItemSelectState(reCalcFootTabBarIndex(getCurrentItem()));
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            bottomOperateBarLayoutV3.updateState();
        }
        if (com.transsion.utils.a.v(this)) {
            com.transsion.utils.a.b(this);
            updateLayoutScreenType(this.mScreenType);
            changeFragmentContentLayoutBackground();
        }
        updatePlayerMiniBarLayout();
        if (Build.VERSION.SDK_INT >= 30) {
            requestApplyInsetsSafe();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        LogUtils.j(TAG, "onCreate");
        this.mVideoDataListModel = (VideoDataListModel) getViewModel(VideoDataListModel.class);
        this.mAudioDataListModel = (AudioDataListModel) getViewModel(AudioDataListModel.class);
        super.onCreate(bundle);
        boolean z = pp3.u;
        if (z && MainApp.r) {
            ImmersionBar.with(this).transparentNavigationBar().init();
        }
        if (pp3.x(getApplicationContext()) && !isTargetSdkAtLeastBaklava()) {
            ((ViewGroup) findViewById(android.R.id.content)).setPadding(0, 0, 0, 0);
        }
        if (z && MainApp.r) {
            hideNavigationBar(true);
        }
        setContentView(R.layout.activity_local_player);
        if (Build.VERSION.SDK_INT > 29) {
            installMainWindowInsetsListener();
        }
        if (!this.mIsLoadCustomSkin) {
            try {
                getWindow().setBackgroundDrawableResource(com.transsion.playercommon.R.drawable.os_window_background);
            } catch (Exception e2) {
                Log.e(TAG, "setBackground failed", e2);
            }
        }
        this.mIsDelayRequestPermission = true;
        this.mHasOnlineVideoFragment = w6c.c(this, w6c.a, false);
        this.mHasDownloadFragment = w6c.c(this, w6c.b, true);
        this.mDefaultPosition = w6c.d(this, w6c.e, this.mHasOnlineVideoFragment ? 2 : 0);
        Log.d(TAG, "[OTT] the default position:" + this.mDefaultPosition + ", has online video fragment:" + this.mHasOnlineVideoFragment);
        MainViewModel mainViewModel = (MainViewModel) getViewModel(MainViewModel.class);
        this.mMainViewModel = mainViewModel;
        MutableLiveData mutableLiveData = mainViewModel.d;
        Boolean bool = Boolean.FALSE;
        mutableLiveData.setValue(bool);
        this.mMainViewModel.f.setValue(bool);
        inflatePlayerLayout();
        xn9 xn9VarC = xn9.c();
        this.mSkinChangeUtils = xn9VarC;
        xn9VarC.f(this.mListener);
        if (this.mSkinChangeUtils.d()) {
            se.b().postDelayed(this.mFinishchangeRunnable, 100L);
        }
        DeviceInfo.e();
        MMKV.p().w("vishaStart", it1.c(OSDateTimePicker.FORMAT_Y_M_D));
        initTUpdate();
        if (pp3.u && MainApp.r) {
            initDolbyView();
        } else {
            createGDPR();
            showUpdateDialog();
            setNaviColor();
        }
        handleDeepLink(getIntent());
        LiveEventBus.b().d("show_full_screen_guide").observe(this, new i());
        Log.i(TAG, "onResume: isMigrate = " + MigrationUtils.k() + ", checkOldDatabaseExists = " + MigrationUtils.e());
        if (MigrationUtils.k() && MigrationUtils.e()) {
            MigrationUtils.a.u(1);
            h27.c().e(1185, new Object[0]);
        }
    }

    @Override
    public void onDestroy() {
        Log.d(TAG, "onDestroy ");
        releaseInAppBackCallback();
        ObjectAnimator objectAnimator = this.miniBarAnim;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.miniBarAnim.cancel();
            this.miniBarAnim = null;
        }
        this.mReCreateHandler.removeMessages(100);
        this.mMapFragment.clear();
        a64.b(getSupportFragmentManager(), new BaseFragment[0]);
        com.blankj.utilcode.util.a.i(this);
        super.onDestroy();
        xn9 xn9Var = this.mSkinChangeUtils;
        if (xn9Var != null) {
            xn9Var.e(this.mListener);
        }
        sg9.e("audio").n("audio_play_list_status", false);
        if (this.mBottomPlayerLayout != null) {
            getLifecycle().removeObserver(this.mBottomPlayerLayout);
        }
        getWindow().getDecorView().removeCallbacks(this.mApplyPendingAudioCoverRunnable);
        getWindow().getDecorView().removeCallbacks(this.mApplyHaveAudioRunnable);
        this.mPendingAudioCoverItem = null;
        this.mPendingHaveAudio = null;
        o5b.i();
        cl4.f().c();
        cl4.f().r();
        AdsDataManager.n().A();
        AgentWebUtils.dismiss();
        se.b().removeCallbacks(this.mFinishchangeRunnable);
        ObjectAnimator objectAnimator2 = this.miniBarAnim;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllListeners();
            this.miniBarAnim.cancel();
        }
        ThreadUtils.o().removeCallbacksAndMessages(null);
        this.mFootOperationBar.setOnFootOptBarClickListener(null);
        this.mFootOperationBar.setOnHeadViewClickListener(null);
    }

    @Override
    public void onEjected(String str) {
        Log.d(TAG, "onEjected unMountPoint:" + str);
        requestRefreshData();
    }

    @Override
    public void onFinishRequestPermission(int i2, boolean z) {
        FileOperateUtils fileOperateUtils;
        super.onFinishRequestPermission(i2, z);
        if (!z) {
            if (i2 == 1238 || i2 == 1239) {
                ToastUtils.s(com.transsion.playercommon.R.string.operation_fail);
                return;
            }
            return;
        }
        if (i2 == 1239) {
            FileOperateUtils fileOperateUtils2 = this.mFileOperateUtils;
            if (fileOperateUtils2 != null) {
                fileOperateUtils2.A();
                return;
            }
            return;
        }
        if (i2 != 1246 || (fileOperateUtils = this.mFileOperateUtils) == null) {
            return;
        }
        fileOperateUtils.m0();
    }

    @Override
    public void onHeaderClick() {
        switchTabItem(0);
        changeTabOperationBarItem(0);
    }

    @Override
    public void onItemClick(int i2) {
        int i3 = this.mListFlag;
        if (i3 == 1001 || i3 == 1000) {
            this.mEditFootOperationBar.setSelectItems(this.mVideoDataList);
            handleAppFootActionBarClick(i2);
        } else {
            this.mEditFootOperationBar.setSelectItems(this.mSelectItems);
            i2 = this.mEditFootOperationBar.checkItemIndex(i2);
        }
        this.mEditFootOperationBar.setOperateFinishListener(new AppFootActionBar.c() {
            @Override
            public final void finish() {
                this.a.lambda$onItemClick$35();
            }
        });
        int i4 = this.mListFlag;
        if (i4 == 1000 || i4 == 1001) {
            return;
        }
        if (i2 == 0) {
            if (isHistoryEdit()) {
                h27.c().e(1183, new Object[0]);
                return;
            } else {
                this.mEditFootOperationBar.preShare(false);
                p06.f0(null, "vd_mul_share_cl", 932460000041L);
                return;
            }
        }
        if (i2 == 1) {
            if (this.mIsVideo) {
                onBottomHideMenuCLick();
                return;
            } else {
                onBottomFilterMenuClick();
                return;
            }
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this, this.mSelectItems, i4, true);
            this.mFileOperateUtils = fileOperateUtils;
            this.mEditFootOperationBar.setFileOperateUtils(fileOperateUtils);
            this.mEditFootOperationBar.preDelete(0, this.mSelectItems, this.mIsVideo);
            LiveEventBus.b().c("bottom_delete_menu", Boolean.TRUE);
            kz5.b("vd_mul_del_cl", this.mIsVideo, this.mSelectItems.size());
            return;
        }
        ArrayList<MediaItem> arrayList = this.mSelectItems;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<Integer> arrayList2 = (ArrayList) this.mSelectItems.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayerMainActivity.lambda$onItemClick$36((MediaItem) obj);
            }
        }).collect(Collectors.toList());
        Intent intent = new Intent();
        if (this.mIsVideo) {
            intent.putIntegerArrayListExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList2);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.mListFlag);
            vg9.g(this.mVideoPlayListBucket);
            vg9.h(this.mSelectItems);
            intent.setClass(this, VideoSheetDialogActivity.class);
        } else {
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_DATA_LIST_IDS, arrayList2);
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.mListFlag);
            vg9.e(this.mAudioPlayListBucket);
            vg9.f(this.mSelectItems);
            intent.setClass(this, AudioSheetDialogActivity.class);
        }
        f5.b(intent, 1247, this);
        p06.f0(null, "vd_mul_addlist_cl", 9324L);
    }

    public void onMainTabSelected(int i2) {
        ensureDataPreloadForTab(i2);
    }

    @Override
    public void onMoreClick() {
        super.onMoreClick();
    }

    @Override
    public void onMounted(String str) {
        Log.d(TAG, "onMounted mountPoint:" + str);
        requestRefreshData();
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (Build.VERSION.SDK_INT >= 30) {
            setSafeInsetBottom();
            applySafeInsetHorizontal(this.mWindowInsets);
            requestApplyInsetsSafe();
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        af9.e = System.currentTimeMillis();
        lambda$showTabFromRouter$7(intent);
        handleDeepLink(getIntent());
    }

    @Override
    public void onPause() {
        super.onPause();
        cancelShowMvGuideTip();
        this.mPendingResumeAudioCoverUpdate = false;
        getWindow().getDecorView().removeCallbacks(this.mApplyPendingAudioCoverRunnable);
        if (Build.VERSION.SDK_INT > 29) {
            getWindow().getDecorView().setOnApplyWindowInsetsListener(null);
        } else {
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
        }
    }

    @Override
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (t08.b(this)) {
            vf.f(this);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        LogUtils.j(TAG, "MainActivity onResume");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 29) {
            installMainWindowInsetsListener();
        } else {
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        }
        if (MarkPointUtil.j(getFragmentManager()) && MarkPointUtil.c(this)) {
            Log.d(TAG, "onResume: hide because has been grant");
            MarkPointUtil.v(getFragmentManager());
        }
        if (!this.mPrivacyAgreed && !this.mIsPrivacyEnable) {
            this.mPrivacyAgreed = MarkPointUtil.c(getApplicationContext());
            notifyOnlineFragment();
        }
        if (getIntent() != null) {
            showTabFromRouter(getIntent());
        }
        lambda$showTabFromRouter$7(getIntent());
        if (com.transsion.utils.a.v(this)) {
            this.hasAllVideoList = !VideoPlayManager.X().b0().getPlayList().isEmpty();
            com.transsion.utils.a.b(this);
            updateLayoutScreenType(this.mScreenType);
            changeFragmentContentLayoutBackground();
            if (i2 >= 30) {
                requestApplyInsetsSafe();
            }
        }
        updatePlayerMiniBarLayout();
        BottomOperateBarLayoutV3 bottomOperateBarLayoutV3 = this.mBottomPlayerLayout;
        if (bottomOperateBarLayoutV3 != null) {
            bottomOperateBarLayoutV3.updateState();
        }
        if (hasWindowFocus()) {
            requestBottomAudioCoverUpdate(null, 0L);
        } else {
            this.mPendingResumeAudioCoverUpdate = true;
        }
        String string = dy0.b().toString();
        LogUtils.j(TAG, "clipboard:" + string);
        if (!TextUtils.isEmpty(string) && string.length() < 4096) {
            KtShareLinkHandleManager ktShareLinkHandleManager = KtShareLinkHandleManager.a;
            if (ktShareLinkHandleManager.k(string)) {
                ktShareLinkHandleManager.h(this, string, true, KtShareLinkHandleManager.LinkSource.CLIPBOARD);
            }
        }
        if (w6c.c(this, "onback_from_play_video", false)) {
            if (this.mIsDrawShadow) {
                return;
            }
            GpReviewUtils.g(this);
            w6c.r(this, "onback_from_play_video", false);
        }
        getWindow().getDecorView().post(new b3c(this));
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onScreenTypeChange(screen_type);
        this.mScreenType = screen_type;
        updateLayoutScreenType(screen_type);
        setSearch();
    }

    @Override
    public void onSdSwap() {
        Log.d(TAG, "onSdSwap ");
        requestRefreshData();
    }

    @Override
    public void onStart() {
        super.onStart();
        getWindow().getDecorView().post(new b3c(this));
        requestMediaStoreScanIfNeeded();
        startOrStopMusicProgress(true);
    }

    @Override
    public void onStop() {
        cancelPendingMediaStoreScan();
        getWindow().getDecorView().removeCallbacks(this.mDebouncedRefreshRunnable);
        super.onStop();
        startOrStopMusicProgress(false);
    }

    @Override
    public void onSystemUiVisibilityChange(int i2) {
        super.onSystemUiVisibilityChange(i2);
        this.mHaveNar = i2 == 0;
        setPlayerMiniBarMarginBottom(this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD);
    }

    @Override
    public void onUnMounted(String str) {
        Log.d(TAG, "onUnMounted unMountPoint:" + str);
        requestRefreshData();
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        LogUtils.j("APP_START", "MainActivity onWindowFocusChanged, hasFocus = " + z);
        if (!z) {
            cancelShowMvGuideTip();
            return;
        }
        showMvGuideTip(200L);
        if (this.mPendingResumeAudioCoverUpdate) {
            this.mPendingResumeAudioCoverUpdate = false;
            requestBottomAudioCoverUpdate(null, 0L);
        }
        if (pp3.u && MainApp.r) {
            return;
        }
        h27.c().e(1176, 200L);
    }

    @SuppressLint({"CheckResult"})
    public void preloadAllAudioDataList() {
        Log.d(TAG, "preloadAllAudioDataList start");
        AudioDataListModel audioDataListModel = this.mAudioDataListModel;
        if (audioDataListModel != null) {
            audioDataListModel.h();
        }
    }

    @SuppressLint({"CheckResult"})
    public void preloadAllVideoDataList() {
        Log.d(TAG, "preloadAllVideoDataList start ");
        VideoDataListModel videoDataListModel = this.mVideoDataListModel;
        if (videoDataListModel != null) {
            videoDataListModel.k();
        }
    }

    @Override
    public void selectItems(ArrayList arrayList, boolean z, boolean z2) {
        super.selectItems(arrayList, z, z2);
        int i2 = this.mListFlag;
        if (i2 == 1000 || i2 == 1002 || i2 == 1001) {
            this.mAllSelected = z;
            this.mVideoDataList = arrayList;
        } else {
            this.mSelectItems = arrayList;
        }
        if (this.mEditFootOperationBar != null) {
            boolean z3 = (arrayList.isEmpty() || z2) ? false : true;
            this.mEditFootOperationBar.setAllEnable(z3);
            if (!z3 || arrayList.isEmpty() || !(arrayList.get(0) instanceof MediaItem) || AudioItemAdapter.I(arrayList)) {
                return;
            }
            arrayList.size();
        }
    }

    @Override
    public void setEnabled(int i2, boolean z) {
        NewAppFootActionBar newAppFootActionBar = this.mEditFootOperationBar;
        if (newAppFootActionBar != null) {
            newAppFootActionBar.setEnabled(i2, z);
            this.cacheHideEnable = z;
        }
    }

    @Override
    public void setInConvertPage(boolean z) {
        this.mInConvertPage = z;
    }

    @RequiresApi(api = 30)
    public void setSafeInsetBottom() {
        WindowInsets windowInsets = this.mWindowInsets;
        if (windowInsets != null) {
            this.mHaveNar = windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom != 0;
            setPlayerMiniBarMarginBottom(this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD);
        }
        changeLightStatusNavigationBar(false);
    }

    public void showSearchFragment() {
        a64.n(new SearchCloudFragment().setBaseActivity(this), true, false);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00cc  */
    public void showTabFromRouter(final Intent intent) {
        RouterBean.RouterData routerData;
        int bottom_position;
        int top_position;
        int bottom_position2;
        this.mbSelectedTabFromRouter = intent.getBooleanExtra(RouterUtils.FROM_ROUTER, false);
        Log.d(TAG, "showTabFromRouter: mbSelectedTabFromRouter " + this.mbSelectedTabFromRouter);
        if (!this.mbSelectedTabFromRouter) {
            Bundle extras = getIntent().getExtras();
            if (extras != null && extras.getBoolean("jump_to_specified_location", false)) {
                int i2 = extras.getInt("bottomIndex");
                int i3 = extras.getInt("topIndex");
                String string = extras.getString("jump_from");
                Log.i(TAG, "jumpTpLocation bottomIndex:" + i2 + ",topIndex:" + i3);
                BaseFragment baseFragment = this.mMapFragment.get(R.id.nv_files);
                this.mMainViewModel.f.setValue(Boolean.FALSE);
                setMainTabIndex(i2);
                this.mMainViewModel.b.setValue(Integer.valueOf(i2));
                if (baseFragment instanceof PlayerMainFragment) {
                    a64.l(baseFragment);
                    ((PlayerMainFragment) baseFragment).k1(i2, i3, string);
                    return;
                }
                return;
            }
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra(RouterUtils.ROUTER_DATA);
        if (bundleExtra != null) {
            RouterBean.RouterData routerData2 = (RouterBean.RouterData) bundleExtra.getParcelable(RouterUtils.ROUTER_DATA);
            if (routerData2 != null) {
                bottom_position = routerData2.getBottom_position();
                top_position = routerData2.getTop_position();
                this.mFromSource = routerData2.getFrom_page();
                if (!TextUtils.isEmpty(routerData2.getHintMessage())) {
                    ToastUtils.w(routerData2.getHintMessage());
                }
            } else {
                bottom_position = 0;
                top_position = 0;
            }
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra(RouterUtils.ROUTER_DATA);
            if (parcelableExtra instanceof RouterBean.RouterData) {
                RouterBean.RouterData routerData3 = (RouterBean.RouterData) parcelableExtra;
                bottom_position2 = routerData3.getBottom_position();
                top_position = routerData3.getTop_position();
                this.mFromSource = routerData3.getFrom_page();
                if (!TextUtils.isEmpty(routerData3.getHintMessage())) {
                    ToastUtils.w(routerData3.getHintMessage());
                }
            } else if (parcelableExtra instanceof PersistableBundle) {
                PersistableBundle persistableBundle = (PersistableBundle) parcelableExtra;
                bottom_position2 = persistableBundle.getInt(RouterUtils.ROUTER_DATA_BOTTOM_POSITION);
                top_position = persistableBundle.getInt(RouterUtils.ROUTER_DATA_TOP_POSITION);
                setEditModeFromEditSource();
                sy5.a();
                this.mFromSource = "shortcut";
            } else if (!(parcelableExtra instanceof Bundle) || (routerData = (RouterBean.RouterData) ((Bundle) parcelableExtra).getParcelable(RouterUtils.ROUTER_DATA)) == null) {
                bottom_position = 0;
                top_position = 0;
            } else {
                bottom_position = routerData.getBottom_position();
                top_position = routerData.getTop_position();
                this.mFromSource = routerData.getFrom_page();
                if (!TextUtils.isEmpty(routerData.getHintMessage())) {
                    ToastUtils.w(routerData.getHintMessage());
                }
            }
            bottom_position = bottom_position2;
        }
        Log.d(TAG, "showTabFromRouter: bottomIndex " + bottom_position + "topIndex " + top_position);
        BaseFragment baseFragment2 = this.mMapFragment.get(R.id.nv_files);
        this.mFromGuide = true;
        this.mMainViewModel.f.setValue(Boolean.FALSE);
        setMainTabIndex(bottom_position);
        this.mMainViewModel.b.setValue(Integer.valueOf(bottom_position));
        if (baseFragment2 instanceof PlayerMainFragment) {
            a64.l(baseFragment2);
            ((PlayerMainFragment) baseFragment2).k1(bottom_position, top_position, this.mFromSource);
        }
        if (intent.getBooleanExtra("com.transsion.magicshow.OPEN_AUDIO", false) && MusicPlayManager.S().r0() && MusicPlayManager.S().O() != null) {
            PlayAudioData playAudioDataO = MusicPlayManager.S().O();
            Intent intent2 = new Intent(this, (Class<?>) AudioPlayerActivity.class);
            intent2.setAction("com.transsion.magicshow.OPEN_AUDIO");
            intent2.setPackage(se.a().getPackageName());
            if (playAudioDataO != null) {
                playAudioDataO.toIntent(intent2);
            }
            f5.c(intent2, this);
        }
        if (intent.getBooleanExtra("appWidget", false)) {
            se.b().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$showTabFromRouter$7(intent);
                }
            }, 500L);
        }
        setIntent(null);
    }

    @SuppressLint({"CheckResult"})
    public void showUpdateDialog() {
        if (MainApp.p()) {
            mc7.K(this).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.lambda$showUpdateDialog$4((VideoPlayerMainActivity) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) throws Exception {
                    this.b.lambda$showUpdateDialog$5((Boolean) obj);
                }
            });
        } else {
            showNewFeatureDialog();
        }
    }

    @Override
    public void successWritePermissionOnce() {
        super.successWritePermissionOnce();
        this.mSuccessWritePermission = true;
        Log.d(TAG, "successWritePermissionOnce");
    }

    @Override
    public void triggerMenuSwitch(int i2) {
        super.triggerMenuSwitch(i2);
    }

    @Override
    public void enterEditMode(boolean z) {
        int i2 = this.mListFlag;
        if (i2 == 1003) {
            this.mBottomPlayerLayout.setVisibility(z ? 8 : 0);
            return;
        }
        if (!pp3.w && (i2 == 1000 || i2 == 1001)) {
            this.mBottomPlayerLayout.setVisibility(z ? 8 : 0);
            return;
        }
        inflateOperationBar();
        this.mEditFootOperationBar.initShow(z);
        this.mEditFootOperationBar.setVisibility(z ? 0 : 8);
        this.mEditFootOperationBar.setListFlag(this.mListFlag);
        if (z && isTargetSdkAtLeastBaklava()) {
            applyEditFootBarBottomInset(resolveNavigationBarBottom());
            this.mEditFootOperationBar.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$enterEditMode$40();
                }
            });
        }
    }
}

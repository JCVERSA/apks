package com.transsion.magicvideo.widgets;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.alibaba.android.arouter.utils.Consts;
import com.avery.subtitle.widget.TracksSubtitleView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.tencent.mmkv.MMKV;
import com.transsion.LongClickListener;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.athena.data.TrackData;
import com.transsion.cloud_drive.base.api.model.FileVideoPlayInfoResult;
import com.transsion.cloud_drive.base.api.model.FileVideoTemplate;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.DownloadVideoRecommend;
import com.transsion.dbdata.beans.NewFeatureAdvertise;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayItemInfo;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.MyTransitionListener;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.FarvoritesActivity;
import com.transsion.magicvideo.activities.SubtitleManagerActivity;
import com.transsion.magicvideo.activities.SubtitleSettingActivity;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.adapter.AudioTrackItemAdapter;
import com.transsion.magicvideo.adapter.MediaResolutionItemAdapter;
import com.transsion.magicvideo.adapter.TemplateItemAdapter;
import com.transsion.magicvideo.adapter.VideoSettingLoopAdapter;
import com.transsion.magicvideo.adapter.VideoSettingSelectAdapter;
import com.transsion.magicvideo.data.VideoSettingItem;
import com.transsion.magicvideo.model.VideoControlModel;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.ICloudFileService;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.magicvideo.subtitle.language.SubtitleAILanguageSelectView;
import com.transsion.magicvideo.subtitle.settings.SubtitleLocalSelectView;
import com.transsion.magicvideo.subtitle.settings.SubtitleSelectView;
import com.transsion.magicvideo.subtitle.widgets.AISubtitleVideoView;
import com.transsion.magicvideo.subtitle.widgets.SubtitleVideoView;
import com.transsion.magicvideo.widgets.GuideViews.GuideView;
import com.transsion.magicvideo.widgets.VideoPlayerContentView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BaseFoldActivity;
import com.transsion.playercommon.activities.MediaInfoSheetDialogActivity;
import com.transsion.playercommon.activities.MediaOperateMenuDialogActivity;
import com.transsion.playercommon.adapter.SettingMenuAdapter;
import com.transsion.playercommon.adapter.SpeedAdapter;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.SettingMenu;
import com.transsion.playercommon.data.Speed;
import com.transsion.playercommon.mimedia.CloudMediaPlayInfoManager;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.utils.MediaVolumeManager;
import com.transsion.playercommon.utils.VideoOrientationHelper;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.playercommon.widgets.CustomOsSeekbar;
import com.transsion.playercommon.widgets.CustomTimePicker;
import com.transsion.playercommon.widgets.MediaBottomControllerLayout;
import com.transsion.playercommon.widgets.SeekView;
import com.transsion.playercommon.widgets.VideoPlayerSpeedChooserView;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.InterceptLinearLayout;
import com.transsion.widgets.LongClickImageView;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.a16;
import defpackage.a64;
import defpackage.af9;
import defpackage.ao;
import defpackage.av3;
import defpackage.ay9;
import defpackage.bd4;
import defpackage.cd;
import defpackage.cz5;
import defpackage.di1;
import defpackage.dw6;
import defpackage.dz5;
import defpackage.e07;
import defpackage.euc;
import defpackage.ew4;
import defpackage.ez5;
import defpackage.f16;
import defpackage.f5;
import defpackage.fsb;
import defpackage.ge;
import defpackage.gpb;
import defpackage.h06;
import defpackage.h16;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hk3;
import defpackage.hsb;
import defpackage.ifc;
import defpackage.j16;
import defpackage.jdc;
import defpackage.jrb;
import defpackage.jxb;
import defpackage.jz5;
import defpackage.k29;
import defpackage.k38;
import defpackage.k57;
import defpackage.k6a;
import defpackage.kc3;
import defpackage.kz5;
import defpackage.l06;
import defpackage.l6a;
import defpackage.l9;
import defpackage.lc3;
import defpackage.lpb;
import defpackage.lz5;
import defpackage.m16;
import defpackage.mb8;
import defpackage.mc7;
import defpackage.n16;
import defpackage.n7c;
import defpackage.ny5;
import defpackage.o06;
import defpackage.o16;
import defpackage.o18;
import defpackage.o5b;
import defpackage.oc2;
import defpackage.os8;
import defpackage.ow2;
import defpackage.oz5;
import defpackage.p06;
import defpackage.pp3;
import defpackage.pw2;
import defpackage.pz6;
import defpackage.qqb;
import defpackage.r0a;
import defpackage.raa;
import defpackage.rr3;
import defpackage.rtb;
import defpackage.ry5;
import defpackage.se;
import defpackage.sn5;
import defpackage.suc;
import defpackage.t74;
import defpackage.tpb;
import defpackage.tw6;
import defpackage.uib;
import defpackage.vb;
import defpackage.vk1;
import defpackage.vz6;
import defpackage.w5a;
import defpackage.w6c;
import defpackage.wna;
import defpackage.woc;
import defpackage.wy5;
import defpackage.ydc;
import defpackage.yp;
import defpackage.z7c;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.Predicate;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.mozilla.javascript.ES6Iterator;

public class VideoPlayerContentView extends ConstraintLayout implements h27.b {
    public static final int[] INVALIDATE_IDS = {-1, 0};
    public boolean A;
    public int A0;
    public boolean B;
    public boolean B0;
    public VideoPlayerMediaView C;
    public boolean C0;
    public BaseActivity D;
    public boolean D0;
    public Runnable D6;
    public Context E;
    public boolean E0;
    public View E6;
    public int F;
    public boolean F0;
    public InterceptLinearLayout F6;
    public VideoPlayManager G;
    public boolean G0;
    public boolean G1;
    public final TouchWindowLayout.c G2;
    public final VideoPlayManager.d G3;
    public final Runnable G6;
    public SurfaceHolder H;
    public boolean H0;
    public final Runnable H6;
    public com.transsion.widgetslib.dialog.d I;
    public boolean I0;
    public final ContentObserver I6;
    public int J;
    public boolean J0;
    public IntercepMotionLayout J6;
    public VideoLoadingView K;
    public boolean K0;
    public View K6;
    public View L;
    public boolean L0;
    public ImageView L6;
    public TextView M;
    public int M0;
    public TextView M6;
    public vz6 N;
    public int N0;
    public Button N6;
    public boolean O;
    public long O0;
    public Button O6;
    public boolean P;
    public long P0;
    public Button P6;
    public final int[] Q;
    public Vibrator Q0;
    public com.transsion.widgetslib.dialog.d Q6;
    public final int[] R;
    public boolean R0;
    public final int[] S;
    public final boolean S0;
    public String T;
    public boolean T0;
    public Uri U;
    public boolean U0;
    public int V;
    public SubtitleVideoView V0;
    public AISubtitleLottieAnimationView V1;
    public final Observer V2;
    public MediaItem W;
    public AISubtitleVideoView W0;
    public SubtitleSettingData X0;
    public float Y0;
    public float Z0;
    public boolean a0;
    public boolean a1;
    public PlayVideoData b;
    public boolean b0;
    public boolean b1;
    public VideoTouchLayoutNew c;
    public boolean c0;
    public double c1;
    public Toast d;
    public boolean d0;
    public VideoSubtitleViewModel d1;
    public OSIconTextView e;
    public boolean e0;
    public final List e1;
    public VideoTouchPlayUIDisplayView f;
    public int f0;
    public final List f1;
    public ActivityResultLauncher f2;
    public final VideoTouchPlayUI.a f3;
    public final Runnable f4;
    public VideoRetreatForwardLayout g;
    public int g0;
    public SubtitleTrackInfo g1;
    public int h;
    public int h0;
    public SubtitleTrackInfo h1;
    public View i;
    public com.transsion.magicvideo.widgets.a i0;
    public boolean i1;
    public View j;
    public MusicModelMainLayout j0;
    public int j1;
    public View k;
    public View k0;
    public boolean k1;
    public RelativeLayout k2;
    public tw6 k3;
    public final VideoPlayerMediaView.d k4;
    public MediaItem k5;
    public Runnable k6;
    public ViewStub l;
    public int l0;
    public FileOperateUtils l1;
    public ViewStub m;
    public woc m0;
    public boolean m1;
    public boolean mHadCheckResolution;
    public boolean mHadShowBlockTip;
    public Runnable mTimerUpdateRunnable;
    public boolean mWillShowBitrateTip;
    public MotionLayout n;
    public final Observer n0;
    public SeekBar n1;
    public View o;
    public VideoPlayerSpeedChooserView o0;
    public ViewStub o1;
    public Guideline p;
    public Guideline p0;
    public WindowInfoViewModel p1;
    public ew4 p2;
    public final FileOperateUtils.m p3;
    public final SubtitleSelectView.c p4;
    public final Runnable p5;
    public final PlayerViewController.b p6;
    public VideoSettingsDialogConstraintLayout q;
    public OSSeekbar q0;
    public VideoControlModel q1;
    public MIMediaVideoPlayInfo q2;
    public final VideoPlayManager.d q3;
    public final Handler q4;
    public boolean q5;
    public final PlayerViewController.d q6;
    public Guideline r;
    public ImageView r0;
    public ObjectAnimator r1;
    public Guideline s;
    public LinearLayout s0;
    public boolean s1;
    public RelativeLayout t;
    public LinearLayout t0;
    public boolean t1;
    public Handler timerHandler;
    public RelativeLayout u;
    public TextView u0;
    public final PlayListData v;
    public View v0;
    public boolean w;
    public TextView w0;
    public boolean x;
    public TextView x0;
    public boolean x1;
    public final Observer x2;
    public boolean y;
    public o18 y0;
    public boolean y1;
    public final Observer y2;
    public boolean z;
    public int z0;

    class AnonymousClass21 extends TaskExecutor.Task<Void> {
        final MediaItem val$mediaItem;
        final PlayerStates val$playStates;
        final PlayVideoData val$videoData;

        public AnonymousClass21(PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
            this.val$videoData = playVideoData;
            this.val$mediaItem = mediaItem;
            this.val$playStates = playerStates;
        }

        @Override
        public Void onBackground() {
            if (this.val$videoData == null || this.val$mediaItem == null) {
                return null;
            }
            tpb.j0().B(this.val$videoData, this.val$mediaItem, this.val$playStates);
            return null;
        }
    }

    public class a extends MyTransitionListener {
        public a() {
        }

        @Override
        public void onTransitionCompleted(MotionLayout motionLayout, int i) {
            VideoPlayerContentView.this.H7();
        }
    }

    public class a0 implements TouchWindowLayout.c {
        public a0() {
        }

        @Override
        public void a() {
            if (VideoPlayerContentView.this.G.A0()) {
                p06.f0(null, "vd_cp_gesture_doubletap_pause", 9324L);
            } else {
                p06.f0(null, "vd_cp_gesture_doubletap_play", 9324L);
            }
            VideoPlayerContentView.this.t8();
        }

        @Override
        public void b(boolean z) {
            VideoPlayerContentView.this.B7(z, false);
        }

        @Override
        public void c(int i, boolean z) {
            if (VideoPlayerContentView.this.G.A0()) {
                if (!VideoPlayerContentView.this.L0) {
                    VideoPlayerContentView.this.L0 = true;
                    VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                    videoPlayerContentView.M0 = videoPlayerContentView.G.S();
                    p06.d0("vd_cp_lp");
                    p06.d0("vd_cp_lp_disc_show");
                }
                if (VideoPlayerContentView.this.N0 != i) {
                    VideoPlayerContentView.this.N0 = i;
                    if (VideoPlayerContentView.this.c != null) {
                        VideoPlayerContentView.this.c.K(false);
                    }
                    VideoPlayerContentView.this.a4();
                    if (VideoPlayerContentView.this.o0 != null) {
                        VideoPlayerContentView.this.o0.setSpeedLayout(VideoPlayerContentView.this.V4(), z);
                        VideoPlayerContentView.P7(VideoPlayerContentView.this.o0, 0);
                        VideoPlayerContentView.this.o0.setSpeedState(i);
                    }
                    float fFloatValue = ((Float) mb8.c().b().get(i)).floatValue();
                    VideoPlayerContentView.this.G.d2(fFloatValue);
                    VideoPlayerContentView.this.V0.setSpeed(fFloatValue);
                    VideoPlayerContentView.this.W8();
                    p06.t(fFloatValue);
                }
                VideoPlayerContentView.this.C.hideScaleStateView();
            }
        }

        @Override
        public void d() {
            VideoPlayerContentView.this.O3();
            p06.s(VideoPlayerContentView.this.G.S() - VideoPlayerContentView.this.M0, !VideoPlayerContentView.this.w ? 1 : 0);
            float fI = w6c.i(VideoPlayerContentView.this.E);
            VideoPlayerContentView.this.G.d2(fI);
            VideoPlayerContentView.this.V0.setSpeed(fI);
        }

        @Override
        public void e() {
            if (VideoPlayerContentView.this.G.A0()) {
                if (!VideoPlayerContentView.this.L0 && mb8.c().d()) {
                    VideoPlayerContentView.this.W8();
                    VideoPlayerContentView.this.L0 = true;
                    VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                    videoPlayerContentView.M0 = videoPlayerContentView.G.S();
                    p06.d0("vd_cp_lp");
                    VideoPlayerContentView.this.G.d2(2.0f);
                    VideoPlayerContentView.this.V0.setSpeed(2.0f);
                    if (VideoPlayerContentView.this.c != null) {
                        VideoPlayerContentView.this.c.K(false);
                    }
                    VideoPlayerContentView.this.a4();
                    if (VideoPlayerContentView.this.o0 != null) {
                        VideoPlayerContentView.P7(VideoPlayerContentView.this.o0, 0);
                        VideoPlayerContentView.this.o0.setSpeedState(-1);
                    }
                }
                VideoPlayerContentView.this.C.hideScaleStateView();
            }
        }

        @Override
        public void f(boolean z, boolean z2) {
            VideoPlayerContentView.this.B7(z, z2);
        }
    }

    public class b implements VideoPlayerMediaView.d {
        public b() {
        }

        @Override
        public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            Log.d("VideoPlayerContentView", "onSurfaceChanged " + surfaceHolder + StringUtils.COMMA + i2 + StringUtils.COMMA + i3);
        }

        @Override
        public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
            FrameLayout frameLayout;
            Log.d("VideoPlayerContentView", "onSurfaceCreated " + surfaceHolder);
            VideoPlayerContentView.this.H = surfaceHolder;
            if (VideoPlayerContentView.this.G != null) {
                VideoPlayerContentView.this.G.S1(VideoPlayerContentView.this.H, true);
                VideoPlayerContentView.this.G.L(-1, VideoPlayerContentView.this);
            }
            if (pp3.j() && (frameLayout = (FrameLayout) VideoPlayerContentView.this.findViewById(R.id.ll_video_gestures_guide)) != null && frameLayout.getVisibility() == 0) {
                VideoPlayerContentView.this.G.i1(false);
            }
        }

        @Override
        public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.d("VideoPlayerContentView", "onSurfaceDestroyed " + surfaceHolder);
            if (VideoPlayerContentView.this.G != null) {
                VideoPlayerContentView.this.G.S1(surfaceHolder, false);
            }
            VideoPlayerContentView.this.H = null;
        }
    }

    public class b0 extends os8 {
        public b0() {
        }

        @Override
        public void onClick() {
            if (VideoPlayerContentView.this.w) {
                return;
            }
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.v4(videoPlayerContentView.isHorizontalShowDialog());
        }
    }

    public class c implements SubtitleSelectView.c {
        public c() {
        }

        @Override
        public void a(int i) {
            VideoPlayerContentView.this.Q4(i);
            hb0.markDirect("vd_cp_subtitle_pop_close");
        }

        @Override
        public void b() {
            VideoPlayerContentView.this.i1 = true;
            Intent intent = new Intent(VideoPlayerContentView.this.D, (Class<?>) SubtitleManagerActivity.class);
            intent.putExtra("video_name", VideoPlayerContentView.this.T);
            intent.putExtra("media_id", VideoPlayerContentView.this.v.playMediaItem().id);
            intent.putExtra("data", VideoPlayerContentView.this.W.data);
            f5.b(intent, BaseConstant.c, VideoPlayerContentView.this.D);
            f16.g(2);
        }

        @Override
        public void c(int i) {
            VideoPlayerContentView.this.F7(true, false, true, i);
        }

        @Override
        public void d(SubtitleTrackInfo subtitleTrackInfo, int i) {
            VideoPlayerContentView.this.y1 = true;
            VideoPlayerContentView.this.I3(i, subtitleTrackInfo, 0.0f, false);
            p06.d0("vd_cp_setting_sub_path_cl");
        }
    }

    public class c0 implements View.OnClickListener {
        public c0() {
        }

        @Override
        public void onClick(View view) {
            VideoPlayerContentView.this.Q7();
            p06.d0("vd_video_losub_tran");
        }
    }

    public class d implements VideoRetreatForwardLayout.a {
        public d() {
        }

        @Override
        public void dismiss() {
            VideoPlayerContentView.this.f.h0();
            if (!VideoPlayerContentView.this.E0) {
                VideoPlayerContentView.this.h8();
            } else if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.K(false);
            }
        }

        @Override
        public void show() {
            VideoPlayerContentView.this.f.j0();
        }
    }

    public class d0 extends LongClickListener {
        public final Switch a;
        public final boolean b;
        public final View c;

        public d0(Switch r2, boolean z, View view) {
            this.a = r2;
            this.b = z;
            this.c = view;
        }

        @Override
        public void cancelLongClickCallback() {
            if (VideoPlayerContentView.this.R4(this.a)) {
                return;
            }
            VideoPlayerContentView.this.D7(this.b, true, this.c);
            f16.h((this.b ? VideoPlayerContentView.this.Y0 : VideoPlayerContentView.this.Z0) / 1000.0f, (this.b ? VideoPlayerContentView.this.g1 : VideoPlayerContentView.this.h1).path, this.b ? 1 : 2);
        }

        @Override
        public void longClickCallback() {
            if (VideoPlayerContentView.this.R4(this.a)) {
                return;
            }
            VideoPlayerContentView.this.updateTracksDelay(this.b, true, this.c);
        }
    }

    public class e implements TouchWindowLayout.g {
        public e() {
        }

        @Override
        public void a() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            if (videoPlayerContentView.q5) {
                return;
            }
            videoPlayerContentView.t8();
        }

        @Override
        public void b(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            o06.e(o06.e);
            o06.f();
            VideoPlayerContentView.this.q4();
            VideoPlayerContentView.this.y7();
            Log.d("VideoPlayerContentView", "onVideoSelected position:" + i + ",current index:" + VideoPlayerContentView.this.v.playIndex());
            if (VideoPlayerContentView.this.v.playIndex() != i) {
                VideoPlayerContentView.this.G.z1(true);
                VideoPlayerContentView.this.G.v1(i, true, true);
                VideoPlayerContentView.this.v.setPlayMediaItem(i);
                VideoPlayerContentView.this.H8();
                baseQuickAdapter.notifyDataSetChanged();
                TrackData trackData = new TrackData();
                ArrayList<MediaItem> playList = VideoPlayerContentView.this.v.getPlayList();
                trackData.add(hb0.KEY_NAME_NUM, playList == null ? 0 : playList.size());
                trackData.add("rotate_status", VideoPlayerContentView.this.G.G());
                trackData.add("queue", i);
                trackData.add("order_by", p06.s0(true));
                Bundle bundle = new Bundle();
                bundle.putInt(hb0.KEY_NAME_NUM, playList != null ? playList.size() : 0);
                bundle.putInt("rotate_status", VideoPlayerContentView.this.G.G());
                bundle.putInt("queue", i);
                bundle.putString("order_by", p06.s0(true));
                p06.q0(trackData, bundle, "vd_cp_playlist_video_cl", 9324L);
            }
            PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(VideoPlayerContentView.this.v.playMediaItem());
            if (playVideoDataConvertToPlayVideoData != null) {
                VideoPlayerContentView.this.b = playVideoDataConvertToPlayVideoData;
            }
            if (VideoPlayerContentView.this.C == null || VideoPlayerContentView.this.b == null || !pp3.w()) {
                return;
            }
            VideoPlayerContentView.this.C.setVideoViewSize(VideoPlayerContentView.this.b.videoWidth, VideoPlayerContentView.this.b.videoHeight);
        }

        @Override
        public void c() {
            VideoPlayerContentView.this.onPlayStatusEnd();
        }

        @Override
        public void d() {
            n16.a aVar = n16.a;
            aVar.a("video_play_rorate", VideoPlayerContentView.this.b);
            aVar.a((VideoPlayerContentView.this.D.getRequestedOrientation() == 6 || VideoPlayerContentView.this.D.getRequestedOrientation() == 0) ? "rotate_vert_play" : "rotate_hori_play", VideoPlayerContentView.this.b);
            VideoPlayerContentView.this.a0 = false;
            VideoPlayerContentView.this.K7();
        }

        @Override
        public void e() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.V = (videoPlayerContentView.V + 1) % 3;
            Log.d("VideoPlayerContentView", "videoPlaySizeFit " + VideoPlayerContentView.this.V);
            int[] iArr = VideoPlayerContentView.this.S;
            VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
            int i = iArr[videoPlayerContentView2.V];
            videoPlayerContentView2.showTextToast(videoPlayerContentView2.getResources().getString(VideoPlayerContentView.this.R[VideoPlayerContentView.this.V]));
            rtb.p(VideoPlayerContentView.this.C, i);
            if (pp3.w()) {
                VideoPlayerContentView.this.G.E2(i);
            }
            p06.g0(null, "video_play_scale_switch");
            n16.a.a("video_play_size_fit", VideoPlayerContentView.this.b);
            if (VideoPlayerContentView.this.W != null) {
                j16.e(i, VideoPlayerContentView.this.W.getVideoRatio());
            }
        }

        @Override
        public void f() {
            p06.g0(null, "video_play_previous");
            VideoPlayerContentView.this.s7();
        }

        @Override
        public void g(RouterBean routerBean) {
            VideoPlayerContentView.this.k7();
            n16.a.b("video_play_back", VideoPlayerContentView.this.G.T());
        }

        @Override
        public void h() {
            MIMediaInfo miMediaInfo;
            try {
                Log.d("VideoPlayerContentView", "startDownloadVideo " + VideoPlayerContentView.this.b);
                if (VideoPlayerContentView.this.b != null && VideoPlayerContentView.this.b.getMiMediaInfo() != null && (miMediaInfo = VideoPlayerContentView.this.b.getMiMediaInfo()) != null && miMediaInfo.getMiMediaVideoPlayItemInfo() != null) {
                    Log.i("VideoPlayerContentView", "startDownloadVideo " + miMediaInfo);
                    try {
                        ICloudFileService iCloudFileService = (ICloudFileService) ARouter.getInstance().navigation(ICloudFileService.class);
                        if (iCloudFileService != null) {
                            iCloudFileService.startDownload(miMediaInfo);
                            Log.i("VideoPlayerContentView", "Started miMedia video download: " + miMediaInfo);
                        } else {
                            Log.e("VideoPlayerContentView", "Failed to get cloud file service");
                        }
                    } catch (Exception e) {
                        Log.e("VideoPlayerContentView", "Error downloading miMedia video: " + e.getMessage());
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                Log.e("VideoPlayerContentView", "startDownloadVideo " + e2);
            }
        }

        @Override
        public void i() {
            if (VideoPlayerContentView.this.b == null) {
                Log.w("VideoPlayerContentView", "videoToMusicMode mVideoData == null");
                return;
            }
            boolean z = VideoPlayerContentView.this.G.g0() == -1;
            boolean z2 = VideoPlayerContentView.this.W != null && VideoPlayerContentView.this.W.isYoutubeUrl;
            if (z || (euc.a(VideoPlayerContentView.this.E) && z2)) {
                LogUtils.j("VideoPlayerContentView", "can not switch to music mode, state = " + VideoPlayerContentView.this.G.g0());
                return;
            }
            if (VideoPlayerContentView.this.b.isPrivate) {
                ToastUtils.s(R.string.privacy_video_setting_toast);
                return;
            }
            if (VideoPlayerContentView.this.G.O() <= 0) {
                ToastUtils.s(R.string.video_has_no_audio);
                return;
            }
            if (VideoPlayManager.X().O) {
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.updateVolumeIcon(false);
                }
                VideoPlayManager.X().Z1(false);
            }
            VideoPlayerContentView.this.p3.d();
            p06.j0("video_play_background");
            j16.c(VideoPlayerContentView.this.b.isFromNet, VideoPlayerContentView.this.G.V(), VideoPlayerContentView.this.W != null ? VideoPlayerContentView.this.W.displayName : "");
        }

        @Override
        public void j() {
            VideoPlayerContentView.this.T7();
        }

        @Override
        public void k() {
            if (VideoPlayerContentView.this.b == null) {
                Log.w("VideoPlayerContentView", "videoPlayPicInPic mVideoData == null");
                return;
            }
            n16.a.a("video_play_pic_in_pic", VideoPlayerContentView.this.b);
            VideoPlayerContentView.this.S3(false);
            if (VideoPlayerContentView.this.b.isPrivate) {
                ToastUtils.s(R.string.privacy_video_setting_toast);
            }
        }

        @Override
        public void l() {
            VideoPlayerContentView.this.j8(true);
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.g0 = videoPlayerContentView.getResources().getConfiguration().orientation;
            VideoPlayerContentView.this.D.requestedChangeOrientation(VideoPlayerContentView.this.g0 == 2 ? 6 : 7);
            VideoPlayerContentView.this.p4();
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.K(true);
            }
            if (defpackage.w.h() && VideoPlayerContentView.this.W0 != null) {
                VideoPlayerContentView.this.W0.showSettingView(false);
            }
            VideoPlayerContentView.this.f.setmUnLockListener(new TouchWindowLayout.f() {
                @Override
                public final void a() {
                    this.a.r();
                }
            });
            VideoPlayerContentView.this.N8();
            n16.a.b("video_play_lock", VideoPlayerContentView.this.G.T());
        }

        @Override
        public void m() {
            VideoPlayerContentView.this.onSpeedClicked();
        }

        @Override
        public void n() {
            p06.g0(null, "video_play_next");
            VideoPlayerContentView.this.playNextVideo(true);
        }

        @Override
        public void o() {
            VideoPlayerContentView.this.s4();
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.K(false);
                VideoPlayerContentView.this.c.t();
            }
            View videoSettingContentView = VideoPlayerContentView.this.getVideoSettingContentView();
            if (videoSettingContentView == null) {
                Log.w("VideoPlayerContentView", "videoPlaySetting: contentView is null");
                return;
            }
            if (VideoPlayerContentView.this.d0) {
                p06.d0("video_play_background_more_show");
            }
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.showSettingsLayout(videoSettingContentView, videoPlayerContentView.v.playMediaItem(), VideoPlayerContentView.this.b == null || VideoPlayerContentView.this.b.isFromNet);
            VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
            videoPlayerContentView2.showSettingDialogView(videoPlayerContentView2.isHorizontalShowDialog(), videoSettingContentView);
            n16.a.a("video_play_setting", VideoPlayerContentView.this.b);
        }

        @Override
        public void p() {
            VideoPlayerContentView.this.s4();
            l06.a = 0;
            VideoPlayerContentView.this.Y7(false);
        }

        public final void r() {
            if (VideoPlayerContentView.this.d5()) {
                VideoPlayerContentView.this.j8(false);
            } else {
                VideoPlayerContentView.this.j8(true);
                VideoPlayerContentView.this.p4();
            }
        }
    }

    public class e0 extends LongClickListener {
        public final Switch a;
        public final boolean b;
        public final View c;

        public e0(Switch r2, boolean z, View view) {
            this.a = r2;
            this.b = z;
            this.c = view;
        }

        @Override
        public void cancelLongClickCallback() {
            if (VideoPlayerContentView.this.R4(this.a)) {
                return;
            }
            VideoPlayerContentView.this.D7(this.b, false, this.c);
            f16.h((this.b ? VideoPlayerContentView.this.Y0 : VideoPlayerContentView.this.Z0) / 1000.0f, (this.b ? VideoPlayerContentView.this.g1 : VideoPlayerContentView.this.h1).path, this.b ? 1 : 2);
        }

        @Override
        public void longClickCallback() {
            if (VideoPlayerContentView.this.R4(this.a)) {
                return;
            }
            VideoPlayerContentView.this.updateTracksDelay(this.b, false, this.c);
        }
    }

    public class f extends os8 {
        public f() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.v4(videoPlayerContentView.isHorizontalShowDialog());
        }
    }

    public class f0 implements o18.b {
        public f0() {
        }

        @Override
        public void a() {
            if (System.currentTimeMillis() - af9.d < 1200) {
                af9.d = System.currentTimeMillis();
                return;
            }
            if (VideoPlayerContentView.this.v.hasNext()) {
                VideoPlayerContentView.this.G.p1(true);
            }
            p06.l0(ES6Iterator.NEXT_METHOD);
        }

        @Override
        public void b() {
            if (System.currentTimeMillis() - af9.d < 1200) {
                af9.d = System.currentTimeMillis();
            } else {
                VideoPlayerContentView.this.s7();
                p06.l0("pre");
            }
        }

        @Override
        public void c() {
            String str = VideoPlayerContentView.this.E0 ? "pause" : PlayAudioData.TAG_NEED_PLAY;
            VideoPlayerContentView.this.t8();
            p06.l0(str);
        }
    }

    public class g implements CustomOsSeekbar.f {
        public final CustomOsSeekbar a;
        public final TextView b;

        public g(CustomOsSeekbar customOsSeekbar, TextView textView) {
            this.a = customOsSeekbar;
            this.b = textView;
        }

        @Override
        public void onProgressChanged(CustomOsSeekbar customOsSeekbar, int i, float f, boolean z) {
            pw2.d(i);
            if (this.a.getMax() > 0.0f) {
                this.b.setText(NumberFormat.getPercentInstance().format(f / this.a.getMax()));
            }
        }

        @Override
        public void onStartTrackingTouch(CustomOsSeekbar customOsSeekbar) {
        }

        @Override
        public void onStopTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            ow2.b(pw2.b());
        }
    }

    public class g0 extends ContentObserver {
        public g0(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            if (VideoPlayerContentView.this.W == null || uri == null) {
                return;
            }
            if (uri.equals(VideoPlayerContentView.this.W.getUri())) {
                Log.i("VideoPlayerContentView", "onChange " + uri);
                VideoPlayerContentView.this.Q3();
                return;
            }
            String string = uri.toString();
            String string2 = VideoPlayerContentView.this.W.getUri() != null ? VideoPlayerContentView.this.W.getUri().toString() : "";
            if (string2.startsWith(String.valueOf(MediaStore.Files.getContentUri("external"))) || string2.startsWith(String.valueOf(MediaStore.Files.getContentUri("internal")))) {
                String strReplaceFirst = string2.replaceFirst("/file", "/video/media");
                Log.i("VideoPlayerContentView", "onChange playUriStr:" + strReplaceFirst);
                if (string.equals(strReplaceFirst)) {
                    VideoPlayerContentView.this.Q3();
                }
            }
        }
    }

    public class h extends os8 {
        public h() {
        }

        @Override
        public void onClick() {
            raa.f(VideoPlayerContentView.this.D);
        }
    }

    public class h0 extends os8 {
        public h0() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView.this.G.p2(true, true);
            VideoPlayerContentView.P7(VideoPlayerContentView.this.J6, 8);
        }
    }

    public class i implements MusicModeLayout.b {
        public i() {
        }

        @Override
        public void a() {
            VideoPlayerContentView.this.farYoutube();
            lz5.h(VideoPlayerContentView.this.U0 ? 1 : 0);
        }

        @Override
        public void b() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.f2.launch(MediaInfoSheetDialogActivity.o0(videoPlayerContentView.E, VideoPlayerContentView.this.W, 2));
        }

        @Override
        public void c() {
            if (VideoPlayerContentView.this.W == null || VideoPlayerContentView.this.W.data == null || !lpb.i(VideoPlayerContentView.this.W)) {
                ToastUtils.s(R.string.trans_mp3_error1);
            } else if (VideoPlayerContentView.this.d0 && VideoPlayerContentView.this.G.O() == 0) {
                ToastUtils.s(R.string.video_has_no_audio);
                return;
            } else {
                h16.e("听视频");
                o5b.j((BaseActivity) VideoPlayerContentView.this.E, VideoPlayerContentView.this.W);
            }
            hb0.markDirect("video_play_background_tomp3");
        }

        @Override
        public void d() {
            VideoPlayerContentView.this.showEq();
        }

        @Override
        public void e() {
            if (VideoPlayerContentView.this.b != null) {
                VideoPlayerContentView.this.b.isMusicMode = false;
                VideoPlayerContentView.this.b.fromBackgroundPlay = false;
            }
            VideoPlayerContentView.this.setMusicMode(false);
            p06.a0("video_play_background_back", hb0.KEY_NAME_BTN, "backbtn");
            p06.v0(ry5.a, true);
        }

        @Override
        public void f() {
            VideoPlayerContentView.this.onSpeedClicked();
        }
    }

    public class i0 extends os8 {
        public i0() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView.this.playNextVideo(true);
            VideoPlayerContentView.P7(VideoPlayerContentView.this.J6, 8);
        }
    }

    public class j implements MediaBottomControllerLayout.a {
        public j() {
        }

        @Override
        public void a() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            if (videoPlayerContentView.q5) {
                return;
            }
            if (videoPlayerContentView.E0) {
                ry5.g("videoplaypage");
            }
            if (VideoPlayerContentView.this.d0 && VideoPlayerContentView.this.G.O() == 0) {
                ToastUtils.s(R.string.video_has_no_audio);
            } else {
                VideoPlayerContentView.this.t8();
            }
        }

        @Override
        public void b() {
            p06.g0(null, "video_play_next");
            VideoPlayerContentView.this.playNextVideo(true);
        }

        @Override
        public void c() {
            p06.g0(null, "video_play_previous");
            VideoPlayerContentView.this.s7();
        }

        @Override
        public void d() {
            int iC = hsb.c();
            w6c.t(VideoPlayerContentView.this.E, "play_repeat_mode", iC);
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.showTextToast(videoPlayerContentView.getResources().getString(VideoPlayerContentView.this.Q[iC]));
            VideoPlayerContentView.this.v.setRepeat(iC == 1);
            VideoPlayerContentView.this.G.J1();
            VideoPlayerContentView.this.j0.updateRepeatMode();
            p06.H(iC);
        }

        @Override
        public void e() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            ActivityResultLauncher activityResultLauncher = videoPlayerContentView.f2;
            if (activityResultLauncher != null) {
                activityResultLauncher.launch(MediaOperateMenuDialogActivity.N0(videoPlayerContentView.E, VideoPlayerContentView.this.W, 2));
            }
        }
    }

    public class j0 extends os8 {
        public final DownloadVideoRecommend.RecommendInfo b;

        public j0(DownloadVideoRecommend.RecommendInfo recommendInfo) {
            this.b = recommendInfo;
        }

        @Override
        public void onClick() {
            RouterUtils.route(this.b.getRouter_distribute_info(), VideoPlayerContentView.this.E);
            hb0.markKV("vd_cp_pop_cl", new hb0.a(ES6Iterator.VALUE_PROPERTY, Integer.valueOf(this.b.getId())), new hb0.a("value1", Integer.valueOf(this.b.getRouter_distribute_info().getType())), new hb0.a("value2", Integer.valueOf(VideoPlayerContentView.this.w ? 1 : 0)), new hb0.a(hb0.KEY_NAME_BTN, this.b.getBottom_content()));
        }
    }

    public class k implements VideoPlayerMediaView.c {
        public k() {
        }

        @Override
        public void a(boolean z) {
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.setOnRestoreVisibility(!z);
            }
        }

        @Override
        public void b(boolean z) {
            if (z) {
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.L();
                }
                VideoPlayerContentView.this.hideTextToast();
            }
        }
    }

    public class k0 extends os8 {
        public k0() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView.P7(VideoPlayerContentView.this.J6, 8);
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.h8();
            }
        }
    }

    public class l implements ViewTreeObserver.OnPreDrawListener {
        public l() {
        }

        @Override
        public boolean onPreDraw() {
            Log.e("VideoPlayerContentView", "onPreDraw");
            ViewTreeObserver viewTreeObserver = VideoPlayerContentView.this.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            VideoPlayerContentView.this.z4();
            return true;
        }
    }

    public class l0 implements Observer {
        public l0() {
        }

        public static boolean b(Boolean bool, View view, MotionEvent motionEvent) {
            return !bool.booleanValue();
        }

        @Override
        public void onChanged(final Boolean bool) {
            VideoPlayerContentView.this.f.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return VideoPlayerContentView.l0.b(bool, view, motionEvent);
                }
            });
        }
    }

    public class m implements TracksSubtitleView.b {
        public m() {
        }

        @Override
        public void a() {
            if (defpackage.w.h()) {
                return;
            }
            if (VideoPlayerContentView.this.f != null && VideoPlayerContentView.this.f.getmUnLockListener() != null) {
                VideoPlayerContentView.this.f.getmUnLockListener().a();
            } else if (VideoPlayerContentView.this.c != null) {
                if (PlayUIDisplayView.isPlayUIShowing(VideoPlayerContentView.this.c)) {
                    VideoPlayerContentView.this.c.K(false);
                } else {
                    VideoPlayerContentView.this.c.S();
                }
            }
        }

        @Override
        public void b(int i, int i2) {
            hb0.markDirect("vd_cp_subdrag");
        }
    }

    public class m0 implements VideoOrientationHelper.a {
        public final MediaItem a;

        public m0(MediaItem mediaItem) {
            this.a = mediaItem;
        }

        @Override
        public void a() {
            if (this.a.getOrientation() == 1) {
                f5.e(VideoPlayerContentView.this.D);
                VideoPlayerContentView.this.w = true;
            } else if (this.a.getOrientation() == 0) {
                f5.f(VideoPlayerContentView.this.D);
            }
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.h8();
            }
        }
    }

    public class n implements AISubtitleVideoView.d {
        public n() {
        }

        @Override
        public void a(boolean z) {
            VideoPlayerContentView.this.j7(z);
        }

        @Override
        public void b() {
            VideoPlayerContentView.this.e8();
        }

        @Override
        public void c(String str, Boolean bool) {
        }

        @Override
        public void d(String str, Boolean bool, boolean z) {
            if (bool.booleanValue() || !z) {
                return;
            }
            VideoPlayerContentView.this.M8(str);
        }
    }

    public class n0 implements vz6 {
        public n0() {
        }

        public void d() {
            Log.d("VideoPlayerContentView", "disconnect");
            VideoPlayerContentView.this.O = false;
            VideoPlayerContentView.this.g7();
        }

        public final void c(int i) {
            Log.d("VideoPlayerContentView", "onConnect, type: " + i);
            boolean z = VideoPlayerContentView.this.O;
            VideoPlayerContentView.this.O = true;
            if (z) {
                return;
            }
            VideoPlayerContentView.this.h7(i);
        }

        @Override
        public void onConnect(final int i) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.c(i);
                }
            });
        }

        @Override
        public void onDisconnect() {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.d();
                }
            });
        }
    }

    public class o implements ew4 {
        public o() {
        }

        @Override
        public void a(int i) {
            Log.i("VideoPlayerContentView", "stateCallback serviceState:" + i + StringUtils.COMMA + defpackage.n.b);
            if (defpackage.n.b.booleanValue() && -3 == i) {
                ToastUtils.s(R.string.visha_ai_subtitle_error_stop);
                defpackage.n.k(VideoPlayerContentView.this.W0, VideoPlayerContentView.this.V1, false);
                VideoPlayerContentView.this.updateSubtitleVisibility();
                VideoPlayerContentView.this.reLoadCurSubtitleDataForAIState();
                p06.d0("vd_video_aisub_error");
                return;
            }
            if (2 == i) {
                if (defpackage.w.j()) {
                    defpackage.n.r(true);
                }
                if (VideoPlayerContentView.this.E0) {
                    VideoPlayerContentView.this.o8();
                }
            }
        }
    }

    public class o0 implements CloudMediaPlayInfoManager.b {
        public o0() {
        }

        @Override
        public void a(MIMediaVideoPlayInfo mIMediaVideoPlayInfo) {
            Log.i("VideoPlayerContentView", "requestMIMediaVideoPlayInfo onSuccess " + mIMediaVideoPlayInfo);
            VideoPlayerContentView.this.q2 = mIMediaVideoPlayInfo;
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.r7(videoPlayerContentView.q2);
        }

        @Override
        public void onFailed(int i, String str) {
            VideoPlayerContentView.this.r7(null);
            if (i == 60007) {
                VideoPlayerContentView.this.showViolationNoticeDialog();
            }
            Log.w("VideoPlayerContentView", "requestMIMediaVideoPlayInfo onFailed " + i + StringUtils.COMMA + str);
        }
    }

    public class p implements SubtitleAILanguageSelectView.d {
        public final boolean a;
        public final boolean b;
        public final boolean c;
        public final TextView d;

        public p(boolean z, boolean z2, boolean z3, TextView textView) {
            this.a = z;
            this.b = z2;
            this.c = z3;
            this.d = textView;
        }

        @Override
        public void a(defpackage.j jVar, int i) {
            defpackage.n.h(this.a, jVar.c, VideoPlayerContentView.this.W0, this.b);
            if (this.b) {
                VideoPlayerContentView.this.d8(this.c, false);
            } else {
                VideoPlayerContentView.this.Q7();
            }
            String str = jVar.c;
            this.d.setText(str);
            if (this.a) {
                ny5.f(str, "settings", this.b ? "vd_video_aisub_sourlang_switch" : "vd_video_losub_tran_lang_select");
            } else {
                ny5.f(str, "settings", this.b ? "vd_video_aisub_tranlang_switch" : "vd_video_losub_tran_tranlang_select");
            }
        }

        @Override
        public void b(String str, boolean z) {
            VideoPlayerContentView.this.hideSettingDialogViewNoAnim();
            VideoPlayerContentView.this.V3(str, z);
        }
    }

    public class p0 implements VideoTouchPlayUI.a {
        public p0() {
        }

        public static void c() {
            MediaVolumeManager.s().B(8, true);
        }

        @Override
        public void a(int i, float f, boolean z) {
            if (i == 8) {
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.K(false);
                }
                if (!z) {
                    VideoPlayerContentView.this.G.H.initMusicVolumeForDrag();
                }
            }
            float fRound = z ? Math.round(rtb.q(VideoPlayerContentView.this.getContext(), VideoPlayerContentView.this.G.H, f, true) * 100.0f) : (MediaVolumeManager.s().w(f) * 100.0f) / 2.0f;
            if (ge.e()) {
                Log.d("VideoPlayerContentView", "controlVolumeAndBrightness progress:" + fRound + ",isMoveLeft:" + z + StringUtils.COMMA + i);
            }
            if (i != 16) {
                int iRound = Math.round(fRound);
                if (!z) {
                    VideoPlayerContentView.this.showVolumeDialog(fRound);
                    return;
                }
                VideoPlayerContentView.this.Y3();
                VideoPlayerContentView.P7(VideoPlayerContentView.this.s0, 0);
                OSSeekbar oSSeekbar = VideoPlayerContentView.this.q0;
                if (oSSeekbar != null) {
                    oSSeekbar.setProgress(iRound);
                }
                ImageView imageView = VideoPlayerContentView.this.r0;
                if (imageView != null) {
                    imageView.setImageResource(iRound == 0 ? R.drawable.video_play_brightness_0 : R.drawable.video_play_brightness);
                }
                VideoPlayerContentView.this.C.hideScaleStateView();
                return;
            }
            if (z) {
                VideoPlayerContentView.P7(VideoPlayerContentView.this.s0, 8);
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.resetSystemUiFlag();
                }
                VideoPlayerContentView.this.G.w2(rtb.h(VideoPlayerContentView.this.E));
                return;
            }
            MediaVolumeManager.s().A();
            VideoPlayerContentView.this.J8((2.0f * fRound) / 100.0f, true);
            VideoPlayerContentView.this.A7();
            if (VideoPlayerContentView.this.c != null) {
                if (fRound == 0.0f) {
                    VideoPlayerContentView.this.c.syncMuteWithSystemVolume();
                } else if (!VideoPlayManager.X().O) {
                    VideoPlayerContentView.this.c.updateVolumeIcon(false);
                }
            }
            se.b().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    VideoPlayerContentView.p0.c();
                }
            }, 50L);
        }
    }

    public class q implements View.OnClickListener {
        public final TextView b;
        public final TextView c;

        public q(TextView textView, TextView textView2) {
            this.b = textView;
            this.c = textView2;
        }

        @Override
        public void onClick(View view) {
            if (view.getId() == R.id.ll_local_language_from) {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                videoPlayerContentView.E7(videoPlayerContentView.G.A0(), true, this.b, false);
                ny5.f(null, "settings", "vd_video_losub_tran_lang");
            } else if (view.getId() == R.id.ll_local_language_to) {
                VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
                videoPlayerContentView2.E7(videoPlayerContentView2.G.A0(), false, this.c, false);
                ny5.f(null, "settings", "vd_video_losub_tran_tranlang");
            }
        }
    }

    public class q0 extends tw6 {
        public final boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q0(Object obj, boolean z) {
            super(obj);
            this.c = z;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            VideoPlayerContentView.this.q1.enableClickFullScreen.setValue(Boolean.TRUE);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            VideoPlayerContentView.this.q1.enableClickFullScreen.setValue(Boolean.TRUE);
            if (VideoPlayerContentView.this.V0 != null) {
                VideoPlayerContentView.this.L8(this.c);
            }
        }
    }

    public class r implements ViewTreeObserver.OnGlobalLayoutListener {
        public r() {
        }

        @Override
        public void onGlobalLayout() {
            VideoPlayerContentView.this.Q8();
            VideoPlayerContentView.this.e.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public class r0 implements FileOperateUtils.m {
        public r0() {
        }

        @Override
        public void a() {
            p06.g0(null, "video_play_list");
            p06.k0("video_play_list", jz5.b(VideoPlayerContentView.this.G.T() != null && VideoPlayerContentView.this.G.T().isKt()));
        }

        @Override
        public void b() {
            VideoPlayerContentView.this.e8();
        }

        @Override
        public void c(int i) {
            VideoPlayerContentView.this.w7(i);
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.setPlayList(VideoPlayerContentView.this.v.getPlayList());
            }
        }

        @Override
        public void d() {
            boolean z = VideoPlayerContentView.this.d0;
            VideoPlayerContentView.this.setMusicMode(!z);
            if (z) {
                VideoPlayerContentView.this.h8();
                if (VideoPlayManager.X().A0()) {
                    VideoPlayerContentView.this.O0 = System.currentTimeMillis();
                }
            } else if (VideoPlayerContentView.this.O0 != 0) {
                VideoPlayerContentView.this.d7();
            }
            if (VideoPlayerContentView.this.d0) {
                VideoPlayManager.X().l2();
                n16.a.b("video_play_background", VideoPlayerContentView.this.G.T());
            }
        }

        @Override
        public void e(long j) {
            if (j == 0) {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                videoPlayerContentView.timerHandler.removeCallbacks(videoPlayerContentView.mTimerUpdateRunnable);
                ToastUtils.s(R.string.play_timer_close);
                w6c.F(VideoPlayerContentView.this.E, j);
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.hideTimer();
                }
            } else {
                w6c.F(VideoPlayerContentView.this.E, j + System.currentTimeMillis());
                VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
                videoPlayerContentView2.timerHandler.post(videoPlayerContentView2.mTimerUpdateRunnable);
            }
            VideoPlayerContentView.this.h8();
            h27.c().e(1147, new Object[0]);
        }

        @Override
        public void f() {
            VideoPlayerContentView.this.U3();
        }

        @Override
        public void g() {
            VideoPlayerContentView.this.S3(false);
        }
    }

    public class s implements Animator.AnimatorListener {
        public final MediaItem b;

        public s(MediaItem mediaItem) {
            this.b = mediaItem;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            VideoPlayerContentView.this.x8(false);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            VideoPlayerContentView.this.M7();
            VideoPlayerContentView.this.settingVideoDirection(this.b);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class s0 implements VideoPlayManager.d {
        public s0() {
        }

        public final void f() {
            VideoPlayerContentView.this.U8(false);
        }

        @Override
        public void forceExit() {
            Log.i("VideoPlayerContentView", "forceExit");
            VideoPlayerContentView.this.exitVideo();
        }

        public final void g() {
            VideoPlayerContentView.this.x4(false, true);
        }

        public final void h(boolean z) {
            VideoPlayerContentView.this.U8(z);
        }

        public final void i(boolean z) {
            VideoPlayerContentView.this.K.showOrHideLogo(z);
        }

        public final void j() {
            VideoPlayerContentView.this.W7();
        }

        @Override
        public boolean onInfo(int i, int i2) {
            if (VideoPlayManager.X().M && i == 3) {
                VideoPlayerContentView.this.setMusicMode(true);
                VideoPlayManager.X().M = false;
            }
            if (!pp3.w() && i == 3) {
                Log.d("VideoPlayerContentView", "onInfo hide cover, first video frame ");
                VideoPlayerContentView.this.x8(false);
            }
            if (i == ifc.V && pp3.j()) {
                StringBuilder sb = new StringBuilder();
                sb.append("onInfo_tip_frame_,delay show:");
                sb.append(!VideoPlayerContentView.this.mHadCheckResolution);
                Log.i("VideoPlayerContentView", sb.toString());
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                if (videoPlayerContentView.mHadCheckResolution) {
                    videoPlayerContentView.S7(R.string.visha_bitrate_too_high_cause_lagging, "frame_drop");
                    o16.a(VideoPlayerContentView.this.v.playMediaItem(), VideoPlayManager.X().l0(), VideoPlayManager.X().k0());
                } else {
                    videoPlayerContentView.mWillShowBitrateTip = true;
                }
            } else if (i == ifc.W && pp3.j()) {
                o06.d();
                o16.b(VideoPlayerContentView.this.v.playMediaItem(), VideoPlayManager.X().l0(), VideoPlayManager.X().k0(), o06.b(), o06.c(), o06.a());
            } else if (i == ifc.X && pp3.j()) {
                o16.c(VideoPlayerContentView.this.v.playMediaItem(), VideoPlayManager.X().l0(), VideoPlayManager.X().k0(), i2);
            }
            if (i == ifc.Y) {
                f16.e(i2, f16.a);
            }
            if (i == ifc.Z) {
                Log.d("VideoPlayerContentView", "onInfo_tip_first_pic_display_");
                VideoPlayerContentView.this.checkIsShowBlockDialog();
                VideoPlayerContentView.this.k8(false);
            }
            if (i == ifc.a0) {
                Log.d("VideoPlayerContentView", "onInfo_tip_video_prepared_getVideoFPS:" + VideoPlayerContentView.this.G.l0());
                if (VideoPlayerContentView.this.G.l0() < 1.0f) {
                    VideoPlayerContentView.this.k8(true);
                }
            }
            return false;
        }

        @Override
        public void onLoadingOnlineVideo(final boolean z, final boolean z2) {
            if (pz6.c(MainApp.w) && z2 && !VideoPlayerContentView.this.F0) {
                ThreadUtils.s(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.f();
                    }
                });
                if (!MainApp.j) {
                    VideoPlayerContentView.this.F0 = true;
                    ThreadUtils.s(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.g();
                        }
                    });
                    return;
                }
            }
            if (!z && z2 && VideoPlayerContentView.this.b.mShareSource == 1) {
                a16.c(VideoPlayerContentView.this.W.displayName, VideoPlayerContentView.this.W.duration, "vd_play_ytb_rtp");
            }
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.h(z);
                }
            });
            if (VideoPlayerContentView.this.K != null) {
                ThreadUtils.s(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.i(z2);
                    }
                });
            }
            Log.d("VideoPlayerContentView", "onLoading " + z);
        }

        @Override
        public void onPlayItemChanged(MediaItem mediaItem) {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.q7(false, videoPlayerContentView.G.R());
        }

        @Override
        public void onPlayListLoadFinished(ArrayList arrayList) {
            VideoPlayerContentView.this.H8();
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.z8(videoPlayerContentView.v.playMediaItem());
            if (VideoPlayerContentView.this.b != null) {
                VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
                if (!videoPlayerContentView2.Z4(videoPlayerContentView2.b.mediaId) && VideoPlayerContentView.this.b.playUri != null) {
                    if (VideoPlayerContentView.this.c != null) {
                        VideoPlayerContentView.this.c.setPlayList(VideoPlayerContentView.this.v.getPlayList());
                        return;
                    }
                    return;
                }
            }
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.setPlayList(VideoPlayerContentView.this.v.selectedPlayMediaItem().getPlayList());
            }
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            Log.d("VideoPlayerContentView", "onPlayerStateUpdate " + i);
            VideoPlayerContentView.this.h0 = i;
            boolean z = true;
            boolean z2 = i == 3;
            if (VideoPlayerContentView.this.E0 != z2) {
                VideoPlayerContentView.this.E0 = z2;
                VideoPlayerContentView.this.z7(false);
                if (VideoPlayerContentView.this.B0 && VideoPlayerContentView.this.z0 != 0 && VideoPlayerContentView.this.A0 != 0) {
                    VideoPlayerContentView.this.L7(false, z2);
                }
                if (z2) {
                    VideoPlayerContentView.this.q4();
                    VideoPlayerContentView.this.q4.removeCallbacks(VideoPlayerContentView.this.p5);
                }
            }
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.onVideoPlayerStateChange(i);
            }
            if (VideoPlayerContentView.this.j0 != null) {
                VideoPlayerContentView.this.j0.updatePlayPauseIcon(z2);
            }
            if (i == 6) {
                VideoPlayerContentView.X3();
            }
            PlayVideoData playVideoDataT = VideoPlayManager.X().T();
            if ((playVideoDataT == null || !playVideoDataT.isKt() || CloudTaskFinishCacheManager.a.j(playVideoDataT.mKtFileId) != null) && !MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoDataT)) {
                VideoPlayerContentView.this.U8(false);
                return;
            }
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            if (i != 0 && i != 7 && i != 2 && i != 1) {
                z = false;
            }
            videoPlayerContentView.U8(z);
        }

        @Override
        public void onShowError(int i, int i2) {
            Log.e("VideoPlayerContentView", "onShowError:" + i + " messageId:" + i2);
            if (VideoPlayerContentView.this.B0) {
                return;
            }
            if (VideoPlayerContentView.this.b == null || !VideoPlayerContentView.this.b.isFromNet) {
                VideoPlayerContentView.this.V7(i2);
            } else {
                VideoPlayerContentView.this.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.j();
                    }
                }, 500L);
            }
        }

        @Override
        public void onStartChangedPlayItem(MediaItem mediaItem, boolean z) {
            Log.d("VideoPlayerContentView", "onStartChangedPlayItem");
            VideoPlayerContentView.this.y7();
            VideoPlayerContentView.this.z7(true);
            MIMediaDataUtils.Companion companion = MIMediaDataUtils.INSTANCE;
            if (companion.isMiMediaVideo(mediaItem)) {
                VideoPlayerContentView.this.R8(mediaItem);
            }
            if (VideoPlayerContentView.this.b != null) {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                if (!videoPlayerContentView.Z4(videoPlayerContentView.b.mediaId) && mediaItem != null && uib.a(mediaItem.getUri()) && VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.setPlayList(VideoPlayerContentView.this.v.getPlayList());
                }
            }
            if (VideoPlayerContentView.this.d0) {
                VideoPlayerContentView.this.G8();
                return;
            }
            if (VideoPlayerContentView.this.j != null) {
                VideoPlayerContentView.P7(VideoPlayerContentView.this.j, 8);
                VideoPlayerContentView.this.q4.removeCallbacks(VideoPlayerContentView.this.p5);
            }
            if (VideoPlayerContentView.this.b == null || VideoPlayerContentView.this.b.mPlayFrom != PlayVideoData.ePlayFrom.INTERNAL.from) {
                VideoPlayerContentView.this.settingVideoDirection(mediaItem);
            } else if (VideoPlayerContentView.this.k1) {
                VideoPlayerContentView.this.k1 = false;
                if (System.currentTimeMillis() - af9.e < 1500) {
                    VideoPlayerContentView.this.playPlayerLogo(mediaItem);
                }
            } else if (companion.isMiMediaVideo(mediaItem)) {
                VideoPlayerContentView.this.U8(true);
                VideoPlayerContentView.this.settingVideoDirection(mediaItem);
            } else {
                String str = VideoPlayManager.X().R() != null ? VideoPlayManager.X().R().data : "";
                if (VideoPlayerContentView.this.K == null || VideoPlayerContentView.this.b == null || VideoPlayerContentView.this.b.playUri == null || r0a.g(str) || new File(str).exists() || !VideoPlayManager.X().A0()) {
                    VideoPlayerContentView.this.U8(false);
                } else {
                    VideoPlayerContentView.this.U8(true);
                }
                VideoPlayerContentView.this.settingVideoDirection(mediaItem);
            }
            VideoPlayerContentView.this.O3();
            if (VideoPlayerContentView.this.W != null && !VideoPlayerContentView.this.W.equals(mediaItem) && (!pp3.j() || z)) {
                if (VideoPlayerContentView.this.G != null && VideoPlayerContentView.this.H != null) {
                    VideoPlayerContentView.this.G.S1(VideoPlayerContentView.this.H, false);
                }
                VideoPlayerContentView.this.C.setDisplaySurfaceView(false);
            }
            hb0.duration = System.currentTimeMillis() - m16.a;
            m16.b();
            if (VideoPlayerContentView.this.W != mediaItem) {
                VideoPlayerContentView videoPlayerContentView2 = VideoPlayerContentView.this;
                videoPlayerContentView2.v4(videoPlayerContentView2.isHorizontalShowDialog());
            }
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.J0();
            }
            VideoPlayerContentView.X3();
        }

        @Override
        public void onUpdateAll(VideoPlayManager videoPlayManager) {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.q7(true, videoPlayerContentView.G.R());
            onPlayerStateUpdate(VideoPlayerContentView.this.G.g0());
            onPlayListLoadFinished(VideoPlayerContentView.this.G.b0().getPlayList());
        }

        @Override
        public void onVideoSizeChanged(int i, int i2) {
            Log.v("VideoPlayerContentView", "onVideoSizeChanged, width = " + i + ", height = " + i2);
            VideoPlayerContentView.this.C.onVideoSizeChanged(i, i2);
            VideoPlayerContentView.this.z0 = i;
            VideoPlayerContentView.this.A0 = i2;
            if (!VideoPlayerContentView.this.B0 || i == 0 || i2 == 0) {
                return;
            }
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.L7(false, videoPlayerContentView.E0);
        }

        @Override
        public void onVolumeChange(int i) {
            VideoPlayManager.X().P = i;
            if (VideoPlayerContentView.this.c != null) {
                VideoPlayerContentView.this.c.onVolumeChange();
            }
        }

        @Override
        public void seekTo(int i) {
            if (VideoPlayerContentView.this.V0 != null) {
                VideoPlayerContentView.this.V0.restartTracks();
            }
        }
    }

    public class t extends os8 {
        public t() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.v4(videoPlayerContentView.isHorizontalShowDialog());
        }
    }

    public class u implements Animation.AnimationListener {
        public u() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            VideoPlayerContentView.P7(VideoPlayerContentView.this.q, 8);
            VideoPlayerContentView.P7(VideoPlayerContentView.this.n, 8);
            VideoPlayerContentView.this.q.setHideAnimationState(false);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public class v extends os8 {
        public v() {
        }

        @Override
        public void onClick() {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.v4(videoPlayerContentView.isHorizontalShowDialog());
        }
    }

    public class w extends RecyclerView.ItemDecoration {
        public w() {
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.left = com.transsion.utils.a.d(VideoPlayerContentView.this.E, 10.0f);
            rect.right = com.transsion.utils.a.d(VideoPlayerContentView.this.E, 10.0f);
        }
    }

    public class x extends VideoSettingSelectAdapter {
        public x(List list, int i) {
            super(list, i);
        }

        @Override
        public void g(int i, VideoSettingItem videoSettingItem) {
            VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
            videoPlayerContentView.v4(videoPlayerContentView.isHorizontalShowDialog());
            long value = ((long) videoSettingItem.getValue()) * 60000;
            if (videoSettingItem.getValue() != -1) {
                if (VideoPlayerContentView.this.p3 != null) {
                    VideoPlayerContentView.this.p3.e(value);
                }
                w6c.G(this.mContext, i);
            } else {
                VideoPlayerContentView.this.y8(i);
            }
            if (!VideoPlayerContentView.this.d0) {
                n16.a.a("video_timer", VideoPlayerContentView.this.b);
                return;
            }
            p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, (videoSettingItem.getValue() * 60) + "");
        }
    }

    public class y extends VideoSettingLoopAdapter {
        public final TextView q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(List list, int i, TextView textView) {
            super(list, i);
            this.q = textView;
        }

        @Override
        public void h(int i, VideoSettingItem videoSettingItem) {
            if (VideoPlayerContentView.this.p3 != null) {
                hsb.e(videoSettingItem.getValue());
                VideoPlayerContentView.this.p3.c(videoSettingItem.getValue());
                if (hsb.b() == 4 && VideoPlayerContentView.this.v != null) {
                    VideoPlayerContentView.this.v.updateShuffleList();
                    notifyDataSetChanged();
                }
                this.q.setText(videoSettingItem.displayText());
                if (VideoPlayerContentView.this.d0) {
                    p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, videoSettingItem.getValue() + "");
                }
            }
        }
    }

    public class z implements FileOperateUtils.k {
        public z() {
        }

        @Override
        public void d() {
            Log.i("VideoPlayerContentView", "deleteSuccess: " + VideoPlayerContentView.this.b);
            h27.c().e(1072, new Object[0]);
            VideoPlayerContentView.this.b.isUserDeleted = true;
            if (VideoPlayerContentView.this.b.isPrivate) {
                h27.c().e(1140, VideoPlayerContentView.this.b.path);
                Log.e("VideoPlayerContentView", "deleteSuccess");
                if (VideoPlayerContentView.this.D != null) {
                    VideoPlayerContentView.this.D.finish();
                }
            }
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    public VideoPlayerContentView(Context context) {
        super(context);
        this.h = -1;
        this.v = PlayListData.getInstance();
        this.O = true;
        this.P = true;
        this.Q = new int[]{com.transsion.playercommon.R.string.video_auto_pause, com.transsion.playercommon.R.string.video_repeat_all, com.transsion.playercommon.R.string.video_repeat_single, com.transsion.playercommon.R.string.video_auto_playnext, com.transsion.playercommon.R.string.playmodel_random_loop};
        this.R = new int[]{com.transsion.playercommon.R.string.fit_screen, com.transsion.playercommon.R.string.resize_mode_fill, com.transsion.playercommon.R.string.resize_mode_zoom};
        this.S = new int[]{0, 3, 4};
        this.f0 = -1;
        this.h0 = 0;
        this.l0 = -1;
        this.n0 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.J5((Boolean) obj);
            }
        };
        this.I0 = false;
        this.R0 = false;
        this.S0 = false;
        this.T0 = false;
        this.e1 = new ArrayList();
        this.f1 = new ArrayList();
        this.k1 = ydc.e();
        this.m1 = false;
        this.mTimerUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                videoPlayerContentView.timerHandler.postDelayed(videoPlayerContentView.mTimerUpdateRunnable, 1000L);
                VideoPlayerContentView.this.u7();
            }
        };
        this.timerHandler = new Handler(new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.K5(message);
            }
        });
        this.x2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.L5((woc) obj);
            }
        };
        this.y2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N5((Boolean) obj);
            }
        };
        this.G2 = new a0();
        this.V2 = new l0();
        this.f3 = new p0();
        this.p3 = new r0();
        this.q3 = new VideoPlayManager.d() {
            @Override
            public void onShowError(int i2, int i3) {
                Log.e("VideoPlayerContentView", "onShowError:" + i2);
                if (VideoPlayerContentView.this.B0) {
                    return;
                }
                if (VideoPlayerContentView.this.b == null || !VideoPlayerContentView.this.b.isFromNet) {
                    VideoPlayerContentView.this.V7(i3);
                } else {
                    VideoPlayerContentView.this.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            VideoPlayerContentView.this.W7();
                        }
                    }, 500L);
                }
            }
        };
        this.G3 = new s0();
        this.f4 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.W == null || VideoPlayerContentView.this.d1 == null || VideoPlayerContentView.this.D == null) {
                    return;
                }
                VideoPlayerContentView.this.d1.queryVideoSubtitles(VideoPlayerContentView.this.W.id, VideoPlayerContentView.this.D);
            }
        };
        this.k4 = new b();
        this.p4 = new c();
        this.q4 = new Handler();
        this.p5 = new Runnable() {
            @Override
            public final void run() {
                this.b.M5();
            }
        };
        this.p6 = new PlayerViewController.b() {
            @Override
            public final void a(long j2, long j3) {
                this.a.O5(j2, j3);
            }
        };
        this.q6 = new PlayerViewController.d() {
            @Override
            public final void a(boolean z2) {
                this.a.P5(z2);
            }
        };
        this.D6 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.C0) {
                    Log.e("VideoPlayerContentView", "autoPlayOrPause KeyguardShow return");
                } else {
                    VideoPlayerContentView.this.D0 = false;
                    VideoPlayerContentView.this.G.C(true);
                }
            }
        };
        this.G6 = new Runnable() {
            @Override
            public final void run() {
                this.b.t4();
            }
        };
        this.H6 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.Q5();
            }
        };
        this.I6 = new g0(null);
        init(context);
    }

    private void C7(boolean z2) throws Throwable {
        long jV;
        SeekBar seekBarL4 = l4(z2);
        if (seekBarL4 == null) {
            return;
        }
        try {
            jV = this.G.V();
            try {
                long jS = this.G.S();
                if (z2) {
                    Handler handlerO = ThreadUtils.o();
                    handlerO.removeCallbacks(this.H6);
                    handlerO.postDelayed(this.H6, 500L);
                }
                if (jV <= 0) {
                    seekBarL4.setProgress(0);
                } else {
                    I8(jS, jV, 0L);
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (z2) {
                    Handler handlerO2 = ThreadUtils.o();
                    handlerO2.removeCallbacks(this.H6);
                    handlerO2.postDelayed(this.H6, 500L);
                }
                if (jV <= 0) {
                    seekBarL4.setProgress(0);
                } else {
                    I8(0L, jV, 0L);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            jV = 0;
        }
    }

    private void F4() {
        boolean z2 = Settings.Secure.getInt(this.E.getContentResolver(), "navigation_mode", 0) == 2;
        this.x = z2;
        setNavigationMode(z2);
    }

    public static int G6(FileVideoTemplate fileVideoTemplate, FileVideoTemplate fileVideoTemplate2) {
        return fileVideoTemplate2.getTemplateId().compareTo(fileVideoTemplate.getTemplateId());
    }

    public void H8() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.updatePreviousAndNextButton(this.v.hasPreviousInList(), this.v.hasNextInList());
        }
    }

    public static int J6(MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo, MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo2) {
        return mIMediaVideoPlayItemInfo2.getResolution().compareTo(mIMediaVideoPlayItemInfo.getResolution());
    }

    public static WindowInsetsCompat M6(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    private void N4() {
        this.C.setOnScaleStatesChangeListener(new k());
        this.f.setOnScaleSurfaceListener(this.C);
        if (pp3.w()) {
            this.G.L(3, this.C.getSubtitleSurfaceView());
            this.G.S1(this.C.getHolder(), true);
        }
        if (pp3.j()) {
            this.G.g2(this.C.getSubtitleSurfaceView(), true);
        }
        B4();
        this.v.setRepeat(w6c.h(this.E) == 1);
        if (pp3.b) {
            return;
        }
        l9.i(CountryInfoUtil.m());
    }

    private void O4() {
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider(this.D).get(WindowInfoViewModel.class);
        this.p1 = windowInfoViewModel;
        windowInfoViewModel.a.observe(this.D, this.x2);
        this.p1.f.observe(this.D, this.n0);
        VideoControlModel videoControlModel = (VideoControlModel) new ViewModelProvider(this.D).get(VideoControlModel.class);
        this.q1 = videoControlModel;
        videoControlModel.isReleaseTouchEvent.observe(this.D, this.V2);
    }

    public static void P7(View view, int i2) {
        if (view == null || view.getVisibility() == i2) {
            return;
        }
        view.setVisibility(i2);
    }

    public void Q3() {
        PlayListData playListData;
        Uri uri;
        if (this.b == null || (playListData = this.v) == null || playListData.playMediaItem() == null || this.D == null) {
            return;
        }
        if (!Z4(this.b.mediaId) && (uri = this.b.playUri) != null) {
            if (uri.toString().contains("com.android.mtp.documents")) {
                final Uri uri2 = this.b.playUri;
                mc7.K(uri2).g(this.D.bindToLifecycle()).L(new t74() {
                    @Override
                    public final Object apply(Object obj) {
                        return Long.valueOf(this.b.R3((Uri) obj));
                    }
                }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        this.b.j5(uri2, (Long) obj);
                    }
                }, new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        Log.w("VideoPlayerContentView", "checkData checkUri failed", (Throwable) obj);
                    }
                });
                return;
            }
            return;
        }
        final MediaItem mediaItemPlayMediaItem = this.v.playMediaItem();
        Log.i("VideoPlayerContentView", "checkData playMediaItem:" + mediaItemPlayMediaItem);
        if (mediaItemPlayMediaItem == null || !LoadDataUtils.m(mediaItemPlayMediaItem.id)) {
            return;
        }
        mc7.K(Integer.valueOf(mediaItemPlayMediaItem.id)).g(this.D.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayerContentView.l5(mediaItemPlayMediaItem, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.m5((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.n5((Throwable) obj);
            }
        });
    }

    public void U8(boolean z2) {
        View view;
        ViewStub viewStub;
        Log.d("VideoPlayerContentView", "updateVideoLoadingView " + z2);
        boolean z3 = true;
        if (z2 && this.K == null && (viewStub = (ViewStub) findViewById(R.id.video_loading_ll)) != null) {
            VideoLoadingView videoLoadingView = (VideoLoadingView) viewStub.inflate();
            this.K = videoLoadingView;
            P7(videoLoadingView, 0);
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            if (videoTouchLayoutNew != null) {
                videoTouchLayoutNew.updatePlayPauseButtonVisibility(true);
            }
        }
        VideoLoadingView videoLoadingView2 = this.K;
        boolean z4 = videoLoadingView2 != null && videoLoadingView2.getVisibility() == 0;
        VideoLoadingView videoLoadingView3 = this.K;
        if (videoLoadingView3 == null || z4 == z2) {
            return;
        }
        P7(videoLoadingView3, z2 ? 0 : 8);
        VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
        if (videoTouchLayoutNew2 != null) {
            if (!z2 && ((view = this.j) == null || view.getVisibility() != 0)) {
                z3 = false;
            }
            videoTouchLayoutNew2.updatePlayPauseButtonVisibility(z3);
        }
    }

    public static void W6(Boolean bool) {
    }

    public static void X3() {
        if (k38.g() == null || !k38.g().isShowing()) {
            return;
        }
        try {
            k38.g().dismiss();
        } catch (Exception e2) {
            Log.e("VideoPlayerContentView", "dismissInfoDialog: ", e2);
        }
    }

    private void g4() {
        this.y0.o(this.D, new f0());
    }

    public void g7() {
        PlayVideoData playVideoDataT = VideoPlayManager.X().T();
        if (playVideoDataT != null && playVideoDataT.isKt() && CloudTaskFinishCacheManager.a.j(playVideoDataT.mKtFileId) == null) {
            ToastUtils.s(R.string.net_not_connect);
            U8(true);
        }
    }

    public View getVideoSettingContentView() {
        return H4(com.transsion.playercommon.R.layout.video_play_settings_list_flat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private woc getWindowOptions() {
        WindowInfoViewModel windowInfoViewModel = this.p1;
        if (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0) {
            return null;
        }
        return (woc) this.p1.a.getValue();
    }

    public static void h5(Throwable th) {
        com.transsion.core.log.LogUtils.e("VideoPlayerContentView", "add subtitle error:" + th.getMessage());
    }

    public void k8(boolean z2) {
        try {
            Log.d("VideoPlayerContentView", "showVideoCover: " + z2);
            VideoPlayerMediaView videoPlayerMediaView = this.C;
            if (videoPlayerMediaView != null) {
                if (!z2) {
                    videoPlayerMediaView.showVideoCover(false);
                    return;
                }
                if (this.W != null) {
                    videoPlayerMediaView.showVideoCover(true);
                    RequestBuilder<Bitmap> requestBuilderAsBitmap = Glide.with(this.E).asBitmap();
                    Uri uri = this.W.uri;
                    String string = "";
                    RequestBuilder requestBuilderOverride = requestBuilderAsBitmap.load2(uri == null ? "" : uri.toString()).override(com.transsion.utils.a.m(this.E), com.transsion.utils.a.l(this.E));
                    Uri uri2 = this.W.uri;
                    if (uri2 != null) {
                        string = uri2.toString();
                    }
                    requestBuilderOverride.signature(new z7c.a(string, this.W.dateModified)).into(this.C.getVideoCoverView());
                }
            }
        } catch (Exception e2) {
            Log.e("VideoPlayerContentView", "showVideoCover: " + e2.getMessage());
        }
    }

    public static Boolean l5(MediaItem mediaItem, Integer num) {
        String str;
        MediaItem mediaItemH = tpb.j0().h(num.intValue());
        if (mediaItemH == null) {
            Log.w("VideoPlayerContentView", "the video is no longer exist");
            return Boolean.TRUE;
        }
        Log.w("VideoPlayerContentView", "checkData mediaItem1:" + mediaItemH);
        if (mediaItemH.bucketId == mediaItem.bucketId && ((str = mediaItemH.data) == null || av3.x(str))) {
            return Boolean.FALSE;
        }
        Log.w("VideoPlayerContentView", "the video is no longer exist");
        return Boolean.TRUE;
    }

    private boolean m8(int i2) {
        boolean z2 = N3() && p7(true);
        Log.i("VideoPlayerContentView", "skipTheErrorVideo skip:canBeReplayed" + N3());
        Log.i("VideoPlayerContentView", "skipTheErrorVideo skip:playForRepeatMode" + p7(true));
        Log.i("VideoPlayerContentView", "skipTheErrorVideo skip:" + z2);
        return z2;
    }

    public static void o5() {
        ToastUtils.q(R.string.ges_pip_notice);
        MMKV.p().y("is_pip_ges_showed", true);
    }

    private void o7() {
        this.timerHandler.removeCallbacks(this.mTimerUpdateRunnable);
        w6c.G(this.E, 0);
        w6c.F(this.E, 0L);
        VideoPlayManager.X().i1(true);
    }

    public static boolean p5(View view, MotionEvent motionEvent) {
        return true;
    }

    private boolean p7(boolean z2) {
        int iH = w6c.h(this.E);
        PlayVideoData playVideoData = this.b;
        if (playVideoData != null && playVideoData.isFromNet && !playVideoData.isKt() && !MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.W)) {
            iH = 0;
        }
        Log.d("VideoPlayerContentView", "playForRepeatMode " + iH);
        if (z2) {
            int i2 = this.J;
            if (i2 > 4) {
                Log.e("VideoPlayerContentView", "playForRepeatMode repeat error max");
                return false;
            }
            this.J = i2 + 1;
            if (this.v.hasNext()) {
                w4();
                return true;
            }
        } else {
            this.J = 0;
        }
        if (iH == 2) {
            if (z2) {
                w4();
            } else {
                this.G.p2(true, true);
            }
        } else if (iH == 0) {
            if (!this.B0) {
                VideoTouchLayoutNew videoTouchLayoutNew = this.c;
                if (videoTouchLayoutNew != null && videoTouchLayoutNew.b != null) {
                    h8();
                }
                VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
                if (videoRetreatForwardLayout != null) {
                    videoRetreatForwardLayout.hideRetreatOrForwardTip();
                }
            }
        } else {
            if (!this.v.hasNext()) {
                return false;
            }
            if (z2) {
                w4();
            } else {
                playNextVideo(true);
            }
        }
        return true;
    }

    public void s7() {
        PlayVideoData playVideoDataConvertToPlayVideoData;
        if (this.v.hasPrevious()) {
            MediaItem mediaItemPre = this.v.pre();
            if (mediaItemPre != null && (playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItemPre)) != null) {
                this.b = playVideoDataConvertToPlayVideoData;
            }
            this.G.r1();
        }
    }

    private void setDisPlayUILayoutParams(woc wocVar) {
        if (this.v0 != null) {
            int iA = oc2.a(getContext(), wocVar.f() ? 92.0f : 56.0f);
            if (this.h != iA) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.v0.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = iA;
                this.v0.setLayoutParams(layoutParams);
                this.h = iA;
            }
        }
    }

    private void setMaskDialogRootLayoutParams(LinearLayout linearLayout) {
        if (isHorizontalShowDialog()) {
            linearLayout.setGravity(16);
        } else {
            linearLayout.setGravity(48);
        }
    }

    public void setMusicMode(boolean z2) {
        if (this.d0 != z2) {
            y4();
            this.d0 = z2;
            E8(z2);
            this.G.c2(this.d0);
            VideoPlayManager.X().W1(this.d0);
            boolean z3 = this.d0;
            af9.a = z3 ? 1 : 0;
            if (z3) {
                hb0.markDirect("vd_play_listen_show");
                C8(true);
                VideoTouchLayoutNew videoTouchLayoutNew = this.c;
                if (videoTouchLayoutNew != null) {
                    videoTouchLayoutNew.L();
                }
                this.D.forceShowSystemBar(true, false);
                if (com.transsion.utils.a.A()) {
                    s8(4);
                } else {
                    f5.f(this.D);
                }
                MusicModelMainLayout musicModelMainLayout = this.j0;
                if (musicModelMainLayout != null) {
                    if (musicModelMainLayout.getBaseActivity() == null) {
                        this.j0.setBaseActivity(baseActivity());
                    }
                    this.j0.setTransparentNav();
                }
            } else {
                settingVideoDirection(this.W);
                s8(3);
                C8(false);
                this.D.forceShowSystemBar(false, false);
            }
            VideoPlayManager.X().l2();
            if (VideoPlayManager.X().T() != null) {
                VideoPlayManager.X().T().isMusicMode = z2;
                VideoPlayManager.X().T().fromBackgroundPlay = false;
            }
            h27.c().e(1168, Boolean.valueOf(this.d0));
        }
    }

    private void setPlayerLayout(final boolean z2) {
        ObjectAnimator objectAnimator = this.r1;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.s.setGuidelinePercent(m4(z2));
        this.s.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.h6(z2);
            }
        }, 200L);
    }

    private void setWindowBg(final Bitmap bitmap) {
        this.D.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.i6(bitmap);
            }
        });
    }

    public void settingVideoDirection(MediaItem mediaItem) {
        if (mediaItem == null) {
            LogUtils.m("VideoPlayerContentView", "mediaItem is null");
            return;
        }
        if (a5()) {
            LogUtils.j("VideoPlayerContentView", "settingVideoDirection,video is music mode,do not set video direction");
            return;
        }
        if (!e5()) {
            LogUtils.j("VideoPlayerContentView", "settingVideoDirection defer until window animation finished");
            this.k5 = mediaItem;
            return;
        }
        int iA = qqb.a(this.E);
        int i2 = (this.f0 == 1 && iA == 0) ? 1 : 0;
        if (iA == 1) {
            this.a0 = true;
            if (mediaItem.getOrientation() == 1) {
                f5.e(this.D);
            } else if (mediaItem.getOrientation() == 0) {
                f5.f(this.D);
            } else {
                VideoOrientationHelper.d(this.E, mediaItem, new m0(mediaItem));
            }
            if (this.c != null) {
                h8();
            }
        } else {
            s8(i2);
        }
        this.f0 = iA;
    }

    public void t8() {
        u8(true, false);
    }

    public static void u6(Throwable th) {
        ToastUtils.s(R.string.network_error);
        LogUtils.l("VideoPlayerContentView", "getVideoInfo Error: " + th.getMessage());
    }

    public void u7() {
        VideoTouchLayoutNew videoTouchLayoutNew;
        long jL = w6c.l(this.E) - System.currentTimeMillis();
        if (jL < 1000) {
            lz5.e();
            VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
            if (videoTouchLayoutNew2 != null) {
                videoTouchLayoutNew2.hideTimer();
            }
            o7();
        } else if (!this.B0 && (videoTouchLayoutNew = this.c) != null) {
            videoTouchLayoutNew.updateTimer(jL);
        }
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.updateTimer(jL);
        }
    }

    public static boolean x6(int i2, VideoSettingItem videoSettingItem) {
        return videoSettingItem.getValue() == i2;
    }

    public static boolean z5(View view, MotionEvent motionEvent) {
        return true;
    }

    public final void A4() {
        if (defpackage.w.h()) {
            AISubtitleVideoView aISubtitleVideoView = (AISubtitleVideoView) this.V0;
            this.W0 = aISubtitleVideoView;
            aISubtitleVideoView.switchToAI(defpackage.n.b.booleanValue());
            this.W0.setAISubtitleViewOperateCallBack(new n());
            this.p2 = new o();
            l6a.b().a(this.p2);
        }
    }

    public final void A5(SubtitleSettingData subtitleSettingData) {
        this.X0 = subtitleSettingData;
        N8();
        if (V4() || X4()) {
            U6(this.X0.location, true);
            updateSubtitleViews(true);
        } else {
            if (this.B0) {
                return;
            }
            updateSubtitleViews(true);
        }
    }

    public final void A6(Switch r1, View view, View view2, View view3, LinearLayout linearLayout, SubtitleTrackInfo subtitleTrackInfo) {
        if (R4(r1)) {
            return;
        }
        updateTracksView(view, view2, view3, linearLayout);
    }

    public final void A7() {
        float fI = rtb.i();
        if (fI >= 1.0f || fI == this.G.H.mAudioVolume) {
            return;
        }
        Log.e("VideoPlayerContentView", "resetVolumeForSafeMode volume:" + fI + ",mMusicVolume:" + this.G.H.mMusicVolume + ",mMusicMaxVolume:" + this.G.H.mMusicMaxVolume);
        VideoPlayManager videoPlayManager = this.G;
        videoPlayManager.C2(fI, videoPlayManager.H.mMusicMaxVolume, false);
    }

    public final void A8(MediaItem mediaItem) {
        boolean z2 = false;
        if (mediaItem != null) {
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            if (videoTouchLayoutNew != null) {
                videoTouchLayoutNew.flushVideoList();
                this.c.updateSpeed();
                this.c.setCurrentItem(mediaItem.data, mediaItem);
                this.c.updateYoutube(((VideoPlayerActivity) this.D).f0 && mediaItem.isYoutubeUrl);
                this.c.updateVideoToMusicBtn(dw6.c.a().g(mediaItem.getDisplayName()) || ao.U().e0(mediaItem.getDisplayName()));
                this.c.setFarListiener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.S6(view);
                    }
                });
            }
        } else {
            VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
            if (videoTouchLayoutNew2 != null) {
                videoTouchLayoutNew2.setCurrentItem(this.b.mYoutubeId, mediaItem);
                this.c.updateYoutube(((VideoPlayerActivity) this.D).f0 && r0a.i(this.b.mKtFileId));
                this.c.setFarListiener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.T6(view);
                    }
                });
            }
        }
        if (this.c != null) {
            MIMediaDataUtils.Companion companion = MIMediaDataUtils.INSTANCE;
            if (companion.isMiMediaVideo(mediaItem) || this.U != null) {
                this.c.setMediaPlayTitle(this.T);
            }
            VideoTouchLayoutNew videoTouchLayoutNew3 = this.c;
            boolean z3 = mediaItem != null && mediaItem.isKtFile;
            if (mediaItem != null && mediaItem.isKtFile && CloudTaskFinishCacheManager.a.j(mediaItem.data) == null) {
                z2 = true;
            }
            videoTouchLayoutNew3.updateCloudResourceType(z3, z2, companion.isMiMediaVideo(mediaItem));
        }
    }

    public final void B4() {
        if (raa.i(this.E)) {
            h8();
        }
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.x5(view);
            }
        });
        this.f.setRetreatForwardListener(this.G2);
    }

    public final void B5(List list) {
        this.e1.clear();
        this.e1.addAll(list);
    }

    public final void B6(Switch r1, View view) {
        if (R4(r1)) {
            if (S4(this.g1) && S4(this.h1)) {
                return;
            }
            if (pp3.j() && !c5(this.g1)) {
                ToastUtils.s(R.string.subbtitle_format_not_support_custom);
                return;
            }
            this.i1 = true;
            showCustomizeSubtitleView();
            hb0.markDirect("vd_cp_subtitle_pop_customize_cl");
        }
    }

    public final void B7(boolean z2, boolean z3) {
        if (z3) {
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            if (videoTouchLayoutNew != null) {
                videoTouchLayoutNew.K(false);
            }
            c4();
            VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
            if (videoRetreatForwardLayout != null) {
                videoRetreatForwardLayout.setTipShowListener(new d());
                this.g.setIsRetreat(z2);
            }
        }
        n16.a.a(z2 ? "video_play_gesture_doubletap_retreat" : "video_play_gesture_doubletap_forward", this.b);
        VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
        if (videoTouchLayoutNew2 == null) {
            return;
        }
        videoTouchLayoutNew2.handleInnerPlayForwardOrRetreatForMediaPlayer(!z2, true, z3 ? new PlayerViewController.c() {
            @Override
            public final void a() {
                this.a.Z5();
            }
        } : null);
    }

    public final void B8(boolean z2) {
        VideoLoadingView videoLoadingView;
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        if (videoTouchPlayUIDisplayView != null) {
            videoTouchPlayUIDisplayView.setShowOnlineError(z2);
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setShowOnlineError(z2);
            this.c.updatePlayPauseButtonVisibility(z2 || ((videoLoadingView = this.K) != null && videoLoadingView.getVisibility() == 0));
        }
        View view = this.j;
        if (view != null) {
            P7(view, z2 ? 0 : 8);
        }
    }

    public final void C4(View view) {
        pw2.c = lc3.c(getContext());
        if (this.w) {
            view.setPadding(0, com.transsion.utils.a.d(this.E, 20.0f), com.transsion.utils.a.d(this.E, 20.0f), 0);
        } else {
            view.setPadding(0, 0, 0, 0);
        }
        this.F6 = (InterceptLinearLayout) view.findViewById(R.id.ll_content);
        TextView textView = (TextView) view.findViewById(R.id.tv_bassboot);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_max_bassboot);
        CustomOsSeekbar customOsSeekbar = (CustomOsSeekbar) view.findViewById(R.id.sb_bassboot);
        customOsSeekbar.setOnProgressChangedListener(new g(customOsSeekbar, textView));
        customOsSeekbar.setProgress(pw2.b().a);
        this.F6.setChildClickable(pw2.c);
        this.F6.setAlpha(pw2.c ? 1.0f : 0.5f);
        customOsSeekbar.setThumbInsideColor(-15066598);
        textView2.setText(NumberFormat.getPercentInstance().format(1L));
        textView.setText(NumberFormat.getPercentInstance().format(customOsSeekbar.getProgressFloat() / customOsSeekbar.getMax()));
        View viewFindViewById = view.findViewById(R.id.ll_dolby_set);
        this.E6 = viewFindViewById;
        P7(viewFindViewById, pw2.c ? 8 : 0);
        ((TextView) view.findViewById(R.id.tv_go)).setOnClickListener(new h());
    }

    public final void C5(SubtitleTrackInfo subtitleTrackInfo) {
        SubtitleVideoView subtitleVideoView;
        Log.d("VideoPlayerContentView", "initViewModel firstCurData =" + subtitleTrackInfo);
        if (defpackage.w.h()) {
            if (this.y1 && !defpackage.n.a.booleanValue() && !defpackage.n.b.booleanValue()) {
                defpackage.n.w(f8(this.d1.firstCurData.getValue()), false);
                updateSubtitleVisibility();
                MMKV.p().y("all_subtitke_off_on", defpackage.n.a.booleanValue());
                defpackage.n.i(this.V1, this.W0);
                this.y1 = false;
            }
            String str = subtitleTrackInfo != null ? subtitleTrackInfo.sub_local_lang_to : "none";
            defpackage.n.q(str);
            if (this.W0 != null && e7()) {
                this.W0.setCheckedLanguageTo(str, false, false);
            }
            ny5.g(defpackage.n.a.booleanValue(), defpackage.n.b.booleanValue(), subtitleTrackInfo);
        }
        if (subtitleTrackInfo != null) {
            MediaItem mediaItem = this.W;
            if (mediaItem != null && subtitleTrackInfo.id != mediaItem.id) {
                Log.w("VideoPlayerContentView", "initViewModel firstCurData not current media subtitleTrackInfo");
                return;
            }
            this.Y0 = subtitleTrackInfo.delayTime;
            Log.d("VideoPlayerContentView", "initViewModel mFirstTrackDelay =" + this.Y0);
            if ((!defpackage.w.h() || (defpackage.n.a.booleanValue() && !defpackage.n.b.booleanValue())) && (subtitleVideoView = this.V0) != null) {
                subtitleVideoView.setFirstTrackSubtitle(subtitleTrackInfo);
                this.V0.setFirstTrackDelay((long) this.Y0);
            }
        } else {
            SubtitleVideoView subtitleVideoView2 = this.V0;
            if (subtitleVideoView2 != null) {
                subtitleVideoView2.setFirstTrackSubtitle(null);
            }
            this.Y0 = 0.0f;
        }
        this.g1 = subtitleTrackInfo;
        if (!defpackage.w.h()) {
            D8();
            return;
        }
        boolean zF8 = f8(subtitleTrackInfo);
        AISubtitleVideoView aISubtitleVideoView = this.W0;
        if (aISubtitleVideoView != null) {
            aISubtitleVideoView.setIsShowAISwitch(zF8);
        }
        MediaItem mediaItem2 = this.W;
        if (mediaItem2 != null) {
            ny5.a(mediaItem2.displayName, VideoPlayManager.X().i0(), subtitleTrackInfo);
        }
    }

    public final void C6(Switch r1, View view) {
        if (R4(r1)) {
            return;
        }
        if (S4(this.g1) && S4(this.h1)) {
            return;
        }
        if (pp3.j() && !c5(this.g1)) {
            ToastUtils.s(R.string.subbtitle_format_not_support_custom);
            return;
        }
        this.i1 = true;
        showCustomizeSubtitleView();
        hb0.markDirect("vd_cp_subtitle_pop_customize_cl");
    }

    public final void C8(boolean z2) {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setForceHideUIState(z2);
        }
        this.f.setForceHideUIState(z2);
    }

    public final void D4(boolean z2) {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.ll_video_gestures_guide);
        this.c0 = z2;
        if (z2 || !this.b0) {
            p06.q0(null, null, "vd_cp_guide", 9324L);
            GuideView.showFragment(getContext(), frameLayout, GuideView.guideAll, 0, new GuideView.a() {
                @Override
                public final void a() {
                    this.a.j4();
                }
            });
            w6c.r(getContext(), "finished_scale_guide", true);
        } else if (!w6c.c(getContext(), "finished_scale_guide", false)) {
            GuideView.showFragment(getContext(), frameLayout, GuideView.guideScale, 0, new GuideView.a() {
                @Override
                public final void a() {
                    this.a.j4();
                }
            });
            w6c.r(getContext(), "finished_scale_guide", true);
        }
        if (this.b0) {
            return;
        }
        w6c.r(getContext(), "finished_video_guide", true);
    }

    public final void D5(List list) {
        this.f1.clear();
        this.f1.addAll(list);
    }

    public final void D6(Switch r3, View view) {
        if (R4(r3)) {
            return;
        }
        this.i1 = true;
        Intent intent = new Intent(this.D, (Class<?>) SubtitleManagerActivity.class);
        intent.putExtra("video_name", this.T);
        intent.putExtra("media_id", this.v.playMediaItem() == null ? 0 : this.v.playMediaItem().id);
        MediaItem mediaItem = this.W;
        intent.putExtra("data", mediaItem == null ? "" : mediaItem.data);
        f5.b(intent, BaseConstant.c, this.D);
        f16.g(1);
    }

    public final void D7(boolean z2, boolean z3, View view) {
        if (z2) {
            I3(0, this.g1, this.Y0, false);
        } else {
            if (S4(this.h1)) {
                return;
            }
            I3(1, this.h1, this.Z0, false);
        }
    }

    public final void D8() {
        if (defpackage.w.h() || this.V1 == null) {
            return;
        }
        this.V1.setImageResource(T4(this.g1) || T4(this.h1) ? R.drawable.video_play_subtitle_light : R.drawable.video_play_subtitle);
    }

    public final void E4() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setPlayViewStatusChangeListener(new PlayerViewController.a() {
                @Override
                public final void a(boolean z2) {
                    this.a.y5(z2);
                }
            });
        }
    }

    public final void E5(SubtitleTrackInfo subtitleTrackInfo) {
        LogUtils.i("VideoPlayerContentView", "initViewModel secondCurData subtitleTrackInfo =" + subtitleTrackInfo);
        if (subtitleTrackInfo != null) {
            MediaItem mediaItem = this.W;
            if (mediaItem != null && subtitleTrackInfo.id != mediaItem.id) {
                LogUtils.O("VideoPlayerContentView", "initViewModel secondCurData not current media subtitleTrackInfo");
                return;
            }
            this.V0.setSecondTrackSubtitle(subtitleTrackInfo);
            float f2 = subtitleTrackInfo.delayTime;
            this.Z0 = f2;
            this.V0.setSecondTrackDelay((long) f2);
        } else {
            this.V0.setSecondTrackSubtitle(null);
            this.Z0 = 0.0f;
        }
        this.h1 = subtitleTrackInfo;
        D8();
    }

    public final void E6(TextView textView, View view) {
        E7(this.G.A0(), true, textView, true);
        ny5.f(null, "settings", "vd_video_aisub_sourlang");
    }

    public final void E7(final boolean z2, boolean z3, TextView textView, final boolean z4) {
        View viewH4 = H4(R.layout.subtitle_ai_language_dialog_container);
        SubtitleAILanguageSelectView subtitleAILanguageSelectView = (SubtitleAILanguageSelectView) viewH4.findViewById(R.id.subtitle_ai_language_select_view);
        if (z4) {
            subtitleAILanguageSelectView.setSelectLanguage(z3 ? defpackage.n.d : defpackage.n.e);
        } else {
            subtitleAILanguageSelectView.setSelectLanguage(z3 ? defpackage.n.f : defpackage.n.g);
        }
        subtitleAILanguageSelectView.initSubtitleRv(z3, z4);
        subtitleAILanguageSelectView.setSubtitleItemSelectCallback(new p(z3, z4, z2, textView));
        showSettingDialogView(isHorizontalShowDialog(), viewH4, true);
        viewH4.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.a6(z4, z2, view);
            }
        });
    }

    public final void E8(boolean z2) {
        af9.a = z2 ? 1 : 0;
        this.G.W1(z2);
        this.C.setAlpha(z2 ? 0.0f : 255.0f);
        P7(this.j0, z2 ? 0 : 8);
        F8(z2);
        updateSubtitleVisibility();
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setMusicMode(z2);
        }
        this.f.setMusicMode(z2);
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            P7(musicModelMainLayout, z2 ? 0 : 8);
            if (z2 && pp3.l()) {
                this.j0.setPadding(0, com.transsion.utils.a.d(this.E, 20.0f), 0, 0);
            }
        }
        PlayVideoData playVideoData = this.b;
        if (playVideoData != null) {
            playVideoData.isMusicMode = z2;
        }
        G8();
    }

    public final void F5(Switch r2, boolean z2, View view) {
        if (R4(r2)) {
            return;
        }
        hb0.markDirect("vd_cp_subtitle_pop_addlocalsub");
        if ((z2 ? this.e1 : this.f1).isEmpty() && VideoPlayManager.X().h0().isEmpty()) {
            F7(true, false, true, !z2 ? 1 : 0);
        } else {
            G7(true, false, true, !z2 ? 1 : 0);
        }
    }

    public final void F6(TextView textView, View view) {
        E7(this.G.A0(), false, textView, true);
        ny5.f(null, "settings", "vd_video_aisub_tranlang");
    }

    public final void F7(boolean z2, final boolean z3, boolean z4, int i2) {
        int i3;
        String str;
        View viewH4 = H4(R.layout.subtitle_local_select_dialog);
        showSettingDialogView(isHorizontalShowDialog(), viewH4, z4);
        View viewFindViewById = viewH4.findViewById(R.id.topPlaceHolder);
        if (Y4() || V4()) {
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 20.0f)));
        } else if (U4()) {
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 170.0f)));
        } else if (W4()) {
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 140.0f)));
        } else {
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, 0));
        }
        SubtitleLocalSelectView subtitleLocalSelectView = (SubtitleLocalSelectView) viewH4.findViewById(R.id.subtitle_local_select_view);
        subtitleLocalSelectView.setTrackValue(i2);
        subtitleLocalSelectView.setSubtitleOperateListener(this.p4);
        MediaItem mediaItemR = this.G.R();
        if (mediaItemR != null && (str = mediaItemR.data) != null) {
            subtitleLocalSelectView.setCurrentPath(str.contains("/") ? av3.u(mediaItemR.data) : ay9.b(this.D, mediaItemR.data).getPath());
        }
        TextView textView = (TextView) subtitleLocalSelectView.findViewById(R.id.tv_title);
        if (this.A) {
            i3 = i2 == 0 ? R.string.subtitle_select_1 : R.string.subtitle_select_2;
        } else {
            i3 = R.string.subtitle_select;
        }
        textView.setText(i3);
        View viewFindViewById2 = viewH4.findViewById(R.id.title_bar_back);
        P7(viewFindViewById2, z2 ? 0 : 8);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.b6(z3, view);
            }
        });
    }

    public final void F8(boolean z2) {
        ViewStub viewStub;
        if (this.k0 == null && z2 && (viewStub = (ViewStub) findViewById(R.id.bg_music_mode_stub)) != null) {
            this.k0 = viewStub.inflate();
        }
        View view = this.k0;
        if (view != null) {
            P7(view, z2 ? 0 : 8);
        }
    }

    public final void G4(woc wocVar) {
        Guideline guideline;
        if (wocVar == null || (guideline = this.p) == null || this.n == null || this.p0 == null) {
            return;
        }
        if (wocVar.h) {
            guideline.setGuidelinePercent(0.5f);
            this.n.jumpToState(R.id.start);
            return;
        }
        if (wocVar.f) {
            guideline.setGuidelinePercent(wocVar.g ? 0.3f : 0.5f);
            this.n.jumpToState(R.id.start);
            return;
        }
        int i2 = wocVar.a;
        if (i2 == 0) {
            guideline.setGuidelinePercent(0.382f);
            this.p0.setGuidelinePercent(0.5f);
            this.n.jumpToState(R.id.start);
            return;
        }
        if (i2 == 1) {
            if (wocVar.g) {
                guideline.setGuidelinePercent(0.5f);
                this.p0.setGuidelinePercent(0.5f);
                this.n.jumpToState(R.id.start);
                return;
            } else {
                guideline.setGuidelinePercent(0.0f);
                this.p0.setGuidelinePercent(0.382f);
                this.n.jumpToState(R.id.end);
                return;
            }
        }
        if (i2 == 2) {
            guideline.setGuidelinePercent(0.5f);
            this.p0.setGuidelinePercent(0.382f);
            this.n.jumpToState(R.id.start);
        } else {
            if (i2 != 3) {
                return;
            }
            if (!wocVar.g || wocVar.c) {
                guideline.setGuidelinePercent(0.5f);
                this.n.jumpToState(R.id.start);
            } else {
                guideline.setGuidelinePercent(0.0f);
                this.p0.setGuidelinePercent(0.5f);
                this.n.jumpToState(R.id.end);
            }
        }
    }

    public final void G5(Switch r1, boolean z2, View view) {
        if (R4(r1)) {
            return;
        }
        Q4(!z2 ? 1 : 0);
    }

    public final void G7(boolean z2, final boolean z3, boolean z4, int i2) {
        int i3;
        View viewH4 = H4(R.layout.subtitle_select_dialog);
        showSettingDialogView(isHorizontalShowDialog(), viewH4, z4);
        setMaskDialogRootLayoutParams((LinearLayout) viewH4.findViewById(R.id.mask_root_view));
        SubtitleSelectView subtitleSelectView = (SubtitleSelectView) viewH4.findViewById(R.id.subtitle_select_view);
        subtitleSelectView.setTrackValue(i2);
        subtitleSelectView.setSubtitleOperateListener(this.p4);
        String str = this.G.R().data;
        if (str != null) {
            subtitleSelectView.setCurrentPath(av3.u(str));
        }
        TextView textView = (TextView) subtitleSelectView.findViewById(R.id.tv_title);
        if (this.A) {
            i3 = i2 == 0 ? R.string.subtitle_select_1 : R.string.subtitle_select_2;
        } else {
            i3 = R.string.subtitle_select;
        }
        textView.setText(i3);
        View viewFindViewById = viewH4.findViewById(R.id.iv_title_bar_back);
        P7(viewFindViewById, z2 ? 0 : 8);
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.c6(z3, view);
            }
        });
    }

    public final void G8() {
        if (this.d0) {
            loadVideoCoverInMusicMode();
            H7();
            this.j0.updateRepeatMode();
            this.j0.updateSpeed();
            this.j0.updateFavoriteIcon(this.U0, false);
            this.j0.updateMediaName(this.T);
            this.j0.updatePlayPauseIcon(this.E0);
            this.j0.updateAddToAudioListIcon(this.W);
        }
    }

    public final View H4(int i2) {
        int i3 = 0;
        View viewInflate = LayoutInflater.from(this.E).inflate(i2, (ViewGroup) null, false);
        viewInflate.setLayoutParams(new ConstraintLayout.LayoutParams(-1, -1));
        viewInflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoPlayerContentView.z5(view, motionEvent);
            }
        });
        View viewFindViewById = viewInflate.findViewById(R.id.empty_nav);
        woc wocVar = this.m0;
        boolean z2 = wocVar != null && wocVar.a == 3;
        if (viewFindViewById != null) {
            if (!z2) {
                boolean z3 = Settings.Secure.getInt(this.E.getContentResolver(), "navigation_mode", 0) == 2;
                this.x = z3;
                if (z3) {
                    i3 = 8;
                }
            }
            P7(viewFindViewById, i3);
        }
        return viewInflate;
    }

    public final void H5(Switch r1, boolean z2, View view, View view2) {
        if (R4(r1)) {
            return;
        }
        updateTracksDelay(z2, true, view);
        D7(z2, true, view);
        f16.i((z2 ? this.Y0 : this.Z0) / 1000.0f, (z2 ? this.g1 : this.h1).path, z2 ? "vd_cp_subtitle_pop_syntrack1" : "vd_cp_subtitle_pop_syntrack2");
    }

    public final void H6(List list, TemplateItemAdapter templateItemAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        FileVideoTemplate fileVideoTemplate = (FileVideoTemplate) list.get(i2);
        templateItemAdapter.c(fileVideoTemplate.getTemplateId());
        boolean zO4 = o4(fileVideoTemplate);
        LogUtils.v("VideoPlayerContentView", "Template change result: " + zO4 + ", templateId: " + fileVideoTemplate.getTemplateId());
        if (zO4) {
            CloudVideoPlayInfoManager.a.Y(this.b.mKtFileId, fileVideoTemplate.getTemplateId());
        }
        v4(isHorizontalShowDialog());
    }

    public final void H7() {
    }

    public final void I3(final int i2, final SubtitleTrackInfo subtitleTrackInfo, final float f2, boolean z2) {
        if (this.W == null) {
            Log.e("VideoPlayerContentView", "addSubtitleToVideoTrack failed: mPlayMediaItem is null");
        } else {
            mc7.K(this).g(this.D.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.f5(subtitleTrackInfo, i2, f2, (VideoPlayerContentView) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.g5((Boolean) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    VideoPlayerContentView.h5((Throwable) obj);
                }
            });
        }
    }

    public final void I4() {
        if (this.V0 != null) {
            return;
        }
        this.V0 = (SubtitleVideoView) ((ViewStub) findViewById(defpackage.w.h() ? R.id.tracks_ai_subtitle_view_stub : R.id.tracks_subtitle_view_stub)).inflate();
        J4();
        updateSubtitleVisibility();
        A4();
        this.V0.bindToIPlayer(this.G.f0());
        this.V0.setDragListener(new m());
        L3();
    }

    public final void I5(Switch r1, boolean z2, View view, View view2) {
        if (R4(r1)) {
            return;
        }
        updateTracksDelay(z2, false, view);
        D7(z2, false, view);
        f16.i((z2 ? this.Y0 : this.Z0) / 1000.0f, (z2 ? this.g1 : this.h1).path, z2 ? "vd_cp_subtitle_pop_syntrack1" : "vd_cp_subtitle_pop_syntrack2");
    }

    public final void I6() {
        Toast toast = new Toast(this.E);
        this.d = toast;
        toast.setView(this.L);
        this.d.setGravity(49, 0, 0);
        this.d.setDuration(3000);
        this.d.show();
    }

    public final void I7() {
        if (this.V0 == null) {
            return;
        }
        U6(3, true);
        N7();
        this.V0.setTextAlignment(k6a.e(BaseConstant.q));
        this.V0.setTextAppearance(k6a.f(1));
        this.V0.setTextColor(getResources().getColor(k6a.c(0), this.E.getTheme()));
        this.V0.setTextBackground(ColorUtils.setAlphaComponent(getResources().getColor(k6a.c(1), this.E.getTheme()), 76));
    }

    public final void I8(long j2, long j3, long j4) {
        SeekBar seekBarL4 = l4(false);
        if (seekBarL4 == null) {
            return;
        }
        if (this.h0 == 6) {
            j2 = j3;
        }
        seekBarL4.setProgress(Math.round((j2 * 100) / j3));
    }

    public final void J3(boolean z2) {
        float[] fArr = new float[2];
        if (z2) {
            fArr[0] = 1.0f;
            fArr[1] = m4(true);
        } else {
            fArr[0] = m4(true);
            fArr[1] = 1.0f;
        }
        ObjectAnimator objectAnimator = this.r1;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.s, "guidelinePercent", fArr);
        this.r1 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(500L);
        this.r1.setInterpolator(new k57());
        this.r1.start();
        if (this.q1 == null) {
            O4();
        }
        this.q1.enableClickFullScreen.setValue(Boolean.FALSE);
        ObjectAnimator objectAnimator2 = this.r1;
        q0 q0Var = new q0(Boolean.valueOf(z2), z2);
        this.k3 = q0Var;
        objectAnimator2.addListener(q0Var);
    }

    public final void J4() {
        VideoSubtitleViewModel videoSubtitleViewModel = (VideoSubtitleViewModel) new ViewModelProvider(this.D).get(VideoSubtitleViewModel.class);
        this.d1 = videoSubtitleViewModel;
        videoSubtitleViewModel.getSettingLiveData().observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.A5((SubtitleSettingData) obj);
            }
        });
        this.d1.getFirstTrackData().observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.B5((List) obj);
            }
        });
        this.d1.firstCurData.observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.C5((SubtitleTrackInfo) obj);
            }
        });
        this.d1.getSecondTrackData().observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.D5((List) obj);
            }
        });
        this.d1.secondCurData.observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.E5((SubtitleTrackInfo) obj);
            }
        });
        this.d1.querySettingData(this.D);
        LiveEventBus.b().d("change_video_orientation").observe(this.D, this.y2);
    }

    public final void J5(Boolean bool) {
        post(new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.c != null) {
                    VideoPlayerContentView.this.c.K(false);
                }
            }
        });
    }

    public final void J7() {
        boolean zC = lc3.c(getContext());
        pw2.c = zC;
        InterceptLinearLayout interceptLinearLayout = this.F6;
        if (interceptLinearLayout != null) {
            interceptLinearLayout.setChildClickable(zC);
            this.F6.setAlpha(pw2.c ? 1.0f : 0.5f);
        }
        View view = this.E6;
        if (view != null) {
            P7(view, !pw2.c ? 0 : 8);
        }
    }

    public final void J8(float f2, boolean z2) {
        VideoPlayManager videoPlayManager = this.G;
        videoPlayManager.C2(f2, videoPlayManager.H.mMusicMaxVolume, z2);
    }

    public final void K3(boolean z2) {
        if (!z2) {
            d7();
            b7();
        }
        if (z2 && b5()) {
            Log.d("VideoPlayerContentView", "autoPlayOrPause resume, isOverLayPromptDialogShowing");
            return;
        }
        if (!this.G.w0(this.D)) {
            Log.e("VideoPlayerContentView", "autoPlayOrPause returning");
        } else if (pp3.w() || pp3.j()) {
            this.G.C(z2);
        } else {
            W3(z2);
        }
    }

    public final void K4() {
        if (this.k2 != null) {
            if (com.transsion.utils.a.z(getResources().getConfiguration())) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.k2.getLayoutParams();
                layoutParams.topMargin = com.transsion.utils.a.d(this.E, 8.0f);
                this.k2.setLayoutParams(layoutParams);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.k2.getLayoutParams();
                layoutParams2.topMargin = 0;
                this.k2.setLayoutParams(layoutParams2);
            }
        }
    }

    public final boolean K5(Message message) {
        if (message.what != 0) {
            return true;
        }
        u7();
        return true;
    }

    public final void K6(MediaResolutionItemAdapter mediaResolutionItemAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        if (i2 <= 0 || i2 >= baseQuickAdapter.getData().size()) {
            return;
        }
        MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo = (MIMediaVideoPlayItemInfo) baseQuickAdapter.getData().get(i2);
        mediaResolutionItemAdapter.c(mIMediaVideoPlayItemInfo.getResolution());
        CloudMediaPlayInfoManager.k().v(this.q2.getSourceId(), mIMediaVideoPlayItemInfo.getResolution());
        r8(mIMediaVideoPlayItemInfo);
        v4(isHorizontalShowDialog());
    }

    public final void K7() {
        int requestedOrientation = this.D.getRequestedOrientation();
        if (this.w || requestedOrientation == 6) {
            this.D.requestedChangeOrientation(1);
        } else {
            this.D.requestedChangeOrientation(6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void U6(int i2, final boolean z2) {
        if (this.V0 == null) {
            return;
        }
        WindowInfoViewModel windowInfoViewModel = this.p1;
        woc wocVar = (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0) ? null : (woc) this.p1.a.getValue();
        if (this.B0) {
            i2 = 3;
        }
        if (this.w && k6a.b) {
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            final int i3 = 4;
            if (videoTouchLayoutNew != null) {
                LinearLayout linearLayout = (LinearLayout) videoTouchLayoutNew.findViewById(R.id.ll_player_bottom);
                LinearLayout linearLayout2 = (LinearLayout) this.c.findViewById(R.id.ll_video_player_mediaProgressInfoLayout);
                if (linearLayout.getHeight() == 0) {
                    linearLayout.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.U6(i3, z2);
                        }
                    });
                    return;
                } else {
                    int top = linearLayout.getTop() + linearLayout.getHeight();
                    k6a.a = (top + ((linearLayout2.getTop() - top) / 2)) - com.transsion.utils.a.d(Utils.a(), 8.0f);
                }
            }
            i2 = 4;
        }
        SubtitleVideoView subtitleVideoView = this.V0;
        if (subtitleVideoView != null) {
            this.V0.setLayoutParams(k6a.d((RelativeLayout.LayoutParams) subtitleVideoView.getLayoutParams(), i2, false, wocVar, this.V0));
            if (z2) {
                this.V0.setTranslationY(0.0f);
            }
        }
    }

    public final void L3() {
        AISubtitleLottieAnimationView aISubtitleLottieAnimationView = this.V1;
        if (aISubtitleLottieAnimationView == null) {
            return;
        }
        aISubtitleLottieAnimationView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.i5(view);
            }
        });
        if (defpackage.w.h()) {
            defpackage.n.x(this.V1, defpackage.n.a.booleanValue());
        }
    }

    public final void L4() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setVideoPlayClickListener(new e());
            this.c.setRetreatForwardListener(this.G2);
            E4();
        }
    }

    public final void L5(woc wocVar) {
        Log.i("VideoPlayerContentView", "windowOptions  " + wocVar.toString());
        this.m0 = wocVar;
        n7(wocVar);
        SubtitleVideoView subtitleVideoView = this.V0;
        if (subtitleVideoView != null) {
            subtitleVideoView.updateSubtitleViewForWindowChange(this.m0);
        }
    }

    public final void L6(DialogInterface dialogInterface, int i2) {
        if (this.E instanceof Activity) {
            Log.e("VideoPlayerContentView", "showViolationNoticeDialog finish");
            ((Activity) this.E).finish();
        }
    }

    public final void L7(boolean z2, boolean z3) {
        if (Build.VERSION.SDK_INT >= 31) {
            StringBuilder sb = new StringBuilder();
            sb.append("setPictureInPictureActions current is playing? ");
            sb.append(this.h0 == 3);
            LogUtils.i("VideoPlayerContentView", sb.toString());
            o18 o18Var = this.y0;
            o18Var.a = this.C.J;
            if (z2) {
                o18Var.w(this.D, z3 ? R.drawable.ic_floating_pause : R.drawable.ic_floating_play, "", z3 ? 1 : 2, z3 ? 1 : 2, this.z0, this.A0, this.v.hasPreviousInList(), this.v.hasNextInList());
            } else {
                o18Var.r(this.D, z3 ? R.drawable.ic_floating_pause : R.drawable.ic_floating_play, "", z3 ? 1 : 2, z3 ? 1 : 2, this.z0, this.A0, this.v.hasPreviousInList(), this.v.hasNextInList());
            }
        }
    }

    public final void L8(boolean z2) {
        SubtitleSettingData subtitleSettingData = this.X0;
        if (subtitleSettingData != null) {
            U6(subtitleSettingData.location, z2);
        }
    }

    public final void M3(String str, boolean z2) {
        Log.i("VideoPlayerContentView", "callBackFromLanguageManagement languageCode=" + str + ", isFromLanguage=" + z2 + ", mAISubtitleOn=" + defpackage.n.b);
        defpackage.n.h(z2, str, this.W0, defpackage.n.b.booleanValue());
        if (defpackage.n.b.booleanValue()) {
            MMKV.p().w(z2 ? "ai_from_language" : "ai_to_language", str);
        } else {
            MMKV.p().w(z2 ? "local_subtitle_language_from" : "local_subtitle_language_to", str);
        }
        if (defpackage.n.b.booleanValue()) {
            w5a.d(new AILaunageConfig(defpackage.n.d, defpackage.n.e), true);
        } else {
            defpackage.n.v();
            M8(str);
        }
    }

    public final void M4(final View view, final boolean z2, final Switch r5) {
        O8(view, z2);
        view.findViewById(R.id.ll_title).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.F5(r5, z2, view2);
            }
        });
        view.findViewById(R.id.iv_subtitle_close).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.G5(r5, z2, view2);
            }
        });
        LongClickImageView longClickImageView = (LongClickImageView) view.findViewById(R.id.iv_track_add);
        longClickImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.H5(r5, z2, view, view2);
            }
        });
        longClickImageView.setLongClickListener(new d0(r5, z2, view));
        LongClickImageView longClickImageView2 = (LongClickImageView) view.findViewById(R.id.iv_track_minus);
        longClickImageView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.I5(r5, z2, view, view2);
            }
        });
        longClickImageView2.setLongClickListener(new e0(r5, z2, view));
    }

    public final void M5() {
        playNextVideo(true);
    }

    public final void M7() {
        PlayVideoData playVideoData = this.b;
        U8(playVideoData != null && playVideoData.isFromNet);
        x8(false);
    }

    public final void M8(String str) {
        VideoSubtitleViewModel videoSubtitleViewModel = this.d1;
        if (videoSubtitleViewModel == null || videoSubtitleViewModel.firstCurData.getValue() == null || this.W == null) {
            return;
        }
        final SubtitleTrackInfo value = this.d1.firstCurData.getValue();
        value.sub_local_lang_to = str;
        Log.e("VideoPlayerContentView", "updateSubtitleTrackInfo " + value);
        mc7.K(this).g(((BaseActivity) getContext()).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.V6(value, (VideoPlayerContentView) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoPlayerContentView.W6((Boolean) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.e("VideoPlayerContentView", "updateSubtitleTrackInfo error");
            }
        });
    }

    public final boolean N3() {
        return this.G.S() > 1000;
    }

    public final void N5(Boolean bool) {
        settingVideoDirection(this.W);
    }

    public final void N6(DialogInterface dialogInterface) {
        if (this.E.getResources().getConfiguration().orientation == 2) {
            View videoSettingContentView = getVideoSettingContentView();
            MediaItem mediaItemPlayMediaItem = this.v.playMediaItem();
            PlayVideoData playVideoData = this.b;
            showSettingsLayout(videoSettingContentView, mediaItemPlayMediaItem, playVideoData == null || playVideoData.isFromNet);
            showSettingDialogView(isHorizontalShowDialog(), videoSettingContentView);
        }
    }

    public final void N7() {
        int iMin;
        if (this.V0 == null) {
            return;
        }
        woc wocVar = this.m0;
        if (wocVar == null) {
            Point pointJ = com.transsion.utils.a.j();
            iMin = Math.min(pointJ.x, pointJ.y);
        } else {
            iMin = Math.min(wocVar.n, wocVar.o);
            this.j1 = com.transsion.utils.a.d(this.E, this.m0.i);
        }
        this.V0.setTextSize(getResources().getDimensionPixelOffset(R.dimen.subtitle_text_size_pip_max) * (this.j1 / iMin));
        Log.d("VideoPlayerContentView", "setSubtitleTextSize " + this.j1 + StringUtils.COMMA + iMin + StringUtils.COMMA + this.m0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N8() {
        WindowInfoViewModel windowInfoViewModel;
        if (this.V0 != null) {
            SubtitleSettingData subtitleSettingData = this.X0;
            boolean z2 = (subtitleSettingData == null || subtitleSettingData.canDrag()) && this.f.getmUnLockListener() == null;
            if (z2 && (windowInfoViewModel = this.p1) != null && windowInfoViewModel.a.getValue() != 0) {
                int i2 = ((woc) this.p1.a.getValue()).a;
                z2 = (i2 == 1 || i2 == 3) ? false : true;
            }
            Log.i("VideoPlayerContentView", "updateSubtitlesDragState " + z2);
            this.V0.setSettingDrag(z2, this.f.getmUnLockListener() != null);
        }
    }

    public final void O3() {
        if (this.L0) {
            this.N0 = -1;
            this.L0 = false;
            P7(this.o0, 8);
        }
    }

    public final void O5(long j2, long j3) {
        TextView textView = this.w0;
        if (textView != null) {
            textView.setText(wna.c(j2));
        }
        TextView textView2 = this.x0;
        if (textView2 != null) {
            textView2.setText(getContext().getString(R.string.move_horizon_progress, wna.c(j3)));
        }
    }

    public final void O7() {
        int i2 = this.S[this.V];
        rtb.p(this.C, i2);
        if (pp3.w()) {
            this.G.E2(i2);
        }
    }

    public final void O8(View view, boolean z2) {
        CharSequence text;
        TextView textView = (TextView) view.findViewById(R.id.tv_title);
        if (this.A) {
            text = z2 ? getResources().getString(R.string.subtitle_select_1) : getResources().getString(R.string.subtitle_select_2);
        } else {
            text = getResources().getText(R.string.subtitle_select);
        }
        textView.setText(text);
    }

    public final void P3() {
        boolean z2 = false;
        P7(this.f, this.B0 ? 8 : 0);
        SubtitleVideoView subtitleVideoView = this.V0;
        if (subtitleVideoView != null) {
            subtitleVideoView.setPictureInPictureMode(this.B0);
        }
        if (this.B0) {
            I7();
        } else {
            updateSubtitleViews(false);
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            P7(videoTouchLayoutNew, this.B0 ? 8 : 0);
            this.c.setPictureInPictureModeChanged(this.B0);
            VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
            if (videoTouchLayoutNew2 != null && videoTouchLayoutNew2.getmUnLockListener() != null) {
                z2 = true;
            }
            j8(z2);
        }
    }

    public final void P4() {
        PlayVideoData playVideoData;
        if (this.b0 || this.d0 || (((playVideoData = this.b) != null && playVideoData.fromPlayAll) || this.s1 || this.x1)) {
            this.G.T1(true);
        } else {
            if (!pp3.j()) {
                this.G.i1(false);
            }
            n8(false);
            D4(false);
        }
        v7();
    }

    public final void P5(boolean z2) {
        if (z2) {
            Z3();
        }
        P7(this.v0, z2 ? 0 : 8);
        if (z2) {
            this.C.hideScaleStateView();
        }
    }

    public final void P6(com.transsion.widgetslib.dialog.d dVar, CustomTimePicker customTimePicker, int i2, View view) {
        dVar.dismiss();
        long j2 = (((long) customTimePicker.getmSelectedMin()) * 60000) + (((long) customTimePicker.getmSelectedHour()) * DateUtils.MILLIS_PER_HOUR);
        FileOperateUtils.m mVar = this.p3;
        if (mVar != null) {
            mVar.e(j2);
        }
        w6c.G(this.E, i2);
        if (this.d0) {
            p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, ((int) (j2 / 1000)) + "");
        }
        lz5.b(true, "" + ((int) (j2 / 1000)));
    }

    public final void P8() {
        if (this.e != null) {
            Q8();
        }
    }

    public final void Q4(int i2) {
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.path = "NULL";
        subtitleTrackInfo.track = i2;
        subtitleTrackInfo.name = getResources().getString(R.string.no_display_subtitle);
        I3(i2, subtitleTrackInfo, 0.0f, true);
    }

    public final void Q5() throws Throwable {
        C7(true);
    }

    public final void Q6(com.transsion.widgetslib.dialog.d dVar, CustomTimePicker customTimePicker, View view) {
        dVar.dismiss();
        int i2 = this.E.getResources().getConfiguration().orientation;
        View videoSettingContentView = getVideoSettingContentView();
        MediaItem mediaItemPlayMediaItem = this.v.playMediaItem();
        PlayVideoData playVideoData = this.b;
        showSettingsLayout(videoSettingContentView, mediaItemPlayMediaItem, playVideoData == null || playVideoData.isFromNet);
        showSettingDialogView(isHorizontalShowDialog(), videoSettingContentView);
        lz5.b(false, "" + ((int) (((((long) customTimePicker.getmSelectedMin()) * 60000) + (((long) customTimePicker.getmSelectedHour()) * DateUtils.MILLIS_PER_HOUR)) / 1000)));
    }

    public final void Q7() {
        View viewH4 = H4(R.layout.subtitle_local_translate_dialog_container);
        TextView textView = (TextView) viewH4.findViewById(R.id.tv_local_from_language);
        TextView textView2 = (TextView) viewH4.findViewById(R.id.tv_local_to_language);
        showSettingDialogView(isHorizontalShowDialog(), viewH4, true);
        viewH4.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j6(view);
            }
        });
        defpackage.n.m(viewH4, new q(textView, textView2));
    }

    public final void Q8() {
        OSIconTextView oSIconTextView;
        if (this.c == null || (oSIconTextView = this.e) == null) {
            return;
        }
        Object parent = oSIconTextView.getParent();
        if (!(parent instanceof View)) {
            Log.e("lockLayoutHeight", "mUnlock does not have a valid parent view.");
            return;
        }
        int[] iArr = new int[2];
        ((View) parent).getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        int[] lockLocation = this.c.getLockLocation();
        float f2 = lockLocation[0];
        float f3 = lockLocation[1];
        float f4 = f2 - i2;
        float f5 = f3 - i3;
        if (f2 >= 0.0f && f3 >= 0.0f) {
            this.e.setX(f4);
            this.e.setY(f5);
        }
        this.e.getLocationOnScreen(new int[2]);
    }

    public final long R3(Uri uri) throws Throwable {
        Log.d("VideoPlayerContentView", "checkUri:" + uri);
        MediaMetadataRetriever mediaMetadataRetriever = null;
        try {
            try {
                int iA = gpb.a(uri);
                if (iA != 0) {
                    return iA;
                }
                MediaMetadataRetriever mediaMetadataRetriever2 = new MediaMetadataRetriever();
                try {
                    mediaMetadataRetriever2.setDataSource(this.E, uri);
                    gpb.e(uri, mediaMetadataRetriever2);
                    try {
                        mediaMetadataRetriever2.close();
                        return 1L;
                    } catch (Exception unused) {
                        return 1L;
                    }
                } catch (Exception e2) {
                    e = e2;
                    mediaMetadataRetriever = mediaMetadataRetriever2;
                    e.printStackTrace();
                    gpb.f(uri);
                    if (mediaMetadataRetriever == null) {
                        return -1L;
                    }
                    try {
                        mediaMetadataRetriever.close();
                        return -1L;
                    } catch (Exception unused2) {
                        return -1L;
                    }
                } catch (Throwable th) {
                    th = th;
                    mediaMetadataRetriever = mediaMetadataRetriever2;
                    if (mediaMetadataRetriever != null) {
                        try {
                            mediaMetadataRetriever.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean R4(Switch r1) {
        return defpackage.w.h() && r1 != null && r1.isChecked();
    }

    public final void R6(Button button, com.transsion.widgetslib.dialog.d dVar, int i2, int i3) {
        Log.i("VideoPlayerContentView", "onTimeChangeListener hour: " + i2 + ", minute: " + i3);
        button.setEnabled((i2 == 0 && i3 == 0) ? false : true);
        dVar.setTitle(getResources().getString(R.string.play_the_countdown, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public final void R7() {
        View viewH4 = H4(R.layout.video_audio_track_dialog);
        setMaskDialogRootLayoutParams((LinearLayout) viewH4.findViewById(R.id.mask_root_view));
        RecyclerView recyclerView = (RecyclerView) viewH4.findViewById(R.id.audio_track_recycleView);
        final AudioTrackItemAdapter audioTrackItemAdapter = new AudioTrackItemAdapter(this.E);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.E));
        recyclerView.setAdapter(audioTrackItemAdapter);
        final List listP = this.G.P();
        audioTrackItemAdapter.setNewData(listP);
        audioTrackItemAdapter.r(this.G.N());
        showSettingDialogView(isHorizontalShowDialog(), viewH4, true);
        audioTrackItemAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                this.b.k6(audioTrackItemAdapter, listP, baseQuickAdapter, view, i2);
            }
        });
        sn5.b(listP, this.G.N());
    }

    public final void R8(MediaItem mediaItem) {
        if (mediaItem == null || mediaItem.getMiMediaInfo() == null || mediaItem.getMiMediaInfo().getMiMediaVideoPlayItemInfo() == null) {
            return;
        }
        MIMediaVideoPlayItemInfo miMediaVideoPlayItemInfo = mediaItem.getMiMediaInfo().getMiMediaVideoPlayItemInfo();
        PlayVideoData playVideoData = this.b;
        if (playVideoData != null) {
            playVideoData.playUri = Uri.parse(miMediaVideoPlayItemInfo.getVideoUrl());
            this.b.duration = miMediaVideoPlayItemInfo.getDuration() * 1000;
            this.b.playPosition = CloudMediaPlayInfoManager.k().l(mediaItem.getMiMediaInfo().getVideoId()) * 1000;
            this.b.setMiMediaInfo(mediaItem.getMiMediaInfo());
            this.b.getMiMediaInfo().setMIMediaVideoPlayItemInfo(miMediaVideoPlayItemInfo);
        }
    }

    public void S3(boolean z2) {
        T3(z2, false);
    }

    public final boolean S4(SubtitleTrackInfo subtitleTrackInfo) {
        if (pp3.j()) {
            return false;
        }
        return subtitleTrackInfo == null || TextUtils.equals(subtitleTrackInfo.path, "NULL") || TextUtils.isEmpty(subtitleTrackInfo.path);
    }

    public final void S5(List list, SeekView seekView, SpeedAdapter speedAdapter, int i2) {
        if (i2 < 0 || i2 >= list.size()) {
            Log.w("VideoPlayerContentView", "onItemClick: index out of range(%d)" + i2);
            return;
        }
        float spV = ((Speed) list.get(i2)).getSpV();
        updateSpeed(spV, ((Speed) list.get(i2)).getSpS());
        hb0.markTrackTwo("vd_cp_speed_cl", "speed_btn", Float.valueOf(spV), "rotate_status", Integer.valueOf(this.G.G()));
        seekView.setSelectValue((int) (spV * 100.0f), true);
        speedAdapter.r(i2);
    }

    public final void S6(View view) {
        farYoutube();
    }

    public final void S7(int i2, String str) {
        if (this.B0 || this.x1 || this.mHadShowBlockTip) {
            return;
        }
        this.mHadShowBlockTip = true;
        Context context = this.E;
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            return;
        }
        ToastUtils.s(i2);
        wy5.a(str);
    }

    public final void S8() {
        if (!pp3.a || this.f == null) {
            return;
        }
        if (this.y) {
            h8();
        }
        T8(this.y);
    }

    public void T3(boolean z2, boolean z3) {
        PlayVideoData playVideoData = this.b;
        if ((playVideoData == null || !playVideoData.isPrivate) && !this.J0) {
            if (pp3.i()) {
                if (this.D.isPictureModeAllowed()) {
                    q8();
                    if (z3) {
                        h06.e("localvideo");
                    }
                    p06.o0("vd_pip_authority_status", "status", BooleanUtils.YES);
                    return;
                }
                if (!z3 || MMKV.p().e("autopip_permission", true)) {
                    X7(z2, true, z3);
                }
                p06.o0("vd_pip_authority_status", "status", BooleanUtils.NO);
                return;
            }
            if (!this.D.isAlertWindowPermissionGranted()) {
                if (z2) {
                    p06.f0(null, "vd_cp_adpopup_pip_show", 9324L);
                }
                if (!z3 || MMKV.p().e("autopip_permission", true)) {
                    X7(z2, false, z3);
                }
                p06.o0("vd_pip_authority_status", "status", BooleanUtils.NO);
                return;
            }
            if (z3) {
                h06.e("localvideo");
            }
            p8();
            p06.o0("vd_pip_authority_status", "status", BooleanUtils.YES);
            if (!z3 || MMKV.p().e("is_pip_ges_showed", false) || ((VideoPlayerActivity) this.D).e0 || !pp3.u()) {
                return;
            }
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    VideoPlayerContentView.o5();
                }
            }, 300L);
        }
    }

    public final boolean T4(SubtitleTrackInfo subtitleTrackInfo) {
        return (subtitleTrackInfo == null || TextUtils.equals(subtitleTrackInfo.path, "NULL")) ? false : true;
    }

    public final void T5(SpeedAdapter speedAdapter, int i2, String str) {
        float f2 = (i2 * 1.0f) / 100.0f;
        V8(f2, speedAdapter);
        updateSpeed(f2, str);
        hb0.markTrackTwo("vd_cp_speed_cl", "speed_adjust", Float.valueOf(f2), "rotate_status", Integer.valueOf(this.G.G()));
    }

    public final void T6(View view) {
        farYoutube();
    }

    public final void T7() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.K(false);
            this.c.t();
        }
        View viewH4 = H4(R.layout.video_dolby_setting_pannel);
        viewH4.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
            @Override
            public final void onSystemUiVisibilityChange(int i2) {
                this.b.l6(i2);
            }
        });
        C4(viewH4);
        showSettingDialogView(isHorizontalShowDialog(), viewH4);
    }

    public final void T8(boolean z2) {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setForceShowUIState(z2);
        }
        this.f.setForceShowUIState(z2);
    }

    public final void U3() {
        String str;
        Intent intent = new Intent();
        intent.setClassName(this.E, "com.transsion.magicvideo.edit.EditMainActivity");
        MediaItem mediaItem = this.W;
        if (mediaItem == null || (str = mediaItem.data) == null) {
            Log.w("VideoPlayerContentView", "start videoCut failed");
            return;
        }
        this.J0 = true;
        intent.putExtra("FILE_PATH", str);
        f5.b(intent, 1237, (Activity) getContext());
    }

    public final boolean U4() {
        woc windowOptions = getWindowOptions();
        return windowOptions == null || windowOptions.b();
    }

    public final void U5() {
        this.c.K(false);
    }

    public final void U7() {
        View viewH4 = H4(R.layout.video_eq_pannel);
        showSettingDialogView(isHorizontalShowDialog(), viewH4, true);
        new kc3().q(this.E, viewH4);
    }

    public final void V3(String str, boolean z2) {
        if (!e07.f(getContext())) {
            LogUtils.O("network is connected false, toast and return");
            ToastUtils.s(R.string.no_network);
            return;
        }
        LogUtils.l("deepLinkMmRequest ");
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("tran://ai.core.main/language/manager"));
            intent.putExtra(TrackingKey.PACKAGE_NAME, getContext().getPackageName());
            if (!"none".equals(str)) {
                intent.putExtra("current_language", str);
            }
            intent.putExtra("limit_change", false);
            f5.b(intent, z2 ? 1249 : 1250, this.D);
        } catch (Exception e2) {
            LogUtils.l("deepLinkMmRequest error: " + e2.getMessage());
        }
    }

    public final boolean V4() {
        woc windowOptions = getWindowOptions();
        return windowOptions != null && windowOptions.g();
    }

    public final void V5(woc wocVar) {
        this.j0.setIvCoverSize(wocVar);
    }

    public final Boolean V6(SubtitleTrackInfo subtitleTrackInfo, VideoPlayerContentView videoPlayerContentView) {
        return Boolean.valueOf(tpb.j0().t(this.W.id, subtitleTrackInfo) > 0);
    }

    public final void V7(int i2) {
        if (this.b0 && !m8(i2)) {
            if (this.y && pp3.a) {
                Log.i("VideoPlayerContentView", "<showErrorDialog> had show");
            } else {
                w4();
            }
        }
    }

    public final void V8(float f2, SpeedAdapter speedAdapter) {
        if (speedAdapter != null) {
            speedAdapter.s(f2);
        }
    }

    public final void W3(boolean z2) {
        if (z2) {
            ThreadUtils.o().postDelayed(this.D6, 0L);
            this.D0 = true;
        } else {
            this.D0 = false;
            ThreadUtils.o().removeCallbacks(this.D6);
            this.G.C(false);
        }
    }

    public final boolean W4() {
        woc windowOptions = getWindowOptions();
        return windowOptions != null && windowOptions.c();
    }

    public final void W5() {
        this.c.K(false);
    }

    public final void W7() {
        x4(!MainApp.p(), false);
    }

    public final void W8() {
        Vibrator vibrator = (Vibrator) se.a().getSystemService("vibrator");
        this.Q0 = vibrator;
        if (vibrator.hasVibrator()) {
            this.Q0.vibrate(VibrationEffect.createPredefined(0), new AudioAttributes.Builder().setUsage(6).build());
        }
    }

    public final boolean X4() {
        woc windowOptions = getWindowOptions();
        return windowOptions != null && windowOptions.h();
    }

    public final Boolean X5(MediaItem mediaItem, VideoPlayerContentView videoPlayerContentView) {
        return Boolean.valueOf(i4(mediaItem));
    }

    public final void X7(final boolean z2, final boolean z3, final boolean z4) {
        String string;
        this.G.i1(false);
        if (b5()) {
            return;
        }
        p06.d0("vd_play_pip_setting_show");
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(this.E);
        if (z3) {
            string = getResources().getString(R.string.enable_system_pip_mode_text);
        } else {
            string = getResources().getString(R.string.enable_pip_mode_text, getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player));
        }
        com.transsion.widgetslib.dialog.d dVarA = aVar.k(string).u(R.string.allow, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.n6(z4, z3, z2, dialogInterface, i2);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.o6(z4, z2, dialogInterface, i2);
            }
        }).r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.b.p6(z4, dialogInterface);
            }
        }).A(R.string.enable_pip_mode_title).a();
        this.I = dVarA;
        dVarA.show();
        p06.d0("vd_pip_authority_show");
    }

    public final void Y3() {
        if (this.s0 == null || this.q0 == null || this.r0 == null) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.ll_video_play_left_brightness_stub);
            View viewInflate = viewStub != null ? viewStub.inflate() : null;
            if (viewInflate != null) {
                this.s0 = (LinearLayout) viewInflate;
                this.q0 = (OSSeekbar) viewInflate.findViewById(R.id.seekbar_vertical_left);
                this.r0 = (ImageView) viewInflate.findViewById(R.id.light);
                OSSeekbar oSSeekbar = this.q0;
                if (oSSeekbar != null) {
                    oSSeekbar.setOnTouchListener(new View.OnTouchListener() {
                        @Override
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            return VideoPlayerContentView.p5(view, motionEvent);
                        }
                    });
                }
            }
        }
    }

    public final boolean Y4() {
        woc windowOptions = getWindowOptions();
        return windowOptions != null && windowOptions.d();
    }

    public final void Y5(Boolean bool) {
        this.e0 = bool.booleanValue();
    }

    public final void Y6() {
        this.V0.setTranslationY(this.w ? (int) (((double) this.X0.translateY) / this.c1) : this.X0.translateY);
    }

    public final void Y7(boolean z2) {
        if (this.B0 || !l9.k() || pp3.b) {
            return;
        }
        if (this.i0 == null) {
            this.i0 = new com.transsion.magicvideo.widgets.a();
        }
        this.i0.l(new com.transsion.magicvideo.widgets.a.f() {
            @Override
            public final void a(NewFeatureAdvertise newFeatureAdvertise) {
                this.a.q6(newFeatureAdvertise);
            }
        });
        this.i0.setOnCloseListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.r6(view);
            }
        });
        if (this.G.A0()) {
            this.i0.k(true);
            this.G.p2(false, false);
        }
        this.i0.j(this.E, z2);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.hideNewPlayerFeaturesBubble();
        }
    }

    public final void Z3() {
        if (this.v0 == null || this.w0 == null || this.x0 == null) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.move_horizon_progress_stub);
            View viewInflate = viewStub != null ? viewStub.inflate() : findViewById(R.id.move_horizon_progress);
            if (viewInflate != null) {
                this.v0 = viewInflate;
                this.w0 = (TextView) viewInflate.findViewById(R.id.mv_current_position);
                this.x0 = (TextView) viewInflate.findViewById(R.id.mv_duration);
                woc wocVar = this.m0;
                if (wocVar != null) {
                    setDisPlayUILayoutParams(wocVar);
                }
            }
        }
    }

    public final boolean Z4(int i2) {
        int[] iArr = INVALIDATE_IDS;
        return (i2 == iArr[0] || i2 == iArr[1]) ? false : true;
    }

    public final void Z5() {
        h8();
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.hideRetreatOrForwardTip();
        }
    }

    public final void Z6() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            z4();
        } else {
            viewTreeObserver.addOnPreDrawListener(new l());
        }
    }

    public final void R5(DownloadVideoRecommend.RecommendInfo recommendInfo) {
        if (recommendInfo == null) {
            return;
        }
        b4();
        IntercepMotionLayout intercepMotionLayout = this.J6;
        if (intercepMotionLayout == null) {
            return;
        }
        P7(intercepMotionLayout, 0);
        if (this.w) {
            this.J6.jumpToState(R.id.end);
        } else {
            this.J6.jumpToState(R.id.start);
        }
        this.O6.setOnClickListener(new h0());
        this.P6.setOnClickListener(new i0());
        this.N6.setOnClickListener(new j0(recommendInfo));
        this.K6.setOnClickListener(new k0());
        if (!TextUtils.isEmpty(recommendInfo.getBottom_content())) {
            this.N6.setText(recommendInfo.getBottom_content());
        }
        RequestBuilder<Drawable> requestBuilderLoad = Glide.with(this.E).load2(recommendInfo.getUrl_link());
        int i2 = R.drawable.ic_recommend_def1;
        requestBuilderLoad.error(i2).placeholder(i2).transform(new CenterCrop(), new RoundedCorners(com.transsion.utils.a.d(this.E, 16.0f))).into(this.L6);
        this.M6.setText(recommendInfo.getDescription_content());
        hb0.markKV("vd_cp_pop_show", new hb0.a("value1", Integer.valueOf(recommendInfo.getId())), new hb0.a(ES6Iterator.VALUE_PROPERTY, Integer.valueOf(recommendInfo.getId())), new hb0.a("value2", Integer.valueOf(this.w ? 1 : 0)));
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.J0();
        }
    }

    public final void a4() {
        ViewStub viewStub;
        if (this.o0 != null || (viewStub = (ViewStub) findViewById(R.id.player_speed_choose_view_stub)) == null) {
            return;
        }
        this.o0 = (VideoPlayerSpeedChooserView) viewStub.inflate();
    }

    public final boolean a5() {
        PlayVideoData playVideoData = this.b;
        return playVideoData != null && (playVideoData.isMusicMode || playVideoData.fromPlayAll || this.d0);
    }

    public final void a6(boolean z2, boolean z3, View view) {
        if (z2) {
            d8(z3, false);
        } else {
            Q7();
        }
    }

    public final void a7(MediaItem mediaItem) {
        this.q4.removeCallbacks(this.f4);
        this.q4.postDelayed(this.f4, 500L);
    }

    public final void a8() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.a8();
                }
            });
            return;
        }
        d4();
        LinearLayout linearLayout = this.t0;
        if (linearLayout != null) {
            P7(linearLayout, 0);
            this.t0.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.s6();
                }
            }, 5000L);
        }
    }

    public final void b4() {
        if (this.J6 == null) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.motion_recommend_stub);
            if (viewStub != null) {
                this.J6 = (IntercepMotionLayout) viewStub.inflate();
            } else {
                this.J6 = (IntercepMotionLayout) findViewById(R.id.motion_recommend);
            }
            IntercepMotionLayout intercepMotionLayout = this.J6;
            if (intercepMotionLayout != null) {
                this.K6 = intercepMotionLayout.findViewById(R.id.iv_close_recommend);
                this.L6 = (ImageView) this.J6.findViewById(R.id.iv_recommend_cover);
                this.M6 = (TextView) this.J6.findViewById(R.id.tv_recommend_title);
                this.N6 = (Button) this.J6.findViewById(R.id.bt_play_now);
                this.O6 = (Button) this.J6.findViewById(R.id.bt_replay);
                this.P6 = (Button) this.J6.findViewById(R.id.bt_next);
            }
        }
    }

    public final boolean b5() {
        com.transsion.widgetslib.dialog.d dVar = this.I;
        return dVar != null && dVar.isShowing();
    }

    public final void b6(boolean z2, View view) {
        d8(z2, false);
    }

    public final void b7() {
        if (this.d0) {
            if (VideoPlayManager.X().A0()) {
                this.P0 = System.currentTimeMillis();
            }
            VideoPlayManager.X().l2();
        }
    }

    public final void b8(View view) {
        if (this.d1 == null && this.D != null) {
            J4();
        }
        if (this.d1 == null) {
            Log.w("VideoPlayerContentView", "showSubtitleDialog skip: mVideoSubtitleViewModel is null");
            return;
        }
        setMaskDialogRootLayoutParams((LinearLayout) view.findViewById(R.id.rootView));
        View viewFindViewById = view.findViewById(R.id.ll_subtitle_track);
        P7(view.findViewById(R.id.ll_ai_subtitle_setting), defpackage.w.h() ? 0 : 8);
        Switch r9 = (Switch) view.findViewById(R.id.tracks_switch);
        boolean zC = w6c.c(this.E, "tracks_switch", false);
        this.A = zC && pp3.r();
        if (zC && !pp3.r()) {
            w6c.r(this.E, "tracks_switch", false);
        }
        r9.setChecked(zC);
        if (pp3.r()) {
            P7(viewFindViewById, 0);
            if (w6c.c(this.E, "tracks_switch_need_auto_open", true)) {
                w6c.r(this.E, "tracks_switch_need_auto_open", false);
                VideoSubtitleViewModel videoSubtitleViewModel = this.d1;
                if (videoSubtitleViewModel != null && f8(videoSubtitleViewModel.secondCurData.getValue())) {
                    r9.setChecked(zC);
                    Log.d("VideoPlayerContentView", "auto open TRACKS_SWITCH");
                }
            }
        }
        final View viewFindViewById2 = view.findViewById(R.id.track_one);
        final View viewFindViewById3 = view.findViewById(R.id.track_two);
        final View viewFindViewById4 = view.findViewById(R.id.btn_custom);
        View viewFindViewById5 = view.findViewById(R.id.btn_download);
        View viewFindViewById6 = view.findViewById(R.id.btn_ai_custom);
        final Switch r15 = (Switch) view.findViewById(R.id.switch_for_ai_subtitle);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_ai_off_on);
        final TextView textView = (TextView) view.findViewById(R.id.tv_from_language);
        textView.setText(defpackage.j0.b(getContext(), defpackage.n.d));
        final TextView textView2 = (TextView) view.findViewById(R.id.tv_to_language);
        textView2.setText(defpackage.j0.b(getContext(), defpackage.n.e));
        final LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_local_translate_language);
        P7(linearLayout2, defpackage.w.h() ? 0 : 8);
        linearLayout2.setOnClickListener(new c0());
        M4(viewFindViewById2, true, r15);
        M4(viewFindViewById3, false, r15);
        final TextView textView3 = (TextView) findViewById(R.id.tv_custom);
        if (pp3.j()) {
            textView3.setTextColor(c5(this.g1) ? -2171170 : -2132877602);
        }
        this.B = (pp3.r() && !f8(this.d1.firstCurData.getValue()) && f8(this.d1.secondCurData.getValue())) ? false : true;
        r9.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                this.b.y6(r15, viewFindViewById2, viewFindViewById3, viewFindViewById4, linearLayout2, compoundButton, z2);
            }
        });
        this.d1.firstCurData.observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.z6(textView3, viewFindViewById2, viewFindViewById3, viewFindViewById4, linearLayout2, (SubtitleTrackInfo) obj);
            }
        });
        this.d1.secondCurData.observe(this.D, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.A6(r15, viewFindViewById2, viewFindViewById3, viewFindViewById4, linearLayout2, (SubtitleTrackInfo) obj);
            }
        });
        viewFindViewById6.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.B6(r15, view2);
            }
        });
        viewFindViewById4.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.C6(r15, view2);
            }
        });
        viewFindViewById5.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.D6(r15, view2);
            }
        });
        ((LinearLayout) view.findViewById(R.id.ll_ai_language_from)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.E6(textView, view2);
            }
        });
        ((LinearLayout) view.findViewById(R.id.ll_ai_language_to)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.F6(textView2, view2);
            }
        });
        if (defpackage.w.h()) {
            defpackage.n.l(view, viewFindViewById4, viewFindViewById6, r15, this.E, this.W0, this.V1, Boolean.valueOf(f8(this.d1.firstCurData.getValue())), this, linearLayout2, linearLayout);
        }
    }

    public BaseActivity baseActivity() {
        return this.D;
    }

    public final void c4() {
        ViewStub viewStub;
        if (this.g != null || (viewStub = (ViewStub) findViewById(R.id.video_retreat_forward_tip_layout_stub)) == null) {
            return;
        }
        VideoRetreatForwardLayout videoRetreatForwardLayout = (VideoRetreatForwardLayout) viewStub.inflate();
        this.g = videoRetreatForwardLayout;
        videoRetreatForwardLayout.requestedOrientation(this.w);
        this.g.setNavigationMode(this.x);
        this.g.multiWindowModeChanged(this.z);
    }

    public final boolean c5(SubtitleTrackInfo subtitleTrackInfo) {
        if (defpackage.n.b.booleanValue()) {
            return true;
        }
        if (subtitleTrackInfo == null) {
            return false;
        }
        if (!subtitleTrackInfo.isInnerSubtitle) {
            return n7c.a(subtitleTrackInfo.path);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("isSupportCustomed ");
        sb.append(subtitleTrackInfo.sub_format == 1);
        sb.append(", ");
        sb.append(subtitleTrackInfo);
        Log.e("VideoPlayerContentView", sb.toString());
        return subtitleTrackInfo.isTextType();
    }

    public final void c6(boolean z2, View view) {
        d8(z2, false);
    }

    public final void c7(VideoCloudCache videoCloudCache) {
        String str;
        if (videoCloudCache != null) {
            String strA = cz5.a(videoCloudCache.getSize().longValue(), true);
            int iLongValue = (int) (videoCloudCache.getDuration().longValue() / 1000);
            String str2 = CloudTaskFinishCacheManager.a.j(videoCloudCache.getFileId()) != null ? "local" : hb0.CLOUD;
            String fileName = videoCloudCache.getFileName();
            HashMap map = new HashMap();
            map.put("file_size", strA);
            map.put("file_name", fileName);
            map.put("duration", Integer.valueOf(iLongValue));
            map.put("play_source", str2);
            int i2 = MainApp.w;
            if (i2 == 0) {
                str = "none";
            } else {
                str = i2 == 1 ? "wifi" : "mobile";
            }
            map.put(DownloadFacadeEnum.NETWORK_TYPE, str);
            p06.b0("cloud_video_play_show", map);
        }
    }

    public final void c8(boolean z2, boolean z3, boolean z4) {
        this.R0 = true;
        View viewH4 = H4(R.layout.video_subtitle_set_new);
        showSettingDialogView(isHorizontalShowDialog(), viewH4, z4, true);
        b8(viewH4);
    }

    public void checkIsShowBlockDialog() {
        if (pp3.j()) {
            boolean zY = this.G.Y();
            Log.i("VideoPlayerContentView", "checkIsShowBlockDialog_isVideoMediaCodec_" + zY);
            if (this.G != null && !zY && !this.mHadShowBlockTip && di1.f().a != null) {
                PlayVideoData playVideoData = new PlayVideoData();
                int i2 = this.z0;
                int i3 = 0;
                if (i2 == 0) {
                    PlayVideoData playVideoData2 = this.b;
                    i2 = playVideoData2 != null ? playVideoData2.videoWidth : 0;
                }
                playVideoData.videoWidth = i2;
                int i4 = this.A0;
                if (i4 != 0) {
                    i3 = i4;
                } else {
                    PlayVideoData playVideoData3 = this.b;
                    if (playVideoData3 != null) {
                        i3 = playVideoData3.videoHeight;
                    }
                }
                playVideoData.videoHeight = i3;
                Log.i("VideoPlayerContentView", "checkIsShowBlockDialog_controllerLimitBean_not_null");
                if (di1.f().i(playVideoData)) {
                    Log.w("VideoPlayerContentView", "checkIsShowBlockDialog_doShowBlockDialog_isOverLimitResolutionTip_");
                    S7(R.string.visha_resolution_too_high_cause_lagging, "resolution");
                } else if (di1.f().g(playVideoData) && di1.f().j(playVideoData, this.G.l0())) {
                    Log.i("VideoPlayerContentView", "checkIsShowBlockDialog_doShowBlockDialog_isOverHighResolutionTip_");
                    S7(R.string.visha_bitrate_too_high_cause_lagging, "fps");
                }
            } else if (this.mWillShowBitrateTip) {
                S7(R.string.visha_bitrate_too_high_cause_lagging, "frame_drop");
                o16.a(this.v.playMediaItem(), VideoPlayManager.X().l0(), VideoPlayManager.X().k0());
            }
            this.mHadCheckResolution = true;
        }
    }

    public final void d4() {
        if (this.t0 == null || this.u0 == null) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.scan_far_layout_stub);
            if (viewStub != null) {
                View viewInflate = viewStub.inflate();
                this.t0 = (LinearLayout) viewInflate.findViewById(R.id.ll_to_scan_far);
                this.u0 = (TextView) viewInflate.findViewById(R.id.to_scan);
            } else {
                this.t0 = (LinearLayout) findViewById(R.id.ll_to_scan_far);
                this.u0 = (TextView) findViewById(R.id.to_scan);
            }
            TextView textView = this.u0;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.q5(view);
                    }
                });
            }
        }
    }

    public final boolean d5() {
        return this.e.getVisibility() == 0;
    }

    public final Integer d6(VideoPlayerContentView videoPlayerContentView) {
        return Integer.valueOf(suc.a(this.b.mYoutubeId));
    }

    public final void d7() {
        if (this.O0 != 0) {
            p06.a0("video_play_background_status_front", "status", String.valueOf((int) ((System.currentTimeMillis() - this.O0) / 1000)));
            this.O0 = 0L;
        }
    }

    public final void d8(boolean z2, boolean z3) {
        this.R0 = true;
        c8(false, false, true);
    }

    public void deleteVideo(MediaItem mediaItem) {
        if (mediaItem == null) {
            mediaItem = this.v.playMediaItem();
        }
        kz5.d(true);
        FileOperateUtils fileOperateUtils = new FileOperateUtils(this.E, mediaItem);
        this.l1 = fileOperateUtils;
        fileOperateUtils.p = "videoplay";
        af9.b = true;
        fileOperateUtils.f0(new z());
        PlayVideoData playVideoData = this.b;
        if (playVideoData.isPrivate) {
            this.l1.Z(false, true, playVideoData.path);
        } else {
            this.l1.Y(false, true);
        }
    }

    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        VideoTouchLayoutNew videoTouchLayoutNew;
        if (i2 == 1150) {
            this.timerHandler.post(this.mTimerUpdateRunnable);
            return;
        }
        if (i2 == 1053) {
            if (this.j0 == null || VideoPlayManager.X().c0() == null) {
                return;
            }
            boolean zT = tpb.j0().T(VideoPlayManager.X().R().data);
            this.U0 = zT;
            this.j0.updateFavoriteIcon(zT, true);
            return;
        }
        if (i2 == 1165) {
            updateSubtitleViews(false);
            return;
        }
        if (i2 == 1166) {
            updateSubtitleViews(true);
        } else {
            if (i2 != 1175 || (videoTouchLayoutNew = this.c) == null) {
                return;
            }
            videoTouchLayoutNew.L();
        }
    }

    public void dismissViolationDialog() {
        try {
            com.transsion.widgetslib.dialog.d dVar = this.Q6;
            if (dVar != null) {
                if (dVar.isShowing()) {
                    this.Q6.dismiss();
                    Log.d("VideoPlayerContentView", "Violation notice dialog dismissed");
                }
                this.Q6 = null;
            }
        } catch (Exception e2) {
            Log.e("VideoPlayerContentView", "Error dismissing violation notice dialog: " + e2.getMessage());
        }
    }

    public void doAudioBecomingNoisy() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.doAudioBecomingNoisy();
        }
    }

    public void doHeadsetsKeyUp(int i2, KeyEvent keyEvent) {
        Log.d("VideoPlayerContentView", "doHeadsetsKeyUp keyCode:" + i2);
        if (b5()) {
            Log.d("VideoPlayerContentView", "doHeadsetsKeyUp return");
        } else {
            t8();
        }
    }

    public final void e4() {
        if (this.n != null) {
            return;
        }
        if (this.m == null) {
            this.m = (ViewStub) findViewById(R.id.setting_container_view_half_stub);
        }
        ViewStub viewStub = this.m;
        if (viewStub == null) {
            return;
        }
        MotionLayout motionLayout = (MotionLayout) viewStub.inflate();
        this.n = motionLayout;
        this.o = motionLayout.findViewById(R.id.setting_container_mask);
        this.p0 = (Guideline) this.n.findViewById(R.id.guideline_vertical);
        this.p = (Guideline) this.n.findViewById(R.id.guideline_horizontal);
        this.q = (VideoSettingsDialogConstraintLayout) this.n.findViewById(R.id.setting_container_view);
        this.t = (RelativeLayout) this.n.findViewById(R.id.fl_bottom_content);
        this.u = (RelativeLayout) this.n.findViewById(R.id.fl_bottom_content_land);
        VideoSettingsDialogConstraintLayout videoSettingsDialogConstraintLayout = this.q;
        if (videoSettingsDialogConstraintLayout != null) {
            videoSettingsDialogConstraintLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.r5(view);
                }
            });
        }
        View view = this.o;
        if (view != null) {
            view.setOnClickListener(new f());
        }
        G4(this.m0);
    }

    public final boolean e5() {
        BaseActivity baseActivity = this.D;
        return !(baseActivity instanceof VideoPlayerActivity) || ((VideoPlayerActivity) baseActivity).P1();
    }

    public final void e6(Integer num) {
        this.U0 = num.intValue() == 1;
    }

    public final boolean e7() {
        VideoSubtitleViewModel videoSubtitleViewModel;
        return !defpackage.n.b.booleanValue() && defpackage.n.a.booleanValue() && (videoSubtitleViewModel = this.d1) != null && f8(videoSubtitleViewModel.firstCurData.getValue());
    }

    public final void e8() {
        d8(this.G.A0(), true);
    }

    public void exitVideo() {
        BaseActivity baseActivity = this.D;
        if (!(baseActivity instanceof VideoPlayerActivity)) {
            baseActivity.onBackPressed();
            return;
        }
        if (VideoPlayManager.X().G) {
            hb0.markDirect("vd_play_listen_back");
        }
        BaseActivity baseActivity2 = this.D;
        if (((VideoPlayerActivity) baseActivity2).e0) {
            k38.f(baseActivity2);
            return;
        }
        if (((VideoPlayerActivity) baseActivity2).d0) {
            bd4.b(baseActivity2);
        }
        Log.i("VideoPlayerContentView", "exitVideo finish");
        this.D.finish();
        this.I0 = true;
    }

    public void exitVideoPlayView() {
        Log.i("VideoPlayerContentView", "exitVideoPlayView");
        this.G.v2(this.G3);
        this.G.v2(this.q3);
        if (Build.VERSION.SDK_INT <= 29) {
            if (!this.G.B0() || this.G.y0()) {
                this.G.z1(true);
            }
        }
    }

    public VideoTouchLayoutNew f4() {
        VideoLoadingView videoLoadingView;
        if (this.c == null) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.play_ui_panel_stub);
            if (viewStub != null) {
                VideoTouchLayoutNew videoTouchLayoutNew = (VideoTouchLayoutNew) viewStub.inflate();
                this.c = videoTouchLayoutNew;
                if (videoTouchLayoutNew != null) {
                    L4();
                    this.c.setVolumeAndBrightnessChangeListener(this.f3);
                    this.c.setPlayProgressListener(this.p6);
                    this.c.setShowOrHideHorizontalDurationListener(this.q6);
                    PlayVideoData playVideoData = this.b;
                    if (playVideoData != null) {
                        this.c.setFromInternet(playVideoData.isFromNet);
                        this.c.setKtShareInfo(this.b.isKtShare(), this.b.mShareDownloadUrl);
                    }
                    this.c.resume();
                    PlayVideoData playVideoData2 = this.b;
                    if (playVideoData2 != null && playVideoData2.isPrivate) {
                        this.c.setPipDisable();
                    }
                    MediaItem mediaItem = this.W;
                    if (mediaItem != null) {
                        A8(mediaItem);
                    }
                    this.c.onVideoPlayerStateChange(this.h0);
                    this.c.setPlayList(this.v.getPlayList());
                    this.c.setMusicMode(this.d0);
                    this.c.setOnScaleSurfaceListener(this.C);
                    this.c.setPlayerMediaView(this.C);
                    VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
                    View view = this.j;
                    videoTouchLayoutNew2.updatePlayPauseButtonVisibility((view != null && view.getVisibility() == 0) || ((videoLoadingView = this.K) != null && videoLoadingView.getVisibility() == 0));
                    Log.d("VideoPlayerContentView", "VideoPlayerContentView mTouchWindowLayout :" + this.c);
                    this.V1 = (AISubtitleLottieAnimationView) this.c.findViewById(R.id.iv_video_play_subtitle);
                    this.k2 = (RelativeLayout) this.c.findViewById(R.id.top_bar);
                    K4();
                    Q8();
                }
            }
            D8();
            if (this.V1 != null) {
                L3();
            }
        }
        return this.c;
    }

    public final Boolean f5(SubtitleTrackInfo subtitleTrackInfo, int i2, float f2, VideoPlayerContentView videoPlayerContentView) {
        subtitleTrackInfo.track = i2;
        subtitleTrackInfo.delayTime = f2;
        return Boolean.valueOf(tpb.j0().t(this.W.id, subtitleTrackInfo) > 0);
    }

    public final void f6(PlayVideoData playVideoData, VideoCloudCache videoCloudCache, FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        LogUtils.v("VideoPlayerContentView", "handleKtIntent getVideoInfoSingle success: " + fileVideoPlayInfoResult);
        CloudVideoPlayInfoManager cloudVideoPlayInfoManager = CloudVideoPlayInfoManager.a;
        String strS = cloudVideoPlayInfoManager.s(fileVideoPlayInfoResult);
        playVideoData.setData(Uri.parse(strS));
        playVideoData.path = strS;
        playVideoData.setPlayPosition(cloudVideoPlayInfoManager.t(playVideoData.mKtFileId));
        t7();
        if (!this.P || videoCloudCache == null) {
            return;
        }
        c7(videoCloudCache);
        this.P = false;
    }

    public final void f7() {
        String strSubstring = (VideoPlayManager.X().R() == null || VideoPlayManager.X().R().data == null || VideoPlayManager.X().R().data.lastIndexOf(Consts.DOT) == -1) ? "youtube" : VideoPlayManager.X().R().data.substring(VideoPlayManager.X().R().data.lastIndexOf(Consts.DOT) + 1);
        if (MainApp.w == 0) {
            ToastUtils.s(R.string.no_network);
        } else {
            VishaFeedbackPage.e(this.D, getResources().getString(R.string.feedback), 1, strSubstring);
        }
        ez5.b("vd_playshow");
    }

    public final boolean f8(SubtitleTrackInfo subtitleTrackInfo) {
        return subtitleTrackInfo != null && (!subtitleTrackInfo.isInnerSubtitle ? "NULL".equals(subtitleTrackInfo.path) : subtitleTrackInfo.sub_inner_id == -1);
    }

    public void farYoutube() {
        VideoTouchLayoutNew videoTouchLayoutNew;
        if (VideoPlayManager.X().R() == null || this.b == null) {
            return;
        }
        this.U0 = !tpb.j0().T(VideoPlayManager.X().R().data);
        tpb.j0().j(this.U0, VideoPlayManager.X().R());
        h27.c().e(1053, new Object[0]);
        PlayVideoData playVideoData = this.b;
        if (playVideoData.isFromNet && (videoTouchLayoutNew = this.c) != null) {
            videoTouchLayoutNew.updateYoutube(((VideoPlayerActivity) this.D).f0 && r0a.i(playVideoData.mKtFileId));
        }
        j16.d(this.U0, this.b.isFromNet);
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.s5();
            }
        });
    }

    public final void g5(Boolean bool) {
        if (bool.booleanValue()) {
            a7(this.W);
        }
    }

    public final void g6(PlayVideoData playVideoData, VideoCloudCache videoCloudCache, Throwable th) {
        if (!hk3.a(playVideoData.playTitle)) {
            ToastUtils.s(R.string.video_format_not_support);
            w4();
        }
        if (this.P && videoCloudCache != null) {
            c7(videoCloudCache);
            this.P = false;
        }
        LogUtils.l("VideoPlayerContentView", "handleKtIntent getVideoInfoSingle error:" + th.getMessage());
    }

    public final void g8(final List list) {
        StringBuilder sb = new StringBuilder();
        sb.append("showTemplateSettingPanel called, templates size: ");
        sb.append(list != null ? list.size() : 0);
        sb.append(", mSettingDialogShow: ");
        sb.append(this.b1);
        LogUtils.i("VideoPlayerContentView", sb.toString());
        if (this.b1) {
            LogUtils.i("VideoPlayerContentView", "Hiding existing dialog before showing template panel");
            hideSettingDialogViewNoAnim();
        }
        View viewH4 = H4(R.layout.video_template_dialog);
        setMaskDialogRootLayoutParams((LinearLayout) viewH4.findViewById(R.id.mask_root_view));
        RecyclerView recyclerView = (RecyclerView) viewH4.findViewById(R.id.template_recycleView);
        final TemplateItemAdapter templateItemAdapter = new TemplateItemAdapter(this.E);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.E));
        recyclerView.setAdapter(templateItemAdapter);
        if (list != null && !list.isEmpty()) {
            list.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return VideoPlayerContentView.G6((FileVideoTemplate) obj, (FileVideoTemplate) obj2);
                }
            });
            LogUtils.i("VideoPlayerContentView", "Templates sorted, size: " + list.size());
        }
        templateItemAdapter.setNewData(list);
        templateItemAdapter.c(CloudVideoPlayInfoManager.a.u(this.b.mKtFileId));
        boolean zIsHorizontalShowDialog = isHorizontalShowDialog();
        LogUtils.i("VideoPlayerContentView", "Showing template panel, isHorizontal: " + zIsHorizontalShowDialog);
        showSettingDialogView(zIsHorizontalShowDialog, viewH4, true);
        LogUtils.i("VideoPlayerContentView", "Template panel show completed, mSettingDialogShow: " + this.b1);
        templateItemAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                this.b.H6(list, templateItemAdapter, baseQuickAdapter, view, i2);
            }
        });
    }

    public int getPlayPosition() {
        jxb jxbVarF = rtb.f(this.C);
        if (jxbVarF != null) {
            return jxbVarF.c();
        }
        return 0;
    }

    public final void h4(RouterBean routerBean, boolean z2) {
        BaseActivity baseActivity = this.D;
        if (!(baseActivity instanceof VideoPlayerActivity)) {
            baseActivity.onBackPressed();
            return;
        }
        if (VideoPlayManager.X().G) {
            hb0.markDirect("vd_play_listen_back");
        }
        BaseActivity baseActivity2 = this.D;
        if (((VideoPlayerActivity) baseActivity2).e0) {
            k38.f(baseActivity2);
            return;
        }
        if (((VideoPlayerActivity) baseActivity2).d0) {
            if (routerBean != null) {
                RouterUtils.route(routerBean, this.E, true);
            } else {
                bd4.b(baseActivity2);
            }
        }
        fsb.a(VideoPlayManager.X());
        ((VideoPlayerActivity) this.D).w2(z2);
        Log.i("VideoPlayerContentView", "exitVideoWithRouterData finish");
        this.D.finish();
        this.I0 = true;
    }

    public final void h6(boolean z2) {
        if (this.V0 != null) {
            L8(z2);
        }
    }

    public final void h7(int i2) {
        PlayVideoData playVideoDataT = VideoPlayManager.X().T();
        if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoDataT) || (playVideoDataT != null && playVideoDataT.isKt() && CloudTaskFinishCacheManager.a.j(playVideoDataT.mKtFileId) == null)) {
            VideoPlayManager.X().B1();
            if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
                ToastUtils.s(R.string.visha_using_data_warning);
            }
            r4();
        }
    }

    public final void h8() {
        f4();
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.S();
        }
    }

    public boolean hasClickRotate() {
        return !this.a0;
    }

    public void hideLoadingView() {
        U8(false);
    }

    public void hidePlayerLogo() {
        PlayVideoData playVideoData = this.b;
        if (playVideoData == null || playVideoData.mPlayFrom == PlayVideoData.ePlayFrom.INTERNAL.from) {
            return;
        }
        x8(false);
    }

    public void hideSettingDialogViewNoAnim() {
        this.b1 = false;
        VideoSettingsDialogConstraintLayout videoSettingsDialogConstraintLayout = this.q;
        if (videoSettingsDialogConstraintLayout == null || this.n == null) {
            return;
        }
        P7(videoSettingsDialogConstraintLayout, 8);
        P7(this.n, 8);
        this.q.setHideAnimationState(false);
    }

    public void hideTextToast() {
        Toast toast = this.d;
        if (toast != null) {
            toast.cancel();
        }
    }

    public final boolean i4(MediaItem mediaItem) {
        if (mediaItem == null || mediaItem.mineType == null) {
            return false;
        }
        Log.i("VideoPlayerContentView", "filteVideoType  duration:" + mediaItem.duration + " mineType:" + mediaItem.mineType);
        if (mediaItem.duration > 1000) {
            return (mediaItem.mineType.contains("mp4") || mediaItem.mineType.contains("asx") || mediaItem.mineType.contains("f4v") || mediaItem.mineType.contains("mov") || mediaItem.mineType.contains("rmvb")) && vk1.d(mediaItem.data) && vk1.f(mediaItem);
        }
        return false;
    }

    public final void i5(View view) {
        if (!defpackage.w.h()) {
            e8();
            n16.a.a("video_subtitle", this.b);
            return;
        }
        if (this.W0 != null) {
            boolean zBooleanValue = defpackage.n.a.booleanValue();
            boolean z2 = !zBooleanValue;
            if (!zBooleanValue && w5a.a().isEmpty()) {
                showDownloadLanguagePackPromptDialog();
                return;
            }
            defpackage.n.k(this.W0, this.V1, z2);
            updateSubtitleVisibility();
            reLoadCurSubtitleDataForAIState();
            ny5.e(defpackage.n.a.booleanValue(), "vd_video_aisub_switch");
        }
    }

    public final void i6(Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmap);
        View view = this.j;
        if (view != null) {
            view.setBackgroundDrawable(bitmapDrawable);
        }
    }

    public final void i7(MediaItem mediaItem) {
        if (mediaItem == null) {
            return;
        }
        this.m1 = true;
        PlayVideoData playVideoData = this.b;
        if (!playVideoData.isFromNet) {
            Uri uri = mediaItem.getUri();
            PlayVideoData playVideoDataE0 = this.G.e0();
            if (mediaItem.isKtFile && playVideoDataE0 != null) {
                uri = playVideoDataE0.playUri;
            }
            rr3.a("video/*", uri, this.E);
        } else if (playVideoData.isKt()) {
            Context context = this.E;
            PlayVideoData playVideoData2 = this.b;
            RouterUtils.jumpToCloudDriveFileShareActivity(context, playVideoData2.mKtFileId, playVideoData2.playTitle);
        } else {
            rr3.c(mediaItem.originUrl, this.E);
        }
        p06.j0("video_play_share");
        if (this.d0) {
            p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, "share");
        }
    }

    public final void i8(View view, SubtitleTrackInfo subtitleTrackInfo, boolean z2) {
        if (view == null) {
            return;
        }
        boolean zF8 = f8(subtitleTrackInfo);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_subtitle);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_track_delay);
        if (!zF8) {
            P7(linearLayout, 8);
            P7(linearLayout2, 8);
            return;
        }
        P7(linearLayout, 0);
        P7(linearLayout2, 0);
        ((TextView) view.findViewById(R.id.tv_subtitle_title)).setText(subtitleTrackInfo.name);
        TextView textView = (TextView) view.findViewById(R.id.tv_track_delay);
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("%.1f", Float.valueOf((z2 ? this.Y0 : this.Z0) / 1000.0f)));
        sb.append(ExifInterface.LATITUDE_SOUTH);
        textView.setText(sb.toString());
    }

    public void init(Context context) {
        Log.d("VideoPlayerContentView", "init ");
        this.b0 = w6c.c(getContext(), "finished_video_guide", false);
        this.E = context;
        VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
        this.G = videoPlayManagerX;
        videoPlayManagerX.T1(this.b0);
        View viewInflate = View.inflate(context, R.layout.video_player_content, this);
        if (pp3.w()) {
            this.G.E2(this.S[this.V]);
        }
        this.e = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_unlock);
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = (VideoTouchPlayUIDisplayView) viewInflate.findViewById(R.id.video_play_display_ui);
        this.f = videoTouchPlayUIDisplayView;
        videoTouchPlayUIDisplayView.setVolumeAndBrightnessChangeListener(this.f3);
        this.f.setPlayProgressListener(this.p6);
        this.f.setShowOrHideHorizontalDurationListener(this.q6);
        this.w = getResources().getConfiguration().orientation == 2;
        this.F = getResources().getConfiguration().uiMode & 48;
        this.C = (VideoPlayerMediaView) viewInflate.findViewById(R.id.player_media_view);
        this.l = (ViewStub) viewInflate.findViewById(R.id.black_cover_stub);
        af9.e = System.currentTimeMillis();
        this.m = (ViewStub) viewInflate.findViewById(R.id.setting_container_view_half_stub);
        this.r = (Guideline) viewInflate.findViewById(R.id.anchor_middle_line);
        this.s = (Guideline) viewInflate.findViewById(R.id.player_bottom_line);
        this.o1 = (ViewStub) findViewById(R.id.pip_seekbar_bottom_stub);
        this.n1 = (SeekBar) findViewById(R.id.pip_seekbar_bottom);
        this.y0 = new o18();
        F4();
        this.f0 = qqb.a(this.E);
        requestedOrientation(this.w);
        this.a0 = true;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        requestFocusFromTouch();
        this.c1 = ((double) com.transsion.utils.a.l(this.E)) / ((double) com.transsion.utils.a.m(this.E));
    }

    public boolean isHorizontalShowDialog() {
        woc windowOptions = getWindowOptions();
        return windowOptions != null && windowOptions.e();
    }

    public boolean isVideoOrientationLocked() {
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        return (videoTouchPlayUIDisplayView == null || videoTouchPlayUIDisplayView.getmUnLockListener() == null) ? false : true;
    }

    public final void j4() {
        this.b0 = true;
        this.D.forceShowSystemBar(false, this.w);
        C8(false);
        h8();
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setIsHadFinishedGuide(true);
        }
        this.f.setIsHadFinishedGuide(true);
        VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
        if (videoTouchLayoutNew2 != null) {
            videoTouchLayoutNew2.setInGuideMode(false);
        }
        this.f.setInGuideMode(false);
        this.G.T1(true);
        BaseActivity baseActivity = this.D;
        if (baseActivity instanceof VideoPlayerActivity) {
            ((VideoPlayerActivity) baseActivity).x2(true);
        }
        if (this.G.g0() == -1) {
            V7(this.G.W());
        } else if (!this.c0) {
            this.G.p2(true, true);
        }
        this.c0 = false;
    }

    public final void j5(Uri uri, Long l2) {
        jxb jxbVarF;
        Log.d("VideoPlayerContentView", "checkData result:" + l2);
        if (l2.longValue() != -1 || (jxbVarF = rtb.f(this.C)) == null || jxbVarF.a() == -1) {
            return;
        }
        rtb.l(this.C);
        this.C.playUri(this.c, uri, this.b.playPosition);
    }

    public final void j6(View view) {
        d8(this.G.A0(), false);
    }

    public final void j7(boolean z2) {
        defpackage.n.b = Boolean.valueOf(z2);
        reLoadCurSubtitleDataForAIState();
        if (z2) {
            defpackage.n.g(this.V1, this.W0);
        } else {
            defpackage.n.f(this.W0, this.V1, e7());
        }
        MMKV.p().y("ai_subtitke_off_on", defpackage.n.b.booleanValue());
    }

    public final void j8(boolean z2) {
        P7(this.e, z2 ? 0 : 8);
        this.e.getViewTreeObserver().addOnGlobalLayoutListener(new r());
    }

    public final void k4() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.ll_video_gestures_guide);
        if (frameLayout == null || frameLayout.getVisibility() != 0) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(8);
        j4();
    }

    public final void k6(AudioTrackItemAdapter audioTrackItemAdapter, List list, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        MediaItem mediaItem;
        audioTrackItemAdapter.r(((AudioTrack) list.get(i2)).audioId);
        boolean zR1 = this.G.R1(((AudioTrack) list.get(i2)).audioId);
        LogUtils.v("VideoPlayerContentView", " change audio track:" + zR1);
        if (zR1) {
            AudioTrack audioTrack = (AudioTrack) list.get(i2);
            if (this.G.T() != null) {
                audioTrack.id = this.G.T().mediaId;
                this.G.N1(audioTrack);
            }
        }
        p06.o0("vd_cp_setting_track_pop_cl", "status", ((AudioTrack) list.get(i2)).name);
        if (!defpackage.w.h() || (mediaItem = this.W) == null) {
            return;
        }
        ny5.a(mediaItem.displayName, VideoPlayManager.X().i0(), this.g1);
    }

    public final void k7() {
        HashMap map = new HashMap();
        map.put(hb0.KEY_NAME_BTN, "video_play_collapse");
        p06.b0("vd_cp_cl", map);
        h4(null, true);
    }

    public final SeekBar l4(boolean z2) {
        SeekBar seekBar = this.n1;
        if (seekBar != null) {
            return seekBar;
        }
        if (!z2) {
            return null;
        }
        if (this.o1 == null) {
            this.o1 = (ViewStub) findViewById(R.id.pip_seekbar_bottom_stub);
        }
        ViewStub viewStub = this.o1;
        if (viewStub != null) {
            View viewInflate = viewStub.inflate();
            if (viewInflate instanceof SeekBar) {
                this.n1 = (SeekBar) viewInflate;
            } else if (viewInflate != null) {
                this.n1 = (SeekBar) viewInflate.findViewById(R.id.pip_seekbar_bottom);
            }
            this.o1 = null;
        }
        return this.n1;
    }

    public final void l6(int i2) {
        J7();
    }

    public final void l7() {
        PlayVideoData playVideoData = this.b;
        if (playVideoData.isPrivate) {
            return;
        }
        if (!playVideoData.isUserDeleted && !this.G.K()) {
            ToastUtils.s(R.string.cannot_play_video);
        }
        if (VideoPlayManager.X().G) {
            VideoPlayManager.X().W1(false);
        }
        MediaItem next = this.v.getNext();
        LogUtils.w("VideoPlayerContentView", "onVideoNotExist");
        if (next == null) {
            exitVideo();
            Log.i("VideoPlayerContentView", "onVideoNotExist nextMediaItem == null");
            this.G.L1();
            return;
        }
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(next);
        if (playVideoDataConvertToPlayVideoData != null) {
            this.b = playVideoDataConvertToPlayVideoData;
            this.v.setPlayMediaItem(next).selectedPlayMediaItem();
            this.G.x1(next, true, true);
        } else {
            exitVideo();
            Log.i("VideoPlayerContentView", "onVideoNotExist");
            this.G.L1();
        }
    }

    public final void l8(List list) {
        MIMediaVideoPlayInfo mIMediaVideoPlayInfo = this.q2;
        if (mIMediaVideoPlayInfo == null || mIMediaVideoPlayInfo.getSourceId() == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("showVideoResolutionSettingPanel playItemInfos size: ");
        sb.append(list != null ? list.size() : 0);
        sb.append(", mSettingDialogShow: ");
        sb.append(this.b1);
        Log.d("VideoPlayerContentView", sb.toString());
        if (this.b1) {
            Log.d("VideoPlayerContentView", "Hiding existing dialog before showing template panel");
            hideSettingDialogViewNoAnim();
        }
        View viewH4 = H4(R.layout.video_template_dialog);
        setMaskDialogRootLayoutParams((LinearLayout) viewH4.findViewById(R.id.mask_root_view));
        RecyclerView recyclerView = (RecyclerView) viewH4.findViewById(R.id.template_recycleView);
        final MediaResolutionItemAdapter mediaResolutionItemAdapter = new MediaResolutionItemAdapter(this.E);
        recyclerView.setLayoutManager(new CustomLinearLayoutManager(this.E));
        recyclerView.setAdapter(mediaResolutionItemAdapter);
        if (list != null && !list.isEmpty()) {
            list.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return VideoPlayerContentView.J6((MIMediaVideoPlayItemInfo) obj, (MIMediaVideoPlayItemInfo) obj2);
                }
            });
            Log.d("VideoPlayerContentView", "resolution sorted, size: " + list.size());
        }
        mediaResolutionItemAdapter.setNewData(list);
        mediaResolutionItemAdapter.c(CloudMediaPlayInfoManager.k().j(this.q2.getSourceId()));
        showSettingDialogView(isHorizontalShowDialog(), viewH4, true);
        mediaResolutionItemAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                this.b.K6(mediaResolutionItemAdapter, baseQuickAdapter, view, i2);
            }
        });
    }

    public void loadVideoCoverInMusicMode() {
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.setCoverImg(PlayListData.getInstance().playMediaItem());
        }
    }

    public final float m4(boolean z2) {
        if (z2) {
            return 0.5f - (20.0f / com.transsion.utils.a.l(this.E));
        }
        return 1.0f;
    }

    public final void m5(Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            l7();
        }
    }

    public final void m6(DialogInterface dialogInterface, int i2) {
        this.G1 = true;
        V3("none", true);
    }

    public final void m7() {
        p06.j0("video_setting");
        Intent intent = new Intent();
        intent.setClassName(this.E, "com.transsion.tools.activities.SettingActivity");
        intent.setPackage(this.E.getPackageName());
        intent.addCategory("android.intent.category.DEFAULT");
        this.E.startActivity(intent);
    }

    public void multiWindowModeChanged(boolean z2) {
        this.z = z2;
        if (this.D != null && !z2 && this.f.getmUnLockListener() != null) {
            this.D.requestedChangeOrientation(this.g0 == 2 ? 6 : 7);
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.multiWindowModeChanged(z2);
        }
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        if (videoTouchPlayUIDisplayView != null) {
            videoTouchPlayUIDisplayView.multiWindowModeChanged(z2);
        }
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.multiWindowModeChanged(z2);
        }
        P8();
    }

    public final void n4(final int i2, final Intent intent, int i3) {
        final boolean z2 = i3 == 1249;
        BaseActivity baseActivity = this.D;
        if (baseActivity instanceof VideoPlayerActivity) {
            ((VideoPlayerActivity) baseActivity).m2(new Runnable() {
                @Override
                public final void run() {
                    this.b.t5(i2, intent, z2);
                }
            });
        } else {
            if (i2 != -1 || intent == null) {
                return;
            }
            M3(intent.getStringExtra("selected_language"), z2);
        }
    }

    public final void n5(Throwable th) {
        Log.w("VideoPlayerContentView", "the video is no longer exist," + th);
        l7();
    }

    public final void n6(boolean z2, boolean z3, boolean z4, DialogInterface dialogInterface, int i2) {
        if (z2) {
            MMKV.p().y("autopip_permission", false);
        }
        p06.d0("vd_play_pip_setting_set_cl");
        this.D.callAlertWindowPermission(z3);
        if (z4) {
            p06.f0(null, "vd_cp_adpopup_pip_ok_cl", 9324L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:74:0x0122  */
    /* JADX WARN: Code duplicated, block: B:97:0x0184  */
    public final void n7(final woc wocVar) {
        MusicModelMainLayout musicModelMainLayout;
        boolean z2 = wocVar.g;
        boolean z3 = wocVar.c;
        boolean z4 = wocVar.d;
        boolean z5 = wocVar.f;
        boolean z6 = wocVar.h;
        int i2 = wocVar.b;
        this.t1 = z3;
        this.s1 = z4;
        this.x1 = z5;
        this.G.e2(z3);
        boolean z7 = true;
        boolean z8 = false;
        boolean z9 = (this.p == null || this.n == null || this.p0 == null) ? false : true;
        setDisPlayUILayoutParams(wocVar);
        N8();
        if (z6) {
            setPlayerLayout(false);
            if (z9) {
                this.p.setGuidelinePercent(0.5f);
                this.n.jumpToState(R.id.start);
            }
            N7();
            return;
        }
        if (z4 || z5) {
            k4();
        }
        if (z5) {
            setPlayerLayout(false);
            H7();
            if (z9) {
                this.p.setGuidelinePercent(z2 ? 0.3f : 0.5f);
                this.n.jumpToState(R.id.start);
                return;
            }
            return;
        }
        int i3 = wocVar.a;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    if (wocVar.b != 3) {
                        setPlayerLayout(false);
                        MusicModelMainLayout musicModelMainLayout2 = this.j0;
                        if (musicModelMainLayout2 != null) {
                            musicModelMainLayout2.setIvCoverSize(wocVar);
                        }
                    } else if (this.d0) {
                        setPlayerLayout(false);
                        if (this.j0 != null) {
                            post(new Runnable() {
                                @Override
                                public final void run() {
                                    this.b.V5(wocVar);
                                }
                            });
                        }
                        this.r.setGuidelinePercent(0.5f);
                        if (z9) {
                            this.p.setGuidelinePercent(0.5f);
                            this.p0.setGuidelinePercent(0.382f);
                            this.n.jumpToState(R.id.start);
                        }
                    } else if (z2) {
                        hideSettingDialogViewNoAnim();
                        J3(false);
                        if (this.c != null) {
                            postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    this.b.W5();
                                }
                            }, 500L);
                        }
                    } else {
                        setPlayerLayout(false);
                    }
                    z7 = false;
                    this.r.setGuidelinePercent(0.5f);
                    if (z9) {
                        this.p.setGuidelinePercent(0.5f);
                        this.p0.setGuidelinePercent(0.382f);
                        this.n.jumpToState(R.id.start);
                    }
                } else if (i3 == 3) {
                    if (z2) {
                        if (z3) {
                            setPlayerLayout(false);
                            if (z9) {
                                this.p.setGuidelinePercent(0.5f);
                                this.n.jumpToState(R.id.start);
                            }
                        } else {
                            if (this.d0) {
                                setPlayerLayout(true);
                                if (this.j0 == null) {
                                }
                                if (z9) {
                                    this.p.setGuidelinePercent(0.0f);
                                    this.p0.setGuidelinePercent(0.5f);
                                    this.n.jumpToState(R.id.end);
                                }
                                u4();
                                z8 = z7;
                            } else {
                                hideSettingDialogViewNoAnim();
                                J3(true);
                            }
                            z7 = false;
                            if (z9) {
                                this.p.setGuidelinePercent(0.0f);
                                this.p0.setGuidelinePercent(0.5f);
                                this.n.jumpToState(R.id.end);
                            }
                            u4();
                            z8 = z7;
                        }
                        this.r.setGuidelinePercent(0.75f);
                    } else {
                        setPlayerLayout(false);
                        if (z9) {
                            this.p.setGuidelinePercent(0.5f);
                            this.n.jumpToState(R.id.start);
                        }
                        this.r.setGuidelinePercent(0.5f);
                    }
                }
            } else if (z2) {
                setPlayerLayout(false);
                this.r.setGuidelinePercent(0.5f);
                if (z9) {
                    this.p.setGuidelinePercent(0.5f);
                    this.p0.setGuidelinePercent(0.5f);
                    this.n.jumpToState(R.id.start);
                }
            } else {
                if (i2 == 1) {
                    setPlayerLayout(!z3);
                } else {
                    if (this.d0) {
                        setPlayerLayout(true);
                    } else if (z3) {
                        setPlayerLayout(false);
                    } else {
                        J3(true);
                    }
                    if (this.j0 == null || z3 || !this.d0) {
                    }
                    this.r.setGuidelinePercent(0.7f);
                    if (z9) {
                        this.p.setGuidelinePercent(0.0f);
                        this.p0.setGuidelinePercent(0.382f);
                        this.n.jumpToState(R.id.end);
                    }
                    u4();
                }
                z7 = false;
                this.r.setGuidelinePercent(0.7f);
                if (z9) {
                    this.p.setGuidelinePercent(0.0f);
                    this.p0.setGuidelinePercent(0.382f);
                    this.n.jumpToState(R.id.end);
                }
                u4();
            }
            if (z8 || (musicModelMainLayout = this.j0) == null) {
                H7();
            } else {
                musicModelMainLayout.setTransitionListener(new a());
                return;
            }
        }
        K4();
        if (wocVar.b != 1) {
            setPlayerLayout(false);
            MusicModelMainLayout musicModelMainLayout3 = this.j0;
            if (musicModelMainLayout3 != null && !z3) {
                musicModelMainLayout3.setIvCoverSize(wocVar);
            }
            IntercepMotionLayout intercepMotionLayout = this.J6;
            if (intercepMotionLayout != null && intercepMotionLayout.getVisibility() == 0) {
                if (z2) {
                    this.J6.jumpToState(R.id.end);
                } else {
                    this.J6.jumpToState(R.id.start);
                }
            }
        } else if (this.d0) {
            setPlayerLayout(false);
            if (this.j0 == null) {
            }
            this.r.setGuidelinePercent(0.5f);
            if (z9) {
                this.p.setGuidelinePercent(0.382f);
                this.p0.setGuidelinePercent(0.5f);
                this.n.jumpToState(R.id.start);
            }
        } else if (z2) {
            setPlayerLayout(false);
        } else {
            if (z3) {
                setPlayerLayout(false);
            } else {
                J3(false);
            }
            if (this.c != null) {
                postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.U5();
                    }
                }, 500L);
            }
        }
        z7 = false;
        this.r.setGuidelinePercent(0.5f);
        if (z9) {
            this.p.setGuidelinePercent(0.382f);
            this.p0.setGuidelinePercent(0.5f);
            this.n.jumpToState(R.id.start);
        }
        z8 = z7;
        if (z8) {
        }
        H7();
    }

    public final void n8(boolean z2) {
        if (this.D == null) {
            this.D = (VideoPlayerActivity) getContext();
        }
        this.D.forceShowSystemBar(true, false);
        C8(true);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setIsHadFinishedGuide(false);
        }
        this.f.setIsHadFinishedGuide(false);
        VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
        if (videoTouchLayoutNew2 != null) {
            videoTouchLayoutNew2.setInGuideMode(true);
        }
        this.f.setInGuideMode(true);
        if (z2) {
            return;
        }
        this.G.T1(false);
    }

    public final boolean o4(FileVideoTemplate fileVideoTemplate) {
        try {
            this.b.setData(Uri.parse(fileVideoTemplate.getUrl()));
            this.b.path = fileVideoTemplate.getUrl();
            this.b.playPosition = Math.max(0, VideoPlayManager.X().S() - 5000);
            setData(this.b, true);
            PlayVideoData playVideoData = this.b;
            if (playVideoData.duration - playVideoData.playPosition < 1000) {
                this.G.B1();
            }
            LogUtils.v("VideoPlayerContentView", "Switching to template: " + fileVideoTemplate.getTemplateId());
            return true;
        } catch (Exception e2) {
            LogUtils.l("VideoPlayerContentView", "Failed to switch template: " + e2.getMessage());
            return false;
        }
    }

    public final void o6(boolean z2, boolean z3, DialogInterface dialogInterface, int i2) {
        this.G.C(true);
        if (z2) {
            MMKV.p().y("autopip_permission", false);
        }
        p06.d0("vd_play_pip_setting_next_cl");
        if (z3) {
            p06.f0(null, "vd_cp_adpopup_pip_cancel_cl", 9324L);
        }
    }

    public final void o8() {
        AISubtitleVideoView aISubtitleVideoView = this.W0;
        if (aISubtitleVideoView == null) {
            Log.w("VideoPlayerContentView", "startOrStopAIApi: mAISubtitleView is null, skip");
            return;
        }
        if (!this.E0) {
            aISubtitleVideoView.resetSubtitleListener(false);
            defpackage.n.s();
            return;
        }
        aISubtitleVideoView.resetSubtitleListener(true);
        if (defpackage.n.b.booleanValue()) {
            defpackage.n.g(this.V1, this.W0);
        } else if (e7()) {
            defpackage.n.i(this.V1, this.W0);
        }
    }

    public void observeMediaStoreUri(boolean z2) {
        try {
            if (z2) {
                this.E.getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.I6);
            } else {
                this.E.getContentResolver().unregisterContentObserver(this.I6);
            }
        } catch (Exception e2) {
            Log.e("VideoPlayerContentView", "observeMediaStoreUri " + e2.getMessage());
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Z6();
    }

    public boolean onBackPressed() {
        n16.a.a("video_guide_back", this.b);
        MotionLayout motionLayout = this.n;
        if (motionLayout == null || motionLayout.getVisibility() != 0) {
            return false;
        }
        v4(isHorizontalShowDialog());
        return true;
    }

    public void onCallActivityResult(int i2, int i3, Intent intent) {
        Log.d("VideoPlayerContentView", "onCallActivityResult =" + i2 + " resultCode =" + i3);
        if (i2 == BaseConstant.b && i3 == -1) {
            q8();
            return;
        }
        if (i2 == 1234 && this.D.isAlertWindowPermissionGranted()) {
            p8();
            return;
        }
        if (i2 == BaseConstant.a) {
            if (i3 != -1 || intent == null) {
                return;
            }
            this.G.z(intent.getStringExtra("subtitle_result"));
            return;
        }
        if (i2 == 1237) {
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            if (videoTouchLayoutNew != null) {
                videoTouchLayoutNew.updateSpeed();
            }
            this.J0 = false;
            return;
        }
        if (i2 == BaseConstant.c) {
            if (i3 == -1 && intent != null && pp3.r()) {
                ToastUtils.s(intent.getIntExtra("track_value", 0) == 0 ? R.string.subtitle_select_success_1 : R.string.subtitle_select_success_2);
            }
            a7(this.W);
            return;
        }
        if (i2 == BaseConstant.d) {
            VideoSubtitleViewModel videoSubtitleViewModel = this.d1;
            if (videoSubtitleViewModel != null) {
                videoSubtitleViewModel.querySettingData(this.D);
                return;
            }
            return;
        }
        if (i2 == 1249 || i2 == 1250) {
            n4(i3, intent, i2);
        }
    }

    public void onClosePictureInPictureMode() {
        K3(false);
        exitVideo();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0058  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onConfigurationChanged(Configuration configuration) {
        Object[] objArr;
        Context context;
        super.onConfigurationChanged(configuration);
        int i2 = configuration.orientation;
        this.l0 = i2;
        boolean z2 = i2 == 2;
        Log.d("VideoPlayerContentView", "onConfigurationChanged isLandscape:" + z2 + ",screenHeightDp:" + configuration.screenHeightDp + ",mIsScreenLandscape:" + this.w + ",mScreenOrientation:" + this.l0);
        if (this.B0) {
            objArr = true;
        } else {
            BaseActivity baseActivity = this.D;
            if ((baseActivity instanceof VideoPlayerActivity) && ((VideoPlayerActivity) baseActivity).K1()) {
                objArr = true;
            } else {
                objArr = false;
            }
        }
        if (!this.z && this.w && !z2) {
            try {
                if (b5()) {
                    this.I.dismiss();
                    this.I.show();
                }
            } catch (Exception unused) {
            }
        }
        hideSettingDialogViewNoAnim();
        if (objArr == false && this.w != z2) {
            if (this.a0) {
                p06.f0(null, "gravity_rotation", 932460000091L);
            }
            this.w = z2;
            requestedOrientation(z2);
            p06.j(!this.w ? 1 : 0, 0);
        }
        int i3 = configuration.uiMode & 48;
        BaseActivity baseActivity2 = this.D;
        boolean z3 = (baseActivity2 == null || baseActivity2.isInPictureInPictureMode()) ? false : true;
        if (i3 != this.F && z3) {
            this.F = i3;
            this.y = false;
            S8();
            if (b5()) {
                this.I.dismiss();
            }
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null && videoTouchLayoutNew.getLandscapeByRotation()) {
            u4();
        }
        O3();
        if (b5()) {
            this.I.g(configuration);
        }
        if (k38.g() != null && k38.g().isShowing()) {
            k38.g().g(configuration);
        }
        WeakReference weakReference = k38.b;
        if (weakReference == null || weakReference.get() == null || !((com.transsion.widgetslib.dialog.d) k38.b.get()).isShowing() || (context = this.E) == null || !(context instanceof Activity) || ((Activity) context).isFinishing()) {
            return;
        }
        ((com.transsion.widgetslib.dialog.d) k38.b.get()).dismiss();
    }

    public void onDestroy() {
        Log.e("VideoPlayerContentView", "onDestroy " + this.h0);
        o18 o18Var = this.y0;
        if (o18Var != null) {
            o18Var.v(this.D);
        }
        dismissViolationDialog();
        if (Build.VERSION.SDK_INT > 29 && (!this.G.B0() || this.G.y0())) {
            try {
                this.G.z1(true);
            } catch (Exception unused) {
            }
        }
        if (!VideosService.E) {
            VideoPlayManager.X().O = false;
        }
        ThreadUtils.o().removeCallbacks(this.G6);
        ThreadUtils.o().removeCallbacks(this.D6);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.destroy();
            this.c.setVideoPlayClickListener(null);
            this.c.setPlayViewStatusChangeListener(null);
            this.c.hideNewPlayerFeaturesBubble();
        }
        q4();
        Vibrator vibrator = this.Q0;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q4.removeCallbacks(this.f4);
        this.k5 = null;
        WindowInfoViewModel windowInfoViewModel = this.p1;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.x2);
            this.p1.f.removeObserver(this.n0);
        }
        VideoControlModel videoControlModel = this.q1;
        if (videoControlModel != null) {
            videoControlModel.isReleaseTouchEvent.removeObserver(this.V2);
        }
        ObjectAnimator objectAnimator = this.r1;
        if (objectAnimator != null) {
            objectAnimator.removeListener(this.k3);
            this.r1.cancel();
            this.r1 = null;
        }
        this.q4.removeCallbacksAndMessages(null);
        hideTextToast();
        this.d = null;
        this.M = null;
        this.L = null;
        v8();
        if (defpackage.w.h()) {
            l6a.b().d(this.p2);
        }
        LiveEventBus.b().d("change_video_orientation").c();
        w8();
    }

    public void onPause() {
        d7();
        if (Build.VERSION.SDK_INT <= 29) {
            K3(false);
            this.G.v2(this.G3);
            this.G.v2(this.q3);
            this.G.B(false, this.D);
        }
        VideoPlayManager videoPlayManager = this.G;
        if (videoPlayManager != null) {
            videoPlayManager.Y0(true);
        }
    }

    public void onPictureInPictureModeChanged(boolean z2, Configuration configuration) throws Throwable {
        VideoSubtitleViewModel videoSubtitleViewModel;
        BaseActivity baseActivity;
        AISubtitleVideoView aISubtitleVideoView;
        Log.d("VideoPlayerContentView", "onPictureInPictureModeChanged " + z2);
        if (Build.VERSION.SDK_INT >= 31) {
            if (this.B0 != z2 && this.z0 != 0 && this.A0 != 0) {
                L7(false, this.E0);
            }
            this.B0 = z2;
            this.G.b2(z2);
            this.j1 = com.transsion.utils.a.d(this.E, configuration.screenWidthDp);
            if (defpackage.w.h() && (aISubtitleVideoView = this.W0) != null) {
                aISubtitleVideoView.showSettingView(false);
            }
            P3();
            SeekBar seekBarL4 = l4(z2);
            if (seekBarL4 != null) {
                P7(seekBarL4, z2 ? 0 : 8);
            }
            C7(z2);
            if (this.B0) {
                g4();
                F8(false);
                B8(false);
                VideoTouchLayoutNew videoTouchLayoutNew = this.c;
                if (videoTouchLayoutNew != null) {
                    videoTouchLayoutNew.hideTimer();
                }
            } else {
                v8();
                h8();
                MediaItem mediaItem = this.W;
                if (mediaItem != null && (videoSubtitleViewModel = this.d1) != null && (baseActivity = this.D) != null) {
                    videoSubtitleViewModel.queryVideoSubtitles(mediaItem.id, baseActivity);
                    this.d1.querySettingData(this.D);
                }
            }
        }
        this.C.onPictureInPictureModeChanged(z2, configuration);
        k4();
        if (z2) {
            return;
        }
        this.C.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.h8();
            }
        }, 1000L);
    }

    public void onPlayStatusEnd() {
        DownloadVideoRecommend downloadVideoRecommend;
        int iH = w6c.h(this.E);
        if (this.d0 || this.B0 || iH != 0 || (downloadVideoRecommend = MainApp.B) == null || downloadVideoRecommend.getContent_recommend_info_list() == null || MainApp.B.getContent_recommend_info_list().size() <= 0) {
            if (this.d0) {
                return;
            }
            p7(false);
        } else {
            final DownloadVideoRecommend.RecommendInfo recommendInfo = MainApp.B.getRecommendInfo();
            if (Looper.myLooper() == Looper.getMainLooper()) {
                R5(recommendInfo);
            } else {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.R5(recommendInfo);
                    }
                });
            }
        }
    }

    public void onResume() {
        VideoSubtitleViewModel videoSubtitleViewModel;
        if (b5()) {
            if (Build.VERSION.SDK_INT >= 31) {
                if (this.D.isPictureModeAllowed()) {
                    this.I.dismiss();
                    q8();
                }
            } else if (this.D.isAlertWindowPermissionGranted()) {
                this.I.dismiss();
                p8();
            }
        }
        if (Build.VERSION.SDK_INT <= 29) {
            this.G.B(true, this.D);
            K3(true);
            this.G.D1(this.G3);
        }
        VideoPlayManager videoPlayManager = this.G;
        if (videoPlayManager != null) {
            videoPlayManager.Y0(false);
        }
        if (d5()) {
            p4();
        }
        if (!pp3.a) {
            q4();
        }
        if (this.d0 && VideoPlayManager.X().A0()) {
            if (this.P0 != 0) {
                p06.a0("video_play_background_status_back", "status", String.valueOf((int) ((System.currentTimeMillis() - this.P0) / 1000)));
                this.P0 = 0L;
            }
            this.P0 = System.currentTimeMillis();
        }
        if (this.T0) {
            this.T0 = false;
            FileOperateUtils.m mVar = this.p3;
            if (mVar != null) {
                mVar.d();
            }
        }
        if (this.G != null) {
            rtb.a aVarJ = rtb.j();
            this.G.u0(aVarJ.c, aVarJ.a);
            float f2 = aVarJ.c;
            if (f2 < 1.0f) {
                VideoPlayManager videoPlayManager2 = this.G;
                if (videoPlayManager2.H.mAudioVolume > 1.0f) {
                    videoPlayManager2.C2(f2, aVarJ.a, false);
                }
            }
        }
        if (this.R0 && (videoSubtitleViewModel = this.d1) != null) {
            Context context = this.E;
            if (context instanceof BaseActivity) {
                videoSubtitleViewModel.querySystemSubtitles((BaseActivity) context);
            }
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.resume();
        }
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.resume();
        }
        VideoPlayManager.X().e();
        if (this.B0) {
            return;
        }
        yp.i().h();
    }

    public void onSpeedClicked() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.K(false);
        }
        MotionLayout motionLayout = (MotionLayout) H4(R.layout.speed_item_new);
        ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
        woc wocVar = this.m0;
        if (wocVar.a != 0 || wocVar.c || wocVar.g) {
            motionLayout.jumpToState(R.id.land);
        } else {
            motionLayout.jumpToState(R.id.start);
        }
        motionLayout.setLayoutParams(layoutParams);
        float fI = w6c.i(this.E);
        mb8.c();
        float f2 = mb8.b;
        mb8.c();
        float f3 = mb8.a;
        final ArrayList arrayList = new ArrayList(4);
        if (Float.compare(0.5f, f2) != -1 && Float.compare(0.5f, f3) != 1) {
            arrayList.add(new Speed("0.5X", 0.5f));
        }
        if (Float.compare(1.0f, f2) != -1 && Float.compare(1.0f, f3) != 1) {
            arrayList.add(new Speed("1.0X", 1.0f));
        }
        if (Float.compare(1.25f, f2) != -1 && Float.compare(1.25f, f3) != 1) {
            arrayList.add(new Speed("1.25X", 1.25f));
        }
        if (Float.compare(2.0f, f2) != -1 && Float.compare(2.0f, f3) != 1) {
            arrayList.add(new Speed("2.0X", 2.0f));
        }
        j16.f(this.G.G());
        final SeekView seekView = (SeekView) motionLayout.findViewById(R.id.seekView);
        RecyclerView recyclerView = (RecyclerView) motionLayout.findViewById(R.id.speed_list_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.E);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        final SpeedAdapter speedAdapter = new SpeedAdapter(arrayList, R.drawable.speed_item_bg_new, R.drawable.settings_item_textcolor_new);
        recyclerView.setAdapter(speedAdapter);
        speedAdapter.h(new SpeedAdapter.a() {
            @Override
            public final void onItemClick(int i2) {
                this.a.S5(arrayList, seekView, speedAdapter, i2);
            }
        });
        View viewFindViewById = motionLayout.findViewById(R.id.speed_touch_view1);
        viewFindViewById.setOnClickListener(new b0());
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) viewFindViewById.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = (int) (((ViewGroup.MarginLayoutParams) layoutParams2).height * ((this.w || this.t1 || this.x1) ? 0.3f : 1.0f));
        viewFindViewById.setLayoutParams(layoutParams2);
        seekView.setRange((int) (f2 * 100.0f), (int) (f3 * 100.0f), false);
        seekView.setValueChange(new SeekView.b() {
            @Override
            public final void a(int i2, String str) {
                this.a.T5(speedAdapter, i2, str);
            }
        });
        seekView.setSelectValue((int) (100.0f * fI), false);
        V8(fI, speedAdapter);
        showSettingDialogView(isHorizontalShowDialog() || (this.D.getRequestedOrientation() == 6 || this.D.getRequestedOrientation() == 0), motionLayout);
    }

    public void onStart() {
        if (pp3.j() && !this.G.C0(this.C.getSubtitleSurfaceView())) {
            this.G.g2(this.C.getSubtitleSurfaceView(), true);
        }
        if (Build.VERSION.SDK_INT > 29) {
            this.G.B(true, this.D);
            K3(true);
            this.G.v2(this.q3);
            this.G.D1(this.G3);
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.resume();
        }
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.resume();
        }
        if (this.d0) {
            loadVideoCoverInMusicMode();
            H7();
        }
        if (w6c.l(this.E) - System.currentTimeMillis() > 0) {
            this.timerHandler.post(this.mTimerUpdateRunnable);
        } else {
            VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
            if (videoTouchLayoutNew2 != null) {
                videoTouchLayoutNew2.hideTimer();
            }
        }
        observeMediaStoreUri(true);
        this.I0 = false;
        h27.c().b(this, 1150);
        h27.c().b(this, 1053);
        h27.c().b(this, 1165);
        h27.c().b(this, 1166);
        h27.c().b(this, 1175);
    }

    public void onStop() {
        ThreadUtils.o().removeCallbacks(this.G6);
        if (Build.VERSION.SDK_INT > 29) {
            K3(false);
            this.G.v2(this.G3);
            this.G.v2(this.q3);
            this.G.B(false, this.D);
        }
        this.timerHandler.removeCallbacks(this.mTimerUpdateRunnable);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.onStop();
        }
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.pause();
        }
        observeMediaStoreUri(false);
        h27.c().f(this, 1150);
        h27.c().f(this, 1053);
        h27.c().f(this, 1165);
        h27.c().f(this, 1166);
        h27.c().f(this, 1175);
    }

    public void onSystemUiVisibilityChange() {
        BaseActivity baseActivity = this.D;
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        baseActivity.setNavVisibility(videoTouchPlayUIDisplayView != null && videoTouchPlayUIDisplayView.getmUnLockListener() == null);
    }

    public void onUserLeaveHint() {
        if (this.I0) {
            return;
        }
        if (this.i1) {
            this.i1 = false;
            return;
        }
        if (this.m1) {
            this.m1 = false;
        } else if (this.h0 == 3 && !this.d0) {
            T3(false, true);
        }
    }

    public void onVolumeChange() {
        int iT = MediaVolumeManager.s().t();
        int i2 = this.G.H.mMusicMaxVolume;
        J8(((((rtb.c(iT, 0, i2 * 2) * 100) / 2) / i2) * 2.0f) / 100.0f, false);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.onVolumeChange();
        }
    }

    public void onWindowAnimationReady() {
        MediaItem mediaItem = this.k5;
        if (mediaItem == null) {
            return;
        }
        this.k5 = null;
        settingVideoDirection(mediaItem);
    }

    public final void p4() {
        ThreadUtils.o().removeCallbacks(this.G6);
        ThreadUtils.o().postDelayed(this.G6, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public final void p6(boolean z2, DialogInterface dialogInterface) {
        this.G.C(true);
        if (z2) {
            MMKV.p().y("autopip_permission", false);
        }
    }

    public final void p8() {
        h27.c().e(1146, new Object[0]);
        h06.d(true);
        Log.i("VideoPlayerContentView", "startPipMode finish");
        this.D.finish();
    }

    public void playNextVideo(boolean z2) {
        PlayVideoData playVideoDataConvertToPlayVideoData;
        q4();
        if (this.v.hasNext()) {
            MediaItem next = this.v.next();
            if (next != null && (playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(next)) != null) {
                this.b = playVideoDataConvertToPlayVideoData;
            }
            this.G.p1(z2);
        }
    }

    public void playPlayerLogo(MediaItem mediaItem) {
        x8(true);
        if (this.i == null) {
            return;
        }
        ImageView imageView = (ImageView) findViewById(R.id.visha_logo_cover);
        imageView.setImageDrawable(this.E.getDrawable(pp3.c ? R.drawable.ic_videos_log_pre : R.drawable.sp_visha_logo_image));
        ObjectAnimator duration = ObjectAnimator.ofFloat(imageView, "alpha", 1.0f, 0.0f).setDuration(600L);
        duration.setInterpolator(new AccelerateInterpolator());
        duration.addListener(new s(mediaItem));
        duration.start();
    }

    public final void q4() {
        this.q5 = false;
        if (this.k != null) {
            F8(false);
            P7(this.k, 8);
        }
        this.q4.removeCallbacks(this.p5);
    }

    public final void q5(View view) {
        toFarPage();
    }

    public final void q6(NewFeatureAdvertise newFeatureAdvertise) {
        this.i0.k(false);
        this.i0.f();
        l06.c(this.i0.g());
        RouterBean routerBean = this.i0.i() ? newFeatureAdvertise.getAdvertisingList().get(0).getRouterBean() : new RouterBean.RouterBeanBuilder().withType(0).withParam(new RouterBean.RouterData(3, 1)).build();
        if (routerBean.getParam() != null && routerBean.getParam().getBottom_position() == 3) {
            dz5.a = 0;
        }
        RouterUtils.route(routerBean, this.E, true);
        Log.i("VideoPlayerContentView", "showPlayerNewFeatureDialog finish");
        this.D.finish();
    }

    public final void q7(boolean z2, final MediaItem mediaItem) {
        VideoPlayerMediaView videoPlayerMediaView;
        Log.d("VideoPlayerContentView", "onPlayItemChanged " + z2 + StringUtils.COMMA + mediaItem);
        if (!z2) {
            this.K0 = true;
        }
        this.C.setDisplaySurfaceView(true);
        O7();
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.setTime(0);
        }
        boolean z3 = (mediaItem == null || mediaItem.equals(this.W)) ? false : true;
        if (z3 && (videoPlayerMediaView = this.C) != null) {
            videoPlayerMediaView.resetScaleForNewVideo();
        }
        if (this.W != mediaItem) {
            a64.d((BaseActivity) this.E);
        }
        if (!pp3.b && z3) {
            mc7.K(this).g(this.D.bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.X5(mediaItem, (VideoPlayerContentView) obj);
                }
            }).M(vb.a()).d0(k29.c()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.Y5((Boolean) obj);
                }
            });
        }
        a7(mediaItem);
        this.W = mediaItem;
        z8(mediaItem);
        H8();
        X3();
    }

    public final void q8() {
        if (this.D.isOnResumed()) {
            h06.d(true);
            L7(true, this.E0);
            o18.q((Activity) getContext(), 1);
            if (pp3.j()) {
                this.G.b2(true);
            }
        }
    }

    public final void r4() {
        if (this.j != null) {
            Log.d("VideoPlayerContentView", "hideNetError");
            B8(false);
            F8(false);
        }
        Runnable runnable = this.k6;
        if (runnable != null) {
            this.q4.removeCallbacks(runnable);
        }
    }

    public final void r5(View view) {
        v4(isHorizontalShowDialog());
    }

    public final void r6(View view) {
        l06.b(this.i0.g());
        this.i0.f();
        if (this.i0.h()) {
            this.G.p2(false, true);
            this.i0.k(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0058 A[Catch: Exception -> 0x0056, TryCatch #0 {Exception -> 0x0056, blocks: (B:3:0x0002, B:5:0x000c, B:7:0x004c, B:11:0x0062, B:10:0x0058), top: B:15:0x0002 }] */
    public final void r7(MIMediaVideoPlayInfo mIMediaVideoPlayInfo) {
        if (mIMediaVideoPlayInfo != null) {
            try {
                if (mIMediaVideoPlayInfo.getDataList().isEmpty()) {
                    this.b.playUri = Uri.parse("no uri");
                } else {
                    MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo = mIMediaVideoPlayInfo.getDataList().get(0);
                    this.b.playUri = Uri.parse(mIMediaVideoPlayItemInfo.getVideoUrl());
                    this.b.duration = mIMediaVideoPlayItemInfo.getDuration() * 1000;
                    this.b.playPosition = Math.toIntExact(CloudMediaPlayInfoManager.k().l(mIMediaVideoPlayInfo.getSourceId()) * 1000);
                    if (this.b.getMiMediaInfo() != null) {
                        this.b.getMiMediaInfo().setMIMediaVideoPlayItemInfo(mIMediaVideoPlayItemInfo);
                    }
                }
            } catch (Exception e2) {
                Log.e("VideoPlayerContentView", "playMIMediaVideo " + e2);
                return;
            }
        } else {
            this.b.playUri = Uri.parse("no uri");
        }
        t7();
    }

    public final void r8(MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo) {
        PlayVideoData playVideoData = this.b;
        if (playVideoData != null) {
            playVideoData.playUri = Uri.parse(mIMediaVideoPlayItemInfo.getVideoUrl());
            this.b.duration = mIMediaVideoPlayItemInfo.getDuration();
            this.b.playPosition = Math.max(0, VideoPlayManager.X().S() - 5000);
            this.b.getMiMediaInfo().setMIMediaVideoPlayItemInfo(mIMediaVideoPlayItemInfo);
            t7();
        }
    }

    public void reLoadCurSubtitleDataForAIState() {
        if (defpackage.w.h()) {
            Log.d("VideoPlayerContentView", "reLoadCurSubtitleDataForAIState");
            if (this.g1 == null || this.V0 == null) {
                return;
            }
            if (defpackage.n.b.booleanValue() || !defpackage.n.a.booleanValue()) {
                this.V0.setFirstTrackSubtitle(null);
            } else {
                this.V0.setFirstTrackSubtitle(this.g1);
                this.V0.setFirstTrackDelay((long) this.Y0);
            }
        }
    }

    public void refrashFar() {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.refrashFar();
        }
    }

    public void release() {
        VideoPlayManager videoPlayManager = this.G;
        if (videoPlayManager != null) {
            videoPlayManager.E1(false);
        }
    }

    public void requestedOrientation(boolean z2) {
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.requestedOrientation(z2);
        }
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        if (videoTouchPlayUIDisplayView != null) {
            videoTouchPlayUIDisplayView.requestedOrientation(z2);
        }
        VideoPlayManager videoPlayManager = this.G;
        if (videoPlayManager != null) {
            videoPlayManager.V1(z2);
        }
        P8();
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.requestedOrientation(z2);
        }
    }

    public void resumeCheckData() {
        if (this.K0) {
            Q3();
        }
    }

    public final void s4() {
        com.transsion.widgetslib.dialog.d dVar = this.I;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.I.dismiss();
        this.I = null;
    }

    public final void s5() {
        int iG = MMKV.p().g("playListFarvoriteRedSpotCount", 0);
        VideoPlayManager.X().R();
        if (this.U0) {
            if (!this.b.isFromNet) {
                MediaItem mediaItemR = VideoPlayManager.X().R();
                if (mediaItemR != null && mediaItemR.isKtFile) {
                    CloudTaskFinishCacheManager cloudTaskFinishCacheManager = CloudTaskFinishCacheManager.a;
                    Integer numI = cloudTaskFinishCacheManager.i(mediaItemR.data);
                    if (numI != null) {
                        mediaItemR.id = numI.intValue();
                    }
                    mediaItemR.data = cloudTaskFinishCacheManager.j(mediaItemR.data);
                }
                tpb.j0().j(true, VideoPlayManager.X().R());
                return;
            }
            MediaItem mediaItem = new MediaItem();
            PlayVideoData playVideoData = this.b;
            mediaItem.id = playVideoData.mediaId;
            mediaItem.data = playVideoData.mYoutubeId;
            tpb.j0().Q("", -1L, mediaItem, true);
            MMKV.p().y("playListFarvoriteRedSpot", true);
            MMKV.p().t("playListFarvoriteRedSpotCount", iG + 1);
            a8();
            hb0.markDirect("toast_favorite_show");
            h27.c().e(1061, new Object[0]);
            return;
        }
        if (!this.b.isFromNet) {
            MediaItem mediaItemR2 = VideoPlayManager.X().R();
            if (mediaItemR2 != null && mediaItemR2.isKtFile) {
                CloudTaskFinishCacheManager cloudTaskFinishCacheManager2 = CloudTaskFinishCacheManager.a;
                Integer numI2 = cloudTaskFinishCacheManager2.i(mediaItemR2.data);
                if (numI2 != null) {
                    mediaItemR2.id = numI2.intValue();
                }
                mediaItemR2.data = cloudTaskFinishCacheManager2.j(mediaItemR2.data);
            }
            tpb.j0().j(false, VideoPlayManager.X().R());
            return;
        }
        if (iG == 1) {
            MMKV.p().y("playListFarvoriteRedSpot", false);
        }
        if (iG > 0) {
            MMKV.p().t("playListFarvoriteRedSpotCount", iG - 1);
        }
        MediaItem mediaItem2 = new MediaItem();
        PlayVideoData playVideoData2 = this.b;
        mediaItem2.id = playVideoData2.mediaId;
        mediaItem2.data = playVideoData2.mYoutubeId;
        tpb.j0().K(-1, mediaItem2, true);
        h27.c().e(1061, new Object[0]);
    }

    public final void s6() {
        P7(this.t0, 8);
    }

    public final void s8(int i2) {
        if (i2 == 0) {
            return;
        }
        boolean z2 = i2 == 4;
        if (i2 == 1 || z2) {
            BaseActivity baseActivity = this.D;
            if (baseActivity instanceof VideoPlayerActivity) {
                ((VideoPlayerActivity) baseActivity).t1();
            }
        }
        if (isVideoOrientationLocked() || this.E == null || this.D == null || !this.a0) {
            return;
        }
        Log.i("VideoPlayerContentView", "syncSystemOrientationIfNeeded " + i2);
        int iA = qqb.a(this.E);
        if (z2 || iA == 0) {
            if (i2 == 3 || i2 == 4 || !a5()) {
                f5.g(this.D);
            }
        }
    }

    public void setActivityResultLauncher(ActivityResultLauncher<Intent> activityResultLauncher) {
        this.f2 = activityResultLauncher;
    }

    public void setBaseActivity(BaseActivity baseActivity) throws Throwable {
        boolean zIsInPictureInPictureMode;
        Log.d("VideoPlayerContentView", "setBaseActivity " + baseActivity);
        this.D = baseActivity;
        O4();
        P7(this.C, 0);
        this.C.setSurfaceListener(this.k4);
        this.f.setPlayerMediaView(this.C);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setPlayerMediaView(this.C);
        }
        BaseActivity baseActivity2 = this.D;
        if (baseActivity2 != null && (zIsInPictureInPictureMode = baseActivity2.isInPictureInPictureMode()) != this.B0) {
            Log.d("VideoPlayerContentView", "setBaseActivity  inPictureInPictureMode:" + zIsInPictureInPictureMode);
            onPictureInPictureModeChanged(zIsInPictureInPictureMode, getContext().getResources().getConfiguration());
        }
        VideoPlayManager videoPlayManager = this.G;
        if (videoPlayManager != null) {
            videoPlayManager.D1(this.q3);
        }
    }

    public void setData(PlayVideoData playVideoData, boolean z2) {
        if (playVideoData == null) {
            LogUtils.m("VideoPlayerContentView", "setData data is null");
            return;
        }
        this.b = playVideoData;
        if (this.C != null && pp3.w()) {
            VideoPlayerMediaView videoPlayerMediaView = this.C;
            PlayVideoData playVideoData2 = this.b;
            videoPlayerMediaView.setVideoViewSize(playVideoData2.videoWidth, playVideoData2.videoHeight);
        }
        Log.d("VideoPlayerContentView", "setData,reset:" + z2 + "\ndata:" + playVideoData);
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.setPicInPicState(this.b.showPicInPic);
            this.f.setFromInternet(this.b.isFromNet);
            this.c.setFromInternet(this.b.isFromNet);
            this.c.setKtShareInfo(this.b.isKtShare(), this.b.mShareDownloadUrl);
            if (this.b.isPrivate) {
                this.c.setPipDisable();
            }
        }
        hidePlayerLogo();
        PlayVideoData playVideoData3 = this.b;
        if (!playVideoData3.fromBackgroundPlay && !playVideoData3.fromPlayAll) {
            VideoPlayManager.X().W1(false);
            af9.a = 0;
        }
        if (z2) {
            if (!this.b.isMusicMode) {
                VideoPlayManager.X().a2(false);
            }
            setData(playVideoData);
        } else {
            x8(false);
        }
        PlayVideoData playVideoData4 = this.b;
        if (playVideoData4.fromBackgroundPlay) {
            if (VideoPlayManager.X().G) {
                setMusicMode(true);
            }
            x8(false);
        } else if (playVideoData4.fromPlayAll) {
            w6c.t(this.E, "play_repeat_mode", 1);
            this.v.setRepeat(true);
            this.G.J1();
            setMusicMode(true);
            h27.c().e(1145, new Object[0]);
        }
        PlayVideoData playVideoData5 = this.b;
        if (playVideoData5.isFromNet && !r0a.i(playVideoData5.mYoutubeId)) {
            mc7.K(this).g(this.D.bindToLifecycle()).d0(k29.c()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.d6((VideoPlayerContentView) obj);
                }
            }).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.e6((Integer) obj);
                }
            });
        }
        if (this.b.isPrivate) {
            this.D.getWindow().setFlags(8192, 8192);
        }
    }

    public void setDataDelay(PlayVideoData playVideoData, boolean z2) {
        Log.d("VideoPlayerContentView", "setDataDelay,reset:" + z2 + "\ndata:" + playVideoData);
        this.b = playVideoData;
        this.G0 = z2;
        if (this.H0) {
            setData(playVideoData, z2);
        }
    }

    public void setNavigationMode(boolean z2) {
        this.x = z2;
        if (this.c != null) {
            Log.d("VideoPlayerContentView", "setNavigationMode " + z2);
            this.c.setNavigationMode(z2);
        }
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        if (videoTouchPlayUIDisplayView != null) {
            videoTouchPlayUIDisplayView.setNavigationMode(z2);
        }
        VideoRetreatForwardLayout videoRetreatForwardLayout = this.g;
        if (videoRetreatForwardLayout != null) {
            videoRetreatForwardLayout.setNavigationMode(z2);
        }
    }

    public void setStatusPlayUiShow() {
        VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = this.f;
        if (videoTouchPlayUIDisplayView == null || videoTouchPlayUIDisplayView.getmUnLockListener() != null) {
            return;
        }
        h8();
    }

    public void showCustomizeSubtitleView() {
        SubtitleSettingActivity.Q0(this.D);
        hideSettingDialogViewNoAnim();
    }

    public void showDownloadLanguagePackPromptDialog() {
        new com.transsion.widgetslib.dialog.d.a(getContext()).A(com.transsion.playercommon.R.string.visha_download_language_pack).k(getContext().getString(com.transsion.playercommon.R.string.visha_download_language_pack_mesage, getContext().getString(com.transsion.playercommon.R.string.visha_ai_subtitle))).m(com.transsion.playercommon.R.string.os_gdpr_cancel_btn, null).u(com.transsion.playercommon.R.string.download, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.m6(dialogInterface, i2);
            }
        }).F();
    }

    public void showEq() {
        if (pp3.u) {
            T7();
        } else {
            n16.a.a("video_equalizer", this.b);
            U7();
        }
    }

    public void showInfo() {
        k38.n(this.E, this.v.playMediaItem(), true, null);
        p06.j0("video_play_info");
        if (this.d0) {
            p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, "info");
        }
    }

    public void showSettingDialogView(boolean z2, View view) {
        Log.i("==>", "showSettingDialogView:" + z2);
        showSettingDialogView(z2, view, true);
    }

    public void showSettingsLayout(View view, final MediaItem mediaItem, boolean z2) {
        SettingMenu settingMenu;
        VideoSettingItem videoSettingItem;
        PlayVideoData playVideoData;
        if (view == null || this.E == null) {
            Log.w("VideoPlayerContentView", "showSettingsLayout: dialog or context is null");
            return;
        }
        s4();
        boolean z3 = VideoPlayManager.X().R() != null && VideoPlayManager.X().R().isYoutubeUrl;
        int i2 = (T4(this.g1) || T4(this.h1)) ? 1 : 0;
        p06.n0("vd_cp_setting_show", "status", i2);
        View viewFindViewById = view.findViewById(R.id.topPlaceHolder);
        if (viewFindViewById != null) {
            if (com.transsion.utils.a.A()) {
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 66.0f)));
            } else if (Y4() || V4()) {
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 20.0f)));
            } else if (U4()) {
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 170.0f)));
            } else if (W4()) {
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 140.0f)));
            } else {
                viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, com.transsion.utils.a.d(this.E, 20.0f)));
            }
            if (!raa.i(this.E)) {
                viewFindViewById.setOnClickListener(new v());
            }
        }
        CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(this.E, 4);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.playercommon.R.id.rv_setting_menu);
        if (recyclerView == null) {
            Log.w("VideoPlayerContentView", "showSettingsLayout: rv_setting_menu is null");
            return;
        }
        final SettingMenuAdapter settingMenuAdapter = new SettingMenuAdapter();
        recyclerView.setLayoutManager(customGridLayoutManager);
        recyclerView.setAdapter(settingMenuAdapter);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.addItemDecoration(new w(), 0);
        ArrayList arrayList = new ArrayList();
        TypedValue typedValue = new TypedValue();
        PlayVideoData playVideoDataT = VideoPlayManager.X().T();
        Context context = getContext() != null ? getContext() : this.E;
        if (context != null) {
            context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        }
        VideoPlayManager videoPlayManager = this.G;
        boolean z4 = videoPlayManager != null && videoPlayManager.g0() == -1;
        MediaItem mediaItem2 = this.W;
        boolean z5 = (mediaItem2 == null || mediaItem2.data == null) ? false : true;
        PlayVideoData playVideoData2 = this.b;
        boolean z6 = playVideoData2 != null && playVideoData2.isKt();
        boolean z7 = (!z6 || playVideoDataT == null || CloudTaskFinishCacheManager.a.j(playVideoDataT.mKtFileId) == null) ? false : true;
        if (defpackage.w.h() && pp3.t() && !z4 && !z3 && z5) {
            TypedValue typedValue2 = new TypedValue();
            int i3 = i2 != 0 ? com.transsion.common.R.attr.os_platform_basic_color : com.transsion.playercommon.R.color.video_menu_def_clolor;
            if (context != null) {
                context.getTheme().resolveAttribute(i3, typedValue2, true);
            }
            arrayList.add(new SettingMenu((defpackage.w.h() || i2 == 0) ? R.color.os_color_white80 : R.color.platform_select_color, defpackage.w.h() ? com.transsion.widgetslib.R.string.os_AI_subtitles2 : com.transsion.widgetslib.R.string.os_Live_subtitles, com.transsion.playercommon.R.string.subtitle, typedValue2.data, 6));
        }
        if ((pp3.w() || pp3.j()) && !z3 && !z4) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_recording, com.transsion.playercommon.R.string.sound_channel, 0, 8));
        }
        if (!pp3.u) {
            arrayList.add(new SettingMenu(jrb.e().a ? R.color.platform_select_color : R.color.os_color_white80, com.transsion.widgetslib.R.string.os_equalizer, com.transsion.playercommon.R.string.eq, 0, 14));
        }
        MIMediaDataUtils.Companion companion = MIMediaDataUtils.INSTANCE;
        if (companion.isMiMediaVideo(this.b) || !((playVideoData = this.b) == null || !playVideoData.isKt() || z7)) {
            settingMenu = new SettingMenu(R.drawable.ic_definition, R.string.visha_video_quality, 13);
        } else {
            boolean z8 = mediaItem != null && tpb.j0().T(mediaItem.data);
            this.U0 = z8;
            int i4 = z8 ? R.drawable.ic_farvorited_on : R.drawable.ic_farvorite_white_stroke;
            int i5 = z8 ? R.string.unfavorite : R.string.favorites;
            int i6 = z8 ? typedValue.data : 0;
            PlayVideoData playVideoData3 = this.b;
            settingMenu = new SettingMenu(i4, i5, i6, 9, playVideoData3 == null || !playVideoData3.isPrivate);
        }
        arrayList.add(settingMenu);
        if (!companion.isMiMediaVideo(this.b)) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_share, com.transsion.playercommon.R.string.share, 0, 4));
        }
        arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_info, com.transsion.playercommon.R.string.info, 0, 3));
        if ((!(context instanceof BaseFoldActivity) || !((BaseFoldActivity) context).isSmallSplitScreen(false)) && !this.x1) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_Gesture_guidance, com.transsion.playercommon.R.string.ges_guide, 0, 10));
        }
        arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_feedback, com.transsion.playercommon.R.string.feedback, 0, 11));
        boolean z9 = pp3.b;
        if (!z9 && !z3 && !companion.isMiMediaVideo(this.b) && (!z6 || z7)) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_delete, com.transsion.playercommon.R.string.delete, 0, 12));
        }
        if (!z9 && !z3 && z5 && this.e0 && !z4) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_cut, com.transsion.playercommon.R.string.video_list_menu_cut, 0, 7));
        }
        arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_settings, com.transsion.playercommon.R.string.setting, 0, 15));
        if (companion.isMiMediaVideo(this.b)) {
            arrayList.add(new SettingMenu(0, com.transsion.widgetslib.R.string.os_mark, com.transsion.playercommon.R.string.visha_violation_report, 0, 16));
        }
        settingMenuAdapter.setNewData(arrayList);
        settingMenuAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i7) {
                this.b.w6(mediaItem, settingMenuAdapter, baseQuickAdapter, view2, i7);
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.loop_title);
        if (z3) {
            P7(textView, 8);
            P7((TextView) view.findViewById(R.id.video_timer_title), 8);
            return;
        }
        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(com.transsion.playercommon.R.id.timer_recycler_view);
        recyclerView2.setLayoutManager(new CustomLinearLayoutManager((Context) this.D, 0, false, true));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new VideoSettingItem(this.D.getString(R.string.music_timer_close), 0, false));
        arrayList2.add(new VideoSettingItem("", 15, true));
        arrayList2.add(new VideoSettingItem("", 30, true));
        arrayList2.add(new VideoSettingItem("", 45, true));
        arrayList2.add(new VideoSettingItem("", 60, true));
        arrayList2.add(new VideoSettingItem(this.D.getString(R.string.timer_custom), -1, false));
        recyclerView2.setAdapter(new x(arrayList2, w6c.l(this.E) > System.currentTimeMillis() ? w6c.m(this.E) : 0));
        RecyclerView recyclerView3 = (RecyclerView) view.findViewById(com.transsion.playercommon.R.id.loop_recycler_view);
        recyclerView3.setLayoutManager(new GridLayoutManager(this.D, 4));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new VideoSettingItem(this.D.getString(R.string.video_repeat_all), ((Integer) hsb.a.get(0)).intValue(), false, com.transsion.widgetslib.R.string.os_single_loop));
        arrayList3.add(new VideoSettingItem(this.D.getString(R.string.video_auto_pause), ((Integer) hsb.a.get(1)).intValue(), false, com.transsion.widgetslib.R.string.os_play));
        arrayList3.add(new VideoSettingItem(this.D.getString(R.string.video_repeat_single), ((Integer) hsb.a.get(2)).intValue(), false, com.transsion.widgetslib.R.string.os_List_loop));
        arrayList3.add(new VideoSettingItem(this.D.getString(R.string.playmodel_random_loop), ((Integer) hsb.a.get(3)).intValue(), false, com.transsion.widgetslib.R.string.os_shuffle));
        hsb.a(this.D.getResources().getInteger(R.integer.video_auto_random));
        final int iA = w6c.a(this.E);
        hsb.e(iA);
        try {
            videoSettingItem = (VideoSettingItem) arrayList3.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return VideoPlayerContentView.x6(iA, (VideoSettingItem) obj);
                }
            }).findFirst().get();
        } catch (NoSuchElementException unused) {
            videoSettingItem = null;
        }
        if (videoSettingItem != null) {
            textView.setText(videoSettingItem.displayText());
        } else {
            textView.setText(R.string.video_repeat_all);
        }
        recyclerView3.setAdapter(new y(arrayList3, iA, textView));
    }

    public void showTextToast(CharSequence charSequence) {
        hideTextToast();
        if (this.L == null) {
            View viewB = jdc.b(R.layout.video_play_toastview);
            this.L = viewB;
            this.M = (TextView) viewB.findViewById(R.id.tv_toast);
        }
        this.M.setText(this.E.getResources().getString(R.string.switch_toast_1, charSequence));
        this.q4.post(new Runnable() {
            @Override
            public final void run() {
                this.b.I6();
            }
        });
    }

    public void showViolationNoticeDialog() {
        try {
            Context context = this.E;
            if (context != null && !((Activity) context).isFinishing()) {
                com.transsion.widgetslib.dialog.d dVar = this.Q6;
                if (dVar != null && dVar.isShowing()) {
                    Log.d("VideoPlayerContentView", "Violation notice dialog is already showing");
                    return;
                }
                com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.E).A(R.string.visha_violation_notification).j(R.string.visha_illegal_removal_propmts02).m(R.string.visha_quit, new DialogInterface.OnClickListener() {
                    @Override
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        this.b.L6(dialogInterface, i2);
                    }
                }).e(false).f(false).a();
                this.Q6 = dVarA;
                dVarA.show();
                Log.i("VideoPlayerContentView", "Violation notice dialog shown successfully");
                return;
            }
            Log.e("VideoPlayerContentView", "Context is null or activity is finishing, cannot show violation dialog");
        } catch (Exception e2) {
            Log.e("VideoPlayerContentView", "Error showing violation notice dialog: " + e2.getMessage());
        }
    }

    public void showVolumeDialog(float f2) {
        MediaVolumeManager.s().D(baseActivity(), f2, false);
        this.C.hideScaleStateView();
    }

    public void t4() {
        if (d5() && this.f.getmUnLockListener() != null) {
            Log.i("VideoPlayerContentView", "hidePlayUI setUnlockShowOrHide");
            this.f.getmUnLockListener().a();
        }
        ThreadUtils.o().removeCallbacks(this.G6);
    }

    public final void t5(int i2, Intent intent, boolean z2) {
        boolean z3 = this.G1;
        this.G1 = false;
        if (z3 && this.W0 != null && !w5a.a().isEmpty()) {
            defpackage.n.k(this.W0, this.V1, true);
            updateSubtitleVisibility();
            reLoadCurSubtitleDataForAIState();
            ny5.e(defpackage.n.a.booleanValue(), "vd_video_aisub_switch");
            z7(false);
        }
        if (i2 != -1 || intent == null) {
            return;
        }
        M3(intent.getStringExtra("selected_language"), z2);
    }

    public final void t6(FileVideoPlayInfoResult fileVideoPlayInfoResult) {
        g8(fileVideoPlayInfoResult.getPlayInfo().getTemplateList());
    }

    public final void t7() {
        PlayVideoData playVideoData = this.b;
        if (!playVideoData.fromBackgroundPlay) {
            this.G.u1(playVideoData);
            return;
        }
        if (playVideoData.forceResetPlay) {
            u8(true, true);
        }
        if (this.G.g0() == -1) {
            V7(this.G.W());
        }
    }

    public void toFarPage() {
        VideoPlayList videoPlayListCreateTempFavoriteList = VideoPlayList.createTempFavoriteList();
        videoPlayListCreateTempFavoriteList.name = this.E.getString(R.string.talkback_add_to_favorites);
        FarvoritesActivity.p0(this.E, videoPlayListCreateTempFavoriteList);
        LinearLayout linearLayout = this.t0;
        if (linearLayout != null) {
            P7(linearLayout, 8);
        }
        hb0.markDirect("toast_favorite_cl");
    }

    public final void u4() {
        com.transsion.magicvideo.widgets.a aVar = this.i0;
        if (aVar != null) {
            aVar.f();
        }
    }

    public final void u5() {
        this.V0.setTranslationY(this.w ? (int) (((double) this.X0.translateY) / this.c1) : this.X0.translateY);
    }

    public final void u8(boolean z2, boolean z3) {
        boolean zIsVideoProgressEnd;
        if (this.d0) {
            if (VideoPlayManager.X().A0()) {
                d7();
            } else {
                this.O0 = System.currentTimeMillis();
            }
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            zIsVideoProgressEnd = videoTouchLayoutNew.isVideoProgressEnd();
        } else {
            zIsVideoProgressEnd = this.h0 == 6;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("triggerPlayPause ");
        sb.append(zIsVideoProgressEnd);
        sb.append(", touchLayoutNull=");
        sb.append(this.c == null);
        Log.d("VideoPlayerContentView", sb.toString());
        if ((zIsVideoProgressEnd && p7(false)) || z3) {
            this.G.p2(false, z2);
            return;
        }
        VideoTouchLayoutNew videoTouchLayoutNew2 = this.c;
        if (videoTouchLayoutNew2 != null) {
            videoTouchLayoutNew2.U();
        } else {
            VideoPlayManager videoPlayManager = this.G;
            videoPlayManager.p2(true, !videoPlayManager.A0());
        }
    }

    public void updateKeyguardState(boolean z2) {
        this.C0 = z2;
        Log.e("VideoPlayerContentView", "updateKeyguardState KeyguardShow:" + z2 + ",mResumeAutoPlay:" + this.D0);
        if (this.D0) {
            ThreadUtils.o().removeCallbacks(this.D6);
            ThreadUtils.o().post(this.D6);
        }
    }

    public void updateSpeed(float f2, CharSequence charSequence) {
        float fI = w6c.i(getContext());
        j16.g(this.G.G(), (int) f2);
        p06.G(f2);
        if (f2 != fI) {
            w6c.B(getContext(), f2);
            this.G.d2(f2);
            this.V0.setSpeed(f2);
            VideoTouchLayoutNew videoTouchLayoutNew = this.c;
            if (videoTouchLayoutNew != null) {
                videoTouchLayoutNew.updateSpeed();
            }
            MusicModelMainLayout musicModelMainLayout = this.j0;
            if (musicModelMainLayout != null) {
                musicModelMainLayout.updateSpeed();
            }
        }
    }

    public void updateSubtitleViews(boolean z2) {
        if (this.V0 == null) {
            return;
        }
        if (this.X0 == null) {
            this.X0 = new SubtitleSettingData(this.W.id);
        }
        if (!this.a1) {
            U6(this.X0.location, false);
            this.V0.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.Y6();
                }
            }, 50L);
            if (!z2) {
                N8();
            }
        }
        this.V0.setTextAlignment(k6a.e(this.X0.textAlignment));
        this.V0.setTextSize(getResources().getDimensionPixelOffset(k6a.g(this.X0.textSize)));
        this.V0.setTextAppearance(k6a.f(this.X0.textStyle));
        this.V0.setTextColor(getResources().getColor(k6a.c(this.X0.textColor), this.E.getTheme()));
        this.V0.setTextBackground(ColorUtils.setAlphaComponent(getResources().getColor(k6a.c(this.X0.textBackgroundColor), this.E.getTheme()), (this.X0.textBackgroundOpacity * 255) / 100));
    }

    public void updateSubtitleVisibility() {
        boolean z2 = true;
        if (!defpackage.w.h() ? this.d0 : this.d0 || !defpackage.n.a.booleanValue()) {
            z2 = false;
        }
        P7(this.V0, z2 ? 0 : 8);
    }

    public void updateTracksDelay(boolean z2, boolean z3, View view) {
        if (z2) {
            if (S4(this.g1)) {
                return;
            }
            if (z3) {
                this.Y0 += 100.0f;
            } else {
                this.Y0 -= 100.0f;
            }
            this.V0.setFirstTrackDelay((long) this.Y0);
            TextView textView = (TextView) view.findViewById(R.id.tv_track_delay);
            Log.d("VideoPlayerContentView", "updateTracksDelay  111: " + this.Y0);
            textView.setText(String.format("%.1f", Float.valueOf(this.Y0 / 1000.0f)) + ExifInterface.LATITUDE_SOUTH);
            return;
        }
        if (S4(this.h1)) {
            return;
        }
        if (z3) {
            this.Z0 += 100.0f;
        } else {
            this.Z0 -= 100.0f;
        }
        this.V0.setSecondTrackDelay((long) this.Z0);
        TextView textView2 = (TextView) view.findViewById(R.id.tv_track_delay);
        Log.d("VideoPlayerContentView", "updateTracksDelay  222: " + this.Z0);
        textView2.setText(String.format("%.1f", Float.valueOf(this.Z0 / 1000.0f)) + ExifInterface.LATITUDE_SOUTH);
    }

    public void updateTracksView(View view, View view2, View view3, LinearLayout linearLayout) {
        VideoSubtitleViewModel videoSubtitleViewModel = this.d1;
        if (videoSubtitleViewModel == null) {
            Log.w("VideoPlayerContentView", "updateTracksView skip: mVideoSubtitleViewModel is null");
            return;
        }
        boolean z2 = true;
        if (this.A) {
            i8(view, videoSubtitleViewModel.firstCurData.getValue(), true);
            i8(view2, this.d1.secondCurData.getValue(), false);
            SubtitleTrackInfo value = this.d1.secondCurData.getValue();
            if (value != null) {
                this.V0.setSecondTrackSubtitle(value);
            }
        } else if (this.B) {
            i8(view, videoSubtitleViewModel.firstCurData.getValue(), true);
        } else {
            i8(view2, videoSubtitleViewModel.secondCurData.getValue(), false);
        }
        P7(view, (this.A || this.B) ? 0 : 8);
        P7(view2, (this.A || !this.B) ? 0 : 8);
        if (this.A) {
            O8(view, true);
            O8(view2, false);
        } else {
            boolean z3 = this.B;
            if (!z3) {
                view = view2;
            }
            O8(view, z3);
        }
        if (!f8(this.d1.secondCurData.getValue()) && !f8(this.d1.firstCurData.getValue())) {
            z2 = false;
        }
        P7(view3, z2 ? 0 : 8);
        if (!defpackage.w.h() || linearLayout == null) {
            return;
        }
        P7(linearLayout, z2 ? 0 : 8);
        boolean zC5 = c5(this.d1.firstCurData.getValue());
        linearLayout.setEnabled(zC5);
        ((TextView) linearLayout.findViewById(R.id.tv_local_language_from)).setTextColor(getResources().getColor(zC5 ? R.color.ai_setting_text_enable : R.color.ai_setting_grey));
    }

    public final void v4(boolean z2) {
        if (this.q == null || this.n == null) {
            this.b1 = false;
            return;
        }
        if (this.b1) {
            this.b1 = false;
            Animation animationLoadAnimation = z2 ? AnimationUtils.loadAnimation(this.E, R.anim.dialog_bottom_hide_anim_land) : AnimationUtils.loadAnimation(this.E, R.anim.dialog_bottom_hide_anim);
            if (this.q.findViewById(R.id.video_eq_root) != null) {
                hb0.markKV("vd_cp_equalizer_pop_status", new hb0.a(ClientABTestDTOKt.SWITCH, jrb.e().a ? "on" : "off"), new hb0.a("Soundeffect", Short.valueOf(jrb.e().b)), new hb0.a(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, jrb.e().c), new hb0.a("Bass", Short.valueOf(jrb.e().e)), new hb0.a("Surround", Short.valueOf(jrb.e().f)));
            } else if (this.q.findViewById(R.id.speed_root) != null) {
                hb0.markTrackTwo("vd_cp_speed_cl", "vd_speed", Float.valueOf(w6c.i(getContext())), "rotate_status", Integer.valueOf(this.G.G()));
            }
            this.q.setHideAnimationState(true);
            this.q.startAnimation(animationLoadAnimation);
            animationLoadAnimation.setAnimationListener(new u());
            if (this.a1) {
                this.a1 = false;
                U6(this.X0.location, false);
                this.V0.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.u5();
                    }
                }, 50L);
                N8();
            }
            this.F6 = null;
            this.E6 = null;
        }
    }

    public final void v5(boolean z2, View view) {
        if (!z2) {
            if (MainApp.p()) {
                this.G.B1();
                r4();
                return;
            }
            return;
        }
        MainApp.j = true;
        this.G.B1();
        p06.f0(null, "vd_cp_ptips_play_cl", 9324L);
        r4();
        int iG0 = this.G.g0();
        if (iG0 == 2 || iG0 == 3) {
            this.G.p2(true, true);
            return;
        }
        final int[] iArr = {0};
        Runnable runnable = this.k6;
        if (runnable != null) {
            this.q4.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public void run() {
                int iG1 = VideoPlayerContentView.this.G.g0();
                if (iG1 == 2 || iG1 == 3) {
                    VideoPlayerContentView.this.G.p2(true, true);
                    return;
                }
                int[] iArr2 = iArr;
                int i2 = iArr2[0];
                if (i2 >= 10) {
                    VideoPlayerContentView.this.G.p2(true, true);
                } else {
                    iArr2[0] = i2 + 1;
                    VideoPlayerContentView.this.q4.postDelayed(this, 200L);
                }
            }
        };
        this.k6 = runnable2;
        this.q4.postDelayed(runnable2, 250L);
    }

    public final void v6(SettingMenuAdapter settingMenuAdapter) {
        if (settingMenuAdapter.g() != null) {
            if (this.U0) {
                cd.g(getContext(), settingMenuAdapter.g());
            } else {
                cd.i(settingMenuAdapter.g());
            }
        }
    }

    public final void v7() {
        if (this.N == null) {
            n0 n0Var = new n0();
            this.N = n0Var;
            MainApp.d("VideoPlayerContentView", n0Var);
        }
    }

    public final void v8() {
        ThreadUtils.o().removeCallbacks(this.H6);
        this.y0.v(this.D);
        if (o18.k() == 1) {
            o18.g();
        }
    }

    public final void w4() {
        ViewStub viewStub;
        this.q5 = true;
        F8(true);
        if (this.k == null && (viewStub = (ViewStub) findViewById(R.id.player_error_stub)) != null) {
            this.k = viewStub.inflate();
        }
        View view = this.k;
        if (view != null) {
            TextView textView = (TextView) view.findViewById(R.id.tv_format_error);
            if (textView != null) {
                textView.setText(this.G.W());
            }
            P7(this.k, 0);
        }
        VideoTouchLayoutNew videoTouchLayoutNew = this.c;
        if (videoTouchLayoutNew != null) {
            videoTouchLayoutNew.J0();
        }
        this.q4.removeCallbacks(this.p5);
        this.q4.postDelayed(this.p5, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public final void w5() {
        this.H0 = true;
        setData(this.b, this.G0);
        N4();
        P4();
        I4();
    }

    public final void w6(MediaItem mediaItem, final SettingMenuAdapter settingMenuAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        Context context;
        PlayVideoData playVideoData;
        SettingMenu settingMenu = (SettingMenu) baseQuickAdapter.getData().get(i2);
        Log.d("VideoPlayerContentView", "setOnItemClickListener " + settingMenu.mFlag);
        if (this.p3 == null) {
        }
        int i3 = settingMenu.mFlag;
        if (i3 != 9 && (((playVideoData = this.b) != null && !playVideoData.isPrivate) || i3 != 2)) {
            v4(isHorizontalShowDialog());
        }
        switch (settingMenu.mFlag) {
            case 1:
                this.p3.g();
                n16.a.a("video_play_pic_in_pic", this.b);
                break;
            case 3:
                k38.n(this.E, this.v.playMediaItem(), true, null);
                n16.a.a("video_play_info", this.b);
                if (this.d0) {
                    p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, "info");
                }
                break;
            case 4:
                i7(mediaItem);
                break;
            case 5:
                this.p3.a();
                break;
            case 6:
                this.p3.b();
                if (defpackage.w.h()) {
                    ny5.d("settings");
                }
                n16.a.a("video_subtitle", this.b);
                break;
            case 7:
                this.p3.f();
                if (!this.d0) {
                    p06.a0("vd_cp_cl", hb0.KEY_NAME_BTN, "video_play_clip");
                } else {
                    p06.a0("video_play_background_more", hb0.KEY_NAME_BTN, "edit");
                }
                break;
            case 8:
                p06.f0(null, "vd_cp_setting_track_cl", 9324L);
                VideoPlayManager videoPlayManager = this.G;
                if (videoPlayManager == null || videoPlayManager.P() == null || this.G.P().size() == 0) {
                    ToastUtils.s(R.string.video_has_no_audio);
                } else {
                    R7();
                }
                break;
            case 9:
                if (!this.b.isPrivate) {
                    farYoutube();
                    boolean z2 = this.U0;
                    settingMenu.mStateResId = z2 ? R.drawable.ic_farvorited_on : R.drawable.ic_farvorite_white_stroke;
                    settingMenu.mTitleResId = z2 ? R.string.unfavorite : R.string.favorites;
                    settingMenuAdapter.notifyItemChanged(i2);
                    ThreadUtils.o().postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.v6(settingMenuAdapter);
                        }
                    }, 300L);
                } else {
                    ToastUtils.s(R.string.privacy_video_setting_toast);
                }
                break;
            case 10:
                D4(true);
                n8(true);
                break;
            case 11:
                f7();
                break;
            case 12:
                deleteVideo(mediaItem);
                break;
            case 13:
                if (!MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.b)) {
                    CloudVideoPlayInfoManager.a.v(this.b.mKtFileId).r(k29.c()).m(vb.a()).p(new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.t6((FileVideoPlayInfoResult) obj);
                        }
                    }, new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            VideoPlayerContentView.u6((Throwable) obj);
                        }
                    });
                } else {
                    MIMediaVideoPlayInfo mIMediaVideoPlayInfo = this.q2;
                    if (mIMediaVideoPlayInfo == null || mIMediaVideoPlayInfo.getDataList().isEmpty()) {
                        Log.w("VideoPlayerContentView", "no resolution data:" + this.q2);
                    } else {
                        l8(this.q2.getDataList());
                    }
                }
                break;
            case 14:
                n16.a.a("video_equalizer", this.b);
                U7();
                break;
            case 15:
                m7();
                break;
            case 16:
                MIMediaInfo miMediaInfo = this.b.getMiMediaInfo();
                if (miMediaInfo == null || (context = this.E) == null) {
                    Log.w("VideoPlayerContentView", "violation_report " + miMediaInfo);
                } else {
                    VishaFeedbackPage.d(context, "", "", miMediaInfo.getVideoId(), miMediaInfo.getVideoTitle());
                }
                n16.a.a("video_play_report", this.b);
                break;
        }
    }

    public final void w7(int i2) {
        showTextToast(getResources().getString(this.Q[i2]));
        w6c.t(this.E, "play_repeat_mode", i2);
        this.v.setRepeat(i2 == 1);
        this.G.J1();
        p06.H(i2);
        MusicModelMainLayout musicModelMainLayout = this.j0;
        if (musicModelMainLayout != null) {
            musicModelMainLayout.updateRepeatMode();
        }
    }

    public final void w8() {
        if (this.N != null) {
            try {
                try {
                    MainApp.s("VideoPlayerContentView");
                } catch (Exception e2) {
                    Log.e("VideoPlayerContentView", "removeNetCallback error: " + e2.getMessage());
                }
            } finally {
                this.N = null;
            }
        }
    }

    public final void x4(boolean z2, final boolean z3) {
        int i2;
        F8(true);
        if (this.j == null) {
            this.j = ((ViewStub) findViewById(R.id.ll_error_message)).inflate();
        }
        B8(true);
        TextView textView = (TextView) this.j.findViewById(R.id.tv_refresh);
        if (z3) {
            p06.f0(null, "vd_cp_ptips_show", 9324L);
            textView.setText(R.string.video_preview_continue);
            this.G.i1(true);
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v5(z3, view);
            }
        });
        TextView textView2 = (TextView) this.j.findViewById(R.id.tv_error_message);
        if (z3) {
            i2 = R.string.video_preview_with_mobile_data;
        } else {
            i2 = z2 ? R.string.net_media_play_network_error : R.string.net_media_play_error;
        }
        textView2.setText(i2);
    }

    public final void x5(View view) {
        j8(false);
        h8();
        this.f.setmUnLockListener(null);
        N8();
        settingVideoDirection(this.W);
        s8(2);
        n16.a.b("video_play_lock", this.G.T());
    }

    public final void x7(MIMediaInfo mIMediaInfo) {
        if (mIMediaInfo == null) {
            Log.w("VideoPlayerContentView", "requestMIMediaVideoPlayInfo meidaInfo null");
            r7(null);
            return;
        }
        String videoId = mIMediaInfo.getVideoId();
        if (videoId == null) {
            Log.w("VideoPlayerContentView", "requestMIMediaVideoPlayInfo videoId null");
            r7(null);
        } else {
            U8(true);
            CloudMediaPlayInfoManager.k().m(videoId, new o0());
        }
    }

    public final void x8(boolean z2) {
        ViewStub viewStub;
        if (this.i == null && z2 && (viewStub = this.l) != null) {
            this.i = viewStub.inflate();
        }
        View view = this.i;
        if (view != null) {
            P7(view, z2 ? 0 : 8);
        }
    }

    public final void y4() {
        if (this.j0 == null) {
            MusicModelMainLayout musicModelMainLayout = (MusicModelMainLayout) ((ViewStub) findViewById(R.id.ll_video_play_mode)).inflate();
            this.j0 = musicModelMainLayout;
            if (musicModelMainLayout != null) {
                musicModelMainLayout.updatePlayPauseIcon(this.E0);
                this.j0.setIvCoverSize(getWindowOptions());
                this.j0.setBaseActivity(baseActivity());
                this.j0.resume();
                this.j0.setOnMusicModeLayoutItemListener(new i());
                this.j0.getMediaBottomControllerLayout().setOnMediaButtonClickListener(new j());
            }
        }
    }

    public final void y5(boolean z2) {
        BaseActivity baseActivity;
        Log.d("VideoPlayerContentView", "onPlayViewStatusChange isShow:" + z2);
        if (getVisibility() != 0 || (baseActivity = this.D) == null) {
            return;
        }
        baseActivity.setNavVisibility(z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void y6(Switch r3, View view, View view2, View view3, LinearLayout linearLayout, CompoundButton compoundButton, boolean z2) {
        this.A = z2;
        boolean z3 = (f8(this.d1.firstCurData.getValue()) || !f8(this.d1.secondCurData.getValue())) ? 1 : 0;
        this.B = z3;
        w6c.t(this.E, "tracks_value", !z3);
        if (!R4(r3)) {
            updateTracksView(view, view2, view3, linearLayout);
        }
        w6c.r(this.E, "tracks_switch", z2);
        f16.j(z2 ? 1 : 0);
    }

    public final void y7() {
        this.mHadShowBlockTip = false;
        this.mWillShowBitrateTip = false;
        this.mHadCheckResolution = false;
        this.F0 = false;
    }

    public final void y8(final int i2) {
        final com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(this.E, ((BaseActivity) this.E).isInMultiWindowMode() ? com.transsion.playercommon.R.style.promptDialogStyle : 0).D(com.transsion.playercommon.R.layout.video_custom_timepicker).A(com.transsion.playercommon.R.string.timer_custom).u(com.transsion.playercommon.R.string.timer_confirm, null).m(com.transsion.playercommon.R.string.cancel, null).a();
        dVarA.getWindow().addFlags(1024);
        ViewCompat.setOnApplyWindowInsetsListener(dVarA.getWindow().getDecorView(), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return VideoPlayerContentView.M6(view, windowInsetsCompat);
            }
        });
        dVarA.show();
        final CustomTimePicker customTimePicker = (CustomTimePicker) dVarA.findViewById(com.transsion.playercommon.R.id.time_picker);
        dVarA.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.b.N6(dialogInterface);
            }
        });
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                customTimePicker.removeTimeChangeUpdate();
            }
        });
        final Button buttonE = dVarA.e(-1);
        Button buttonE2 = dVarA.e(-2);
        buttonE.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.P6(dVarA, customTimePicker, i2, view);
            }
        });
        buttonE2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.Q6(dVarA, customTimePicker, view);
            }
        });
        buttonE.setEnabled(false);
        customTimePicker.setOnTimeChangeListener(new CustomTimePicker.c() {
            @Override
            public final void a(int i3, int i4) {
                this.a.R6(buttonE, dVarA, i3, i4);
            }
        });
    }

    public final void z4() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.w5();
            }
        });
    }

    public final void z6(TextView textView, View view, View view2, View view3, LinearLayout linearLayout, SubtitleTrackInfo subtitleTrackInfo) {
        if (pp3.j()) {
            textView.setTextColor(c5(subtitleTrackInfo) ? -2171170 : -2132877602);
        }
        updateTracksView(view, view2, view3, linearLayout);
    }

    public final void z7(boolean z2) {
        if (defpackage.w.h() && defpackage.n.a.booleanValue()) {
            if (z2) {
                defpackage.n.s();
                AISubtitleVideoView aISubtitleVideoView = this.W0;
                if (aISubtitleVideoView != null) {
                    aISubtitleVideoView.resetSubtitleListener(false);
                }
            }
            if (w5a.b().m()) {
                o8();
            } else {
                Log.w("VideoPlayerContentView", "CaptionService have not init finished");
            }
        }
    }

    public void z8(MediaItem mediaItem) {
        String displayName;
        MusicModelMainLayout musicModelMainLayout;
        PlayVideoData playVideoData;
        boolean zIsMiMediaVideo = MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem);
        if (mediaItem != null) {
            this.v.setPlayMediaItem(mediaItem).selectedPlayMediaItem();
            if (zIsMiMediaVideo) {
                displayName = mediaItem.getMiMediaInfo() != null ? mediaItem.getMiMediaInfo().getVideoTitle() : "";
            } else {
                this.U = mediaItem.getUri();
                displayName = mediaItem.getDisplayName();
                if (r0a.g(displayName) && (playVideoData = this.b) != null) {
                    displayName = playVideoData.getDisplayName();
                }
            }
            this.U0 = tpb.j0().T(mediaItem.data);
        } else {
            PlayVideoData playVideoData2 = this.b;
            if (playVideoData2 != null) {
                this.U = playVideoData2.playUri;
                displayName = playVideoData2.getDisplayName();
            } else {
                displayName = null;
            }
        }
        Log.d("VideoPlayerContentView", "updateDisplayUI " + this.U + StringUtils.COMMA + mediaItem);
        this.T = displayName;
        if ((zIsMiMediaVideo || this.U != null) && (musicModelMainLayout = this.j0) != null) {
            musicModelMainLayout.updateMediaName(displayName);
            this.j0.updateFavoriteIcon(this.U0, false);
            this.j0.updateAddToAudioListIcon(mediaItem);
        }
        A8(mediaItem);
    }

    public void showSettingDialogView(boolean z2, View view, boolean z3) {
        showSettingDialogView(z2, view, z3, false);
    }

    public void showSettingDialogView(boolean z2, View view, boolean z3, boolean z4) {
        RelativeLayout relativeLayout;
        Animation animationLoadAnimation;
        e4();
        if (this.n == null || this.q == null || this.t == null || (relativeLayout = this.u) == null) {
            return;
        }
        this.b1 = true;
        if (z2) {
            P7(relativeLayout, 0);
            P7(this.t, 8);
            this.u.removeAllViews();
            this.u.addView(view);
        } else {
            P7(relativeLayout, 8);
            P7(this.t, 0);
            this.t.removeAllViews();
            this.t.addView(view);
        }
        if (z3) {
            if (z2) {
                animationLoadAnimation = AnimationUtils.loadAnimation(this.E, R.anim.dialog_bottom_show_anim_land);
            } else {
                animationLoadAnimation = AnimationUtils.loadAnimation(this.E, R.anim.dialog_bottom_show_anim);
            }
            this.q.startAnimation(animationLoadAnimation);
        }
        P7(this.n, 0);
        P7(this.q, 0);
        this.q.setHideAnimationState(false);
        if (this.t.getVisibility() == 0) {
            this.t.setOnClickListener(new t());
        }
    }

    private void setData(final PlayVideoData playVideoData) {
        LogUtils.j("VideoPlayerContentView", "setData  fromBackgroundPlay:" + this.b.fromBackgroundPlay + " mFinishedVideoGuide:" + this.b0, "new video:" + this.b, "current video:" + VideoPlayManager.X().e0());
        MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
        if (miMediaInfo != null && playVideoData.playUri == null) {
            this.G.L1();
            x7(miMediaInfo);
            oz5.a.b(playVideoData);
            return;
        }
        if (playVideoData.isKt() && playVideoData.playUri == null) {
            final VideoCloudCache videoCloudCacheE = playVideoData.isKt() ? VideoCloudCacheHelper.e(playVideoData.mKtFileId) : null;
            this.G.L1();
            CloudVideoPlayInfoManager.a.v(playVideoData.mKtFileId).c(this.D.bindToLifecycle()).r(k29.c()).m(vb.a()).p(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.f6(playVideoData, videoCloudCacheE, (FileVideoPlayInfoResult) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.g6(playVideoData, videoCloudCacheE, (Throwable) obj);
                }
            });
            return;
        }
        PlayVideoData playVideoData2 = this.b;
        if (!playVideoData2.fromBackgroundPlay) {
            this.G.u1(playVideoData2);
            return;
        }
        if (playVideoData2.isMusicMode && !VideoPlayManager.X().D0(this.b)) {
            LogUtils.j("VideoPlayerContentView", "setData fromBackgroundPlay playVideo，not same video", "newVideoData:" + this.b, "currentVideoData:" + VideoPlayManager.X().e0());
            setMusicMode(this.b.isMusicMode);
            this.G.u1(this.b);
            return;
        }
        if (this.b.forceResetPlay) {
            u8(true, true);
        }
        if (this.G.g0() == -1) {
            V7(this.G.W());
        }
        if (this.b.mPlayFrom == PlayVideoData.ePlayFrom.PLAY_FROM_PIP.from) {
            settingVideoDirection(VideoPlayManager.X().c0());
        }
    }

    public VideoPlayerContentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = -1;
        this.v = PlayListData.getInstance();
        this.O = true;
        this.P = true;
        this.Q = new int[]{com.transsion.playercommon.R.string.video_auto_pause, com.transsion.playercommon.R.string.video_repeat_all, com.transsion.playercommon.R.string.video_repeat_single, com.transsion.playercommon.R.string.video_auto_playnext, com.transsion.playercommon.R.string.playmodel_random_loop};
        this.R = new int[]{com.transsion.playercommon.R.string.fit_screen, com.transsion.playercommon.R.string.resize_mode_fill, com.transsion.playercommon.R.string.resize_mode_zoom};
        this.S = new int[]{0, 3, 4};
        this.f0 = -1;
        this.h0 = 0;
        this.l0 = -1;
        this.n0 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.J5((Boolean) obj);
            }
        };
        this.I0 = false;
        this.R0 = false;
        this.S0 = false;
        this.T0 = false;
        this.e1 = new ArrayList();
        this.f1 = new ArrayList();
        this.k1 = ydc.e();
        this.m1 = false;
        this.mTimerUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                videoPlayerContentView.timerHandler.postDelayed(videoPlayerContentView.mTimerUpdateRunnable, 1000L);
                VideoPlayerContentView.this.u7();
            }
        };
        this.timerHandler = new Handler(new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.K5(message);
            }
        });
        this.x2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.L5((woc) obj);
            }
        };
        this.y2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N5((Boolean) obj);
            }
        };
        this.G2 = new a0();
        this.V2 = new l0();
        this.f3 = new p0();
        this.p3 = new r0();
        this.q3 = new VideoPlayManager.d() {
            @Override
            public void onShowError(int i2, int i3) {
                Log.e("VideoPlayerContentView", "onShowError:" + i2);
                if (VideoPlayerContentView.this.B0) {
                    return;
                }
                if (VideoPlayerContentView.this.b == null || !VideoPlayerContentView.this.b.isFromNet) {
                    VideoPlayerContentView.this.V7(i3);
                } else {
                    VideoPlayerContentView.this.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            VideoPlayerContentView.this.W7();
                        }
                    }, 500L);
                }
            }
        };
        this.G3 = new s0();
        this.f4 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.W == null || VideoPlayerContentView.this.d1 == null || VideoPlayerContentView.this.D == null) {
                    return;
                }
                VideoPlayerContentView.this.d1.queryVideoSubtitles(VideoPlayerContentView.this.W.id, VideoPlayerContentView.this.D);
            }
        };
        this.k4 = new b();
        this.p4 = new c();
        this.q4 = new Handler();
        this.p5 = new Runnable() {
            @Override
            public final void run() {
                this.b.M5();
            }
        };
        this.p6 = new PlayerViewController.b() {
            @Override
            public final void a(long j2, long j3) {
                this.a.O5(j2, j3);
            }
        };
        this.q6 = new PlayerViewController.d() {
            @Override
            public final void a(boolean z2) {
                this.a.P5(z2);
            }
        };
        this.D6 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.C0) {
                    Log.e("VideoPlayerContentView", "autoPlayOrPause KeyguardShow return");
                } else {
                    VideoPlayerContentView.this.D0 = false;
                    VideoPlayerContentView.this.G.C(true);
                }
            }
        };
        this.G6 = new Runnable() {
            @Override
            public final void run() {
                this.b.t4();
            }
        };
        this.H6 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.Q5();
            }
        };
        this.I6 = new g0(null);
        init(context);
    }

    public VideoPlayerContentView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = -1;
        this.v = PlayListData.getInstance();
        this.O = true;
        this.P = true;
        this.Q = new int[]{com.transsion.playercommon.R.string.video_auto_pause, com.transsion.playercommon.R.string.video_repeat_all, com.transsion.playercommon.R.string.video_repeat_single, com.transsion.playercommon.R.string.video_auto_playnext, com.transsion.playercommon.R.string.playmodel_random_loop};
        this.R = new int[]{com.transsion.playercommon.R.string.fit_screen, com.transsion.playercommon.R.string.resize_mode_fill, com.transsion.playercommon.R.string.resize_mode_zoom};
        this.S = new int[]{0, 3, 4};
        this.f0 = -1;
        this.h0 = 0;
        this.l0 = -1;
        this.n0 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.J5((Boolean) obj);
            }
        };
        this.I0 = false;
        this.R0 = false;
        this.S0 = false;
        this.T0 = false;
        this.e1 = new ArrayList();
        this.f1 = new ArrayList();
        this.k1 = ydc.e();
        this.m1 = false;
        this.mTimerUpdateRunnable = new Runnable() {
            @Override
            public void run() {
                VideoPlayerContentView videoPlayerContentView = VideoPlayerContentView.this;
                videoPlayerContentView.timerHandler.postDelayed(videoPlayerContentView.mTimerUpdateRunnable, 1000L);
                VideoPlayerContentView.this.u7();
            }
        };
        this.timerHandler = new Handler(new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return this.b.K5(message);
            }
        });
        this.x2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.L5((woc) obj);
            }
        };
        this.y2 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.N5((Boolean) obj);
            }
        };
        this.G2 = new a0();
        this.V2 = new l0();
        this.f3 = new p0();
        this.p3 = new r0();
        this.q3 = new VideoPlayManager.d() {
            @Override
            public void onShowError(int i3, int i4) {
                Log.e("VideoPlayerContentView", "onShowError:" + i3);
                if (VideoPlayerContentView.this.B0) {
                    return;
                }
                if (VideoPlayerContentView.this.b == null || !VideoPlayerContentView.this.b.isFromNet) {
                    VideoPlayerContentView.this.V7(i4);
                } else {
                    VideoPlayerContentView.this.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            VideoPlayerContentView.this.W7();
                        }
                    }, 500L);
                }
            }
        };
        this.G3 = new s0();
        this.f4 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.W == null || VideoPlayerContentView.this.d1 == null || VideoPlayerContentView.this.D == null) {
                    return;
                }
                VideoPlayerContentView.this.d1.queryVideoSubtitles(VideoPlayerContentView.this.W.id, VideoPlayerContentView.this.D);
            }
        };
        this.k4 = new b();
        this.p4 = new c();
        this.q4 = new Handler();
        this.p5 = new Runnable() {
            @Override
            public final void run() {
                this.b.M5();
            }
        };
        this.p6 = new PlayerViewController.b() {
            @Override
            public final void a(long j2, long j3) {
                this.a.O5(j2, j3);
            }
        };
        this.q6 = new PlayerViewController.d() {
            @Override
            public final void a(boolean z2) {
                this.a.P5(z2);
            }
        };
        this.D6 = new Runnable() {
            @Override
            public void run() {
                if (VideoPlayerContentView.this.C0) {
                    Log.e("VideoPlayerContentView", "autoPlayOrPause KeyguardShow return");
                } else {
                    VideoPlayerContentView.this.D0 = false;
                    VideoPlayerContentView.this.G.C(true);
                }
            }
        };
        this.G6 = new Runnable() {
            @Override
            public final void run() {
                this.b.t4();
            }
        };
        this.H6 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.Q5();
            }
        };
        this.I6 = new g0(null);
        init(context);
    }
}

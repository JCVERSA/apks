package com.transsion.magicvideo.activities;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.TextView;
import androidx.media3.common.MimeTypes;
import androidx.p003activity.BackEventCompat;
import androidx.p003activity.OnBackPressedCallback;
import com.blankj.utilcode.util.LogUtils;
import com.gw.swipeback.SwipeBackLayout;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.data.VideoOpStatus;
import com.transsion.magicvideo.fragments.VideoPlayerFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.VideoLoadingView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import com.transsion.playercommon.utils.VideoOrientationHelper;
import com.transsion.playercommon.vishaapis.appconfig.helper.AIConfigHelper;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.transsion_gdpr.GdprUtil;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.CustomSwipeBackLayout;
import defpackage.a16;
import defpackage.a64;
import defpackage.af9;
import defpackage.bd4;
import defpackage.ce9;
import defpackage.e80;
import defpackage.euc;
import defpackage.fec;
import defpackage.ff6;
import defpackage.fsb;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.j0;
import defpackage.jf;
import defpackage.jy7;
import defpackage.k29;
import defpackage.k38;
import defpackage.lz5;
import defpackage.m16;
import defpackage.mc7;
import defpackage.n;
import defpackage.o18;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rtb;
import defpackage.suc;
import defpackage.t08;
import defpackage.t74;
import defpackage.tpb;
import defpackage.v;
import defpackage.vb;
import defpackage.w;
import defpackage.w5a;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;

public class VideoPlayerActivity extends HeadsetsControllerActivity implements h27.b {
    public static boolean R0;
    public boolean D0;
    public boolean E0;
    public boolean G0;
    public long J0;
    public VideoPlayerFragment M0;
    public boolean R;
    public boolean S;
    public View T;
    public TextView U;
    public int V;
    public boolean W;
    public boolean X;
    public WindowInsets Y;
    public boolean Z;
    public VideoLoadingView b0;
    public int g0;
    public boolean i0;
    public boolean j0;
    public String l0;
    public ViewTreeObserver.OnPreDrawListener n0;
    public PlayVideoData p0;
    public boolean q0;
    public CustomSwipeBackLayout s0;
    public View t0;
    public boolean v0;
    public OrientationEventListener w0;
    public boolean a0 = false;
    public boolean c0 = false;
    public boolean d0 = false;
    public boolean e0 = false;
    public boolean f0 = false;
    public boolean h0 = false;
    public boolean k0 = true;
    public boolean m0 = true;
    public boolean o0 = false;
    public final Runnable r0 = new Runnable() {
        @Override
        public final void run() {
            this.b.lambda$new$0();
        }
    };
    public final boolean u0 = pp3.m();
    public int x0 = -1;
    public int y0 = -1;
    public boolean z0 = false;
    public int A0 = -1;
    public int B0 = -1;
    public int[] C0 = new int[2];
    public final Handler F0 = new Handler(Looper.getMainLooper());
    public int H0 = 0;
    public int I0 = -1;
    public final Runnable K0 = new Runnable() {
        @Override
        public final void run() {
            this.b.s1();
        }
    };
    public final Runnable L0 = new Runnable() {
        @Override
        public final void run() {
            this.b.k2();
        }
    };
    public final BroadcastReceiver N0 = new d();
    public final Runnable O0 = new Runnable() {
        @Override
        public final void run() {
            this.b.a2();
        }
    };
    public final Runnable P0 = new Runnable() {
        @Override
        public final void run() {
            this.b.b2();
        }
    };
    public final Runnable Q0 = new Runnable() {
        @Override
        public final void run() {
            this.b.c2();
        }
    };

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public boolean onPreDraw() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            VideoPlayerActivity.this.startPostponedEnterTransition();
            return true;
        }
    }

    public class b implements SwipeBackLayout.c {
        public long a;

        public b() {
        }

        @Override
        public void a(View view, float f, float f2) {
            VideoPlayerActivity.this.j2();
            VideoPlayerActivity.this.v2();
            if (jf.k(this.a, 100L)) {
                return;
            }
            this.a = System.currentTimeMillis();
            h27.c().e(1175, new Object[0]);
        }

        @Override
        public void b(View view, boolean z) {
            if (z) {
                p06.d0("vd_video_player_drop_down");
                VideoPlayerActivity.this.u1();
            } else {
                VideoPlayerActivity.this.t2();
                VideoPlayerActivity.this.r1();
                VideoPlayerActivity.this.s0.enableSwipeBack(VideoPlayManager.X().y0());
            }
        }
    }

    public class c implements ViewTreeObserver.OnPreDrawListener {
        public final View b;

        public c(View view) {
            this.b = view;
        }

        @Override
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = this.b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            VideoPlayerActivity.this.n0 = null;
            VideoPlayerActivity.this.o0 = true;
            VideoPlayerActivity.this.i2();
            return true;
        }
    }

    public class d extends BroadcastReceiver {
        public d() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            VideoPlayerFragment videoPlayerFragment;
            VideoPlayerFragment videoPlayerFragment2;
            if (intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                Log.d("VideoPlayer_Activity", "onReceive " + intent);
                if ("android.intent.action.MY_PACKAGE_SUSPENDED".equals(action)) {
                    Log.i("VideoPlayer_Activity", "onReceive ACTION_MY_PACKAGE_SUSPENDED finish");
                    VideoPlayerActivity.this.finish();
                    return;
                }
                if (!"android.intent.action.SCREEN_OFF".equals(action)) {
                    if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
                        VideoPlayerActivity.this.n2();
                        return;
                    } else {
                        if (!"android.intent.action.USER_PRESENT".equals(action) || (videoPlayerFragment = VideoPlayerActivity.this.M0) == null) {
                            return;
                        }
                        videoPlayerFragment.o0(false);
                        return;
                    }
                }
                if (VideoPlayerActivity.this.R) {
                    Log.i("VideoPlayer_Activity", "onReceive ACTION_SCREEN_OFF finish");
                    VideoPlayerActivity.this.finish();
                }
                if (pp3.w() || pp3.j() || (videoPlayerFragment2 = VideoPlayerActivity.this.M0) == null) {
                    return;
                }
                videoPlayerFragment2.o0(true);
            } catch (Exception e) {
                Log.e("VideoPlayer_Activity", "onReceive error: " + e.getMessage());
            }
        }
    }

    public class e extends OrientationEventListener {
        public e(Context context, int i) {
            super(context, i);
        }

        @Override
        public void onOrientationChanged(int i) {
            int i2;
            if (i == -1 || VideoPlayerActivity.this.G0 || VideoPlayerActivity.this.isInPictureInPictureMode()) {
                return;
            }
            if (i >= 340 || i <= 20) {
                i2 = 1;
            } else if (i >= 250 && i <= 290) {
                i2 = 0;
            } else if (i < 160 || i > 200) {
                i2 = (i < 70 || i > 110) ? -1 : 8;
            } else {
                i2 = 9;
            }
            boolean z = (i2 == -1 || i2 == VideoPlayerActivity.this.y0) ? false : true;
            boolean z2 = VideoPlayerActivity.this.M1() && !VideoPlayerActivity.this.O1() && (!VideoPlayManager.X().y0() || com.transsion.utils.a.A()) && !VideoPlayerActivity.this.C1();
            if (z && z2) {
                LogUtils.j("VideoPlayer_Activity", "Orientation changed (" + i + "). Cache orientation request: " + i2);
                VideoPlayerActivity.this.y0 = i2;
                VideoPlayerActivity.this.q2();
            }
        }
    }

    public class f extends OnBackPressedCallback {
        public f(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackCancelled() {
            VideoPlayerActivity.this.t2();
        }

        @Override
        public void handleOnBackPressed() {
            VideoPlayerFragment videoPlayerFragment = VideoPlayerActivity.this.M0;
            if (videoPlayerFragment != null && videoPlayerFragment.onBackPressed()) {
                VideoPlayerActivity.this.t2();
            } else {
                setEnabled(false);
                VideoPlayerActivity.this.onBackPressed();
            }
        }

        @Override
        public void handleOnBackStarted(BackEventCompat backEventCompat) {
            VideoPlayerActivity.this.v2();
        }
    }

    public boolean C1() {
        VideoPlayerFragment videoPlayerFragment = this.M0;
        return videoPlayerFragment != null && videoPlayerFragment.Y();
    }

    public static StreamInfo Y1(StreamInfo streamInfo, StreamInfo streamInfo2) {
        suc.d(streamInfo2);
        return streamInfo;
    }

    public static void q1() {
        WeakReference weakReference = o18.f;
        if (weakReference != null) {
            Activity activity = (Activity) weakReference.get();
            Log.i("VideoPlayer_Activity", "closeOttPip " + activity);
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public void A1(final Intent intent) {
        String type = intent.getType();
        if (!MimeTypes.isText(type)) {
            a16.b("external");
            Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
            lz5.d(uri == null ? "" : uri.toString(), type);
            F1(new PlayVideoData(uri, false), intent);
            return;
        }
        if (intent.getExtras() != null) {
            ff6.f();
            final String string = intent.getExtras().getString("android.intent.extra.TEXT");
            if (r0a.g(string) || !URLUtil.isNetworkUrl(string)) {
                a16.b("external");
                u2(string);
                return;
            }
            try {
                StreamingService.LinkType linkTypeK = ce9.a.k(string);
                a16.a = System.currentTimeMillis();
                if (linkTypeK != StreamingService.LinkType.STREAM || euc.b(this)) {
                    a16.b("youtube");
                    u2(string);
                    a16.c("fail", 0L, "vd_play_ytb_loading");
                } else {
                    E2(true);
                    a16.a = System.currentTimeMillis();
                    ff6.i(ff6.h(), string).c(bindToLifecycle()).r(k29.c()).m(vb.a()).p(new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.S1(intent, (StreamInfo) obj);
                        }
                    }, new zf1() {
                        @Override
                        public final void accept(Object obj) {
                            this.b.T1(string, (Throwable) obj);
                        }
                    });
                }
            } catch (IllegalArgumentException | NoSuchMethodError | ParsingException unused) {
                a16.b("external");
                u2(string);
            }
            lz5.d(string, type);
        }
    }

    public final void A2() {
        this.w0 = new e(this, 3);
    }

    @Override
    public void B0() {
        super.B0();
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.V();
        }
    }

    public final void B1(MotionEvent motionEvent) {
        if (this.t0 == null || this.s0 == null || motionEvent == null) {
            return;
        }
        float rawY = motionEvent.getRawY();
        if (this.A0 == -1 || this.B0 == -1) {
            D2();
        }
        if (rawY < this.A0 || rawY > this.B0 || N1(motionEvent)) {
            this.s0.enableSwipeBack(false);
        }
    }

    public final void B2(Configuration configuration) {
        if (configuration == null) {
            return;
        }
        int i = configuration.orientation;
        if (i == 2) {
            this.x0 = getRequestedOrientation() != 8 ? 0 : 8;
        } else {
            if (i == 1) {
                this.x0 = getRequestedOrientation() == 9 ? 9 : 1;
            }
        }
        this.y0 = this.x0;
    }

    @Override
    public void C0(int i, KeyEvent keyEvent) {
        super.C0(i, keyEvent);
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment == null) {
            return;
        }
        videoPlayerFragment.W(i, keyEvent);
    }

    public final void C2() {
        if (this.n0 != null) {
            ViewTreeObserver viewTreeObserver = getWindow().getDecorView().getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.n0);
            }
            this.n0 = null;
        }
    }

    public final void D1() {
        ViewStub viewStub = (ViewStub) findViewById(R.id.video_layout_permission);
        if (viewStub != null) {
            View viewInflate = viewStub.inflate();
            this.T = viewInflate;
            this.U = (TextView) viewInflate.findViewById(R.id.text_permission);
        }
    }

    public final void D2() {
        View view = this.t0;
        if (view != null) {
            view.getLocationOnScreen(this.C0);
            int i = this.C0[1];
            this.A0 = i;
            this.B0 = i + this.t0.getHeight();
        }
    }

    public final void E1() {
        if (w.j()) {
            w5a.b().e(toString());
            g2();
        } else {
            n.n();
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.U1();
                }
            });
        }
    }

    public final void E2(boolean z) {
        ViewStub viewStub;
        if (z && this.b0 == null && (viewStub = (ViewStub) findViewById(R.id.video_loading_ll)) != null) {
            VideoLoadingView videoLoadingView = (VideoLoadingView) viewStub.inflate();
            this.b0 = videoLoadingView;
            videoLoadingView.setVisibility(0);
        }
        VideoLoadingView videoLoadingView2 = this.b0;
        if (videoLoadingView2 != null) {
            videoLoadingView2.setVisibility(z ? 0 : 8);
        }
    }

    public void F1(final PlayVideoData playVideoData, Intent intent) {
        Log.d("VideoPlayer_Activity", "initData videoData:" + playVideoData);
        this.M0 = new VideoPlayerFragment().setBaseActivity(this);
        MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
        if (miMediaInfo != null) {
            Log.d("VideoPlayer_Activity", "initData mediaInfo:" + miMediaInfo);
        } else if (intent != null && ((intent.getData() != null || "android.intent.action.SEND".equals(intent.getAction())) && intent.getLongExtra("play_bucket_id", -1L) == -1)) {
            mc7.K(intent).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.V1(playVideoData, (Intent) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.W1((PlayVideoData) obj);
                }
            });
            return;
        }
        playVideoData.checkThePlayUriIsFromNet();
        W1(playVideoData);
        m16.a = System.currentTimeMillis();
    }

    public final void G1() {
        if (this.u0) {
            getOnBackPressedDispatcher().addCallback(this, new f(true));
        }
    }

    public final void H1() {
        this.t0 = findViewById(R.id.video_back_area);
        CustomSwipeBackLayout customSwipeBackLayout = (CustomSwipeBackLayout) findViewById(R.id.video_swipeBackLayout);
        this.s0 = customSwipeBackLayout;
        customSwipeBackLayout.setSwipeFromEdge(false);
        this.s0.enableSwipeBack(false);
        this.s0.setSwipeBackListener(new b());
        this.t0.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.X1(view, motionEvent);
            }
        });
    }

    public void I1(final StreamInfo streamInfo, final Intent intent, final boolean z, final PlayVideoData playVideoData) {
        mc7.K(streamInfo).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayerActivity.Y1(streamInfo, (StreamInfo) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Z1(z, playVideoData, intent, (StreamInfo) obj);
            }
        });
    }

    public final boolean J1(int i) {
        int i2 = getResources().getConfiguration().orientation;
        if (i != 0) {
            if (i != 1) {
                if (i != 11) {
                    if (i != 12) {
                        switch (i) {
                            case 6:
                            case 8:
                                break;
                            case 7:
                            case 9:
                                break;
                            default:
                                return false;
                        }
                    }
                }
            }
            return i2 == 1;
        }
        return i2 == 2;
    }

    public boolean K1() {
        return this.G0;
    }

    public final boolean L1() {
        return VideoPlayManager.X().D0(PlayVideoData.restore(getIntent()));
    }

    public final boolean M1() {
        return Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1;
    }

    public final boolean N1(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        if (this.A0 == -1 || this.B0 == -1) {
            D2();
        }
        int iV1 = v1();
        int i = this.B0 - this.A0;
        if (i > 0) {
            iV1 = Math.min(iV1, Math.max(0, i - Math.max(i / 2, com.transsion.utils.a.d(this, 24.0f))));
        }
        return motionEvent.getRawY() <= ((float) (this.A0 + iV1));
    }

    public final boolean O1() {
        VideoPlayerFragment videoPlayerFragment = this.M0;
        return videoPlayerFragment != null && videoPlayerFragment.Z();
    }

    public boolean P1() {
        return this.z0;
    }

    public final void Q1(PlayVideoData playVideoData, Intent intent, Throwable th) {
        E2(false);
        F1(playVideoData, intent);
    }

    public final void R1(Intent intent, PlayVideoData playVideoData, StreamInfo streamInfo) {
        I1(streamInfo, intent, false, playVideoData);
        E2(false);
    }

    public final void S1(Intent intent, StreamInfo streamInfo) {
        this.e0 = true;
        this.f0 = true;
        a16.b("youtube");
        I1(streamInfo, intent, true, null);
        E2(false);
    }

    public final void T1(String str, Throwable th) {
        a16.b("youtube");
        E2(false);
        u2(str);
        a16.c("fail", 0L, "vd_play_ytb_loading");
    }

    public final void U1() {
        String str = n.d;
        AILaunageConfig aILaunageConfig = new AILaunageConfig(str, j0.a(str, n.e));
        aILaunageConfig.setSubConfigJson(AIConfigHelper.getAISubtitleConfig());
        w5a.b().k(null, aILaunageConfig, toString());
    }

    public final boolean X1(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        if (N1(motionEvent)) {
            this.s0.enableSwipeBack(false);
            return false;
        }
        j2();
        this.s0.enableSwipeBack(true);
        return this.s0.onInterceptTouchEvent(motionEvent);
    }

    public final void Z1(boolean z, PlayVideoData playVideoData, Intent intent, StreamInfo streamInfo) {
        VideoStream videoStreamC = suc.c(streamInfo);
        PlayVideoData playVideoDataCreateYoutubePlayData = PlayVideoData.createYoutubePlayData(videoStreamC.getContent(), streamInfo.getName(), videoStreamC.getWidth(), videoStreamC.getHeight(), streamInfo.getId(), true, streamInfo.getDuration(), z);
        if (playVideoData != null) {
            playVideoDataCreateYoutubePlayData.playPosition = playVideoData.playPosition;
        }
        playVideoDataCreateYoutubePlayData.listFlag = this.g0;
        F1(playVideoDataCreateYoutubePlayData, intent);
        E2(false);
        if (z) {
            a16.c(streamInfo.getName(), streamInfo.getDuration() * 1000, "vd_play_ytb_loading");
            a16.a = System.currentTimeMillis();
        }
    }

    public final void a2() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        if (!this.D0) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            if (!pp3.w() && !pp3.j()) {
                intentFilter.addAction("android.intent.action.USER_PRESENT");
            }
            intentFilter.addAction("android.intent.action.MY_PACKAGE_SUSPENDED");
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            try {
                registerReceiver(this.N0, intentFilter);
                this.D0 = true;
            } catch (Exception e2) {
                LogUtils.m("VideoPlayer_Activity", "Error registering receiver: " + e2.getMessage());
            }
        }
        if (this.E0) {
            return;
        }
        D0();
        this.E0 = true;
    }

    @Override
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b2() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        GdprUtil.GDPRConfig gDPRConfig = new GdprUtil.GDPRConfig();
        gDPRConfig.setIgnoreUserExperience(true);
        gDPRConfig.setGdprStyle(0);
        gDPRConfig.setTitleText(getString(R.string.visha_welcome_to, getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player)));
        gDPRConfig.setContentText(getString(R.string.gdpr_notice_visha_translatable));
        MarkPointUtil.y(this, getFragmentManager(), true, gDPRConfig);
    }

    public final void c2() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        E1();
    }

    public final void d2() {
        if (isInMultiWindowMode() || isInPictureInPictureMode()) {
            return;
        }
        this.q0 = false;
        r1();
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        VideoPlayerFragment videoPlayerFragment;
        super.didReceivedNotification(i, objArr);
        if (i == 1121 || i == 1148) {
            Log.i("VideoPlayer_Activity", "didReceivedNotification eventId finish" + i);
            finish();
        }
        if (i == 1124) {
            recreate();
        }
        if (i == 1146) {
            this.k0 = false;
        }
        if (i == 1168 && objArr.length > 0) {
            CustomSwipeBackLayout customSwipeBackLayout = this.s0;
            Object obj = objArr[0];
            customSwipeBackLayout.enableSwipeBack(obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false);
        }
        if (i != 1164 || (videoPlayerFragment = this.M0) == null) {
            return;
        }
        videoPlayerFragment.j0();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && !VideoPlayManager.X().y0()) {
            B1(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final void e2() {
        com.transsion.utils.a.B(this, 0.0f, 10.0f);
    }

    public final WindowInsets f2(View view, WindowInsets windowInsets) {
        this.Y = windowInsets;
        return view.onApplyWindowInsets(windowInsets);
    }

    @Override
    public void finish() {
        v2();
        super.finish();
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.X();
        }
        if (!this.m0) {
            overridePendingTransition(0, 0);
        } else if (this.k0) {
            overridePendingTransition(0, R.anim.activity_audio_slide_out_down);
        }
        LiveEventBus.b().c("finish_media_player_activity", Boolean.TRUE);
    }

    public final void g2() {
        h2(null);
    }

    public final void h2(final Runnable runnable) {
        final Context applicationContext = getApplicationContext();
        TaskExecutor.c(new TaskExecutor.Task<List<String>>() {
            @Override
            public List<String> onBackground() {
                return v.a.a().c(applicationContext);
            }

            @Override
            public void onResult(List<String> list) {
                super.onResult(list);
                if (VideoPlayerActivity.this.isFinishing() || VideoPlayerActivity.this.isDestroyed()) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                        return;
                    }
                    return;
                }
                if (list != null && !list.isEmpty()) {
                    w5a.c(list);
                }
                n.n();
                VideoPlayerFragment videoPlayerFragment = VideoPlayerActivity.this.M0;
                if (videoPlayerFragment != null) {
                    videoPlayerFragment.n0();
                }
                StringBuilder sb = new StringBuilder();
                sb.append("loadLanguageList: ");
                sb.append(list != null ? list.size() : 0);
                sb.append(", ");
                sb.append(list);
                Log.e("VideoPlayer_Activity", sb.toString());
                Runnable runnable3 = runnable;
                if (runnable3 != null) {
                    runnable3.run();
                }
            }
        });
    }

    public void i2() {
        Log.d("VideoPlayer_Activity", "onWindowFirstFrameRendered");
        this.F0.post(this.r0);
        if (getWindow() != null) {
            getWindow().getDecorView().postDelayed(this.O0, 50L);
        }
        if (w.h()) {
            this.F0.postDelayed(this.Q0, 100L);
        }
        setNavVisibility(false);
        VideoPlayManager.X().I(getApplicationContext());
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1148);
        this.mNotifys.add(1121);
        this.mNotifys.add(1146);
        this.mNotifys.add(1168);
    }

    @Override
    public boolean isExtendAngelMonitorTime() {
        return true;
    }

    @Override
    public boolean isInitWindowOptions() {
        return true;
    }

    @Override
    public boolean isNeedAngelSensor() {
        return ydc.g();
    }

    @Override
    public boolean isRestrictPermissionGuideShow() {
        return false;
    }

    public final void j2() {
        if (this.u0 || !this.q0 || Build.VERSION.SDK_INT < 30 || isInMultiWindowMode() || isInPictureInPictureMode()) {
            return;
        }
        try {
            setTranslucent(true);
            Window window = getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
            this.q0 = false;
        } catch (Exception e2) {
            Log.w("VideoPlayer_Activity", "prepareWindowForSwipeDismiss failed", e2);
        }
    }

    public final void k2() {
        if (isInPictureInPictureMode() && !VideoOrientationHelper.a(this) && this.H0 == 2) {
            int i = this.I0;
            if (i != 0 && i != 8) {
                i = 0;
            }
            p1(i);
        }
    }

    public final PlayVideoData V1(Intent intent, PlayVideoData playVideoData) throws Throwable {
        if (intent == null) {
            return playVideoData;
        }
        String strB = jy7.b(this, intent.getData() != null ? intent.getData() : playVideoData.playUri);
        if (strB != null) {
            MediaItem mediaItemM = tpb.j0().m(strB);
            if (mediaItemM == null) {
                Log.w("VideoPlayer_Activity", "initData queryVideoItemFromPath mediaItem null");
            } else if (mediaItemM.id == 0 && mediaItemM.bucketId == 0) {
                Log.w("VideoPlayer_Activity", "initData queryVideoItemFromPath error");
            } else {
                Log.w("VideoPlayer_Activity", "initData data:" + mediaItemM);
                intent.putExtra("play_media_id", mediaItemM.id);
                intent.putExtra("play_bucket_id", mediaItemM.bucketId);
                intent.setData(mediaItemM.uri);
                intent.putExtra("media_from_internal", false);
            }
        }
        if (!TextUtils.isEmpty(playVideoData.videoFrom)) {
            a16.b(playVideoData.videoFrom);
        }
        int intExtra = intent.getIntExtra("TAG_PLAY_FROM", 0);
        if (intExtra != 0) {
            intent.putExtra("TAG_PLAY_FROM", intExtra);
        } else {
            intent.putExtra("TAG_PLAY_FROM", PlayVideoData.ePlayFrom.EXTERNAL.from);
        }
        if (intent.getData() != null) {
            playVideoData = PlayVideoData.restore(intent);
        }
        playVideoData.checkThePlayUriIsFromNet();
        return playVideoData;
    }

    public final void lambda$new$0() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        PlayVideoData playVideoData = this.p0;
        if (playVideoData != null) {
            W1(playVideoData);
        }
        r1();
    }

    @Override
    public int loadSkin(boolean z) {
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        return super.loadSkin(false);
    }

    public void m2(Runnable runnable) {
        if (w.j()) {
            h2(runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public final void n2() {
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.T();
        }
    }

    public final void o2() {
        if (this.n0 != null || this.o0) {
            return;
        }
        View decorView = getWindow().getDecorView();
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            c cVar = new c(decorView);
            this.n0 = cVar;
            viewTreeObserver.addOnPreDrawListener(cVar);
            Log.d("VideoPlayer_Activity", "registerWindowFirstFrameListener");
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.d0(i, i2, intent);
        }
        if (i == 10213) {
            Log.e("VideoPlayer_Activity", "onActivityResult finish");
            finish();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MarkPointUtil.p(932460000088L, "privacy_policy_cl", "version");
        this.F0.postDelayed(this.P0, 300L);
        Uri referrer = getReferrer();
        if (referrer != null) {
            this.l0 = referrer.getAuthority();
        }
    }

    @Override
    public void onBackPressed() {
        try {
            VideoPlayerFragment videoPlayerFragment = this.M0;
            if (videoPlayerFragment == null || !videoPlayerFragment.onBackPressed()) {
                if (VideoPlayManager.X().G) {
                    hb0.markDirect("vd_play_listen_back");
                }
                if (this.e0) {
                    k38.f(this);
                    return;
                }
                if (this.d0) {
                    bd4.b(this);
                }
                this.e0 = false;
                v2();
                super.onBackPressed();
                this.a0 = true;
                fsb.a(VideoPlayManager.X());
                supportFinishAfterTransition();
                LogUtils.w("VideoPlayer_Activity", "onBackPressed finish");
            }
            w6c.r(this, "onback_from_play_video", true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        boolean z = Build.VERSION.SDK_INT >= 30 && !isInMultiWindowMode() && !(isInPictureInPictureMode() || K1()) && (((BaseActivity) this).mIsScreenLandscape != (configuration.orientation == 2));
        if (z) {
            setTranslucent(false);
            this.q0 = true;
        }
        super.onConfigurationChanged(configuration);
        if (!VideoOrientationHelper.a(this)) {
            B2(configuration);
        }
        boolean z2 = configuration.orientation == 2;
        if (((BaseActivity) this).mIsScreenLandscape != z2) {
            ((BaseActivity) this).mIsScreenLandscape = z2;
            setNavVisibility(this.mStatusPlayUiShow);
        }
        int i = configuration.uiMode & 48;
        if (this.R && this.W && i != this.V) {
            this.V = i;
            setWindowBackground(i == 32);
            TextView textView = this.U;
            if (textView != null) {
                textView.setTextColor(getColor(R.color.os_text_tertiary_color));
            }
        }
        View view = this.t0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = com.transsion.utils.a.d(this, z2 ? 44.0f : 80.0f);
            this.t0.setLayoutParams(layoutParams);
            this.A0 = -1;
            this.B0 = -1;
        }
        if (z) {
            getWindow().getDecorView().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.d2();
                }
            }, 300L);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        boolean z = true;
        setForceNotApplyBackground(true);
        h27.c().b(this, 1124);
        h27.c().b(this, 1164);
        super.onCreate(bundle);
        if (bundle != null) {
            this.X = true;
        } else {
            q1();
        }
        if (isInPictureInPictureMode()) {
            o18.q(this, 1);
        }
        this.Z = w6c.c(this, "finished_video_guide", false);
        if (pp3.x(getApplicationContext())) {
            ((ViewGroup) findViewById(android.R.id.content)).setPadding(0, 0, 0, 0);
        }
        if (getIntent() != null) {
            Bundle extras = getIntent().getExtras();
            if (extras != null && extras.get(PlayVideoData.TAG_VIDEO_FROM) != null) {
                this.d0 = true;
            }
            if (getIntent().getBooleanExtra(PlayVideoData.TAG_FROM_PIP_MUTE, false)) {
                VideoPlayManager.X().O = true;
            }
            boolean booleanExtra = getIntent().getBooleanExtra(PlayVideoData.TAG_BACK_PLAY, false);
            this.S = booleanExtra;
            if (booleanExtra) {
                List<Activity> listD = com.blankj.utilcode.util.a.d();
                if (!listD.isEmpty()) {
                    for (Activity activity : listD) {
                        if ((activity instanceof SubtitleManagerActivity) || ((activity instanceof VideoPlayerActivity) && activity != this)) {
                            Log.e("VideoPlayer_Activity", "onCreate mIsBackPlay activity.finish");
                            activity.finish();
                        }
                    }
                }
            }
            boolean booleanExtra2 = getIntent().getBooleanExtra(PlayVideoData.EXTRA_IS_SECURECAMERA, false);
            this.R = booleanExtra2;
            if (booleanExtra2) {
                VideoPlayManager.X().W1(false);
                af9.a = 0;
                Window window = getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags |= 524288;
                window.setAttributes(attributes);
            }
            if (VideoPlayManager.X().x0()) {
                LogUtils.j("VideoPlayer_Activity", "from notification close pip");
                k38.e();
            }
        }
        this.V = getResources().getConfiguration().uiMode & 48;
        postponeEnterTransition();
        setContentView(R.layout.activity_video_player);
        View viewFindViewById = findViewById(android.R.id.content);
        if (viewFindViewById != null) {
            viewFindViewById.getViewTreeObserver().addOnPreDrawListener(new a(viewFindViewById));
        }
        if (this.R) {
            D1();
        }
        setWindowBackground(!isInMultiWindowMode());
        y2();
        if (!isInMultiWindowMode()) {
            e80.t(this);
        }
        if (getIntent().getIntExtra("listFlag", 0) <= 0 && !t08.c(this)) {
            z = false;
        }
        this.mHaveFilePermission = z;
        if (z) {
            successWritePermissionOnce();
            H1();
            G1();
        }
        if (!VideoOrientationHelper.a(this)) {
            A2();
        }
        getWindow().getDecorView().post(new Runnable() {
            @Override
            public final void run() {
                this.b.e2();
            }
        });
        o2();
    }

    @Override
    public void onDestroy() {
        Log.d("VideoPlayer_Activity", "onDestroy - cleaning up resources");
        if (this.j0) {
            if (Build.VERSION.SDK_INT > 29) {
                getWindow().getDecorView().setOnApplyWindowInsetsListener(null);
            } else {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
            }
        }
        h27.c().f(this, 1124);
        h27.c().f(this, 1164);
        VideoPlayManager.X().t2(getApplicationContext());
        C2();
        if (getWindow() != null) {
            getWindow().getDecorView().removeCallbacks(this.O0);
        }
        this.F0.removeCallbacks(this.r0);
        this.F0.removeCallbacks(this.P0);
        this.F0.removeCallbacks(this.Q0);
        this.F0.removeCallbacks(this.K0);
        this.F0.removeCallbacks(this.L0);
        if (this.E0) {
            this.E0 = false;
            F0();
        }
        if (this.D0) {
            try {
                this.D0 = false;
                unregisterReceiver(this.N0);
            } catch (Exception e2) {
                Log.e("VideoPlayer_Activity", "Error unregistering receiver: " + e2.getMessage());
            }
        }
        if (w.h()) {
            w5a.b().j(toString());
        }
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
            this.w0 = null;
        }
        o18.h(this);
        super.onDestroy();
    }

    @Override
    public void onEjected(String str) {
        String str2;
        Log.i("VideoPlayer_Activity", "onEjected unMountPoint:" + str);
        MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        if (mediaItemC0 == null || (str2 = mediaItemC0.data) == null || !str2.contains(str)) {
            n2();
        } else {
            finish();
            Log.e("VideoPlayer_Activity", "onEjected finish");
        }
    }

    @Override
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        this.z0 = true;
        Log.d("VideoPlayer_Activity", "onEnterAnimationComplete, apply cached orientation if needed");
        q2();
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.k0();
        }
    }

    @Override
    public void onMounted(String str) {
        Log.d("VideoPlayer_Activity", "onMounted mountPoint:" + str);
        n2();
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        y2();
        if (z && Build.VERSION.SDK_INT < 30) {
            forceShowSystemBar(true, false);
        }
        setNavVisibility(this.mStatusPlayUiShow);
    }

    @Override
    public void onNewIntent(Intent intent) {
        Log.d("VideoPlayer_Activity", "onNewIntent " + intent);
        super.onNewIntent(intent);
        if ((this.mHaveFilePermission || t08.c(getApplicationContext())) && intent != null) {
            if (!"com.transsion.magicshow.OPEN_VIDEO".equals(intent.getAction()) || L1()) {
                w1(intent);
            } else {
                Log.i("VideoPlayer_Activity", "onNewIntent from backgroundPlay, only show current playing video");
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.f0(z, configuration);
            if (this.c0 && !z) {
                this.M0.e0();
            }
        }
        if (z && this.i0 && !MMKV.p().e("is_pip_ges_showed", false)) {
            ToastUtils.q(pp3.c ? R.string.ges_pip_notice_pre : R.string.ges_pip_notice);
            MMKV.p().y("is_pip_ges_showed", true);
        }
        r2(z);
        z1(z, configuration);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (MarkPointUtil.j(getFragmentManager()) && MarkPointUtil.c(this)) {
            Log.d("VideoPlayer_Activity", "onResume: hide because has been grant");
            MarkPointUtil.v(getFragmentManager());
        }
        if (this.h0) {
            hb0.markDirect("vd_play_listen_show");
        }
        this.h0 = true;
        if (!this.j0) {
            this.j0 = true;
            if (Build.VERSION.SDK_INT > 29) {
                getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                    @Override
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        return this.a.f2(view, windowInsets);
                    }
                });
            } else {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
            }
        }
        ToastUtils.h();
        this.i0 = false;
        lz5.g();
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener == null || !orientationEventListener.canDetectOrientation() || this.G0 || isInPictureInPictureMode()) {
            return;
        }
        this.w0.enable();
    }

    @Override
    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
    }

    @Override
    public void onSdSwap() {
        Log.d("VideoPlayer_Activity", "onSdSwap ");
        n2();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.a0 = false;
        this.c0 = false;
    }

    @Override
    public void onStop() {
        super.onStop();
        if (isInPictureInPictureMode()) {
            this.c0 = true;
        }
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    @Override
    public void onSystemUiVisibilityChange(int i) {
        int i2 = this.mLastSystemUiVis ^ i;
        this.mLastSystemUiVis = i;
        if ((i2 & 2) == 0 || (i & 2) != 0) {
            return;
        }
        if (!this.mStatusPlayUiShow) {
            setStatusPlayUiShow();
        }
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.h0();
        }
    }

    @Override
    public void onUnMounted(String str) {
        Log.d("VideoPlayer_Activity", "onUnMounted unMountPoint:" + str);
    }

    @Override
    public void onUserLeaveHint() {
        VideoPlayerFragment videoPlayerFragment;
        super.onUserLeaveHint();
        LogUtils.O("onUserLeaveHint: " + this.a0);
        if (this.a0 || !pp3.u() || this.d0 || !fec.a() || (videoPlayerFragment = this.M0) == null) {
            return;
        }
        this.i0 = true;
        videoPlayerFragment.i0();
    }

    public final void p1(int i) {
        this.J0 = SystemClock.uptimeMillis();
        this.x0 = i;
        this.y0 = i;
        setRequestedOrientation(i);
    }

    public final void W1(PlayVideoData playVideoData) {
        this.p0 = playVideoData;
        if (this.o0) {
            if (this.M0 == null) {
                Log.w("VideoPlayer_Activity", "replaceContentFragment fragment was null after first frame, create");
                this.M0 = new VideoPlayerFragment().setBaseActivity(this);
            }
            if (this.M0.isAdded()) {
                Log.d("VideoPlayer_Activity", "replaceContentFragment skip, fragment already added");
                r1();
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("video_play_fragment_bean", playVideoData);
            this.M0.setArguments(bundle);
            a64.i(this, this.M0, false);
            this.F0.removeCallbacks(this.r0);
            r1();
        }
    }

    public final void q2() {
        if (!this.z0 || this.G0 || isInPictureInPictureMode()) {
            Log.d("VideoPlayer_Activity", "window animation not finished, defer orientation request:" + this.y0);
            return;
        }
        int i = this.y0;
        if (i == -1 || i == this.x0) {
            Log.d("VideoPlayer_Activity", "requestPendingOrientationIfNeed:" + this.y0 + StringUtils.COMMA + this.x0);
            return;
        }
        if (J1(i)) {
            this.x0 = this.y0;
        } else {
            if (SystemClock.uptimeMillis() - this.J0 < 800) {
                return;
            }
            try {
                p1(this.y0);
            } catch (Exception e2) {
                Log.e("VideoPlayer_Activity", "Failed to set requested orientation", e2);
            }
        }
    }

    public final void r1() {
        if (Build.VERSION.SDK_INT < 30 || this.q0 || isFinishing() || isDestroyed() || isInMultiWindowMode() || isInPictureInPictureMode()) {
            return;
        }
        try {
            setTranslucent(false);
            Window window = getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(-16777216));
            }
            this.q0 = true;
        } catch (Exception e2) {
            Log.w("VideoPlayer_Activity", "convertPlayerWindowOpaque failed", e2);
        }
    }

    public final void r2(boolean z) {
        Log.i("VideoPlayer_Activity", "resetBrightness isPipMode:" + z);
        if (VideoOpStatus.defScreenBrightness == -1.0f) {
            return;
        }
        if (z) {
            rtb.n(this);
        } else {
            rtb.q(this, VideoPlayManager.X().H, 0.0f, true);
        }
    }

    @Override
    public void requestFilePermission() {
        if (!this.R || this.T == null || t08.c(getApplicationContext())) {
            super.requestFilePermission();
        } else {
            this.T.setVisibility(0);
            this.W = true;
        }
    }

    @Override
    public void requestedChangeOrientation(int i) {
        Log.e("VideoPlayer_Activity", "requestedChangeOrientation " + i);
        super.requestedChangeOrientation(i);
        setRequestedOrientation(i);
    }

    public final void s1() {
        this.G0 = false;
        if (isFinishing() || isDestroyed() || isInPictureInPictureMode()) {
            return;
        }
        B2(getResources().getConfiguration());
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener == null || !orientationEventListener.canDetectOrientation()) {
            return;
        }
        this.w0.enable();
    }

    public void s2() {
        WindowInsets windowInsets;
        if (this.mStatusPlayUiShow || (windowInsets = this.Y) == null || windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom != 0) {
            return;
        }
        setNavVisibility(false);
    }

    @Override
    public void setNavVisibility(boolean z) {
        if (pp3.a) {
            boolean zJ = MarkPointUtil.j(getFragmentManager());
            boolean z2 = R0;
            if (!z2 && zJ) {
                Log.i("VideoPlayer_Activity", "setNavVisibility return because isGdprFragmentAdded");
                return;
            } else if (z2) {
                R0 = false;
            }
        }
        super.setNavVisibility(z);
    }

    @Override
    public void setRequestedOrientation(int i) {
        super.setRequestedOrientation(i);
        Log.d("VideoPlayer_Activity", "setRequestedOrientation " + i);
    }

    @Override
    public void setStatusPlayUiShow() {
        super.setStatusPlayUiShow();
        VideoPlayerFragment videoPlayerFragment = this.M0;
        if (videoPlayerFragment != null) {
            videoPlayerFragment.m0();
        }
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }

    @Override
    public void successWritePermissionOnce() {
        if (getIntent() != null) {
            if (!this.X) {
                w1(getIntent());
                return;
            }
            VideoPlayerFragment videoPlayerFragment = (VideoPlayerFragment) getSupportFragmentManager().findFragmentById(R.id.fragment_content);
            this.M0 = videoPlayerFragment;
            if (videoPlayerFragment != null) {
                videoPlayerFragment.setBaseActivity(this);
            }
            Log.w("VideoPlayer_Activity", "isAutoRecover,not need initData again," + this.M0);
        }
    }

    public void t1() {
        if (this.w0 == null) {
            A2();
        }
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener == null || !orientationEventListener.canDetectOrientation() || this.G0 || isInPictureInPictureMode()) {
            return;
        }
        this.w0.enable();
    }

    public final void t2() {
        if (this.u0 && this.v0) {
            this.v0 = false;
            Window window = getWindow();
            if (window != null) {
                z2(window.getDecorView(), true);
            }
            this.q0 = false;
            r1();
        }
    }

    public final void u1() {
        Log.i("VideoPlayer_Activity", "exitVideoSwipeFinished");
        if (VideoPlayManager.X().G) {
            hb0.markDirect("vd_play_listen_back");
        }
        if (this.e0) {
            k38.f(this);
            return;
        }
        if (this.d0) {
            bd4.b(this);
        }
        fsb.a(VideoPlayManager.X());
        w2(false);
        finish();
        this.a0 = true;
    }

    public void u2(String str) {
        k38.q(this, str);
    }

    public final int v1() {
        int systemWindowInsetTop;
        int iE = e80.e();
        WindowInsets rootWindowInsets = this.Y;
        if (rootWindowInsets == null && getWindow() != null && getWindow().getDecorView() != null) {
            rootWindowInsets = getWindow().getDecorView().getRootWindowInsets();
        }
        if (rootWindowInsets == null) {
            systemWindowInsetTop = iE;
        } else if (Build.VERSION.SDK_INT >= 30) {
            systemWindowInsetTop = Math.max(rootWindowInsets.getInsets(WindowInsets.Type.statusBars()).top, Math.max(rootWindowInsets.getInsets(WindowInsets.Type.systemGestures()).top, rootWindowInsets.getInsets(WindowInsets.Type.mandatorySystemGestures()).top));
        } else {
            systemWindowInsetTop = rootWindowInsets.getSystemWindowInsetTop();
        }
        return Math.max(systemWindowInsetTop, Math.max(iE, com.transsion.utils.a.d(this, 48.0f)));
    }

    public final void v2() {
        if (!this.u0 || this.v0) {
            return;
        }
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(-16777216));
            z2(window.getDecorView(), false);
        }
        if (Build.VERSION.SDK_INT >= 30 && !isInMultiWindowMode()) {
            setTranslucent(false);
        }
        this.v0 = true;
        this.q0 = true;
    }

    public void w1(Intent intent) {
        String action = intent.getAction();
        String type = intent.getType();
        LogUtils.N("VideoPlayer_Activity", "handleIntent intent:" + intent);
        if ("android.intent.action.SEND".equals(action) && type != null) {
            A1(intent);
            return;
        }
        PlayVideoData playVideoDataRestore = PlayVideoData.restore(intent);
        LogUtils.N("VideoPlayer_Activity", "handleIntent videoData:" + playVideoDataRestore);
        this.g0 = playVideoDataRestore.listFlag;
        this.f0 = playVideoDataRestore.isFromNet;
        if (playVideoDataRestore.getMiMediaInfo() != null) {
            F1(playVideoDataRestore, intent);
            return;
        }
        if (playVideoDataRestore.isFromNet && !r0a.i(playVideoDataRestore.mKtFileId)) {
            x1(playVideoDataRestore, intent);
        } else if (!playVideoDataRestore.isFromNet || playVideoDataRestore.fromBackgroundPlay) {
            F1(playVideoDataRestore, intent);
        } else {
            y1(playVideoDataRestore, intent);
        }
    }

    public void w2(boolean z) {
        this.m0 = z;
    }

    public void x1(PlayVideoData playVideoData, Intent intent) {
        playVideoData.setPlayPosition(CloudVideoPlayInfoManager.a.t(playVideoData.mKtFileId));
        F1(playVideoData, intent);
    }

    public void x2(boolean z) {
        this.Z = z;
    }

    public void y1(final PlayVideoData playVideoData, final Intent intent) {
        E2(true);
        ff6.f();
        ff6.i(ff6.h(), "https://www.youtube.com/watch?v=" + playVideoData.mYoutubeId).c(bindToLifecycle()).r(k29.c()).m(vb.a()).p(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.R1(intent, playVideoData, (StreamInfo) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.Q1(playVideoData, intent, (Throwable) obj);
            }
        });
    }

    public final void y2() {
        boolean zIsInMultiWindowMode = isInMultiWindowMode();
        Window window = getWindow();
        window.setStatusBarColor(getColor(zIsInMultiWindowMode ? R.color.black : R.color.transparent));
        window.setNavigationBarColor(getColor(R.color.black));
    }

    public final void z1(boolean z, Configuration configuration) {
        if (VideoOrientationHelper.a(this)) {
            return;
        }
        this.F0.removeCallbacks(this.K0);
        this.F0.removeCallbacks(this.L0);
        OrientationEventListener orientationEventListener = this.w0;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        if (z) {
            this.G0 = true;
            this.H0 = getResources().getConfiguration().orientation;
            this.I0 = getRequestedOrientation();
            this.F0.removeCallbacks(this.L0);
            this.F0.post(this.L0);
            return;
        }
        this.G0 = true;
        if (configuration == null) {
            configuration = getResources().getConfiguration();
        }
        if (this.H0 != 2 || configuration.orientation == 2) {
            B2(configuration);
        } else {
            int i = this.I0;
            if (i != 0 && i != 8) {
                i = 0;
            }
            p1(i);
        }
        this.H0 = 0;
        this.I0 = -1;
        this.F0.postDelayed(this.K0, 2000L);
    }

    public final void z2(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (view instanceof SurfaceView) {
            view.setVisibility(z ? 0 : 4);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                z2(viewGroup.getChildAt(i), z);
            }
        }
    }
}

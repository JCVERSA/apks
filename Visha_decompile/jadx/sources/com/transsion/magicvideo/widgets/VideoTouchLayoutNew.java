package com.transsion.magicvideo.widgets;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.core.view.ViewCompat;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.AdaptScreenUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.WindowInfoViewModel;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.cloudcore.cloudapi.model.FileShareInfo;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.appconfig.JumpBean;
import com.transsion.dbdata.beans.media.JumpMediaItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.magicvideo.MyTransitionListener;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.adapter.PlayListImgAdapter;
import com.transsion.magicvideo.model.VideoControlModel;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.ICloudFileService;
import com.transsion.magicvideo.widgets.VideoTouchLayoutNew;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BaseFoldActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.MediaVolumeManager;
import com.transsion.playercommon.widgets.CustomMediaIconViewGroup;
import com.transsion.playercommon.widgets.MediaProgressInfoLayout;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgets.ClockView;
import com.transsion.widgets.MarqueTextView;
import com.transsion.widgets.ScaleTouchView.OnScaleSurfaceListener;
import com.transsion.widgets.battery.BatteryMeterView;
import com.transsion.widgets.bubblepopwindow.BubblePopupWindow;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.a41;
import defpackage.cd;
import defpackage.f39;
import defpackage.hb0;
import defpackage.jz5;
import defpackage.k29;
import defpackage.l9;
import defpackage.lc3;
import defpackage.lz5;
import defpackage.mc7;
import defpackage.n16;
import defpackage.p06;
import defpackage.pp3;
import defpackage.pw2;
import defpackage.r0a;
import defpackage.raa;
import defpackage.rtb;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.vha;
import defpackage.w6c;
import defpackage.wna;
import defpackage.woc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;
import org.slf4j.Marker;

public class VideoTouchLayoutNew extends VideoTouchPlayUI implements View.OnClickListener {
    public final Observer D6;
    public final int E6;
    public final Runnable F6;
    public TextView G1;
    public CustomMediaIconViewGroup G2;
    public Long G3;
    public f G6;
    public f H6;
    public boolean I6;
    public String J6;
    public boolean K6;
    public View.OnClickListener L6;
    public TouchWindowLayout.g M0;
    public MotionLayout N0;
    public OSIconTextView O0;
    public OSIconTextView P0;
    public OSIconTextView Q0;
    public OSIconTextView R0;
    public OSIconTextView S0;
    public ImageView T0;
    public ImageView U0;
    public OSIconTextView V0;
    public ImageView V1;
    public MediaProgressInfoLayout V2;
    public MarqueTextView W0;
    public ClickableRecycleView X0;
    public TextView Y0;
    public long Z0;
    public long a1;
    public boolean b1;
    public long c1;
    public float d1;
    public Context e1;
    public int f1;
    public boolean f2;
    public Animation f3;
    public int f4;
    public int g1;
    public ImageView h1;
    public ImageView i1;
    public View j1;
    public View k1;
    public woc k2;
    public Animation k3;
    public Boolean k4;
    public ImageView k5;
    public String k6;
    public OSIconTextView l1;
    public CustomLinearLayoutManager m1;
    public BubblePopupWindow n1;
    public View o1;
    public BubbleTextView p1;
    public ImageView p2;
    public Animation p3;
    public int p4;
    public PopupMenu p5;
    public Boolean p6;
    public PlayListImgAdapter playListImgAdapter;
    public int q1;
    public TextView q2;
    public Animation q3;
    public int q4;
    public boolean q5;
    public View q6;
    public BatteryMeterView r1;
    public ClockView s1;
    public ImageView t1;
    public MediaItem x1;
    public ImageView x2;
    public TextView y1;
    public TextView y2;

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(Boolean bool) {
            if (VideoTouchLayoutNew.this.P0 != null) {
                VideoTouchLayoutNew.this.P0.setClickable(bool.booleanValue());
            }
        }
    }

    public class b implements OSSeekbar.c {
        public b() {
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
            VideoTouchLayoutNew videoTouchLayoutNew = VideoTouchLayoutNew.this;
            if (videoTouchLayoutNew.b0) {
                videoTouchLayoutNew.c1 = (videoTouchLayoutNew.H0 * ((long) i)) / 100;
                long j = VideoTouchLayoutNew.this.c1;
                VideoTouchLayoutNew videoTouchLayoutNew2 = VideoTouchLayoutNew.this;
                long j2 = videoTouchLayoutNew2.H0;
                if (j > j2) {
                    videoTouchLayoutNew2.c1 = j2;
                }
            } else {
                videoTouchLayoutNew.c1 = VideoPlayManager.X().S();
            }
            VideoTouchLayoutNew videoTouchLayoutNew3 = VideoTouchLayoutNew.this;
            videoTouchLayoutNew3.c0(videoTouchLayoutNew3.c1, VideoTouchLayoutNew.this.H0);
            VideoTouchLayoutNew videoTouchLayoutNew4 = VideoTouchLayoutNew.this;
            videoTouchLayoutNew4.q0.setText(wna.d(videoTouchLayoutNew4.c1));
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
            VideoTouchLayoutNew videoTouchLayoutNew = VideoTouchLayoutNew.this;
            videoTouchLayoutNew.b0 = true;
            if (!videoTouchLayoutNew.d0) {
                videoTouchLayoutNew.f0 = true;
                PlayerViewController.d dVar = videoTouchLayoutNew.i0;
                if (dVar != null) {
                    dVar.a(true);
                }
            }
            VideoTouchLayoutNew.this.b0(true);
            VideoTouchLayoutNew videoTouchLayoutNew2 = VideoTouchLayoutNew.this;
            videoTouchLayoutNew2.q1 = videoTouchLayoutNew2.g0.S();
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) {
            VideoTouchLayoutNew videoTouchLayoutNew = VideoTouchLayoutNew.this;
            videoTouchLayoutNew.b0 = false;
            videoTouchLayoutNew.b0(false);
            VideoTouchLayoutNew videoTouchLayoutNew2 = VideoTouchLayoutNew.this;
            videoTouchLayoutNew2.f0 = false;
            PlayerViewController.d dVar = videoTouchLayoutNew2.i0;
            if (dVar != null) {
                dVar.a(false);
            }
            p06.T(VideoTouchLayoutNew.this.q1, (int) VideoTouchLayoutNew.this.c1);
            VideoTouchLayoutNew videoTouchLayoutNew3 = VideoTouchLayoutNew.this;
            videoTouchLayoutNew3.g1(videoTouchLayoutNew3.G0.getProgress());
            if (vha.s(VideoTouchLayoutNew.this.e1)) {
                VideoTouchLayoutNew videoTouchLayoutNew4 = VideoTouchLayoutNew.this;
                videoTouchLayoutNew4.G0.setThumb(vha.e(videoTouchLayoutNew4.getContext()));
            }
        }
    }

    public class c implements View.OnLayoutChangeListener {
        public c() {
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (PlayUIDisplayView.isPlayUIShowing(VideoTouchLayoutNew.this)) {
                VideoTouchLayoutNew videoTouchLayoutNew = VideoTouchLayoutNew.this;
                videoTouchLayoutNew.showNewPlayerFeaturesBubble(videoTouchLayoutNew.h1, true);
            }
        }
    }

    public class d extends MyTransitionListener {
        public d() {
        }

        @Override
        public void onTransitionCompleted(MotionLayout motionLayout, int i) {
            VideoTouchLayoutNew.this.q1();
        }
    }

    public class e extends RecyclerView.OnScrollListener {
        public e() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 1) {
                hb0.markDirect(hb0.EVENT_NAME_VD_CP_PLAYLIST_VIDEO_SLIDE);
            }
        }
    }

    public class f extends RecyclerView.ItemDecoration {
        public int b;

        public f(int i) {
            this.b = i;
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            if (childAdapterPosition == 0) {
                rect.left = this.b;
                rect.right = 0;
            } else if (childAdapterPosition == VideoTouchLayoutNew.this.playListImgAdapter.getItemCount() - 1) {
                rect.left = 0;
                rect.right = this.b;
            } else {
                rect.left = 0;
                rect.right = 0;
            }
        }
    }

    public VideoTouchLayoutNew(Context context) {
        super(context);
        this.f2 = false;
        this.G3 = null;
        this.f4 = 1;
        this.k4 = null;
        this.q5 = false;
        this.D6 = new a();
        this.E6 = 10000;
        this.F6 = new Runnable() {
            @Override
            public final void run() {
                this.b.V0();
            }
        };
    }

    private boolean K0() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.Z0;
        Log.w("VideoTouchLayoutNew", "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public void V0() {
        hideNewPlayerFeaturesBubble();
        w6c.D(this.e1, true);
    }

    public static void Z0(Throwable th) {
        LogUtils.l("saveFileToMyCloudDrive error: " + th.getMessage());
    }

    public void g1(int i) {
        long j = (this.H0 * ((long) i)) / 100;
        Log.e("VideoTouchLayoutNew", "seekbar onStopTrackingTouch: " + wna.d(j));
        boolean zM = M();
        this.g0.Q1((int) j);
        if (zM) {
            this.g0.i1(true);
        }
        if (isVideoProgressEnd()) {
            onPlayStatusEnd();
        }
        W(shouldShowPauseButton());
    }

    private int getNavigationBarPx() {
        return com.transsion.utils.a.f(getContext());
    }

    private int getVideoButtonOverWidth() {
        if (this.q4 == 0) {
            O0();
        }
        return this.q4;
    }

    private void o1() {
        View.OnClickListener onClickListener = this.L6;
        if (onClickListener != null) {
            onClickListener.onClick(null);
        }
        boolean zT = tpb.j0().T(VideoPlayManager.X().R().data);
        this.i1.setImageResource(zT ? R.drawable.ic_farvorited_on : R.drawable.ic_farvorite_w);
        lz5.h(zT ? 1 : 0);
        if (zT) {
            cd.g(getContext(), this.i1);
        } else {
            cd.i(this.i1);
        }
    }

    private void setFastIconVisible(int i) {
        if (i == 8) {
            this.p2.clearAnimation();
            this.x2.clearAnimation();
        }
        this.p2.setVisibility(i);
        this.x2.setVisibility(i);
    }

    @Override
    public void A(boolean z) {
        super.A(z);
        q1();
    }

    public void J0() {
        OnScaleSurfaceListener onScaleSurfaceListener;
        boolean z = false;
        boolean zIsInSplitScreen = ((BaseFoldActivity) getContext()).isInSplitScreen(false);
        boolean zIsSmallSplitScreen = ((BaseFoldActivity) getContext()).isSmallSplitScreen(false);
        boolean z2 = this.h || VideoPlayManager.X().g0() == -1;
        Log.d("VideoTouchLayoutNew", "hideView isErrorOrMusic=" + z2 + ",isSmallSplit:" + zIsSmallSplitScreen + ",mSpeed:" + this.d1);
        int i = 8;
        this.Q0.setVisibility((zIsSmallSplitScreen || z2) ? 8 : 0);
        this.O0.setVisibility((zIsSmallSplitScreen || z2) ? 8 : 0);
        this.R0.setVisibility((zIsSmallSplitScreen || !pp3.s() || z2 || com.transsion.utils.a.u(this.e1)) ? 8 : 0);
        this.Y0.setVisibility((zIsSmallSplitScreen || z2 || this.d1 == 1.0f) ? 4 : 0);
        this.V0.setVisibility((zIsSmallSplitScreen || z2 || this.d1 != 1.0f) ? 4 : 0);
        this.P0.setVisibility(zIsInSplitScreen ? 8 : 0);
        this.y1.setVisibility((this.h || ((onScaleSurfaceListener = this.p) != null && onScaleSurfaceListener.isValueRestored())) ? 4 : 0);
        this.U0.setVisibility(z2 ? 4 : 0);
        ViewGroup.LayoutParams layoutParams = this.U0.getLayoutParams();
        layoutParams.width = z2 ? 0 : this.p4;
        this.U0.setLayoutParams(layoutParams);
        this.V1.setVisibility((z2 || !pp3.u) ? 8 : 0);
        this.S0.setVisibility((zIsSmallSplitScreen || z2) ? 8 : 0);
        CustomMediaIconViewGroup customMediaIconViewGroup = this.G2;
        if (!zIsSmallSplitScreen && !z2) {
            i = 0;
        }
        customMediaIconViewGroup.setVisibility(i);
        MediaItem mediaItem = this.x1;
        boolean z3 = mediaItem != null && mediaItem.isKtFile;
        if (mediaItem != null && mediaItem.isKtFile && CloudTaskFinishCacheManager.a.j(mediaItem.data) == null) {
            z = true;
        }
        updateCloudResourceType(z3, z, MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.x1));
    }

    @Override
    public void L() {
        super.L();
        hideNewPlayerFeaturesBubble();
        PopupMenu popupMenu = this.p5;
        if (popupMenu != null) {
            popupMenu.dismiss();
        }
    }

    public final void L0(Context context) {
        int i = R.anim.video_forward_backward_in_anim;
        this.f3 = AnimationUtils.loadAnimation(context, i);
        this.k3 = AnimationUtils.loadAnimation(context, i);
        int i2 = R.anim.video_forward_backward_out_anim;
        this.p3 = AnimationUtils.loadAnimation(context, i2);
        this.q3 = AnimationUtils.loadAnimation(context, i2);
        View.OnTouchListener onTouchListener = new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.S0(view, motionEvent);
            }
        };
        this.p2.setOnTouchListener(onTouchListener);
        this.x2.setOnTouchListener(onTouchListener);
    }

    public final void M0() {
        boolean z = pp3.u;
        if (z) {
            pw2.c = lc3.c(getContext());
        }
        this.V1.setVisibility(z ? 0 : 8);
        this.V1.setImageResource(pw2.c ? R.drawable.ic_dolby_open_new : R.drawable.ic_dolby_close_new);
        this.V1.setOnClickListener(this);
    }

    public final void N0() {
        this.playListImgAdapter = new PlayListImgAdapter(this.e1);
        this.m1 = new CustomLinearLayoutManager(this.e1, 0, false);
        if (isRtlLanguage(this.e1)) {
            this.m1.setReverseLayout(true);
        }
        this.X0.setLayoutManager(this.m1);
        this.X0.setAdapter(this.playListImgAdapter);
        this.X0.setItemAnimator(null);
        this.X0.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
            @Override
            public final void onSystemUiVisibilityChange(int i) {
                this.b.T0(i);
            }
        });
        this.playListImgAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.U0(baseQuickAdapter, view, i);
            }
        });
        this.X0.addOnScrollListener(new e());
        k1();
    }

    public final void O0() {
        TypedArray typedArrayObtainStyledAttributes = this.e1.obtainStyledAttributes(R.style.videoButton_over, new int[]{android.R.attr.layout_width});
        this.q4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean P0() {
        if (SystemClock.elapsedRealtime() - this.a1 >= 600) {
            return false;
        }
        Log.d("VideoTouchLayoutNew", "isClick too fast AfterConfig");
        return true;
    }

    public final boolean Q0() {
        return false;
    }

    public final void R0(int i) {
        this.N0.jumpToState(i);
    }

    @Override
    public void S() {
        super.S();
    }

    public final boolean S0(View view, MotionEvent motionEvent) {
        Animation animation;
        Animation animation2;
        Boolean bool;
        ImageView imageView = this.x2;
        boolean z = view == imageView;
        TextView textView = z ? this.y2 : this.q2;
        String str = z ? Marker.ANY_NON_NULL_MARKER : "-";
        if (view == this.p2) {
            animation = this.f3;
            animation2 = this.p3;
        } else {
            if (view != imageView) {
                Log.e("video_forward_backward", "imageView not math v1: " + view);
                return false;
            }
            animation = this.k3;
            animation2 = this.q3;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            view.startAnimation(animation);
        } else if (action == 1 || action == 3) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            view.startAnimation(animation2);
            Long l = this.G3;
            if (l != null) {
                if (jCurrentTimeMillis - l.longValue() >= 2000 || ((bool = this.k4) != null && bool.booleanValue() != z)) {
                    this.f4 = 1;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                int i = this.f4;
                this.f4 = i + 1;
                sb.append(i * 10);
                sb.append("s");
                textView.setText(sb.toString());
            }
            n1(z);
            this.G3 = Long.valueOf(jCurrentTimeMillis);
            this.c.b(!z);
            this.k4 = Boolean.valueOf(z);
            n16.a.a(z ? "video_play_forward" : "video_play_retreat", this.g0.T());
        }
        return true;
    }

    public final void T0(int i) {
        if (this.X0.getChildAt(0) != null) {
            this.X0.getChildAt(0).requestLayout();
        }
    }

    @Override
    public void U() {
        super.U();
    }

    public final void U0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        MediaItem item = this.playListImgAdapter.getItem(i);
        if (item instanceof JumpMediaItem) {
            JumpMediaItem jumpMediaItem = (JumpMediaItem) item;
            TouchWindowLayout.g gVar = this.M0;
            if (gVar != null) {
                gVar.g(jumpMediaItem.getJumpBean().getRouter_distribute_info());
            }
            hb0.markKV("vd_cp_playlist_jump_cl", new hb0.a(ES6Iterator.VALUE_PROPERTY, jumpMediaItem.getJumpBean().getJump_app_pkg()), new hb0.a("value1", Integer.valueOf(jumpMediaItem.getJumpBean().getRouter_distribute_info().getType())));
            return;
        }
        TouchWindowLayout.g gVar2 = this.M0;
        if (gVar2 != null) {
            if (this.f2 && i > 0) {
                i--;
            }
            gVar2.b(baseQuickAdapter, view, i);
        }
        if (item != null) {
            updateYoutube(item.isYoutubeUrl);
            boolean z = item.isKtFile;
            updateCloudResourceType(z, z && CloudTaskFinishCacheManager.a.j(item.data) == null, MIMediaDataUtils.INSTANCE.isMiMediaVideo(item));
        }
    }

    @Override
    public void W(boolean z) {
        super.W(z);
        if (this.b0) {
            return;
        }
        int i = z ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new;
        Boolean bool = this.p6;
        if (bool != null && bool.booleanValue() != z) {
            this.p6 = Boolean.valueOf(z);
            l1();
            this.T0.setContentDescription(this.e1.getString(z ? R.string.talkback_pause : R.string.talkback_play));
        } else {
            ImageView imageView = this.T0;
            if (imageView != null && !cd.d(imageView, i)) {
                this.T0.setImageResource(i);
                this.T0.setTag(Integer.valueOf(i));
            }
            this.p6 = Boolean.valueOf(z);
        }
    }

    public final void W0(Boolean bool) {
        ImageView imageView = this.V1;
        if (imageView != null) {
            imageView.setVisibility(0);
            this.V1.setImageResource(pw2.c ? R.drawable.ic_dolby_open_new : R.drawable.ic_dolby_close_new);
        }
    }

    @Override
    public void X(int i) {
        super.X(i);
        J0();
    }

    public final ApiResponse X0(FileShareInfo fileShareInfo, FileShareInfo fileShareInfo2) {
        return a41.a.b(this.e1).c(fileShareInfo.getShareToken(), fileShareInfo.getShareId(), "root", Collections.singletonList(fileShareInfo.getFileId()), "");
    }

    public final void Y0(ApiResponse apiResponse) {
        if (!(apiResponse instanceof ApiResponse.Success)) {
            LogUtils.l("saveFileToMyCloudDrive error: " + apiResponse);
            return;
        }
        ToastUtils.s(R.string.visha_saved);
        if (this.g0.T() == null || !this.g0.T().isKt()) {
            return;
        }
        jz5.d(this.g0.T().playTitle);
    }

    public final boolean a1(MenuItem menuItem) {
        this.p5.dismiss();
        PlayVideoData playVideoDataT = VideoPlayManager.X().T();
        MediaItem mediaItemR = VideoPlayManager.X().R();
        if (menuItem.getItemId() == R.id.menu_open_share) {
            if (playVideoDataT == null || !playVideoDataT.isKt()) {
                return true;
            }
            RouterUtils.jumpToCloudDriveFileShareActivity(this.e1, playVideoDataT.mKtFileId, playVideoDataT.playTitle);
            return true;
        }
        if (menuItem.getItemId() == R.id.menu_open_save_to_cloud) {
            if (this.g0.T() != null && this.g0.T().isKt()) {
                jz5.c(playVideoDataT.playTitle, mediaItemR.size);
            }
            final FileShareInfo fileShareInfoD = CloudVideoPlayInfoManager.a.D(playVideoDataT.mKtFileId);
            if (fileShareInfoD == null) {
                return true;
            }
            mc7.K(fileShareInfoD).g(((BaseActivity) this.e1).bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.X0(fileShareInfoD, (FileShareInfo) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.Y0((ApiResponse) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    VideoTouchLayoutNew.Z0((Throwable) obj);
                }
            });
            return true;
        }
        if (menuItem.getItemId() != R.id.menu_open_download) {
            return true;
        }
        if (this.q5) {
            FileShareInfo fileShareInfoD2 = CloudVideoPlayInfoManager.a.D(playVideoDataT.mKtFileId);
            try {
                ICloudFileService iCloudFileService = (ICloudFileService) ARouter.getInstance().navigation(ICloudFileService.class);
                if (iCloudFileService != null) {
                    iCloudFileService.startDownload(fileShareInfoD2, this.k6);
                    Log.i("VideoTouchLayoutNew", "Started cloud share: " + this.k6);
                } else {
                    Log.e("VideoTouchLayoutNew", "Failed to get cloud file service");
                }
                return true;
            } catch (Exception e2) {
                Log.e("VideoTouchLayoutNew", "Error downloading share video: " + e2.getMessage());
                return true;
            }
        }
        VideoCloudData videoCloudData = new VideoCloudData();
        videoCloudData.setFileId(playVideoDataT.mKtFileId);
        videoCloudData.setFileName(playVideoDataT.playTitle);
        videoCloudData.setDuration(Long.valueOf(playVideoDataT.duration));
        videoCloudData.setDuration(Long.valueOf(mediaItemR.duration));
        videoCloudData.setPreviewUrl(mediaItemR.thumbnailUrl);
        videoCloudData.setSize(Long.valueOf(mediaItemR.size));
        Log.i("VideoTouchLayoutNew", "menu_open_download " + videoCloudData);
        try {
            ICloudFileService iCloudFileService2 = (ICloudFileService) ARouter.getInstance().navigation(ICloudFileService.class);
            if (iCloudFileService2 != null) {
                iCloudFileService2.startDownload(videoCloudData);
                Log.i("VideoTouchLayoutNew", "Started cloud video download: " + videoCloudData);
            } else {
                Log.e("VideoTouchLayoutNew", "Failed to get cloud file service");
            }
            return true;
        } catch (Exception e3) {
            Log.e("VideoTouchLayoutNew", "Error downloading cloud video: " + e3.getMessage());
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b1(int i) throws Throwable {
        woc wocVar;
        if (i == 0) {
            R(VideoPlayManager.X().A0());
            if (pp3.u) {
                boolean zC = lc3.c(getContext());
                ImageView imageView = this.V1;
                if (imageView != null) {
                    imageView.setImageResource(zC ? R.drawable.ic_dolby_open_new : R.drawable.ic_dolby_close_new);
                }
            }
            WindowInfoViewModel windowInfoViewModel = this.r;
            if (windowInfoViewModel == null || windowInfoViewModel.a.getValue() == 0 || (wocVar = (woc) this.r.a.getValue()) == this.k2) {
                return;
            }
            r1(wocVar, true);
            this.k2 = wocVar;
        }
    }

    public final void c1(int i, boolean z) {
        this.m1.h(this.X0, i, z, 98);
    }

    public final void d1(int i, boolean z) {
        this.m1.h(this.X0, i, z, 98);
    }

    public final void e1() {
        if (PlayUIDisplayView.isPlayUIShowing(this)) {
            showNewPlayerFeaturesBubble(this.h1, false);
        }
    }

    public final void f1(boolean z) {
        this.K6 = z;
        int i = 8;
        this.i1.setVisibility(z ? 0 : 8);
        this.R0.setVisibility((!pp3.s() || (this.h || VideoPlayManager.X().g0() == -1) || (this.d0 && !this.K6)) ? 8 : 0);
        ImageView imageView = this.h1;
        if (!z && l9.l() && !this.O) {
            i = 0;
        }
        imageView.setVisibility(i);
        if (z) {
            this.i1.setImageResource(tpb.j0().T(this.J6) ? R.drawable.ic_farvorited_on : R.drawable.ic_farvorite_w);
        }
        q1();
    }

    public void flushVideoList() {
        PlayListImgAdapter playListImgAdapter = this.playListImgAdapter;
        if (playListImgAdapter != null) {
            playListImgAdapter.notifyDataSetChanged();
            i1(true, false);
        }
    }

    public boolean getLandscapeByRotation() {
        int rotation = ((WindowManager) this.e1.getSystemService("window")).getDefaultDisplay().getRotation();
        return (rotation == 0 || rotation == 2) ? false : true;
    }

    public int[] getLockLocation() {
        int[] iArr = new int[2];
        this.O0.getLocationOnScreen(iArr);
        return iArr;
    }

    public final void h1(final int i, final boolean z, boolean z2) {
        PlayListImgAdapter playListImgAdapter = this.playListImgAdapter;
        if (playListImgAdapter == null || this.m1 == null) {
            return;
        }
        if (i >= 0) {
            this.X0.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.c1(i, z);
                }
            });
            return;
        }
        List<MediaItem> data = playListImgAdapter.getData();
        for (final int i2 = 0; i2 < data.size(); i2++) {
            if (data.get(i2).isSelected) {
                if (this.g1 == i2 && !z2) {
                    Log.e("VideoTouchLayoutNew", "scrollListToPosition lastSelectedIndex == i");
                    return;
                } else {
                    this.g1 = i2;
                    this.X0.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.d1(i2, z);
                        }
                    }, 200L);
                }
            }
        }
    }

    public void hideNewPlayerFeaturesBubble() {
        BubblePopupWindow bubblePopupWindow = this.n1;
        if (bubblePopupWindow == null || !bubblePopupWindow.isShowing()) {
            return;
        }
        this.n1.dismiss();
    }

    public void hideTimer() {
        this.G1.setVisibility(8);
    }

    public final void i1(boolean z, boolean z2) {
        h1(-1, z, z2);
    }

    @Override
    public void init(Context context) {
        super.init(context);
        a0(context);
        View viewInflate = View.inflate(context, R.layout.video_play_operate_new_half, this);
        MediaProgressInfoLayout mediaProgressInfoLayout = (MediaProgressInfoLayout) viewInflate.findViewById(R.id.video_player_mediaProgressInfoLayout);
        this.V2 = mediaProgressInfoLayout;
        this.q0 = (TextView) mediaProgressInfoLayout.findViewById(R.id.tv_media_play_current_progress);
        this.G0 = (OSSeekbar) this.V2.findViewById(R.id.seekbar_media_play_bottom);
        this.r0 = (TextView) this.V2.findViewById(R.id.tv_media_play_total_progress);
        int i = R.id.iv_video_play_pause;
        this.T0 = (ImageView) viewInflate.findViewById(i);
        this.t1 = (ImageView) viewInflate.findViewById(i);
        this.e1 = context;
        this.q6 = viewInflate;
        this.N0 = (MotionLayout) viewInflate.findViewById(R.id.panel);
        OSIconTextView oSIconTextView = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_scale_new);
        this.Q0 = oSIconTextView;
        oSIconTextView.setOnClickListener(this);
        this.O0 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_lock_new);
        this.P0 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_rotate);
        this.W0 = (MarqueTextView) viewInflate.findViewById(R.id.tv_media_play_title);
        this.X0 = (ClickableRecycleView) viewInflate.findViewById(R.id.rv_video_list);
        this.R0 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_pip_mode_new);
        this.S0 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_volume_new);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_video_share);
        this.k5 = imageView;
        imageView.setOnClickListener(this);
        this.j1 = viewInflate.findViewById(R.id.top_bar);
        this.V1 = (ImageView) viewInflate.findViewById(R.id.iv_video_dolby);
        this.r1 = (BatteryMeterView) viewInflate.findViewById(R.id.bm_battery);
        this.s1 = (ClockView) viewInflate.findViewById(R.id.cv_clock);
        TextView textView = (TextView) viewInflate.findViewById(R.id.btn_restore);
        this.y1 = textView;
        textView.setOnClickListener(this);
        this.y1.setVisibility(4);
        this.O0.setOnClickListener(this);
        this.P0.setOnClickListener(this);
        this.R0.setOnClickListener(this);
        this.S0.setOnClickListener(this);
        viewInflate.findViewById(R.id.iv_video_play_back).setOnClickListener(this);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.iv_video_play_settings_new);
        this.U0 = imageView2;
        imageView2.setOnClickListener(this);
        this.T0.setOnClickListener(this);
        this.t1.setOnClickListener(this);
        this.k1 = viewInflate.findViewById(R.id.fl_video_play_speed_new);
        OSIconTextView oSIconTextView2 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_to_music_mode);
        this.l1 = oSIconTextView2;
        oSIconTextView2.setOnClickListener(this);
        this.Y0 = (TextView) viewInflate.findViewById(R.id.tv_video_play_speed_new);
        this.V0 = (OSIconTextView) viewInflate.findViewById(R.id.iv_video_play_speed_new);
        this.Y0.setOnClickListener(this);
        this.V0.setOnClickListener(this);
        this.h1 = (ImageView) viewInflate.findViewById(R.id.iv_player_new_feature);
        this.i1 = (ImageView) viewInflate.findViewById(R.id.iv_player_farvorite);
        this.G1 = (TextView) viewInflate.findViewById(R.id.tx_timer);
        this.h1.setOnClickListener(this);
        this.h1.setVisibility(l9.l() ? 0 : 8);
        this.i1.setOnClickListener(this);
        this.p2 = (ImageView) viewInflate.findViewById(R.id.iv_backward);
        this.q2 = (TextView) viewInflate.findViewById(R.id.tv_backward_tip);
        this.x2 = (ImageView) viewInflate.findViewById(R.id.iv_forward);
        this.y2 = (TextView) viewInflate.findViewById(R.id.tv_forward_tip);
        L0(context);
        this.G2 = (CustomMediaIconViewGroup) findViewById(R.id.tool_custom_video_icon);
        if (vha.s(this.e1)) {
            this.G0.setThumb(vha.e(this.e1));
        }
        this.G0.setOnProgressChangedListener(new b());
        initPlaySpeed();
        d0();
        N0();
        M0();
        this.h1.addOnLayoutChangeListener(new c());
        if (VideoPlayManager.X().O) {
            updateVolumeIcon(true);
        }
        TypedArray typedArrayObtainStyledAttributes = this.e1.obtainStyledAttributes(R.style.videoButton, new int[]{android.R.attr.layout_width});
        this.p4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void initPlaySpeed() {
        updateSpeed();
    }

    public boolean isRtlLanguage(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        return configuration != null && configuration.getLayoutDirection() == 1;
    }

    public boolean isVideoProgressEnd() {
        OSSeekbar oSSeekbar = this.G0;
        return oSSeekbar != null && oSSeekbar.getProgress() == 100;
    }

    public final void j1(woc wocVar, boolean z, boolean z2) {
        View viewFindViewById = findViewById(R.id.panel);
        if (wocVar.a != 0 || z || z2) {
            viewFindViewById.setPadding(0, 0, 0, 0);
        } else {
            viewFindViewById.setPadding(0, 0, 0, getNavigationBarPx());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k1() {
        if (this.playListImgAdapter == null) {
            return;
        }
        if (this.G6 == null) {
            this.G6 = new f(com.transsion.utils.a.d(this.e1, 17.0f));
        }
        if (this.H6 == null) {
            this.H6 = new f(com.transsion.utils.a.d(this.e1, 43.0f));
        }
        this.X0.removeItemDecoration(this.G6);
        this.X0.removeItemDecoration(this.H6);
        WindowInfoViewModel windowInfoViewModel = this.r;
        if (windowInfoViewModel == null) {
            this.X0.addItemDecoration(this.G6);
            return;
        }
        woc wocVar = (woc) windowInfoViewModel.a.getValue();
        if (wocVar == null || !wocVar.d()) {
            this.X0.addItemDecoration(this.G6);
        } else {
            this.X0.addItemDecoration(this.H6);
        }
    }

    public void l1() {
        cd.f(this.T0, shouldShowPauseButton() ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new);
    }

    public final void m1(boolean z) {
        ViewGroup.LayoutParams layoutParams = this.k1.getLayoutParams();
        if (z) {
            layoutParams.width = -2;
        } else {
            layoutParams.width = getVideoButtonOverWidth();
        }
        this.k1.setLayoutParams(layoutParams);
    }

    @Override
    public void multiWindowModeChanged(boolean z) {
        super.multiWindowModeChanged(z);
        this.P0.setVisibility(this.J ? 8 : 0);
        K(false);
    }

    public final void n1(boolean z) {
        ImageView imageView = z ? this.x2 : this.p2;
        TextView textView = z ? this.y2 : this.q2;
        float width = imageView.getWidth() / 2.0f;
        AnimationSet animationSet = new AnimationSet(false);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, ((z ? -1 : 1) * width) / textView.getWidth(), 1, ((z ? 1 : -1) * 12.0f) / textView.getWidth(), 1, 0.0f, 1, 0.0f);
        translateAnimation.setStartOffset(100L);
        translateAnimation.setDuration(450L);
        Context context = this.e1;
        int i = R.anim.interpolator_video_play_pause;
        translateAnimation.setInterpolator(AnimationUtils.loadInterpolator(context, i));
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setStartOffset(100L);
        alphaAnimation.setDuration(450L);
        alphaAnimation.setInterpolator(AnimationUtils.loadInterpolator(this.e1, i));
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setStartOffset(550L);
        alphaAnimation2.setDuration(100L);
        alphaAnimation2.setInterpolator(AnimationUtils.loadInterpolator(this.e1, R.anim.interpolator_video_forward_retreat));
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(alphaAnimation2);
        animationSet.addAnimation(translateAnimation);
        textView.startAnimation(animationSet);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        VideoControlModel videoControlModel = this.s;
        if (videoControlModel != null) {
            Context context = this.e1;
            if (context instanceof VideoPlayerActivity) {
                videoControlModel.enableClickFullScreen.observe((VideoPlayerActivity) context, this.D6);
                pw2.d.observe((VideoPlayerActivity) this.e1, new Observer() {
                    @Override
                    public final void onChanged(Object obj) {
                        this.a.W0((Boolean) obj);
                    }
                });
            }
        }
    }

    @Override
    public void onClick(View view) {
        TouchWindowLayout.g gVar;
        if (this.M0 == null) {
            return;
        }
        int id = view.getId();
        if (K0()) {
            return;
        }
        this.Z0 = System.currentTimeMillis();
        if (id == R.id.iv_video_play_back) {
            n16.a.b("video_play_back", this.g0.T());
            this.M0.g(null);
            return;
        }
        if (id == R.id.iv_video_play_settings_new) {
            this.M0.o();
            return;
        }
        if (id == R.id.iv_video_dolby) {
            this.M0.j();
            return;
        }
        if (id == R.id.iv_video_play_lock_new) {
            this.M0.l();
            return;
        }
        if (id == R.id.iv_video_play_rotate) {
            this.M0.d();
            return;
        }
        boolean z = false;
        if (id == R.id.iv_video_play_pause) {
            String str = shouldShowPauseButton() ? "video_pause" : "video_play";
            if (this.g0.T() != null && this.g0.T().isKt()) {
                z = true;
            }
            p06.k0(str, jz5.b(z));
            this.M0.a();
            return;
        }
        if (id == R.id.tv_video_play_speed_new || id == R.id.iv_video_play_speed_new) {
            this.M0.m();
            n16.a.a("video_play_speed", this.g0.T());
            return;
        }
        if (id == R.id.iv_video_play_previous) {
            V();
            this.M0.f();
            return;
        }
        if (id == R.id.iv_video_play_next) {
            T();
            this.M0.n();
            return;
        }
        if (id == R.id.iv_video_play_scale_new) {
            this.M0.e();
            updateScaleType();
            return;
        }
        if (id == R.id.iv_video_pip_mode_new) {
            this.M0.k();
            return;
        }
        if (id == R.id.iv_player_new_feature) {
            TouchWindowLayout.g gVar2 = this.M0;
            if (gVar2 != null) {
                gVar2.p();
            }
            w6c.C(this.e1, true);
            p06.d0("vd_video_play_nfb_cl");
            if (this.g0.T() != null && this.g0.T().isKt()) {
                z = true;
            }
            p06.k0("newfeature", jz5.b(z));
            hideNewPlayerFeaturesBubble();
            return;
        }
        if (id == R.id.iv_player_farvorite) {
            o1();
            return;
        }
        if (id == R.id.btn_restore) {
            OnScaleSurfaceListener onScaleSurfaceListener = this.p;
            if (onScaleSurfaceListener != null) {
                onScaleSurfaceListener.onRestoreClick();
                return;
            }
            return;
        }
        if (id == R.id.iv_video_play_volume_new) {
            VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
            if (videoPlayManagerX.O || MediaVolumeManager.s().t() <= 0) {
                MediaVolumeManager mediaVolumeManagerS = MediaVolumeManager.s();
                if (mediaVolumeManagerS.t() <= 0) {
                    mediaVolumeManagerS.G(rtb.g(), true);
                }
                videoPlayManagerX.Z1(false);
                updateVolumeIcon(false);
            } else {
                videoPlayManagerX.Z1(true);
                updateVolumeIcon(true);
                if (this.g0.T() != null && this.g0.T().isKt()) {
                    z = true;
                }
                p06.k0("video_mute", jz5.b(z));
            }
            HashMap map = new HashMap();
            map.put(hb0.KEY_NAME_BTN, "video_mute");
            map.put("mute_status", VideoPlayManager.X().O ? "on" : "off");
            p06.b0("vd_cp_cl", map);
            return;
        }
        if (id == R.id.iv_video_to_music_mode) {
            this.M0.i();
            return;
        }
        if (id == R.id.iv_video_share) {
            MediaItem mediaItem = this.x1;
            if (!mediaItem.isKtFile) {
                if (!MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem) || (gVar = this.M0) == null) {
                    return;
                }
                gVar.h();
                return;
            }
            if (this.p5 == null) {
                PopupMenu popupMenu = new PopupMenu(this.e1, view);
                this.p5 = popupMenu;
                popupMenu.inflate(this.q5 ? R.menu.menu_share : R.menu.menu_share_no_save);
                this.p5.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                    @Override
                    public final boolean onMenuItemClick(MenuItem menuItem) {
                        return this.a.a1(menuItem);
                    }
                });
            }
            this.p5.show();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.a1 = SystemClock.elapsedRealtime();
        this.I6 = com.transsion.utils.a.w(configuration) || com.transsion.utils.a.x(configuration);
        J0();
        boolean z = getResources().getConfiguration().orientation == 1;
        CustomMediaIconViewGroup customMediaIconViewGroup = this.G2;
        if (customMediaIconViewGroup != null) {
            customMediaIconViewGroup.updateBackgroundColors(z);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ThreadUtils.o().removeCallbacks(this.F6);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return P0();
    }

    @Override
    public void onPlayStatusEnd() {
        super.onPlayStatusEnd();
        TouchWindowLayout.g gVar = this.M0;
        if (gVar != null) {
            gVar.c();
        }
    }

    @Override
    public void onPlayUIStatusChange(boolean z) {
        super.onPlayUIStatusChange(z);
        updateSpeed();
        if (z) {
            i1(true, true);
        }
        if (!z || this.K6) {
            hideNewPlayerFeaturesBubble();
        } else {
            showNewPlayerFeaturesBubble(this.h1, false);
        }
    }

    public void onStop() {
        OSSeekbar oSSeekbar;
        if (!vha.s(this.e1) || (oSSeekbar = this.G0) == null) {
            return;
        }
        oSSeekbar.setThumb(vha.e(this.e1));
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (P0()) {
            Log.w("VideoTouchLayoutNew", "onTouchEvent return false");
            return true;
        }
        if (this.d0 && this.e0) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void onVideoPlayerStateChange(int i) {
        super.onVideoPlayerStateChange(i);
        if (i == 3) {
            VideoPlayManager.X().Z1(VideoPlayManager.X().O);
        }
    }

    @Override
    public void onVisibilityChanged(View view, final int i) {
        super.onVisibilityChanged(view, i);
        if (view instanceof VideoTouchLayoutNew) {
            Log.d("VideoTouchLayoutNew", "onVisibilityChanged=" + i);
            post(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.b1(i);
                }
            });
        }
    }

    public void onVolumeChange() {
        syncMuteWithSystemVolume();
    }

    @Override
    public void onWindowInfoChange(woc wocVar) {
        super.onWindowInfoChange(wocVar);
        if (this.N0 == null) {
            return;
        }
        r1(wocVar, false);
    }

    public final void p1() {
        if (this.h1 != null) {
            if (Q0() && l9.l()) {
                this.h1.setAlpha(1.0f);
                this.h1.setVisibility(0);
                this.h1.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.e1();
                    }
                });
            } else {
                this.h1.setAlpha(0.0f);
                this.h1.setVisibility(8);
                hideNewPlayerFeaturesBubble();
            }
        }
    }

    @Override
    public void q(int i, float f2) throws Throwable {
        if (i == 8) {
            if (!this.d0) {
                this.f0 = true;
                PlayerViewController.d dVar = this.i0;
                if (dVar != null) {
                    dVar.a(true);
                }
            }
            b0(true);
        } else if (i == 16) {
            this.f0 = false;
            PlayerViewController.d dVar2 = this.i0;
            if (dVar2 != null) {
                dVar2.a(false);
            }
            b0(false);
        }
        super.q(i, f2);
    }

    public final void q1() {
        boolean zB = B();
        this.s1.setAlpha(zB ? 1.0f : 0.0f);
        this.s1.setVisibility(zB ? 0 : 8);
        this.r1.setAlpha(zB ? 1.0f : 0.0f);
        this.r1.setVisibility(zB ? 0 : 8);
        k1();
        p1();
        updateSpeed();
        J0();
    }

    public final void r1(woc wocVar, boolean z) {
        Log.e("VideoTouchLayoutNew", "updateWindowState fromVisibleChange:" + z + StringUtils.COMMA + wocVar);
        boolean z2 = wocVar.g;
        boolean z3 = wocVar.c;
        boolean z4 = wocVar.f;
        woc wocVar2 = wocVar.m;
        j1(wocVar, z3, z2);
        if (z4) {
            if (!z2) {
                R0(R.id.small_window);
            } else if (com.transsion.utils.a.A()) {
                R0(R.id.fold_land_small_tablet);
            } else {
                R0(R.id.fold_land_small);
            }
            q1();
            return;
        }
        int i = wocVar.a;
        boolean z5 = true;
        if (i != 0) {
            if (i == 1) {
                setFastIconVisible(0);
                if (z3) {
                    R0(R.id.split);
                } else {
                    Context context = this.e1;
                    if (context != null && (context instanceof BaseActivity) && wocVar2.c) {
                        ((BaseActivity) context).setNavVisibility(false);
                    }
                    if (z2) {
                        R0(R.id.fold_land);
                    } else if (z) {
                        R0(R.id.half_open);
                    } else if (getVisibility() != 0) {
                        this.N0.setTransition(R.id.half_open, R.id.start);
                    } else if ((wocVar2.g && wocVar2.a == 1) || wocVar.b == 1) {
                        R0(R.id.half_open);
                    } else {
                        hideNewPlayerFeaturesBubble();
                        this.N0.transitionToState(R.id.half_open);
                    }
                }
                z5 = false;
            } else if (i == 2) {
                setFastIconVisible(0);
                if (z3) {
                    R0(R.id.split_flat);
                } else if (!z && getVisibility() == 0 && wocVar.b == 1) {
                    this.N0.transitionToState(R.id.flat);
                } else {
                    R0(R.id.flat);
                }
                z5 = false;
            } else if (i != 3) {
                z5 = false;
            } else {
                setFastIconVisible(0);
                if (z3) {
                    R0(R.id.split_flat);
                } else if (!z2) {
                    R0(R.id.flat);
                } else if (z || getVisibility() != 0) {
                    R0(R.id.half_open_flat);
                } else {
                    hideNewPlayerFeaturesBubble();
                    this.N0.transitionToState(R.id.half_open_flat);
                }
                z5 = false;
            }
        } else if (z3) {
            if (!z && getVisibility() == 0 && wocVar.b == 1) {
                this.N0.transitionToState(R.id.split);
            } else {
                R0(R.id.split);
                z5 = false;
            }
        } else if (z2) {
            R0(R.id.fold_land);
            setFastIconVisible(0);
            z5 = false;
        } else {
            if (!z && getVisibility() == 0 && wocVar.b == 1) {
                this.N0.transitionToState(R.id.start);
            } else {
                R0(R.id.start);
                z5 = false;
            }
            setFastIconVisible(8);
        }
        if (z5) {
            this.N0.setTransitionListener(new d());
        } else {
            q1();
        }
    }

    public void refrashFar() {
        PlayListImgAdapter playListImgAdapter = this.playListImgAdapter;
        if (playListImgAdapter != null) {
            playListImgAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public void resume() {
        OSSeekbar oSSeekbar;
        d0();
        if (!vha.s(this.e1) || (oSSeekbar = this.G0) == null) {
            return;
        }
        oSSeekbar.setThumb(vha.e(this.e1));
    }

    @Override
    public void setAlpha(float f2) {
        super.setAlpha(f2);
        View view = this.j1;
        if (view != null) {
            view.setAlpha(f2);
        }
        OSIconTextView oSIconTextView = this.R0;
        if (oSIconTextView != null) {
            oSIconTextView.setAlpha(f2);
        }
        View view2 = this.k1;
        if (view2 != null) {
            view2.setAlpha(f2);
        }
        ImageView imageView = this.V1;
        if (imageView != null) {
            imageView.setAlpha(f2);
        }
        ImageView imageView2 = this.U0;
        if (imageView2 != null) {
            imageView2.setAlpha(f2);
        }
        invalidate();
    }

    public void setCurrentItem(String str, MediaItem mediaItem) {
        this.J6 = str;
        this.x1 = mediaItem;
        boolean z = false;
        boolean z2 = mediaItem != null && mediaItem.isKtFile;
        if (mediaItem != null && mediaItem.isKtFile && CloudTaskFinishCacheManager.a.j(mediaItem.data) == null) {
            z = true;
        }
        updateCloudResourceType(z2, z, MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.x1));
    }

    public void setFarListiener(View.OnClickListener onClickListener) {
        this.L6 = onClickListener;
    }

    @Override
    public void setFromInternet(boolean z) {
        super.setFromInternet(z);
        initPlaySpeed();
    }

    public void setKtShareInfo(boolean z, String str) {
        this.q5 = z;
        this.k6 = str;
    }

    public void setMediaPlayTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            str = str.substring(0, iLastIndexOf);
        }
        this.W0.setText(str);
        this.W0.resetMarque();
    }

    @Override
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setMusicMode(boolean z) {
        super.setMusicMode(z);
        J0();
    }

    public void setOnRestoreVisibility(boolean z) {
        int i = (!z || this.h) ? 4 : 0;
        if (this.y1.getVisibility() != i) {
            this.y1.setVisibility(i);
        }
    }

    public void setPicInPicState(boolean z) {
        this.b1 = z;
        Log.d("VideoTouchLayoutNew", "mShowPicInPic" + this.b1);
    }

    public void setPipDisable() {
        this.R0.setAlpha(0.4f);
    }

    public void setPlayList(List<MediaItem> list) {
        if (this.K6 && (list == null || list.size() < 2)) {
            this.X0.setVisibility(8);
            return;
        }
        ArrayList arrayList = new ArrayList(list);
        JumpBean jumpBean = MainApp.C;
        if (jumpBean != null && jumpBean.getExternal_jump_info_list() != null && !MainApp.C.getExternal_jump_info_list().isEmpty()) {
            Context context = this.e1;
            if (context instanceof VideoPlayerActivity) {
                String str = ((VideoPlayerActivity) context).l0;
                if (!TextUtils.isEmpty(str) && !str.equals(this.e1.getPackageName())) {
                    List<JumpBean.JumpInfo> external_jump_info_list = MainApp.C.getExternal_jump_info_list();
                    int iC = raa.c(this.e1, str);
                    for (JumpBean.JumpInfo jumpInfo : external_jump_info_list) {
                        if (str.equals(jumpInfo.getJump_app_pkg()) && jumpInfo.needJump(iC)) {
                            JumpMediaItem jumpMediaItem = new JumpMediaItem();
                            jumpMediaItem.setJumpBean(jumpInfo);
                            arrayList.add(0, jumpMediaItem);
                            this.f2 = true;
                            hb0.markKV("vd_cp_playlist_jump_show", new hb0.a(ES6Iterator.VALUE_PROPERTY, str), new hb0.a("value1", Integer.valueOf(jumpInfo.getRouter_distribute_info().getType())));
                            break;
                        }
                    }
                }
            }
        } else {
            LogUtils.j("VideoTouchLayoutNew", "jumpBean is null or external_jump_info_list is null or size is 0");
        }
        if (this.playListImgAdapter != null && list != null && !list.isEmpty()) {
            this.X0.setVisibility(0);
            this.playListImgAdapter.setNewData(arrayList);
            try {
                for (MediaItem mediaItem : list) {
                    if (!r0a.g(mediaItem.data) && mediaItem.data.equals(this.J6)) {
                        VideoPlayManager.X().b0().setPlayMediaItem(mediaItem);
                        this.playListImgAdapter.notifyDataSetChanged();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        i1(false, false);
    }

    public void setVideoPlayClickListener(TouchWindowLayout.g gVar) {
        this.M0 = gVar;
    }

    @Override
    public void setVisibility(int i) {
        if (this.n && i == 0) {
            Log.w("VideoTouchLayoutNew", "force hide this for pipMode");
            i = 8;
        }
        super.setVisibility(i);
    }

    public void showNewPlayerFeaturesBubble(final View view, boolean z) {
        if (pp3.b || w6c.p(this.e1) || !l9.k() || w6c.o(this.e1) || raa.i(this.e1) || !Q0()) {
            return;
        }
        p06.f0(null, "guide_vd_cp_ftips_show", 9324L);
        ThreadUtils.o().postDelayed(new Runnable() {

            public class a implements View.OnClickListener {
                public a() {
                }

                @Override
                public void onClick(View view) {
                    if (ThreadUtils.o() != null) {
                        ThreadUtils.o().removeCallbacks(VideoTouchLayoutNew.this.F6);
                    }
                    VideoTouchLayoutNew.this.hideNewPlayerFeaturesBubble();
                    if (VideoTouchLayoutNew.this.M0 != null) {
                        VideoTouchLayoutNew.this.M0.p();
                    }
                    w6c.C(VideoTouchLayoutNew.this.e1, true);
                    hb0.markDirect("vd_cp_cl");
                }
            }

            @Override
            public void run() {
                if (VideoTouchLayoutNew.this.h1 != null && VideoTouchLayoutNew.this.h1.getVisibility() == 0 && VideoTouchLayoutNew.this.getVisibility() == 0) {
                    VideoTouchLayoutNew videoTouchLayoutNew = VideoTouchLayoutNew.this;
                    if (videoTouchLayoutNew.n) {
                        return;
                    }
                    if (videoTouchLayoutNew.n1 == null) {
                        VideoTouchLayoutNew.this.n1 = new BubblePopupWindow(VideoTouchLayoutNew.this.e1);
                        VideoTouchLayoutNew videoTouchLayoutNew2 = VideoTouchLayoutNew.this;
                        videoTouchLayoutNew2.o1 = View.inflate(videoTouchLayoutNew2.e1, R.layout.player_new_feature_popup_view, null);
                        VideoTouchLayoutNew videoTouchLayoutNew3 = VideoTouchLayoutNew.this;
                        videoTouchLayoutNew3.p1 = (BubbleTextView) videoTouchLayoutNew3.o1.findViewById(R.id.tv_bubble);
                        if (ThreadUtils.o() != null) {
                            ThreadUtils.o().removeCallbacks(VideoTouchLayoutNew.this.F6);
                            ThreadUtils.o().postDelayed(VideoTouchLayoutNew.this.F6, 10000L);
                        }
                    }
                    VideoTouchLayoutNew.this.n1.setFocusable(false);
                    VideoTouchLayoutNew.this.n1.setOutsideTouchable(false);
                    VideoTouchLayoutNew.this.n1.setTouchable(true);
                    ((LinearLayout) VideoTouchLayoutNew.this.o1.findViewById(R.id.ll_popwnd)).setOnClickListener(new a());
                    VideoTouchLayoutNew.this.o1.measure(0, 0);
                    VideoTouchLayoutNew.this.n1.setBubbleView(VideoTouchLayoutNew.this.o1);
                    VideoTouchLayoutNew.this.n1.setWidth(VideoTouchLayoutNew.this.o1.getMeasuredWidth());
                    VideoTouchLayoutNew.this.n1.setHeight(VideoTouchLayoutNew.this.o1.getMeasuredHeight());
                    int[] iArr = new int[2];
                    view.getLocationInWindow(iArr);
                    int i = iArr[0];
                    if (ViewCompat.getLayoutDirection(VideoTouchLayoutNew.this) == 0) {
                        iArr[0] = (f39.d() - VideoTouchLayoutNew.this.o1.getMeasuredWidth()) - AdaptScreenUtils.h(22.0f);
                    } else {
                        iArr[0] = AdaptScreenUtils.h(22.0f);
                    }
                    iArr[1] = iArr[1] + (VideoTouchLayoutNew.this.o1.getMeasuredHeight() - AdaptScreenUtils.h(10.0f));
                    VideoTouchLayoutNew.this.p1.setTriangleOffset((i - iArr[0]) + (view.getMeasuredWidth() / 2));
                    if (VideoTouchLayoutNew.this.e1 == null || !(((Activity) VideoTouchLayoutNew.this.e1).isFinishing() || ((Activity) VideoTouchLayoutNew.this.e1).isDestroyed())) {
                        VideoTouchLayoutNew.this.n1.showAtLocation(view, 8388659, iArr[0], iArr[1]);
                    }
                }
            }
        }, 20L);
    }

    public void syncMuteWithSystemVolume() {
        int iT = MediaVolumeManager.s().t();
        VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
        if (iT <= 0) {
            if (!videoPlayManagerX.O) {
                videoPlayManagerX.Z1(true);
            }
            updateVolumeIcon(true);
        } else {
            rtb.m(iT);
            if (videoPlayManagerX.O) {
                videoPlayManagerX.Z1(false);
                updateVolumeIcon(false);
            }
        }
    }

    public void updateCloudResourceType(boolean z, boolean z2, boolean z3) {
        Log.i("VideoTouchLayoutNew", "updateCloudResourceType: isKt = " + z + ",isMiMedia:" + z3 + ",supportKtShare:" + z2);
        this.k5.setVisibility((z2 || z3) ? 0 : 8);
        this.k5.setImageResource(z3 ? R.drawable.ic_icon_download_light : R.drawable.video_share_light);
        if (z || z3) {
            this.G2.removeIcon(this.l1);
        }
    }

    public void updatePlayPauseButtonVisibility(boolean z) {
        this.T0.setVisibility(z ? 8 : 0);
    }

    public void updateScaleType() {
        int i = (this.f1 + 1) % 3;
        this.f1 = i;
        if (i == 0) {
            this.Q0.setText(R.string.os_fit_to_screen);
        } else if (i == 1) {
            this.Q0.setText(R.string.os_full_screen);
        } else {
            if (i != 2) {
                return;
            }
            this.Q0.setText(R.string.os_full_screen_fill);
        }
    }

    public void updateSpeed() {
        String str;
        float fI = w6c.i(getContext());
        if (this.d1 == fI) {
            return;
        }
        this.d1 = fI;
        if (fI == 1.0f) {
            str = "";
        } else {
            str = fI + getContext().getResources().getString(R.string.speed_icon);
        }
        float f2 = fI == 1.0f ? this.E0 : this.F0;
        if (fI == 1.0f) {
            this.Y0.setVisibility(4);
            this.V0.setVisibility(0);
            m1(false);
        } else {
            this.Y0.setVisibility(0);
            this.V0.setVisibility(4);
            this.Y0.setText(str);
            this.Y0.setTextSize(0, f2);
            m1(true);
        }
    }

    public void updateTimer(long j) {
        this.G1.setVisibility(0);
        this.G1.setText(wna.c(j));
    }

    public void updateVideoToMusicBtn(boolean z) {
        OSIconTextView oSIconTextView = this.l1;
        if (oSIconTextView != null) {
            oSIconTextView.setText(R.string.os_earphone);
        }
    }

    public void updateVolumeIcon(boolean z) {
        OSIconTextView oSIconTextView = this.S0;
        if (oSIconTextView == null) {
            return;
        }
        if (z) {
            oSIconTextView.setText(R.string.os_volume_off);
        } else {
            oSIconTextView.setText(R.string.os_volume2);
        }
    }

    public void updateYoutube(final boolean z) {
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.f1(z);
            }
        }, 100L);
    }

    public VideoTouchLayoutNew(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2 = false;
        this.G3 = null;
        this.f4 = 1;
        this.k4 = null;
        this.q5 = false;
        this.D6 = new a();
        this.E6 = 10000;
        this.F6 = new Runnable() {
            @Override
            public final void run() {
                this.b.V0();
            }
        };
    }

    public VideoTouchLayoutNew(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2 = false;
        this.G3 = null;
        this.f4 = 1;
        this.k4 = null;
        this.q5 = false;
        this.D6 = new a();
        this.E6 = 10000;
        this.F6 = new Runnable() {
            @Override
            public final void run() {
                this.b.V0();
            }
        };
    }
}

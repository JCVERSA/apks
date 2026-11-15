package com.transsion.magicvideo.widgets;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.signature.ObjectKey;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.MediaTimerDialogSheetActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.data.CustomIconItemData;
import com.transsion.playercommon.widgets.AudioProgressInfoLayout;
import com.transsion.playercommon.widgets.CustomMediaOperateIconView;
import com.transsion.playercommon.widgets.MediaBottomControllerLayout;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.ao;
import defpackage.bx5;
import defpackage.cd;
import defpackage.hsb;
import defpackage.jrb;
import defpackage.lc3;
import defpackage.p06;
import defpackage.pcc;
import defpackage.pp3;
import defpackage.s06;
import defpackage.w6c;
import defpackage.wna;
import java.util.HashMap;

public class MusicModeLayout extends MotionLayout {
    public OSSeekbar b;
    public ImageView c;
    public Boolean d;
    public b e;
    public HashMap f;
    public final CustomMediaOperateIconView.a g;
    public long h;
    public long i;
    public RoundImageView ivMediaCover;
    public int j;
    public VideoPlayManager k;
    public boolean l;
    public float m;
    public MediaBottomControllerLayout mediaBottomControllerLayout;
    public CustomMediaOperateIconView mediaOperateIconView;
    public AudioProgressInfoLayout mediaProgressInfoLayout;
    public TextView musicTip;
    public Runnable n;

    public class AnonymousClass1 implements CustomMediaOperateIconView.a {
        public AnonymousClass1() {
        }

        @Override
        public View.OnClickListener getItemClickListener(CustomIconItemData customIconItemData) {
            View.OnClickListener itemClickListener = super.getItemClickListener(customIconItemData);
            switch (customIconItemData.getType()) {
                case 1:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.m(view);
                        }
                    };
                case 2:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.n(view);
                        }
                    };
                case 3:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.l(view);
                        }
                    };
                case 4:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.k(view);
                        }
                    };
                case 5:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.lambda$getItemClickListener$0(view);
                        }
                    };
                case 6:
                    return new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.o(view);
                        }
                    };
                default:
                    return itemClickListener;
            }
        }

        public void h() {
            TaskExecutor.c(new TaskExecutor.Task<Boolean>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean onBackground() {
                    MediaItem mediaItemR = MusicModeLayout.this.k.R();
                    s06.a(mediaItemR.displayName, mediaItemR.duration);
                    boolean zI = ao.U().i(mediaItemR);
                    if (zI) {
                        bx5.a().b(new AudioItem(mediaItemR));
                    }
                    return Boolean.valueOf(zI);
                }

                @Override
                public void onResult(Boolean bool) {
                    if (bool.booleanValue()) {
                        Log.i("MusicModeLayout", "addVideoToAudioList success");
                        ToastUtils.s(R.string.visha_add_to_audio_playlist_success);
                        MusicModeLayout.this.D(true);
                    }
                }
            });
        }

        public void i() {
            MusicModeLayout.this.e.e();
        }

        public void j() {
            MusicModeLayout.this.e.c();
        }

        public final void k(View view) {
            q();
        }

        public final void l(View view) {
            r();
        }

        public final void lambda$getItemClickListener$0(View view) {
            p();
        }

        public final void m(View view) {
            i();
        }

        public final void n(View view) {
            j();
        }

        public final void o(View view) {
            h();
        }

        public void p() {
            MusicModeLayout.this.e.d();
        }

        public void q() {
            MusicModeLayout.this.e.f();
        }

        public void r() {
            MediaTimerDialogSheetActivity.A0(MusicModeLayout.this.getContext());
        }
    }

    public class a implements OSSeekbar.c {
        public a() {
        }

        @Override
        public void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z) {
            MusicModeLayout musicModeLayout = MusicModeLayout.this;
            if (musicModeLayout.l) {
                musicModeLayout.i = (musicModeLayout.h * ((long) i)) / 100;
                long j = MusicModeLayout.this.i;
                MusicModeLayout musicModeLayout2 = MusicModeLayout.this;
                long j2 = musicModeLayout2.h;
                if (j > j2) {
                    musicModeLayout2.i = j2;
                }
                MusicModeLayout musicModeLayout3 = MusicModeLayout.this;
                musicModeLayout3.mediaProgressInfoLayout.setTvMediaCurrentProgress(wna.d(musicModeLayout3.i));
            }
        }

        @Override
        public void onStartTrackingTouch(OSSeekbar oSSeekbar) {
            MusicModeLayout musicModeLayout = MusicModeLayout.this;
            musicModeLayout.l = true;
            musicModeLayout.j = musicModeLayout.k.S();
        }

        @Override
        public void onStopTrackingTouch(OSSeekbar oSSeekbar) throws Throwable {
            MusicModeLayout musicModeLayout = MusicModeLayout.this;
            musicModeLayout.l = false;
            p06.T(musicModeLayout.j, (int) MusicModeLayout.this.i);
            MusicModeLayout musicModeLayout2 = MusicModeLayout.this;
            musicModeLayout2.A(musicModeLayout2.b.getProgress());
        }
    }

    public interface b {
        void a();

        void b();

        void c();

        void d();

        void e();

        void f();
    }

    public MusicModeLayout(Context context) {
        super(context);
        this.f = new HashMap();
        this.g = new AnonymousClass1();
        this.n = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.u();
            }
        };
        init(context);
    }

    private void I(boolean z) throws Throwable {
        if (this.l) {
            return;
        }
        updatePlayPauseIcon(z);
    }

    private int getCustomEqIndex() {
        boolean zContainsKey = this.f.containsKey(3);
        return this.f.containsKey(4) ? (zContainsKey ? 1 : 0) + 1 : zContainsKey ? 1 : 0;
    }

    private void q() {
        this.mediaProgressInfoLayout.getTvMediaPlayTitle().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s(view);
            }
        });
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.t(view);
                }
            });
        }
        OSSeekbar oSSeekbar = this.b;
        if (oSSeekbar != null) {
            oSSeekbar.setOnProgressChangedListener(new a());
        }
        CustomMediaOperateIconView customMediaOperateIconView = this.mediaOperateIconView;
        if (customMediaOperateIconView != null) {
            customMediaOperateIconView.setOnItemClick(this.g);
        }
    }

    public final void A(int i) throws Throwable {
        long j = (this.h * ((long) i)) / 100;
        boolean zR = r();
        this.k.Q1((int) j);
        if (zR) {
            this.k.i1(true);
        }
        I(shouldShowPauseButton());
    }

    public void B(boolean z) throws Throwable {
        long jV;
        long jS;
        try {
            jV = this.k.V();
            try {
                jS = this.k.S();
                try {
                    if (this.h != jV) {
                        this.h = jV;
                        updateMediaTotalProgress(wna.c(jV));
                    }
                    long j = this.h;
                    if (jS > j) {
                        jS = j;
                    }
                    if (z) {
                        Handler handlerO = ThreadUtils.o();
                        handlerO.removeCallbacks(this.n);
                        handlerO.postDelayed(this.n, 200L);
                    }
                    if (jV <= 0) {
                        x(jS, jV);
                    } else {
                        G(wna.c(jS), wna.c(jV));
                        H(Math.round((jS * 100) / jV));
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z) {
                        Handler handlerO2 = ThreadUtils.o();
                        handlerO2.removeCallbacks(this.n);
                        handlerO2.postDelayed(this.n, 200L);
                    }
                    if (jV <= 0) {
                        x(jS, jV);
                    } else {
                        G(wna.c(jS), wna.c(jV));
                        H(Math.round((jS * 100) / jV));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                jS = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            jV = 0;
            jS = 0;
        }
    }

    public final void C() {
        jrb.g.removeObservers((LifecycleOwner) getContext());
    }

    public final void D(boolean z) {
        if (pp3.y) {
            if (z) {
                if (this.f.containsKey(6)) {
                    removeCustomView(6);
                }
            } else {
                if (this.f.containsKey(6)) {
                    return;
                }
                this.f.put(6, this.mediaOperateIconView.addItem(new CustomIconItemData(R.drawable.ic_music_add_to_audio_list, getContext().getResources().getString(R.string.visha_add_to_audio_playlist), true, true, 6), this.mediaOperateIconView.getItemViewIndex((View) this.f.get(1))));
            }
        }
    }

    public final void E() {
        F();
    }

    public final void F() {
        int i = R.drawable.ic_audio_player_eq_on_new;
        if (pp3.u) {
            int i2 = lc3.c(getContext()) ? R.drawable.ic_custom_dolby_open : R.drawable.ic_custom_dolby_close;
            if (this.f.containsKey(5)) {
                this.mediaOperateIconView.updateItemIcon((View) this.f.get(5), i2);
                return;
            } else {
                this.f.put(5, this.mediaOperateIconView.addItem(new CustomIconItemData(i2, null, true, false, 5)));
                return;
            }
        }
        if (jrb.c() && !this.f.containsKey(5)) {
            this.f.put(5, this.mediaOperateIconView.addItem(new CustomIconItemData(i, null, true, false, 5), getCustomEqIndex()));
        } else {
            if (!this.f.containsKey(5) || jrb.c()) {
                return;
            }
            removeCustomView(5);
        }
    }

    public final void G(String str, String str2) {
        AudioProgressInfoLayout audioProgressInfoLayout = this.mediaProgressInfoLayout;
        if (audioProgressInfoLayout != null) {
            audioProgressInfoLayout.setTvMediaCurrentProgress(str);
            this.mediaProgressInfoLayout.setTvMediaTotalProgress(str2);
        }
    }

    public final void H(int i) {
        AudioProgressInfoLayout audioProgressInfoLayout = this.mediaProgressInfoLayout;
        if (audioProgressInfoLayout != null) {
            audioProgressInfoLayout.setMediaProgressBar(i);
        }
    }

    public MediaBottomControllerLayout getMediaBottomControllerLayout() {
        return this.mediaBottomControllerLayout;
    }

    public void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.layout_video_play_by_audio_mode, (ViewGroup) this, true);
        this.k = VideoPlayManager.X();
        this.ivMediaCover = (RoundImageView) findViewById(R.id.iv_play_cover);
        this.musicTip = (TextView) findViewById(R.id.tv_music_tip);
        this.mediaOperateIconView = (CustomMediaOperateIconView) findViewById(R.id.media_control_icon_view_group);
        AudioProgressInfoLayout audioProgressInfoLayout = (AudioProgressInfoLayout) findViewById(R.id.media_progress_info_layout);
        this.mediaProgressInfoLayout = audioProgressInfoLayout;
        this.c = (ImageView) audioProgressInfoLayout.findViewById(R.id.iv_favorite);
        this.mediaBottomControllerLayout = (MediaBottomControllerLayout) findViewById(R.id.media_bottom_controller_layout);
        this.b = this.mediaProgressInfoLayout.getMediaSeekBar();
        q();
        p();
        updateSpeed();
        this.h = this.k.V();
    }

    public final void n(ConstraintLayout.LayoutParams layoutParams) {
        layoutParams.bottomToTop = R.id.media_control_icon_view_group;
        layoutParams.verticalChainStyle = 2;
        layoutParams.verticalBias = 0.4f;
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.mediaOperateIconView.getLayoutParams();
        layoutParams2.topToBottom = R.id.iv_play_cover;
        layoutParams2.bottomToTop = R.id.media_progress_info_layout;
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(getContext(), 16.0f);
        ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = -1;
        this.mediaOperateIconView.setLayoutParams(layoutParams2);
    }

    public final void o(ConstraintLayout.LayoutParams layoutParams) {
        layoutParams.bottomToTop = -1;
        layoutParams.verticalChainStyle = 0;
        layoutParams.verticalBias = 0.5f;
        if (this.ivMediaCover.getVisibility() != 0) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.mediaOperateIconView.getLayoutParams();
        layoutParams2.topToBottom = R.id.iv_play_cover;
        layoutParams2.bottomToTop = -1;
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(getContext(), 16.0f);
        ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = -1;
        this.mediaOperateIconView.setLayoutParams(layoutParams2);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        y();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        z();
        C();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public final void p() {
        F();
        this.f.put(1, this.mediaOperateIconView.addItem(new CustomIconItemData(R.drawable.ic_custom_back_video, getResources().getString(R.string.talkback_back), true, true, 1)));
        this.f.put(2, this.mediaOperateIconView.addItem(new CustomIconItemData(R.drawable.ic_custom_video_convert_mp3, getResources().getString(R.string.convert_to_audio), true, true, 2)));
    }

    public void pause() {
        z();
    }

    public boolean r() {
        VideoPlayManager videoPlayManager = this.k;
        return videoPlayManager != null && videoPlayManager.g0() == 6;
    }

    public void removeCustomView(int i) {
        CustomMediaOperateIconView customMediaOperateIconView = this.mediaOperateIconView;
        customMediaOperateIconView.removeItem(customMediaOperateIconView.getItemViewIndex((View) this.f.get(Integer.valueOf(i))));
        this.f.remove(Integer.valueOf(i));
    }

    public void resume() throws Throwable {
        B(VideoPlayManager.X().A0());
    }

    public final void s(View view) {
        b bVar = this.e;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void setCoverImg(final MediaItem mediaItem) {
        ((Activity) getContext()).runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.w(mediaItem);
            }
        });
    }

    public void setIvCoverSize(int i, int i2) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.ivMediaCover.getLayoutParams();
        boolean zA = com.transsion.utils.a.A();
        if (i <= 0 || i2 <= 0) {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = 0;
            if (zA) {
                layoutParams.dimensionRatio = "1:1";
                layoutParams.topToTop = 0;
                o(layoutParams);
            }
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = i;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = i2;
            if (zA && this.ivMediaCover.getVisibility() == 0) {
                layoutParams.dimensionRatio = null;
                layoutParams.topToTop = 0;
                n(layoutParams);
            }
        }
        this.ivMediaCover.setLayoutParams(layoutParams);
    }

    public void setIvCoverVisibility(int i) {
        this.ivMediaCover.setVisibility(i);
        StringBuilder sb = new StringBuilder();
        sb.append("setIvCoverVisibility: ");
        sb.append(i == 0);
        sb.append(", isInUiThread:");
        sb.append(ThreadUtils.r());
        Log.i("MusicModeLayout", sb.toString());
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.ivMediaCover.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.mediaOperateIconView.getLayoutParams();
        if (i == 0) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = com.transsion.utils.a.d(getContext(), 16.0f);
            layoutParams2.topToBottom = R.id.iv_play_cover;
            if (!com.transsion.utils.a.A() || ((ViewGroup.MarginLayoutParams) layoutParams).width <= 0) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = -1;
                layoutParams2.bottomToTop = -1;
                layoutParams.bottomToTop = -1;
                layoutParams.verticalChainStyle = 0;
                layoutParams.verticalBias = 0.5f;
                this.ivMediaCover.setLayoutParams(layoutParams);
            } else {
                layoutParams.bottomToTop = R.id.media_control_icon_view_group;
                layoutParams.verticalChainStyle = 2;
                layoutParams.verticalBias = 0.4f;
                layoutParams2.bottomToTop = R.id.media_progress_info_layout;
                ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = -1;
                this.ivMediaCover.setLayoutParams(layoutParams);
            }
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = -1;
            layoutParams2.topToBottom = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin = com.transsion.utils.a.d(getContext(), 16.0f);
            layoutParams2.bottomToTop = R.id.media_progress_info_layout;
            layoutParams.bottomToTop = -1;
            layoutParams.verticalChainStyle = 0;
            layoutParams.verticalBias = 0.5f;
            this.ivMediaCover.setLayoutParams(layoutParams);
        }
        this.mediaOperateIconView.setLayoutParams(layoutParams2);
    }

    public void setOnMusicModeLayoutItemListener(b bVar) {
        this.e = bVar;
    }

    public boolean shouldShowPauseButton() {
        return this.k.A0();
    }

    public final void t(View view) {
        this.e.a();
    }

    public final void u() throws Throwable {
        B(true);
    }

    public void updateFavoriteIcon(boolean z, boolean z2) {
        ImageView imageView = this.c;
        if (imageView != null) {
            imageView.setImageResource(z ? R.drawable.ic_farvorited_on_music : R.drawable.ic_favorites_music);
            if (z2) {
                if (z) {
                    cd.g(getContext(), this.c);
                } else {
                    cd.i(this.c);
                }
            }
        }
    }

    public void updateMediaName(String str) {
        AudioProgressInfoLayout audioProgressInfoLayout = this.mediaProgressInfoLayout;
        if (audioProgressInfoLayout != null) {
            audioProgressInfoLayout.setMediaPlayTitle(str);
        }
    }

    public void updateMediaTotalProgress(String str) {
        AudioProgressInfoLayout audioProgressInfoLayout = this.mediaProgressInfoLayout;
        if (audioProgressInfoLayout != null) {
            audioProgressInfoLayout.setTvMediaTotalProgress(str);
        }
    }

    public void updatePlayPauseIcon(boolean z) throws Throwable {
        ImageView playPauseImageView;
        MediaBottomControllerLayout mediaBottomControllerLayout = this.mediaBottomControllerLayout;
        if (mediaBottomControllerLayout == null || (playPauseImageView = mediaBottomControllerLayout.getPlayPauseImageView()) == null) {
            return;
        }
        int i = z ? R.drawable.icon_video_play_pause_new : R.drawable.icon_video_play_play_new;
        Log.d("MusicModeLayout", "updatePlayPauseIcon " + this.d + ",isPlaying:" + z);
        Boolean bool = this.d;
        if (bool == null || bool.booleanValue() == z) {
            if (!cd.d(playPauseImageView, i)) {
                playPauseImageView.setImageResource(i);
                playPauseImageView.setTag(Integer.valueOf(i));
            }
            this.d = Boolean.valueOf(z);
            return;
        }
        this.d = Boolean.valueOf(z);
        z();
        B(z);
        cd.f(playPauseImageView, i);
    }

    public void updateRepeatMode() {
        int i;
        int iA = w6c.a(getContext());
        if (iA == ((Integer) hsb.a.get(1)).intValue()) {
            i = com.transsion.widgetslib.R.string.os_play;
        } else if (iA == ((Integer) hsb.a.get(2)).intValue()) {
            i = com.transsion.widgetslib.R.string.os_List_loop;
        } else {
            i = iA == ((Integer) hsb.a.get(3)).intValue() ? com.transsion.widgetslib.R.string.os_shuffle : com.transsion.widgetslib.R.string.os_single_loop;
        }
        this.mediaBottomControllerLayout.updateRepeatBtnState(i);
    }

    public void updateSpeed() {
        String str;
        float fI = w6c.i(getContext());
        if (this.m == fI) {
            return;
        }
        this.m = fI;
        if (fI == 1.0f) {
            str = "";
        } else {
            str = fI + getContext().getResources().getString(R.string.speed_icon);
        }
        String str2 = str;
        if (fI == 1.0f) {
            if (this.f.containsKey(4)) {
                removeCustomView(4);
            }
        } else if (this.f.containsKey(4)) {
            this.mediaOperateIconView.updateItemText((View) this.f.get(4), str2);
        } else {
            this.f.put(4, this.mediaOperateIconView.addItem(new CustomIconItemData(R.drawable.ic_music_speed_light, str2, true, true, 4), 0));
        }
    }

    public void updateTimer(long j) {
        if (j <= 1000) {
            removeCustomView(3);
            return;
        }
        View view = (View) this.f.get(3);
        if (view != null) {
            this.mediaOperateIconView.updateItemText(view, wna.c(j));
        } else {
            this.f.put(3, this.mediaOperateIconView.addItem(new CustomIconItemData(R.drawable.music_custom_timer, wna.c(j), true, true, 3), 0));
        }
    }

    public void updateVideoAddToAudioListIcon(final MediaItem mediaItem) {
        if (mediaItem == null) {
            return;
        }
        TaskExecutor.c(new TaskExecutor.Task<Boolean>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Boolean onBackground() {
                return Boolean.valueOf(ao.U().d0(mediaItem));
            }

            @Override
            public void onResult(Boolean bool) {
                MediaItem mediaItemR;
                String str;
                MediaItem mediaItem2 = mediaItem;
                if (mediaItem2 == null || mediaItem2.data == null || (mediaItemR = MusicModeLayout.this.k.R()) == null || (str = mediaItemR.data) == null || !mediaItem.data.equals(str)) {
                    return;
                }
                MusicModeLayout.this.D(bool.booleanValue());
            }
        });
    }

    public final void v(Boolean bool) {
        E();
    }

    public final void w(MediaItem mediaItem) {
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            if (mediaItem == null || mediaItem.getWidth() <= 0 || mediaItem.getHeight() <= 0) {
                this.ivMediaCover.setImageResource(R.drawable.def_music_cover);
            } else {
                RequestBuilder requestBuilderOverride = Glide.with(getContext().getApplicationContext()).asBitmap().load2(mediaItem.getUri()).override(com.transsion.utils.a.m(getContext()), com.transsion.utils.a.l(getContext()));
                int i = R.drawable.def_music_cover;
                requestBuilderOverride.placeholder(i).error(i).signature(new ObjectKey(Long.valueOf(mediaItem.dateModified))).into(this.ivMediaCover);
            }
            pcc.b(this.ivMediaCover);
        }
    }

    public final void x(long j, long j2) {
        OSSeekbar oSSeekbar = this.b;
        if (oSSeekbar != null) {
            oSSeekbar.setProgress(0.0f);
        }
        this.h = 0L;
        updateMediaTotalProgress(wna.c(0L));
    }

    public final void y() {
        jrb.g.observe((LifecycleOwner) getContext(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.v((Boolean) obj);
            }
        });
        E();
    }

    public void z() {
        ThreadUtils.o().removeCallbacks(this.n);
    }

    public MusicModeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new HashMap();
        this.g = new AnonymousClass1();
        this.n = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.u();
            }
        };
        init(context);
    }

    public MusicModeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = new HashMap();
        this.g = new AnonymousClass1();
        this.n = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.u();
            }
        };
        init(context);
    }
}

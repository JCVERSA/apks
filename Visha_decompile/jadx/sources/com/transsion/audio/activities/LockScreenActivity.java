package com.transsion.audio.activities;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p004lifecycle.Observer;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.gw.swipeback.SwipeBackLayout;
import com.transsion.WindowInfoViewModel;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.LockScreenActivity;
import com.transsion.audio.lyrics.LrcSearcher;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.LrcViewNew;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.MusicAlbumView;
import com.transsion.widgets.CustomSwipeBackLayout;
import com.transsion.widgets.FadingEdgeLayout;
import defpackage.ao;
import defpackage.av3;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.iz;
import defpackage.k29;
import defpackage.kdc;
import defpackage.mc7;
import defpackage.mz5;
import defpackage.oc2;
import defpackage.p10;
import defpackage.pp3;
import defpackage.se;
import defpackage.t74;
import defpackage.tn;
import defpackage.vb;
import defpackage.vf;
import defpackage.vk1;
import defpackage.w6c;
import defpackage.woc;
import defpackage.z7c;
import defpackage.zf1;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

public class LockScreenActivity extends BaseActivity implements View.OnClickListener {
    public TextView N;
    public TextView O;
    public ImageView P;
    public ImageView Q;
    public ImageView R;
    public ImageView S;
    public ImageView T;
    public MusicPlayManager U;
    public MusicAlbumView V;
    public AudioItem W;
    public boolean Y;
    public ViewGroup Z;
    public LrcViewNew a0;
    public FadingEdgeLayout b0;
    public WindowInfoViewModel c0;
    public PlayListModel d0;
    public View e0;
    public boolean f0;
    public CustomSwipeBackLayout g0;
    public final ArrayList X = new ArrayList();
    public final Observer h0 = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.d1((woc) obj);
        }
    };
    public final MusicPlayManager.d i0 = new b();
    public Runnable j0 = new Runnable() {
        @Override
        public final void run() throws Throwable {
            this.b.e1();
        }
    };
    public Runnable k0 = new Runnable() {
        @Override
        public final void run() {
            this.b.f1();
        }
    };

    public class a implements SwipeBackLayout.c {
        public a() {
        }

        @Override
        public void a(View view, float f, float f2) {
            LockScreenActivity.this.g0.invalidate();
        }

        @Override
        public void b(View view, boolean z) {
            Log.i("LockScreenActivity", "onViewSwipeFinished " + z);
            if (z) {
                ((KeyguardManager) se.a().getSystemService("keyguard")).requestDismissKeyguard(LockScreenActivity.this, null);
                LockScreenActivity.this.finish();
            }
        }
    }

    public class b implements MusicPlayManager.d {
        public b() {
        }

        @Override
        public void onPlayItemChanged(AudioItem audioItem) {
            if (LockScreenActivity.this.W == null || !LockScreenActivity.this.W.equals(audioItem)) {
                LockScreenActivity.this.W = audioItem;
                LockScreenActivity.this.C1();
                LockScreenActivity.this.B1(audioItem);
                LockScreenActivity.this.F1();
            }
        }

        @Override
        public void onPlayListLoadFinished(ArrayList arrayList) {
            LockScreenActivity.this.F1();
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            ThreadUtils.o().removeCallbacks(LockScreenActivity.this.k0);
            LockScreenActivity.this.E1(i);
        }

        @Override
        public void onShowError(int i, int i2) {
        }

        @Override
        public void onUpdateAll(MusicPlayManager musicPlayManager) {
            onPlayerStateUpdate(LockScreenActivity.this.U.b0());
            onPlayListLoadFinished(LockScreenActivity.this.U.Y().getPlayList());
            onPlayItemChanged(LockScreenActivity.this.U.P());
        }
    }

    public static Intent Q0(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, LockScreenActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(8388608);
        return intent;
    }

    public static ArrayList V0(LockScreenActivity lockScreenActivity) {
        return new ArrayList((List) ao.U().y(true).getSecond());
    }

    public void f1() {
        E1(MusicPlayManager.S().b0());
    }

    private void k1(final AudioItem audioItem) {
        s1();
        if (audioItem == null) {
            Log.e("LockScreenActivity", "loadPlayBackground failed,audio item is null");
        } else if (audioItem.isMusicVideo) {
            mc7.K(audioItem).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.X0(audioItem, (AudioItem) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.Y0((Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.Z0((Throwable) obj);
                }
            });
        } else {
            mc7.K(audioItem).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.a1(audioItem, (AudioItem) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.b1((Pair) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.c1((Throwable) obj);
                }
            });
        }
    }

    private void y1() {
        final AudioItem audioItemP = MusicPlayManager.S().P();
        if (audioItemP == null) {
            Log.e("LockScreenActivity", "triggerFavoriteButton failed,not get audio item");
            return;
        }
        boolean zC0 = ao.U().c0(false, audioItemP);
        this.Y = zC0;
        if (zC0) {
            this.X.remove(audioItemP);
        } else {
            this.X.add(audioItemP);
        }
        hb0.markTrackSingle("vd_audio_locmusic_cl", "play_favorite", Integer.valueOf(!this.Y ? 1 : 0));
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.i1(audioItemP);
            }
        });
    }

    public final void A1(boolean z) {
        this.T.setEnabled(z);
    }

    public void B1(AudioItem audioItem) {
        String strQ;
        AudioItem audioItemP;
        if (audioItem == null) {
            return;
        }
        this.d0.c(this.W.id, this);
        C1();
        String str = audioItem.displayName;
        boolean z = false;
        if (str == null) {
            Uri uri = audioItem.uri;
            strQ = uri != null ? av3.q(uri.getPath()) : "";
        } else if (str.lastIndexOf(Consts.DOT) > 0) {
            String str2 = audioItem.displayName;
            strQ = str2.substring(0, str2.lastIndexOf(Consts.DOT));
        } else {
            strQ = audioItem.displayName;
        }
        String str3 = audioItem.artistName;
        if (TextUtils.isEmpty(str3) && (audioItemP = MusicPlayManager.S().P()) != null) {
            str3 = audioItemP.artistName;
        }
        if (LoadDataUtils.m(audioItem.id) && MusicPlayManager.S().b0() != -1) {
            z = true;
        }
        A1(z);
        this.O.setText(str3);
        this.N.setText(strQ);
        ThreadUtils.o().postDelayed(this.k0, 200L);
        k1(audioItem);
        q1();
    }

    public void C1() {
        boolean zContains = this.X.contains(this.W);
        this.Y = zContains;
        this.T.setImageResource(zContains ? R.drawable.ic_farvorited_on_audio : R.drawable.ic_favorites);
    }

    public void W0(ArrayList arrayList) {
        this.X.clear();
        if (arrayList != null) {
            this.X.addAll(arrayList);
        }
        C1();
    }

    public void E1(int i) {
        boolean z = i == 3;
        kdc.b(this.S, z ? R.drawable.ic_pause_lrc : R.drawable.ic_play_lrc);
        this.V.setPause(z);
    }

    public void F1() {
        this.Q.setEnabled(this.U.h0());
        this.R.setEnabled(this.U.g0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N0() {
        woc wocVar = (woc) this.c0.a.getValue();
        if (wocVar != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.e0.getLayoutParams();
            if (wocVar.b() || wocVar.c()) {
                int iA = oc2.a(getApplicationContext(), wocVar.b() ? 57.0f : 71.0f);
                layoutParams.setMarginStart(iA);
                layoutParams.setMarginEnd(iA);
                this.e0.setLayoutParams(layoutParams);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.V.getLayoutParams();
                layoutParams2.width = oc2.a(getApplicationContext(), wocVar.b() ? 220.0f : 230.0f);
                layoutParams2.height = oc2.a(getApplicationContext(), wocVar.b() ? 284.0f : 178.0f);
                layoutParams2.setMargins(0, oc2.a(getApplicationContext(), wocVar.b() ? 30.0f : 32.0f), 0, 0);
                this.V.setLayoutParams(layoutParams2);
            }
        }
    }

    public final void O0() {
        this.c0.a.observeForever(this.h0);
    }

    public final void P0(Bitmap bitmap) {
        if (bitmap == null) {
            s1();
        } else {
            mc7.K(bitmap).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.T0((Bitmap) obj);
                }
            }).d0(k29.b(TaskExecutor.b())).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.U0((Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.S0((Throwable) obj);
                }
            });
        }
    }

    public final void R0() {
        this.a0.setCurrentColor(getResources().getColor(R.color.white));
        this.a0.setTimeTextColor(getResources().getColor(R.color.lyric_timeline_color));
        this.a0.setTimelineTextColor(getResources().getColor(R.color.lyric_second_highlight_color));
        this.a0.setNormalColor(getResources().getColor(R.color.lyric_normal_color));
        this.a0.setLabel(getResources().getString(R.string.no_lyrics));
        this.a0.setDraggable(false, null);
        this.a0.setOnTapListener(null);
    }

    public final void S0(Throwable th) {
        s1();
    }

    public final Bitmap T0(Bitmap bitmap) {
        return vk1.b(this, bitmap, com.transsion.utils.a.m(this), com.transsion.utils.a.l(this), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bitmap X0(AudioItem audioItem, AudioItem audioItem2) {
        try {
            Uri uri = audioItem.uri;
            String uriStringSafely = uri == null ? MediaItem.getUriStringSafely(audioItem.id, audioItem.fromInternal) : uri.toString();
            return (Bitmap) Glide.with((FragmentActivity) this).asBitmap().load2(uriStringSafely).override(com.transsion.utils.a.m(this), com.transsion.utils.a.l(this)).signature(new z7c.a(uriStringSafely, audioItem.dateModified)).submit().get();
        } catch (Exception e) {
            Log.e("LockScreenActivity", "Error loading bitmap", e);
            Log.e("TestLoadCover", "error：" + e);
            return null;
        }
    }

    public final void Y0(Bitmap bitmap) {
        this.V.setCoverImg(bitmap);
        P0(bitmap);
    }

    public final void Z0(Throwable th) {
        Log.e("LockScreenActivity", "Error in loadBackground", th);
        s1();
        this.V.setDefCoverImgSync(getDrawable(R.drawable.def_music_cover));
    }

    public final Pair a1(AudioItem audioItem, AudioItem audioItem2) {
        Bitmap bitmapM1;
        AudioAlbum audioAlbumD = ao.U().D(audioItem2.id);
        Bitmap bitmapI = (audioAlbumD == null || (bitmapM1 = m1(audioAlbumD.imgPath)) == null) ? vk1.i(this, Uri.parse(audioItem2.data)) : bitmapM1;
        if (bitmapI == null) {
            bitmapI = BitmapFactory.decodeResource(getResources(), tn.j(audioItem));
        }
        return new Pair(bitmapI, audioAlbumD);
    }

    public final void b1(Pair pair) {
        Bitmap bitmap = (Bitmap) pair.first;
        P0(bitmap);
        AudioAlbum audioAlbum = (AudioAlbum) pair.second;
        if (audioAlbum == null || !new File(audioAlbum.imgPath).exists()) {
            this.V.setCoverImg(bitmap);
        } else {
            this.V.setCoverImg(audioAlbum.imgPath);
        }
        this.V.setCoverImg(bitmap);
    }

    public final void c1(Throwable th) {
        s1();
        this.V.setDefCoverImgSync(getDrawable(R.drawable.def_music_cover));
    }

    public final void d1(woc wocVar) {
        int i = wocVar.a;
        if (i == 2 || i == 3) {
            N0();
            this.V.scale(1.0f, false);
            this.V.setVisibility(this.f0 ? 8 : 0);
        }
        MusicAlbumView musicAlbumView = this.V;
        if (musicAlbumView != null) {
            musicAlbumView.onFoldScreenChange();
        }
    }

    public final void g1(LyricData lyricData) {
        r1(lyricData.offset);
    }

    public final void h1() {
        h27.c().e(1055, new Object[0]);
        C1();
        vf.f(this);
    }

    public final void i1(AudioItem audioItem) {
        ao.U().l0(!this.Y, audioItem);
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.h1();
            }
        });
    }

    public final void j1() {
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return LockScreenActivity.V0((LockScreenActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.W0((ArrayList) obj);
            }
        });
    }

    public final void l1() {
        u1(w6c.d(this, "audio_play_repeat_mode", 1), this.P, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap m1(String str) {
        int iD = com.transsion.utils.a.d(this, 200.0f);
        try {
            return (Bitmap) Glide.with((FragmentActivity) this).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(iD, iD).get();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    public final void n1(boolean z) {
        if (z) {
            this.U.U0();
        } else {
            this.U.Y0();
        }
    }

    public void o1() {
        ThreadUtils.o().removeCallbacks(this.j0);
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_loop) {
            z1();
            h27.c().e(1057, new Object[0]);
            return;
        }
        if (id == R.id.iv_play_pre) {
            n1(false);
            mz5.b("Previous song");
            return;
        }
        if (id == R.id.iv_play) {
            this.U.A1(true, !w1());
            mz5.b(this.U.s0() ? "pause" : PlayAudioData.TAG_NEED_PLAY);
        } else if (id == R.id.iv_play_next) {
            n1(true);
            mz5.b("next song");
        } else if (id == R.id.iv_far) {
            y1();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t1(getWindow());
        setContentView(R.layout.activity_lock_screen_player);
        if (pp3.x(getApplicationContext())) {
            ((ViewGroup) findViewById(android.R.id.content)).setPadding(0, 0, 0, 0);
        }
        this.c0 = (WindowInfoViewModel) getViewModel(WindowInfoViewModel.class);
        TextView textView = (TextView) findViewById(R.id.tv_title);
        this.N = textView;
        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.O = (TextView) findViewById(R.id.tv_artist);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loop);
        this.P = imageView;
        imageView.setOnClickListener(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_play_pre);
        this.Q = imageView2;
        imageView2.setOnClickListener(this);
        ImageView imageView3 = (ImageView) findViewById(R.id.iv_play);
        this.S = imageView3;
        imageView3.setOnClickListener(this);
        ImageView imageView4 = (ImageView) findViewById(R.id.iv_play_next);
        this.R = imageView4;
        imageView4.setOnClickListener(this);
        ImageView imageView5 = (ImageView) findViewById(R.id.iv_far);
        this.T = imageView5;
        imageView5.setOnClickListener(this);
        this.Z = (ViewGroup) findViewById(R.id.container);
        this.V = (MusicAlbumView) findViewById(R.id.music_alumb_view);
        this.b0 = (FadingEdgeLayout) findViewById(R.id.fading_edge_layout);
        this.a0 = (LrcViewNew) findViewById(R.id.lyrics_view);
        R0();
        PlayListModel playListModel = (PlayListModel) getViewModel(PlayListModel.class);
        this.d0 = playListModel;
        playListModel.h().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.g1((LyricData) obj);
            }
        });
        MusicPlayManager musicPlayManagerS = MusicPlayManager.S();
        this.U = musicPlayManagerS;
        musicPlayManagerS.f1(this.i0);
        j1();
        l1();
        this.e0 = findViewById(R.id.ll_operate);
        O0();
        N0();
        CustomSwipeBackLayout customSwipeBackLayout = (CustomSwipeBackLayout) findViewById(R.id.swipeBackLayout);
        this.g0 = customSwipeBackLayout;
        customSwipeBackLayout.setSwipeBackListener(new a());
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        WindowInfoViewModel windowInfoViewModel = this.c0;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.h0);
        }
        this.U.F1(this.i0);
        o1();
    }

    @Override
    public void onPause() {
        super.onPause();
        o1();
    }

    @Override
    public void onResume() throws Throwable {
        super.onResume();
        LrcViewNew lrcViewNew = this.a0;
        if (lrcViewNew == null || lrcViewNew.isAllNoTimeLrc()) {
            return;
        }
        this.a0.updateTime(this.U.Q(), false);
        e1();
    }

    public void e1() throws Throwable {
        long jR;
        try {
            jR = this.U.R();
            try {
                long jQ = this.U.Q();
                Handler handlerO = ThreadUtils.o();
                handlerO.removeCallbacks(this.j0);
                handlerO.postDelayed(this.j0, 500L);
                if (jR > 0 && !this.a0.isAllNoTimeLrc() && this.U.s0()) {
                    this.a0.updateTime(jQ);
                }
            } catch (Throwable th) {
                th = th;
                Handler handlerO2 = ThreadUtils.o();
                handlerO2.removeCallbacks(this.j0);
                handlerO2.postDelayed(this.j0, 500L);
                if (jR <= 0) {
                    return;
                }
                if (!this.a0.isAllNoTimeLrc() && this.U.s0()) {
                    this.a0.updateTime(0L);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            jR = 0;
        }
    }

    public void q1() {
        x1(true);
        LrcSearcher lrcSearcher = new LrcSearcher();
        lrcSearcher.u();
        lrcSearcher.E(this.W);
        this.a0.onLrcLoaded(new ArrayList());
        lrcSearcher.C(new LrcSearcher.i() {
            @Override
            public void searchFailed(AudioItem audioItem) {
                LockScreenActivity.this.a0.onLrcLoaded(new ArrayList());
                LockScreenActivity.this.x1(true);
            }

            @Override
            public void searchSuccess(List list, AudioItem audioItem) {
                LockScreenActivity.this.b0.setVisibility(4);
                LockScreenActivity.this.a0.setVisibility(4);
                LockScreenActivity.this.a0.onLrcLoaded(list);
                LockScreenActivity.this.a0.post(new Runnable() {
                    @Override
                    public void run() throws Throwable {
                        if (LockScreenActivity.this.a0.isAllNoTimeLrc()) {
                            LockScreenActivity.this.x1(true);
                            return;
                        }
                        LockScreenActivity.this.a0.updateTime(LockScreenActivity.this.U.Q(), false);
                        LockScreenActivity.this.e1();
                        LockScreenActivity.this.x1(false);
                    }
                });
            }
        });
    }

    public final void r1(int i) {
        this.a0.setDelayMs(i);
    }

    public final void s1() {
        this.Z.setBackground(getResources().getDrawable(R.drawable.bg_audio_play));
    }

    public final void t1(Window window) {
        int i = R.color.transparent;
        window.setBackgroundDrawableResource(i);
        getWindow().addFlags(524288);
        getWindow().getDecorView().setSystemUiVisibility(4866);
        window.setStatusBarColor(getResources().getColor(i, getTheme()));
        window.setNavigationBarColor(getResources().getColor(i, getTheme()));
    }

    public final void u1(int i, ImageView imageView, boolean z) {
        if (i == 1) {
            imageView.setImageResource(R.drawable.ic_lock_screen_loop_list);
        } else if (i == 2) {
            imageView.setImageResource(R.drawable.ic_lock_screen_loop_one);
        } else {
            imageView.setImageResource(R.drawable.ic_lock_screen_loop_random);
        }
        if (z) {
            p10.b(i);
        }
    }

    public final void U0(Bitmap bitmap) {
        this.Z.setBackground(new BitmapDrawable(getResources(), bitmap));
    }

    public boolean w1() {
        return MusicPlayManager.S().b0() == 3;
    }

    public final void x1(boolean z) {
        this.f0 = !z;
        this.b0.setVisibility(z ? 8 : 0);
        this.V.setVisibility(z ? 0 : 8);
        this.a0.setVisibility(z ? 8 : 0);
    }

    public final int z1() {
        int iD = iz.d(w6c.d(this, "audio_play_repeat_mode", 1));
        u1(iD, this.P, false);
        w6c.t(this, "audio_play_repeat_mode", iD);
        this.U.k1(new iz(iD));
        mz5.c(iD);
        return iD;
    }
}

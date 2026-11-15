package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.ObjectKey;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.widgets.minibar.VideoPlayCurrentListView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.CustomViewAdapter2;
import com.transsion.playercommon.widgets.MediaBottomControllerLayout;
import com.transsion.widgetslib.view.indicator.PageIndicatorWrapper;
import defpackage.e80;
import defpackage.k29;
import defpackage.mc7;
import defpackage.vb;
import defpackage.vk1;
import defpackage.woc;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class MusicModelMainLayout extends MotionLayout {
    public ImageView b;
    public ViewPager2 c;
    public CustomViewAdapter2 d;
    public List e;
    public MusicModeLayout f;
    public VideoPlayCurrentListView g;
    public PageIndicatorWrapper h;
    public Handler i;
    public boolean j;
    public BaseActivity k;
    public long l;
    public ViewPager2.OnPageChangeCallback m;
    public Runnable n;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            if (i == 0) {
                MusicModelMainLayout.this.i.postDelayed(MusicModelMainLayout.this.n, 1000L);
                MusicModelMainLayout.this.j = false;
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            MusicModelMainLayout.this.j = f != 0.0f;
            LogUtils.i("MusicModelMainLayout", "onPageScrolled: " + i + ", isUserScrolling: " + MusicModelMainLayout.this.j);
            if (MusicModelMainLayout.this.j) {
                MusicModelMainLayout.this.i.removeCallbacks(MusicModelMainLayout.this.n);
                MusicModelMainLayout.this.h.setVisibility(0);
            }
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            MusicModelMainLayout.this.h.setActiveMarker(i);
            LogUtils.i("MusicModelMainLayout", "onPageSelected-: " + i);
        }
    }

    public class b implements RequestListener {
        public final long b;

        public b(long j) {
            this.b = j;
        }

        public final void b(long j, Bitmap bitmap) {
            if (j != MusicModelMainLayout.this.l) {
                return;
            }
            MusicModelMainLayout.this.t(bitmap, j);
        }

        @Override
        public boolean onResourceReady(final Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            if (this.b != MusicModelMainLayout.this.l) {
                return false;
            }
            Handler handler = MusicModelMainLayout.this.i;
            final long j = this.b;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(j, bitmap);
                }
            });
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public MusicModelMainLayout(@NonNull Context context) {
        super(context);
        this.e = new ArrayList();
        this.i = new Handler(Looper.getMainLooper());
        this.j = false;
        this.l = 0L;
        this.m = new a();
        this.n = new Runnable() {
            @Override
            public void run() {
                if (MusicModelMainLayout.this.h != null) {
                    MusicModelMainLayout.this.h.setVisibility(8);
                }
            }
        };
        init(context);
    }

    private void init(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_audio_mode_main_view, (ViewGroup) this, true);
        this.b = (ImageView) viewInflate.findViewById(R.id.iv_cover_background);
        this.c = (ViewPager2) viewInflate.findViewById(R.id.audio_player_main_viewpager);
        this.h = (PageIndicatorWrapper) viewInflate.findViewById(R.id.page_indicator);
        l();
    }

    private void r() {
        if (this.b != null) {
            k();
            this.b.setImageResource(R.drawable.error_bg);
        }
    }

    private void setWindowBg(Bitmap bitmap) {
        if (this.b == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Drawable drawableS = s(this.b.getDrawable());
        k();
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        if (drawableS == null) {
            this.b.setImageDrawable(bitmapDrawable);
            return;
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawableS, bitmapDrawable});
        transitionDrawable.setCrossFadeEnabled(true);
        this.b.setImageDrawable(transitionDrawable);
        transitionDrawable.startTransition(TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
    }

    public BaseActivity getBaseActivity() {
        return this.k;
    }

    public MediaBottomControllerLayout getMediaBottomControllerLayout() {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            return musicModeLayout.getMediaBottomControllerLayout();
        }
        return null;
    }

    public final void k() {
        if (this.b == null) {
            return;
        }
        Glide.with(getContext().getApplicationContext()).clear(this.b);
    }

    public final void l() {
        this.f = new MusicModeLayout(getContext());
        VideoPlayCurrentListView videoPlayCurrentListView = new VideoPlayCurrentListView(getContext());
        this.g = videoPlayCurrentListView;
        videoPlayCurrentListView.setDayNightType(true);
        this.g.setTopMargin(com.transsion.utils.a.d(getContext(), 75.0f));
        this.g.setBottomMargin(com.transsion.utils.a.f(getContext()));
        this.e.clear();
        this.e.add(this.f);
        this.e.add(this.g);
        CustomViewAdapter2 customViewAdapter2 = new CustomViewAdapter2(this.e);
        this.d = customViewAdapter2;
        this.c.setAdapter(customViewAdapter2);
        this.c.setCurrentItem(0, false);
        this.h.addMarkers(2, true);
        this.h.setActiveMarker(0);
        this.i.postDelayed(this.n, 1000L);
        this.c.registerOnPageChangeCallback(this.m);
    }

    public final void m(int i) throws Throwable {
        if (i == 0) {
            MusicModeLayout musicModeLayout = this.f;
            if (musicModeLayout != null) {
                musicModeLayout.resume();
                return;
            }
            return;
        }
        MusicModeLayout musicModeLayout2 = this.f;
        if (musicModeLayout2 != null) {
            musicModeLayout2.pause();
        }
    }

    public final Bitmap n(Bitmap bitmap, int i, int i2) {
        return vk1.a(vk1.n(vk1.b(getContext(), bitmap, i, i2, 255)));
    }

    public final void o(long j, Bitmap bitmap) {
        if (j != this.l) {
            return;
        }
        Log.i("MusicModelMainLayout", "blurBitmap: " + bitmap);
        if (bitmap == null) {
            r();
        } else {
            setWindowBg(bitmap);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setTransparentNav();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.i;
        if (handler != null) {
            handler.removeCallbacks(this.n);
        }
        this.c.unregisterOnPageChangeCallback(this.m);
    }

    @Override
    public void onVisibilityChanged(View view, final int i) {
        super.onVisibilityChanged(view, i);
        if (view != this) {
            return;
        }
        post(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.m(i);
            }
        });
    }

    public final void p(long j, Throwable th) {
        if (j != this.l) {
            return;
        }
        LogUtils.l("MusicModelMainLayout", "Error in loadBackground", th);
        r();
    }

    public void pause() {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.pause();
        }
    }

    public final void q(MediaItem mediaItem) {
        Log.i("MusicModelMainLayout", "loadBackground: " + mediaItem);
        if (this.b == null || mediaItem == null) {
            return;
        }
        long j = this.l + 1;
        this.l = j;
        if (mediaItem.getWidth() > 0 && mediaItem.getHeight() > 0) {
            RequestBuilder requestBuilderCenterCrop = Glide.with(getContext().getApplicationContext()).asBitmap().load2(mediaItem.uri).signature(new ObjectKey(Long.valueOf(mediaItem.dateModified))).override(com.transsion.utils.a.m(getContext()), com.transsion.utils.a.l(getContext())).centerCrop();
            int i = R.drawable.error_bg;
            requestBuilderCenterCrop.placeholder(i).error(i).listener(new b(j)).into(this.b);
            return;
        }
        Log.w("MusicModelMainLayout", "loadBackground skip decode, invalid size: " + mediaItem.getWidth() + "x" + mediaItem.getHeight());
        r();
    }

    public void resume() {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.resume();
        }
    }

    public final Drawable s(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof TransitionDrawable) {
            TransitionDrawable transitionDrawable = (TransitionDrawable) drawable;
            int numberOfLayers = transitionDrawable.getNumberOfLayers() - 1;
            if (numberOfLayers >= 0) {
                drawable = transitionDrawable.getDrawable(numberOfLayers);
            }
        }
        if (!(drawable instanceof BitmapDrawable)) {
            return drawable.getConstantState() != null ? drawable.getConstantState().newDrawable(getResources()).mutate() : drawable;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
        if (bitmapCopy == null) {
            return null;
        }
        return new BitmapDrawable(getResources(), bitmapCopy);
    }

    public void setBaseActivity(BaseActivity baseActivity) {
        this.k = baseActivity;
    }

    public void setCoverImg(MediaItem mediaItem) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.setCoverImg(mediaItem);
        }
        q(mediaItem);
    }

    public void setIvCoverSize(woc wocVar) {
        if (wocVar == null) {
            return;
        }
        Log.i("MusicModelMainLayout", "WindowOptions: " + wocVar);
        if (wocVar.c) {
            this.f.setIvCoverVisibility(4);
        } else {
            this.f.setIvCoverVisibility(0);
        }
        if (wocVar.a == 2) {
            this.f.setIvCoverSize(com.transsion.utils.a.d(getContext(), 316.0f), com.transsion.utils.a.d(getContext(), 316.0f));
        } else {
            this.f.setIvCoverSize(0, 0);
        }
    }

    public void setOnMusicModeLayoutItemListener(MusicModeLayout.b bVar) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.setOnMusicModeLayoutItemListener(bVar);
        }
    }

    public void setTransparentNav() {
        BaseActivity baseActivity = this.k;
        if (baseActivity != null) {
            baseActivity.setWindowFullScreen(true);
            this.k.setNavVisibility(false);
            e80.t(this.k);
        }
    }

    public final void t(Bitmap bitmap, final long j) {
        if (bitmap == null || bitmap.isRecycled()) {
            r();
            return;
        }
        try {
            final Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888, false);
            if (bitmapCopy == null) {
                r();
                return;
            }
            final int iM = com.transsion.utils.a.m(getContext());
            final int iL = com.transsion.utils.a.l(getContext());
            mc7.D(new Callable() {
                @Override
                public final Object call() {
                    return this.b.n(bitmapCopy, iM, iL);
                }
            }).d0(k29.c()).M(vb.a()).g(((VideoPlayerActivity) getContext()).bindToLifecycle()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.o(j, (Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.p(j, (Throwable) obj);
                }
            });
        } catch (Exception e) {
            LogUtils.l("MusicModelMainLayout", "copy bitmap failed", e);
            r();
        }
    }

    public void updateAddToAudioListIcon(MediaItem mediaItem) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updateVideoAddToAudioListIcon(mediaItem);
        }
    }

    public void updateFavoriteIcon(boolean z, boolean z2) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updateFavoriteIcon(z, z2);
        }
    }

    public void updateMediaName(String str) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updateMediaName(str);
        }
    }

    public void updatePlayPauseIcon(boolean z) {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updatePlayPauseIcon(z);
        }
    }

    public void updateRepeatMode() {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updateRepeatMode();
        }
    }

    public void updateSpeed() {
        MusicModeLayout musicModeLayout = this.f;
        if (musicModeLayout != null) {
            musicModeLayout.updateSpeed();
        }
    }

    public void updateTimer(long j) {
        this.f.updateTimer(j);
    }

    public MusicModelMainLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new ArrayList();
        this.i = new Handler(Looper.getMainLooper());
        this.j = false;
        this.l = 0L;
        this.m = new a();
        this.n = new Runnable() {
            @Override
            public void run() {
                if (MusicModelMainLayout.this.h != null) {
                    MusicModelMainLayout.this.h.setVisibility(8);
                }
            }
        };
        init(context);
    }

    public MusicModelMainLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new ArrayList();
        this.i = new Handler(Looper.getMainLooper());
        this.j = false;
        this.l = 0L;
        this.m = new a();
        this.n = new Runnable() {
            @Override
            public void run() {
                if (MusicModelMainLayout.this.h != null) {
                    MusicModelMainLayout.this.h.setVisibility(8);
                }
            }
        };
        init(context);
    }
}

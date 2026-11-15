package com.transsion.playercommon.widgets;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.signature.ObjectKey;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.trello.rxlifecycle3.android.ActivityEvent;
import com.trello.rxlifecycle3.components.support.RxAppCompatActivity;
import defpackage.rc2;
import defpackage.woc;
import defpackage.zf1;
import java.io.File;
import org.mozilla.classfile.ByteCode;

public class MusicAlbumView extends ConstraintLayout {
    public static final int AUDIO = 0;
    public static final int LOCK_SCREEN = 2;
    public static final int VIDEO = 1;
    public static int n = 86;
    public static int o = 68;
    public CircleImageView b;
    public ShapeableImageView c;
    public TextView d;
    public int e;
    public ObjectAnimator f;
    public int g;
    public boolean h;
    public WindowInfoViewModel i;
    public rc2 j;
    public volatile boolean k;
    public ImageFilterView l;
    public final Observer m;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ActivityEvent.values().length];
            a = iArr;
            try {
                iArr[ActivityEvent.RESUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ActivityEvent.PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ActivityEvent.DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public MusicAlbumView(@NonNull Context context) {
        super(context);
        this.e = 0;
        this.k = false;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.l((woc) obj);
            }
        };
        j(context, null, 0, 0);
        init(context);
    }

    public void l(woc wocVar) {
        Log.i("MusicAlbumView", "windowOptions  " + wocVar.toString());
        int i = wocVar.a;
        this.k = wocVar.g;
        boolean z = wocVar.f;
        if (i != 0) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) findViewById(R.id.siv_album).getLayoutParams();
        float f = (z || this.k) ? 228 : ByteCode.IMPDEP1;
        ((ViewGroup.MarginLayoutParams) layoutParams).width = com.transsion.utils.a.d(getContext(), f);
        ((ViewGroup.MarginLayoutParams) layoutParams).height = com.transsion.utils.a.d(getContext(), f);
        int i2 = (z || this.k) ? 210 : 234;
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) findViewById(R.id.circleView).getLayoutParams();
        float f2 = i2;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = com.transsion.utils.a.d(getContext(), f2);
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = com.transsion.utils.a.d(getContext(), f2);
    }

    public ShapeableImageView getAlbumView() {
        return this.c;
    }

    public int getLayoutId() {
        return this.e == 2 ? R.layout.music_photo_lock_screen_view_layout : R.layout.music_photo_view_layout;
    }

    public int i(Context context) {
        return com.transsion.utils.a.d(context, (this.e == 2 || this.k) ? o : n);
    }

    public void init(Context context) {
        this.i = (WindowInfoViewModel) new ViewModelProvider((BaseActivity) getContext()).get(WindowInfoViewModel.class);
        LayoutInflater.from(context).inflate(getLayoutId(), (ViewGroup) this, true);
        this.b = (CircleImageView) findViewById(R.id.circleView);
        this.c = (ShapeableImageView) findViewById(R.id.siv_album);
        this.d = (TextView) findViewById(R.id.tv_cover);
        ImageFilterView imageFilterView = (ImageFilterView) findViewById(R.id.album_shadow);
        this.l = imageFilterView;
        if (this.e == 0) {
            imageFilterView.setVisibility(0);
        } else {
            imageFilterView.setVisibility(8);
            if (this.e == 1) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.c.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = com.transsion.utils.a.d(context, 78.0f);
                this.c.setLayoutParams(layoutParams);
            }
        }
        this.g = i(context);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, Key.ROTATION, 0.0f, 360.0f);
        this.f = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(30000L);
        this.f.setRepeatCount(-1);
        this.f.setInterpolator(new LinearInterpolator());
        this.f.setRepeatMode(1);
        this.f.start();
        this.j = ((RxAppCompatActivity) context).lifecycle().Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.k((ActivityEvent) obj);
            }
        });
        this.i.a.observeForever(this.m);
    }

    public final void j(Context context, AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MusicAlbumView);
            this.e = typedArrayObtainStyledAttributes.getInteger(R.styleable.MusicAlbumView_musicAlbumScene, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void k(ActivityEvent activityEvent) {
        ObjectAnimator objectAnimator;
        int i = a.a[activityEvent.ordinal()];
        if (i == 1) {
            if (this.f.isPaused()) {
                this.f.resume();
            }
        } else if (i == 2) {
            if (this.f.isRunning()) {
                this.f.pause();
            }
        } else if (i == 3 && (objectAnimator = this.f) != null) {
            objectAnimator.cancel();
        }
    }

    public final void m(String str) {
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            if (!new File(str).exists()) {
                this.c.setImageResource(R.drawable.def_music_cover);
                return;
            }
            if (".gif".equals(str.substring(str.length() - 4))) {
                RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(getContext()).asGif().load2(str).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE);
                int i = R.drawable.def_music_cover;
                requestBuilderDiskCacheStrategy.placeholder(i).error(i).into(this.c);
            } else {
                RequestBuilder requestBuilderDiskCacheStrategy2 = Glide.with(getContext()).load2(str).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE);
                int i2 = R.drawable.def_music_cover;
                requestBuilderDiskCacheStrategy2.placeholder(i2).error(i2).dontAnimate().into(this.c);
            }
        }
    }

    public final void n(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            this.c.setImageResource(R.drawable.def_music_cover);
            return;
        }
        try {
            this.c.setImageBitmap(bitmap);
        } catch (Exception e) {
            Log.e("MusicAlbumView", "setCoverImg " + e);
        }
    }

    public final void o(MediaItem mediaItem) {
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            if (mediaItem == null) {
                this.c.setImageResource(R.drawable.def_music_cover);
                return;
            }
            RequestBuilder<Bitmap> requestBuilderLoad2 = Glide.with(getContext().getApplicationContext()).asBitmap().load2(mediaItem.getUri());
            int i = R.drawable.def_music_cover;
            requestBuilderLoad2.placeholder(i).error(i).signature(new ObjectKey(Long.valueOf(mediaItem.dateModified))).into(this.c);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null) {
            objectAnimator.resume();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        onFoldScreenChange();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.f;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f = null;
        }
        rc2 rc2Var = this.j;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        WindowInfoViewModel windowInfoViewModel = this.i;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.m);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onFoldScreenChange() {
        if (this.h) {
            if (Boolean.TRUE.equals(Boolean.valueOf(((Boolean) this.i.i.getValue()).booleanValue() || !this.k))) {
                v();
            } else {
                u();
            }
        }
    }

    public final void p(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.d.setText(str);
        this.d.setVisibility(0);
    }

    public final void q(boolean z) {
        this.d.setVisibility(z ? 0 : 8);
    }

    public final void r(Drawable drawable) {
        this.c.setImageDrawable(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s() {
        this.g = i(getContext());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, Boolean.TRUE.equals(Boolean.valueOf(((Boolean) this.i.i.getValue()).booleanValue() || !this.k)) ? "translationY" : "translationX", 0.0f, -this.g);
        objectAnimatorOfFloat.setDuration(250L);
        objectAnimatorOfFloat.start();
    }

    public void scale(float f, boolean z) {
        if (z) {
            animate().scaleX(f).scaleY(f).setDuration(500L).start();
        } else {
            setScaleX(f);
            setScaleY(f);
        }
    }

    public void setAlbumShadowVisibility(boolean z) {
        ImageFilterView imageFilterView = this.l;
        if (imageFilterView != null) {
            imageFilterView.setVisibility(z ? 0 : 8);
        }
    }

    public void setCoverImg(final String str) {
        ((Activity) getContext()).runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.m(str);
            }
        });
    }

    public void setCoverText(final String str) {
        if (this.d == null) {
            return;
        }
        if (!ThreadUtils.r()) {
            this.d.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.p(str);
                }
            });
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.d.setText(str);
            this.d.setVisibility(0);
        }
    }

    public void setCoverTextVisiable(final boolean z) {
        if (this.d == null) {
            return;
        }
        if (ThreadUtils.r()) {
            this.d.setVisibility(z ? 0 : 8);
        } else {
            this.d.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.q(z);
                }
            });
        }
    }

    public void setDefCoverImg(final Drawable drawable) {
        try {
            this.c.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.r(drawable);
                }
            });
        } catch (Exception e) {
            Log.e("MusicAlbumView", "setDefCoverImg: ", e);
        }
    }

    public void setDefCoverImgSync(Drawable drawable) {
        try {
            this.c.setImageDrawable(drawable);
        } catch (Exception e) {
            Log.e("MusicAlbumView", "setDefCoverImgSync: ", e);
        }
    }

    public void setMusicMode(boolean z) {
        setPause(this.h);
        if (z) {
            this.f.resume();
        } else {
            this.f.pause();
        }
    }

    public void setPause(boolean z) {
        if (this.h != z) {
            this.h = z;
            if (z) {
                s();
            } else {
                t();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t() {
        this.g = i(getContext());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, Boolean.TRUE.equals(Boolean.valueOf(((Boolean) this.i.i.getValue()).booleanValue() || !this.k)) ? "translationY" : "translationX", -this.g, 0.0f);
        objectAnimatorOfFloat.setDuration(250L);
        objectAnimatorOfFloat.start();
    }

    public final void u() {
        int i = i(getContext());
        this.g = i;
        this.b.setTranslationX(-i);
        this.b.setTranslationY(0.0f);
    }

    public final void v() {
        this.g = i(getContext());
        this.b.setTranslationX(0.0f);
        this.b.setTranslationY(-this.g);
    }

    public void setCoverImg(final Bitmap bitmap) {
        this.c.post(new Runnable() {
            @Override
            public final void run() {
                this.b.n(bitmap);
            }
        });
    }

    public void setCoverImg(final MediaItem mediaItem) {
        ((Activity) getContext()).runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.o(mediaItem);
            }
        });
    }

    public MusicAlbumView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 0;
        this.k = false;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.l((woc) obj);
            }
        };
        j(context, attributeSet, 0, 0);
        init(context);
    }

    public MusicAlbumView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 0;
        this.k = false;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.l((woc) obj);
            }
        };
        j(context, attributeSet, i, 0);
        init(context);
    }
}

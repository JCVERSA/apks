package com.avery.subtitle.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.avery.subtitle.R;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import defpackage.woc;

public class TracksSubtitleView extends LinearLayout {
    public static boolean A;
    public Context b;
    public SubtitleTextView c;
    public SubtitleTextView d;
    public float e;
    public GestureDetector f;
    public int g;
    public int h;
    public int i;
    public int j;
    public float k;
    public boolean l;
    public GradientDrawable m;
    public boolean mIsLockMode;
    public boolean mIsMultipleWindow;
    public boolean mIsPipMode;
    public boolean misLandscape;
    public GradientDrawable n;
    public View o;
    public b p;
    public View q;
    public String r;
    public String s;
    public int t;
    public int u;
    public float v;
    public float w;
    public View.OnLayoutChangeListener x;
    public final int[] y;
    public float z;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            if (TracksSubtitleView.this.l) {
                boolean unused = TracksSubtitleView.A = true;
                TracksSubtitleView.this.o.setVisibility(0);
                TracksSubtitleView.this.c.setBackground(null);
                SubtitleTextView subtitleTextView = TracksSubtitleView.this.d;
                if (subtitleTextView != null) {
                    subtitleTextView.setBackground(null);
                }
                TracksSubtitleView.this.e = motionEvent.getY();
                super.onLongPress(motionEvent);
            }
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            TracksSubtitleView.this.onSubtitleSingleTapUp();
            return super.onSingleTapUp(motionEvent);
        }
    }

    public interface b {
        void a();

        void b(int i, int i2);
    }

    public TracksSubtitleView(Context context) {
        this(context, null);
    }

    public static boolean isInDragMode() {
        return A;
    }

    public void bindToIPlayer(com.transsion.playercommon.player.b bVar) {
        this.c.bindToMediaPlayer(bVar);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.bindToMediaPlayer(bVar);
        }
        resetLocationY();
    }

    public void convertTranslationY(boolean z) {
        double d;
        int i;
        if (z) {
            d = this.h;
            i = this.g;
        } else {
            d = this.g;
            i = this.h;
        }
        double d2 = d / ((double) i);
        float top = this.i - getTop();
        float bottom = this.j - getBottom();
        float fMin = (float) Math.min(Math.max(((double) this.k) * d2, top), bottom);
        if (getTranslationY() >= 0.0f) {
            top = bottom;
        }
        float f = top * this.w;
        setOriginY(fMin);
        setTranslationY(f);
    }

    public final boolean e(float f) {
        return (((float) getTop()) + getTranslationY()) + f >= ((float) this.i) && (getTranslationY() + ((float) getBottom())) + f <= ((float) this.j);
    }

    public final void f(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i8 == i4 && i6 == i2) {
            return;
        }
        Log.e("TracksSubtitleView", "onLayoutChange top:" + i2 + ",bottom:" + i4 + ",oldTop:" + i6 + ",oldBottom:" + i8);
        convertTranslationY(this.misLandscape);
    }

    public int g() {
        return R.layout.subtitles_layout;
    }

    @Override
    public float getTranslationY() {
        return super.getTranslationY();
    }

    public final void h() {
        b bVar = this.p;
        if (bVar != null) {
            bVar.b((int) getTranslationY(), 1);
        }
        b bVar2 = this.p;
        if (bVar2 != null && !A) {
            bVar2.a();
        }
        A = false;
        this.o.setVisibility(8);
        this.c.setBackground(this.m);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setBackground(this.n);
        }
        if (TextUtils.isEmpty(this.c.getText().toString().trim())) {
            this.c.onSubtitleText("");
        }
        SubtitleTextView subtitleTextView2 = this.d;
        if (subtitleTextView2 == null || !TextUtils.isEmpty(subtitleTextView2.getText().toString().trim())) {
            return;
        }
        this.d.setVisibility(8);
    }

    public void initBounds() {
        this.i = this.t;
        this.j = com.transsion.utils.a.l(this.b) - this.u;
    }

    public void initView(Context context) {
        this.b = context;
        View viewInflate = LayoutInflater.from(context).inflate(g(), (ViewGroup) this, true);
        this.q = viewInflate;
        this.c = (SubtitleTextView) viewInflate.findViewById(R.id.subtitle_view);
        this.d = (SubtitleTextView) this.q.findViewById(R.id.second_subtitle_view);
        this.o = this.q.findViewById(R.id.drag_view);
        this.m = (GradientDrawable) this.c.getBackground();
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            this.n = (GradientDrawable) subtitleTextView.getBackground();
        }
        this.f = new GestureDetector(context, new a());
        this.g = com.transsion.utils.a.l(context);
        this.h = com.transsion.utils.a.m(context);
        this.t = com.transsion.utils.a.d(context, 20.0f);
        this.u = com.transsion.utils.a.d(context, 36.0f);
        this.y[0] = getResources().getConfiguration().screenWidthDp;
        this.y[1] = getResources().getConfiguration().screenHeightDp;
        initBounds();
        this.v = getResources().getConfiguration().fontScale;
        this.x = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.b.f(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        addOnLayoutChangeListener(this.x);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int[] iArr = this.y;
        int i = iArr[0];
        int i2 = configuration.screenWidthDp;
        if (i == i2 && iArr[1] == configuration.screenHeightDp) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = configuration.screenHeightDp;
        convertTranslationY(this.misLandscape);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeOnLayoutChangeListener(this.x);
    }

    public void onSubtitleSingleTapUp() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mIsLockMode) {
            return false;
        }
        this.f.onTouchEvent(motionEvent);
        if (!A && motionEvent.getAction() == 2) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.e = motionEvent.getY();
        } else if (action == 1) {
            this.z = motionEvent.getRawY();
            h();
        } else if (action == 2) {
            float y = motionEvent.getY() - this.e;
            if (e(y)) {
                setTranslationY(getTranslationY() + y);
                setOriginY(getTranslationY() + y);
                this.z = motionEvent.getRawY();
            }
        } else if (action == 3) {
            this.z = motionEvent.getRawY();
            h();
        }
        return true;
    }

    public void resetLocationY() {
        Log.d("TracksSubtitleView", " resetLocationY");
        setTranslationY(0.0f);
    }

    public void resetTracks() {
        this.c.reset();
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.reset();
        }
    }

    public void restartTracks() {
        this.c.start();
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.start();
        }
    }

    public void setDragListener(b bVar) {
        this.p = bVar;
    }

    public void setFirstTrackDelay(long j) {
        this.c.setSubtitleDelayMs(j);
    }

    public void setFirstTrackSubtitle(SubtitleTrackInfo subtitleTrackInfo) {
        String str = subtitleTrackInfo == null ? null : subtitleTrackInfo.path;
        if (subtitleTrackInfo == null || TextUtils.isEmpty(str) || "NULL".equals(str)) {
            this.c.onSubtitleText("");
            this.c.reset();
            this.r = null;
        } else {
            this.c.setSubtitlePath(str);
            this.c.start();
            this.r = str;
        }
    }

    public void setLayoutGravity(int i) {
    }

    public void setOriginY(float f) {
        this.k = f;
    }

    public void setPictureInPictureMode(boolean z) {
        this.mIsPipMode = z;
        if (!z) {
            this.c.setBackground(this.m);
            SubtitleTextView subtitleTextView = this.d;
            if (subtitleTextView != null) {
                subtitleTextView.setBackground(this.n);
            }
            if (getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                try {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
                    layoutParams.rightMargin = getResources().getDimensionPixelOffset(this.misLandscape ? R.dimen.subtitle_text_padding_horizontal_land : R.dimen.subtitle_text_padding_horizontal);
                    layoutParams.leftMargin = getResources().getDimensionPixelOffset(this.misLandscape ? R.dimen.subtitle_text_padding_horizontal_land : R.dimen.subtitle_text_padding_horizontal);
                    Log.d("TracksSubtitleView", "LayoutParams" + layoutParams.leftMargin);
                    setLayoutParams(layoutParams);
                    return;
                } catch (Resources.NotFoundException e) {
                    Log.e("TracksSubtitleView", "Failed to get normal margin dimension", e);
                    return;
                }
            }
            return;
        }
        SubtitleTextView subtitleTextView2 = this.c;
        int i = R.drawable.background_subtitle_pip;
        subtitleTextView2.setBackgroundResource(i);
        SubtitleTextView subtitleTextView3 = this.d;
        if (subtitleTextView3 != null) {
            subtitleTextView3.setBackgroundResource(i);
        }
        if (getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            try {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) getLayoutParams();
                Resources resources = getResources();
                int i2 = R.dimen.subtitle_text_padding_horizontal_pip;
                layoutParams2.rightMargin = resources.getDimensionPixelOffset(i2);
                layoutParams2.leftMargin = getResources().getDimensionPixelOffset(i2);
                Log.d("TracksSubtitleView", "LayoutParams" + layoutParams2.leftMargin);
                setLayoutParams(layoutParams2);
            } catch (Resources.NotFoundException e2) {
                Log.e("TracksSubtitleView", "Failed to get PiP margin dimension", e2);
            }
        }
    }

    public void setSecondTrackDelay(long j) {
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setSubtitleDelayMs(j);
        }
    }

    public void setSecondTrackSubtitle(SubtitleTrackInfo subtitleTrackInfo) {
        if (this.d != null) {
            String str = subtitleTrackInfo == null ? null : subtitleTrackInfo.path;
            if (TextUtils.isEmpty(str) || "NULL".equals(str)) {
                this.d.setVisibility(8);
                this.d.reset();
                this.s = null;
            } else {
                this.d.setSubtitlePath(str);
                this.d.start();
                this.s = str;
            }
        }
    }

    public void setSettingDrag(boolean z, boolean z2) {
        this.l = z;
        this.mIsLockMode = z2;
        if (z || !A) {
            return;
        }
        h();
    }

    public void setSpeed(float f) {
        this.c.setSpeed(f);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setSpeed(f);
        }
    }

    @Override
    public void setTextAlignment(int i) {
        this.c.setTextAlignment(i);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setTextAlignment(i);
        }
    }

    public void setTextAppearance(int i) {
        this.c.setTextAppearance(i);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setTextAppearance(i);
        }
    }

    public void setTextBackground(int i) {
        GradientDrawable gradientDrawable = this.m;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
        }
        this.c.setBackground(this.m);
        GradientDrawable gradientDrawable2 = this.n;
        if (gradientDrawable2 != null) {
            gradientDrawable2.setColor(i);
        }
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setBackground(this.n);
        }
    }

    public void setTextColor(int i) {
        this.c.setTextColor(i);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setTextColor(i);
        }
    }

    public void setTextSize(float f) {
        this.c.setTextSize(0, f);
        SubtitleTextView subtitleTextView = this.d;
        if (subtitleTextView != null) {
            subtitleTextView.setTextSize(0, f);
        }
    }

    @Override
    public void setTranslationY(float f) {
        Log.d("TracksSubtitleView", " setTranslationY translationY = " + f);
        if (this.mIsPipMode) {
            f = 0.0f;
        }
        if (f != getTranslationY()) {
            super.setTranslationY(f);
            setLayoutParams(getLayoutParams());
            this.w = f < 0.0f ? f / (this.i - getTop()) : f / (this.j - getBottom());
        }
    }

    public void updateSubtitleViewForWindowChange(woc wocVar) {
        int i;
        Log.d("TracksSubtitleView", "updateSubtitleViewForWindowChange " + wocVar);
        this.mIsMultipleWindow = wocVar.c || wocVar.d;
        this.misLandscape = wocVar.g;
        initBounds();
        if (getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            boolean z = this.misLandscape;
            if (!z || this.mIsMultipleWindow) {
                i = (z || !this.mIsPipMode) ? R.dimen.subtitle_text_padding_horizontal : R.dimen.subtitle_text_padding_horizontal_pip;
            } else {
                i = R.dimen.subtitle_text_padding_horizontal_land;
            }
            layoutParams.rightMargin = getResources().getDimensionPixelOffset(i);
            layoutParams.leftMargin = getResources().getDimensionPixelOffset(i);
            setLayoutParams(layoutParams);
        }
        convertTranslationY(this.misLandscape);
    }

    public TracksSubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TracksSubtitleView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = true;
        this.t = 0;
        this.u = 0;
        this.v = 1.0f;
        this.y = new int[2];
        initView(context);
    }
}

package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SubtitleView extends FrameLayout {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    public static final int VIEW_TYPE_CANVAS = 1;
    public static final int VIEW_TYPE_WEB = 2;

    private List f26300a;

    private c f26301b;

    private int f26302c;

    private float f26303d;

    private float f26304e;

    private boolean f26305f;

    private boolean f26306g;

    private int f26307h;

    private a f26308i;

    private View f26309j;

    interface a {
        void a(List list, c cVar, float f10, int i10, float f11);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private da.b a(da.b bVar) {
        da.b.C0703b c0703bB = bVar.b();
        if (!this.f26305f) {
            m0.e(c0703bB);
        } else if (!this.f26306g) {
            m0.f(c0703bB);
        }
        return c0703bB.a();
    }

    private void b(int i10, float f10) {
        this.f26302c = i10;
        this.f26303d = f10;
        c();
    }

    private void c() {
        this.f26308i.a(getCuesWithStylingPreferencesApplied(), this.f26301b, this.f26303d, this.f26302c, this.f26304e);
    }

    private List<da.b> getCuesWithStylingPreferencesApplied() {
        if (this.f26305f && this.f26306g) {
            return this.f26300a;
        }
        ArrayList arrayList = new ArrayList(this.f26300a.size());
        for (int i10 = 0; i10 < this.f26300a.size(); i10++) {
            arrayList.add(a((da.b) this.f26300a.get(i10)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (com.google.android.exoplayer2.util.p0.f26854a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private c getUserCaptionStyle() {
        if (com.google.android.exoplayer2.util.p0.f26854a < 19 || isInEditMode()) {
            return c.f26337g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? c.f26337g : c.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f26309j);
        View view = this.f26309j;
        if (view instanceof q0) {
            ((q0) view).g();
        }
        this.f26309j = t10;
        this.f26308i = t10;
        addView(t10);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f26306g = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f26305f = z10;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f26304e = f10;
        c();
    }

    public void setCues(@Nullable List<da.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f26300a = list;
        c();
    }

    public void setFixedTextSize(int i10, float f10) {
        Context context = getContext();
        b(2, TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f10) {
        setFractionalTextSize(f10, false);
    }

    public void setStyle(c cVar) {
        this.f26301b = cVar;
        c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i10) {
        if (this.f26307h == i10) {
            return;
        }
        if (i10 == 1) {
            setView(new b(getContext()));
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new q0(getContext()));
        }
        this.f26307h = i10;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26300a = Collections.emptyList();
        this.f26301b = c.f26337g;
        this.f26302c = 0;
        this.f26303d = 0.0533f;
        this.f26304e = 0.08f;
        this.f26305f = true;
        this.f26306g = true;
        b bVar = new b(context);
        this.f26308i = bVar;
        this.f26309j = bVar;
        addView(bVar);
        this.f26307h = 1;
    }

    public void setFractionalTextSize(float f10, boolean z10) {
        b(z10 ? 1 : 0, f10);
    }
}

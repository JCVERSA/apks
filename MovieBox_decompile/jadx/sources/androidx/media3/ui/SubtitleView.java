package androidx.media3.ui;

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

    private List f13285a;

    private b f13286b;

    private int f13287c;

    private float f13288d;

    private float f13289e;

    private boolean f13290f;

    private boolean f13291g;

    private int f13292h;

    private a f13293i;

    private View f13294j;

    interface a {
        void a(List list, b bVar, float f10, int i10, float f11);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private u1.a a(u1.a aVar) {
        u1.a.b bVarA = aVar.a();
        if (!this.f13290f) {
            x0.e(bVarA);
        } else if (!this.f13291g) {
            x0.f(bVarA);
        }
        return bVarA.a();
    }

    private void b(int i10, float f10) {
        this.f13287c = i10;
        this.f13288d = f10;
        c();
    }

    private void c() {
        this.f13293i.a(getCuesWithStylingPreferencesApplied(), this.f13286b, this.f13288d, this.f13287c, this.f13289e);
    }

    private List<u1.a> getCuesWithStylingPreferencesApplied() {
        if (this.f13290f && this.f13291g) {
            return this.f13285a;
        }
        ArrayList arrayList = new ArrayList(this.f13285a.size());
        for (int i10 = 0; i10 < this.f13285a.size(); i10++) {
            arrayList.add(a((u1.a) this.f13285a.get(i10)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private b getUserCaptionStyle() {
        if (isInEditMode()) {
            return b.f13319g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? b.f13319g : b.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f13294j);
        View view = this.f13294j;
        if (view instanceof b1) {
            ((b1) view).g();
        }
        this.f13294j = t10;
        this.f13293i = t10;
        addView(t10);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f13291g = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f13290f = z10;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f13289e = f10;
        c();
    }

    public void setCues(@Nullable List<u1.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f13285a = list;
        c();
    }

    public void setFixedTextSize(int i10, float f10) {
        Context context = getContext();
        b(2, TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f10) {
        setFractionalTextSize(f10, false);
    }

    public void setStyle(b bVar) {
        this.f13286b = bVar;
        c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i10) {
        if (this.f13292h == i10) {
            return;
        }
        if (i10 == 1) {
            setView(new androidx.media3.ui.a(getContext()));
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new b1(getContext()));
        }
        this.f13292h = i10;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13285a = Collections.emptyList();
        this.f13286b = b.f13319g;
        this.f13287c = 0;
        this.f13288d = 0.0533f;
        this.f13289e = 0.08f;
        this.f13290f = true;
        this.f13291g = true;
        androidx.media3.ui.a aVar = new androidx.media3.ui.a(context);
        this.f13293i = aVar;
        this.f13294j = aVar;
        addView(aVar);
        this.f13292h = 1;
    }

    public void setFractionalTextSize(float f10, boolean z10) {
        b(z10 ? 1 : 0, f10);
    }
}

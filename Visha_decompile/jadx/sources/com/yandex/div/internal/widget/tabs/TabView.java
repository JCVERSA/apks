package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.core.view.ViewCompat;
import com.yandex.div.core.font.DivTypefaceType;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.SuperLineHeightTextView;
import com.yandex.div.internal.widget.tabs.TabView;
import defpackage.a15;
import defpackage.bu2;

public final class TabView extends SuperLineHeightTextView {
    public bu2 e;
    public a15 f;
    public int g;
    public boolean h;
    public boolean i;
    public a j;
    public b k;
    public BaseIndicatorTabLayout.e l;
    public DivTypefaceType m;
    public DivTypefaceType n;
    public boolean o;

    public interface a {
        int getMaxWidth();
    }

    public interface b {
        void a(TabView tabView);
    }

    public TabView(@NonNull Context context) {
        this(context, null);
    }

    public static int d() {
        return Integer.MAX_VALUE;
    }

    public static void e(View view) {
    }

    @Nullable
    private Typeface getDefaultTypeface() {
        bu2 bu2Var = this.e;
        if (bu2Var != null) {
            if (this.o) {
                DivTypefaceType divTypefaceType = this.n;
                if (divTypefaceType != null) {
                    return divTypefaceType.getTypeface(bu2Var);
                }
            } else {
                DivTypefaceType divTypefaceType2 = this.m;
                if (divTypefaceType2 != null) {
                    return divTypefaceType2.getTypeface(bu2Var);
                }
            }
        }
        if (bu2Var != null) {
            return bu2Var.getMedium();
        }
        return null;
    }

    public final void c(int i, int i2) {
        BaseIndicatorTabLayout.e eVar;
        CharSequence charSequenceH;
        TextPaint paint;
        Layout layout = getLayout();
        if (layout == null || layout.getEllipsisCount(0) <= 0 || (eVar = this.l) == null || (charSequenceH = eVar.h()) == null || (paint = layout.getPaint()) == null) {
            return;
        }
        TransformationMethod transformationMethod = getTransformationMethod();
        if (transformationMethod != null) {
            charSequenceH = transformationMethod.getTransformation(charSequenceH, this);
        }
        if (charSequenceH == null) {
            return;
        }
        setText(TextUtils.ellipsize(charSequenceH, paint, ((int) layout.getLineMax(0)) - paint.measureText("..."), TextUtils.TruncateAt.END));
        super.onMeasure(i, i2);
    }

    public void f() {
        setTab(null);
        setSelected(false);
    }

    public void g(bu2 bu2Var, int i) {
        this.e = bu2Var;
        this.g = i;
        h();
    }

    public final void h() {
        if (isSelected()) {
            return;
        }
        setTextAppearance(getContext(), this.g);
    }

    public void i() {
        BaseIndicatorTabLayout.e eVar = this.l;
        setText(eVar == null ? null : eVar.h());
        b bVar = this.k;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
    }

    @Override
    public void onMeasure(int i, int i2) {
        Typeface defaultTypeface;
        TextPaint paint = getPaint();
        if (paint != null && (defaultTypeface = getDefaultTypeface()) != null) {
            paint.setTypeface(defaultTypeface);
        }
        if (!this.i) {
            super.onMeasure(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int maxWidth = this.j.getMaxWidth();
        if (maxWidth > 0 && (mode == 0 || size > maxWidth)) {
            i = View.MeasureSpec.makeMeasureSpec(maxWidth, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        c(i, i2);
    }

    @Override
    public boolean performClick() {
        boolean zPerformClick = super.performClick();
        a15 a15Var = this.f;
        if (a15Var != null) {
            BaseDivViewExtensionsKt.G(this, a15Var);
        }
        BaseIndicatorTabLayout.e eVar = this.l;
        if (eVar == null) {
            return zPerformClick;
        }
        eVar.j();
        return true;
    }

    public void setActiveTypefaceType(@Nullable DivTypefaceType divTypefaceType) {
        this.n = divTypefaceType;
    }

    public void setBoldTextOnSelection(boolean z) {
        this.h = z;
    }

    public void setEllipsizeEnabled(boolean z) {
        this.i = z;
        setEllipsize(z ? TextUtils.TruncateAt.END : null);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? 1.0f : 0.2f);
    }

    public void setInactiveTypefaceType(@Nullable DivTypefaceType divTypefaceType) {
        this.m = divTypefaceType;
    }

    public void setInputFocusTracker(a15 a15Var) {
        this.f = a15Var;
    }

    public void setMaxWidthProvider(@NonNull a aVar) {
        this.j = aVar;
    }

    public void setOnUpdateListener(@Nullable b bVar) {
        this.k = bVar;
    }

    @Override
    public void setSelected(boolean z) {
        boolean z2 = isSelected() != z;
        super.setSelected(z);
        setTypefaceType(z);
        if (this.h && z2) {
            h();
        }
        if (z2 && z) {
            sendAccessibilityEvent(4);
        }
    }

    public void setTab(@Nullable BaseIndicatorTabLayout.e eVar) {
        if (eVar != this.l) {
            this.l = eVar;
            i();
        }
    }

    public void setTabPadding(int i, int i2, int i3, int i4) {
        ViewCompat.setPaddingRelative(this, i, i2, i3, i4);
    }

    public void setTextColorList(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            setTextColor(colorStateList);
        }
    }

    public void setTypefaceType(boolean z) {
        boolean z2 = this.o != z;
        this.o = z;
        if (z2) {
            requestLayout();
        }
    }

    public TabView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new a() {
            @Override
            public final int getMaxWidth() {
                return TabView.d();
            }
        };
        setGravity(8388627);
        setClickable(true);
        setMaxLines(1);
        setSingleLine(true);
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TabView.e(view);
            }
        });
    }
}

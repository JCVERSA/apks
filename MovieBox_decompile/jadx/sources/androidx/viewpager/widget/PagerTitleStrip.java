package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.l;
import java.lang.ref.WeakReference;
import java.util.Locale;

@ViewPager.c
public class PagerTitleStrip extends ViewGroup {

    private static final int[] f14914o = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    private static final int[] f14915p = {R.attr.textAllCaps};

    ViewPager f14916a;

    TextView f14917b;

    TextView f14918c;

    TextView f14919d;

    private int f14920e;

    float f14921f;

    private int f14922g;

    private int f14923h;

    private boolean f14924i;

    private boolean f14925j;

    private final a f14926k;

    private WeakReference f14927l;

    private int f14928m;

    int f14929n;

    private class a extends DataSetObserver implements ViewPager.h, ViewPager.g {

        private int f14930a;

        a() {
        }

        @Override
        public void a(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.a(pagerAdapter, pagerAdapter2);
        }

        @Override
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.b(pagerTitleStrip.f14916a.getCurrentItem(), PagerTitleStrip.this.f14916a.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f10 = pagerTitleStrip2.f14921f;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            pagerTitleStrip2.c(pagerTitleStrip2.f14916a.getCurrentItem(), f10, true);
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.f14930a = i10;
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            if (f10 > 0.5f) {
                i10++;
            }
            PagerTitleStrip.this.c(i10, f10, false);
        }

        @Override
        public void onPageSelected(int i10) {
            if (this.f14930a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.b(pagerTitleStrip.f14916a.getCurrentItem(), PagerTitleStrip.this.f14916a.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f10 = pagerTitleStrip2.f14921f;
                if (f10 < 0.0f) {
                    f10 = 0.0f;
                }
                pagerTitleStrip2.c(pagerTitleStrip2.f14916a.getCurrentItem(), f10, true);
            }
        }
    }

    private static class b extends SingleLineTransformationMethod {

        private Locale f14932a;

        b(Context context) {
            this.f14932a = context.getResources().getConfiguration().locale;
        }

        @Override
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f14932a);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.f14926k);
            this.f14927l = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.f14926k);
            this.f14927l = new WeakReference(pagerAdapter2);
        }
        ViewPager viewPager = this.f14916a;
        if (viewPager != null) {
            this.f14920e = -1;
            this.f14921f = -1.0f;
            b(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    void b(int i10, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.f14924i = true;
        CharSequence pageTitle = null;
        this.f14917b.setText((i10 < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i10 - 1));
        this.f14918c.setText((pagerAdapter == null || i10 >= count) ? null : pagerAdapter.getPageTitle(i10));
        int i11 = i10 + 1;
        if (i11 < count && pagerAdapter != null) {
            pageTitle = pagerAdapter.getPageTitle(i11);
        }
        this.f14919d.setText(pageTitle);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f14917b.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f14918c.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f14919d.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.f14920e = i10;
        if (!this.f14925j) {
            c(i10, this.f14921f, false);
        }
        this.f14924i = false;
    }

    void c(int i10, float f10, boolean z10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (i10 != this.f14920e) {
            b(i10, this.f14916a.getAdapter());
        } else if (!z10 && f10 == this.f14921f) {
            return;
        }
        this.f14925j = true;
        int measuredWidth = this.f14917b.getMeasuredWidth();
        int measuredWidth2 = this.f14918c.getMeasuredWidth();
        int measuredWidth3 = this.f14919d.getMeasuredWidth();
        int i15 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i16 = paddingRight + i15;
        int i17 = (width - (paddingLeft + i15)) - i16;
        float f11 = 0.5f + f10;
        if (f11 > 1.0f) {
            f11 -= 1.0f;
        }
        int i18 = ((width - i16) - ((int) (i17 * f11))) - i15;
        int i19 = measuredWidth2 + i18;
        int baseline = this.f14917b.getBaseline();
        int baseline2 = this.f14918c.getBaseline();
        int baseline3 = this.f14919d.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i20 = iMax - baseline;
        int i21 = iMax - baseline2;
        int i22 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.f14917b.getMeasuredHeight() + i20, this.f14918c.getMeasuredHeight() + i21), this.f14919d.getMeasuredHeight() + i22);
        int i23 = this.f14923h & 112;
        if (i23 != 16) {
            if (i23 != 80) {
                i12 = i20 + paddingTop;
                i13 = i21 + paddingTop;
                i14 = paddingTop + i22;
            } else {
                i11 = (height - paddingBottom) - iMax2;
            }
            TextView textView = this.f14918c;
            textView.layout(i18, i13, i19, textView.getMeasuredHeight() + i13);
            int iMin = Math.min(paddingLeft, (i18 - this.f14922g) - measuredWidth);
            TextView textView2 = this.f14917b;
            textView2.layout(iMin, i12, measuredWidth + iMin, textView2.getMeasuredHeight() + i12);
            int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i19 + this.f14922g);
            TextView textView3 = this.f14919d;
            textView3.layout(iMax3, i14, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i14);
            this.f14921f = f10;
            this.f14925j = false;
        }
        i11 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        i12 = i20 + i11;
        i13 = i21 + i11;
        i14 = i11 + i22;
        TextView textView4 = this.f14918c;
        textView4.layout(i18, i13, i19, textView4.getMeasuredHeight() + i13);
        int iMin2 = Math.min(paddingLeft, (i18 - this.f14922g) - measuredWidth);
        TextView textView5 = this.f14917b;
        textView5.layout(iMin2, i12, measuredWidth + iMin2, textView5.getMeasuredHeight() + i12);
        int iMax4 = Math.max((width - paddingRight) - measuredWidth3, i19 + this.f14922g);
        TextView textView6 = this.f14919d;
        textView6.layout(iMax4, i14, iMax4 + measuredWidth3, textView6.getMeasuredHeight() + i14);
        this.f14921f = f10;
        this.f14925j = false;
    }

    int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.f14922g;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.f14926k);
        viewPager.addOnAdapterChangeListener(this.f14926k);
        this.f14916a = viewPager;
        WeakReference weakReference = this.f14927l;
        a(weakReference != null ? (PagerAdapter) weakReference.get() : null, adapter);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f14916a;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            this.f14916a.setInternalPageChangeListener(null);
            this.f14916a.removeOnAdapterChangeListener(this.f14926k);
            this.f14916a = null;
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.f14916a != null) {
            float f10 = this.f14921f;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            c(this.f14920e, f10, true);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int iMax;
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i10);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i10, (int) (size * 0.2f), -2);
        this.f14917b.measure(childMeasureSpec2, childMeasureSpec);
        this.f14918c.measure(childMeasureSpec2, childMeasureSpec);
        this.f14919d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i11) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i11);
        } else {
            iMax = Math.max(getMinHeight(), this.f14918c.getMeasuredHeight() + paddingTop);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i11, this.f14918c.getMeasuredState() << 16));
    }

    @Override
    public void requestLayout() {
        if (this.f14924i) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i10) {
        this.f14923h = i10;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f10) {
        int i10 = ((int) (f10 * 255.0f)) & 255;
        this.f14928m = i10;
        int i11 = (i10 << 24) | (this.f14929n & 16777215);
        this.f14917b.setTextColor(i11);
        this.f14919d.setTextColor(i11);
    }

    public void setTextColor(int i10) {
        this.f14929n = i10;
        this.f14918c.setTextColor(i10);
        int i11 = (this.f14928m << 24) | (this.f14929n & 16777215);
        this.f14917b.setTextColor(i11);
        this.f14919d.setTextColor(i11);
    }

    public void setTextSize(int i10, float f10) {
        this.f14917b.setTextSize(i10, f10);
        this.f14918c.setTextSize(i10, f10);
        this.f14919d.setTextSize(i10, f10);
    }

    public void setTextSpacing(int i10) {
        this.f14922g = i10;
        requestLayout();
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14920e = -1;
        this.f14921f = -1.0f;
        this.f14926k = new a();
        TextView textView = new TextView(context);
        this.f14917b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f14918c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f14919d = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f14914o);
        boolean z10 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            l.p(this.f14917b, resourceId);
            l.p(this.f14918c, resourceId);
            l.p(this.f14919d, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f14917b.setTextColor(color);
            this.f14918c.setTextColor(color);
            this.f14919d.setTextColor(color);
        }
        this.f14923h = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.f14929n = this.f14918c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        TextView textView4 = this.f14917b;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.f14918c.setEllipsize(truncateAt);
        this.f14919d.setEllipsize(truncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f14915p);
            z10 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z10) {
            setSingleLineAllCaps(this.f14917b);
            setSingleLineAllCaps(this.f14918c);
            setSingleLineAllCaps(this.f14919d);
        } else {
            this.f14917b.setSingleLine();
            this.f14918c.setSingleLine();
            this.f14919d.setSingleLine();
        }
        this.f14922g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}

package com.transsion.widgetslib.view;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.transsion.widgetslib.R;
import defpackage.o97;
import java.util.ArrayList;
import java.util.Locale;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class ViewPagerTabs extends HorizontalScrollView {
    public e b;
    public Context c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public ArrayList i;
    public int[] j;
    public int[] k;
    public int[] l;
    public boolean m;
    public boolean n;
    public int o;
    public int[] p;
    public int q;
    public Paint r;
    public ViewPager s;
    public ViewPager.OnPageChangeListener t;
    public View.OnScrollChangeListener u;
    public int v;
    public int w;
    public int x;
    public int y;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int mSavedCurPosition;

        public class a implements Parcelable.Creator {
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mSavedCurPosition);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mSavedCurPosition = parcel.readInt();
        }
    }

    public class a implements View.OnClickListener {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            ViewPagerTabs.this.onTabClick(this.b);
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public final ViewPager b;

        public b(ViewPager viewPager) {
            this.b = viewPager;
        }

        @Override
        public void onGlobalLayout() {
            ViewPagerTabs.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (ViewPagerTabs.this.s != null) {
                this.b.setOnPageChangeListener(new f());
                ViewPagerTabs.this.C();
                this.b.setCurrentItem(ViewPagerTabs.this.getDefaultViewPagerItemIndex(), false);
            }
        }
    }

    public class c implements ViewTreeObserver.OnGlobalLayoutListener {
        public final ViewPager b;
        public final int c;

        public c(ViewPager viewPager, int i) {
            this.b = viewPager;
            this.c = i;
        }

        @Override
        public void onGlobalLayout() {
            ViewPagerTabs.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (ViewPagerTabs.this.s != null) {
                this.b.setOnPageChangeListener(new f());
                ViewPagerTabs.this.C();
                this.b.setCurrentItem(ViewPagerTabs.this.v(this.c), false);
                ViewPagerTabs.this.b.b = this.c;
                ViewPagerTabs.this.b.invalidate();
                ViewPagerTabs.this.onPageScrollStateChanged(0);
            }
        }
    }

    public class d implements View.OnClickListener {
        public final int b;

        public d(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            ViewPagerTabs.this.onTabClick(this.b);
        }
    }

    public class e extends LinearLayout {
        public int b;
        public float c;
        public Interpolator d;
        public ArgbEvaluator e;
        public Paint f;
        public boolean g;

        public e(Context context) {
            super(context);
            this.g = true;
            Paint paint = new Paint(1);
            this.f = paint;
            paint.setColor(ViewPagerTabs.this.c.getColor(R.color.os_gray_tertiary_color));
            this.f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setStrokeWidth(ViewPagerTabs.this.g);
            this.f.setStrokeCap(Paint.Cap.ROUND);
            this.f.setDither(true);
            this.d = new o97();
            this.e = new ArgbEvaluator();
            setWillNotDraw(false);
        }

        public final void d(TextView textView, int i, int[] iArr) {
            if (textView == null || iArr == null) {
                return;
            }
            if (iArr.length != 2) {
                throw new IllegalArgumentException("Wrong arguments, array's length must be 2!");
            }
            int width = (((textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight()) - i) / 2;
            iArr[0] = textView.getLeft() + textView.getPaddingLeft() + width;
            iArr[1] = (textView.getRight() - textView.getPaddingRight()) - width;
        }

        public void e(int i, float f) {
            this.b = i;
            this.c = f;
            ViewPagerTabs.this.D();
        }

        @Override
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.g && ViewPagerTabs.this.h) {
                ViewPagerTabs.this.fullScroll(66);
                this.g = false;
            }
            int childCount = getChildCount();
            if (childCount > 0) {
                CheckedTextView checkedTextView = (CheckedTextView) getChildAt(this.b);
                d(checkedTextView, (int) ((Float) ViewPagerTabs.this.i.get(this.b)).floatValue(), ViewPagerTabs.this.j);
                boolean z = !ViewPagerTabs.this.h ? this.b >= childCount - 1 : this.b <= 0;
                float f = this.c;
                if (f > 0.0f && z) {
                    float interpolation = this.d.getInterpolation(f);
                    CheckedTextView checkedTextView2 = (CheckedTextView) getChildAt(this.b + (ViewPagerTabs.this.h ? -1 : 1));
                    d(checkedTextView2, (int) ((Float) ViewPagerTabs.this.i.get(this.b + (ViewPagerTabs.this.h ? -1 : 1))).floatValue(), ViewPagerTabs.this.k);
                    float f2 = 1.0f - interpolation;
                    ViewPagerTabs.this.j[0] = (int) ((ViewPagerTabs.this.k[0] * interpolation) + (ViewPagerTabs.this.j[0] * f2));
                    ViewPagerTabs.this.j[1] = (int) ((interpolation * ViewPagerTabs.this.k[1]) + (f2 * ViewPagerTabs.this.j[1]));
                    checkedTextView2.setChecked(false);
                    checkedTextView2.setTextAppearance(R.style.os_regular_fontweight);
                }
                checkedTextView.setChecked(true);
                checkedTextView.setTextAppearance(R.style.os_semibold_font);
                getBottom();
                int unused = ViewPagerTabs.this.g;
                canvas.drawLine(0.0f, getBottom(), ViewPagerTabs.this.w, getBottom(), this.f);
            }
        }
    }

    public class f implements ViewPager.OnPageChangeListener {
        @Override
        public void onPageScrollStateChanged(int i) {
            ViewPagerTabs.this.z(i);
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            ViewPagerTabs.this.A(i, f, i2);
        }

        @Override
        public void onPageSelected(int i) {
            ViewPagerTabs.this.y = i;
            ViewPagerTabs.this.B(i);
            if (ViewPagerTabs.this.b != null) {
                ViewPagerTabs.this.b.e(ViewPagerTabs.this.v(i), 0.0f);
            }
        }

        public f() {
        }
    }

    public interface g {
    }

    public ViewPagerTabs(Context context) {
        this(context, null);
    }

    public final void A(int i, float f2, int i2) {
        onPageScrolled(i, f2, i2);
    }

    public final void B(int i) {
        onPageSelected(i);
    }

    public final void C() {
        int count = this.s.getAdapter().getCount();
        this.o = count;
        int[] iArr = this.l;
        if (iArr != null && iArr.length != count) {
            int[] iArr2 = new int[count];
            int i = 0;
            while (i < this.o) {
                int[] iArr3 = this.l;
                iArr2[i] = i <= iArr3.length + (-1) ? iArr3[i] : -1;
                i++;
            }
            this.l = iArr2;
        }
        q();
        setHorizontalScrollBarEnabled(false);
    }

    public final void D() {
        for (int i = 0; i < this.b.getChildCount(); i++) {
            CheckedTextView checkedTextView = (CheckedTextView) this.b.getChildAt(i);
            if (i != this.b.b) {
                checkedTextView.setChecked(false);
                checkedTextView.setTextAppearance(R.style.os_regular_fontweight);
            } else {
                checkedTextView.setChecked(true);
                checkedTextView.setTextAppearance(R.style.os_semibold_font);
            }
        }
    }

    public int getDefaultViewPagerItemIndex() {
        e eVar = this.b;
        if (eVar == null) {
            return 0;
        }
        return v(eVar.b);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = x();
        onPageScrollStateChanged(0);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.t;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        if (i == 0) {
            D();
        }
    }

    public void onPageScrolled(int i, float f2, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.t;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f2, i2);
        }
    }

    public void onPageSelected(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.t;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }

    public void onTabClick(int i) {
        int iV = v(i);
        ViewPager viewPager = this.s;
        if (viewPager != null) {
            viewPager.setCurrentItem(iV, true);
        }
    }

    public final void q() {
        if (this.c == null) {
            return;
        }
        this.b.removeAllViews();
        PagerAdapter adapter = this.s.getAdapter();
        int count = adapter.getCount();
        t(count);
        ArrayList arrayList = this.i;
        if (arrayList != null) {
            arrayList.clear();
        } else {
            this.i = new ArrayList(count);
        }
        int i = this.x / count;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, -1);
        for (int i2 = 0; i2 < count; i2++) {
            CheckedTextView checkedTextView = (CheckedTextView) LayoutInflater.from(this.c).inflate(R.layout.tab_textview, (ViewGroup) null);
            CharSequence pageTitle = adapter.getPageTitle(i2);
            if (pageTitle == null) {
                pageTitle = "";
            }
            checkedTextView.setText(pageTitle.toString().trim());
            checkedTextView.setChecked(false);
            checkedTextView.setTextAppearance(R.style.os_regular_fontweight);
            checkedTextView.setSingleLine(true);
            checkedTextView.setGravity(17);
            if (this.n) {
                s(checkedTextView, i - (this.e * 2));
            }
            float fY = y(checkedTextView);
            this.i.add(Float.valueOf(fY));
            if (this.n) {
                checkedTextView.setWidth(i);
            } else {
                checkedTextView.setWidth((int) ((this.d * 2) + fY));
                int i3 = this.d;
                checkedTextView.setPadding(i3, 0, i3, 0);
            }
            checkedTextView.setTypeface(Typeface.create(Typeface.SANS_SERIF, getResources().getInteger(R.integer.OSSemiBoldWeight), false));
            checkedTextView.setOnClickListener(new d(i2));
            if (i2 == this.b.b) {
                checkedTextView.setChecked(true);
                checkedTextView.setTextAppearance(R.style.os_semibold_font);
            }
            this.b.addView(checkedTextView, layoutParams);
        }
    }

    public final void r(CharSequence[] charSequenceArr) {
        this.b.removeAllViews();
        int length = charSequenceArr.length;
        t(length);
        ArrayList arrayList = this.i;
        if (arrayList != null) {
            arrayList.clear();
        } else {
            this.i = new ArrayList(length);
        }
        int i = this.x / length;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, -1);
        for (int i2 = 0; i2 < length; i2++) {
            CheckedTextView checkedTextView = (CheckedTextView) LayoutInflater.from(this.c).inflate(R.layout.tab_textview, (ViewGroup) null);
            if (charSequenceArr[i2] == null) {
                charSequenceArr[i2] = "";
            }
            checkedTextView.setText(charSequenceArr[i2].toString().trim());
            checkedTextView.setChecked(false);
            checkedTextView.setTextAppearance(R.style.os_regular_fontweight);
            checkedTextView.setSingleLine(true);
            checkedTextView.setGravity(17);
            if (this.n) {
                s(checkedTextView, i - (this.e * 2));
            }
            float fY = y(checkedTextView);
            this.i.add(Float.valueOf(fY));
            if (this.n) {
                checkedTextView.setWidth(i);
            } else {
                checkedTextView.setWidth((int) ((this.d * 2) + fY));
                int i3 = this.d;
                checkedTextView.setPadding(i3, 0, i3, 0);
            }
            checkedTextView.setTypeface(Typeface.create(Typeface.SANS_SERIF, getResources().getInteger(R.integer.OSSemiBoldWeight), false));
            checkedTextView.setOnClickListener(new a(i2));
            if (i2 == this.b.b) {
                checkedTextView.setChecked(true);
                checkedTextView.setTextAppearance(R.style.os_semibold_font);
            }
            this.b.addView(checkedTextView, layoutParams);
        }
    }

    public final void s(TextView textView, float f2) {
        String str;
        int iBreakText;
        if (textView == null || (str = (String) textView.getText()) == null) {
            return;
        }
        TextPaint paint = textView.getPaint();
        if (paint.measureText(str) <= f2 || (iBreakText = paint.breakText(str, 0, str.length(), true, f2, null)) <= 0) {
            return;
        }
        try {
            textView.setText(str.substring(0, iBreakText - 1) + FileTree.PARENT_DIR);
        } catch (StringIndexOutOfBoundsException e2) {
            Log.w("ViewPagerTabs", "OS ViewPagerTabs # breakTitleText() Catch Exception e = " + e2);
        }
    }

    public void setItemClickListener(g gVar) {
    }

    public void setLineColor(int i) {
        e eVar;
        if (this.c == null || (eVar = this.b) == null || eVar.f == null) {
            return;
        }
        this.b.f.setColor(this.c.getColor(i));
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.t = onPageChangeListener;
    }

    public void setOnScrollListener(View.OnScrollChangeListener onScrollChangeListener) {
        this.u = onScrollChangeListener;
    }

    public void setSelectTextColor(int i) {
    }

    public void setSelectedTabColors(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        int length = iArr.length;
        int i = this.o;
        if (i != -1 && length != i) {
            length = i;
        }
        if (this.l == null) {
            this.l = new int[length];
        }
        int i2 = 0;
        while (i2 < length) {
            this.l[i2] = i2 <= iArr.length - 1 ? iArr[i2] : -1;
            i2++;
        }
        this.m = true;
        this.b.invalidate();
    }

    public void setTabBalanced(boolean z) {
        this.n = z;
    }

    public void setTabChildEnable(boolean z) {
        try {
            e eVar = this.b;
            if (eVar != null) {
                int childCount = eVar.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    this.b.getChildAt(i).setFocusable(false);
                    this.b.getChildAt(i).setEnabled(z);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setTabHeight(int i) {
        if (this.b == null) {
            return;
        }
        this.f = (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.f;
            this.b.setLayoutParams(layoutParams);
        } else {
            this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, this.f));
        }
    }

    public void setTabs(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null || charSequenceArr.length == 0) {
            return;
        }
        int length = charSequenceArr.length;
        this.o = length;
        int[] iArr = this.l;
        if (iArr != null && iArr.length != length) {
            int[] iArr2 = new int[length];
            int i = 0;
            while (i < this.o) {
                int[] iArr3 = this.l;
                iArr2[i] = i <= iArr3.length + (-1) ? iArr3[i] : -1;
                i++;
            }
            this.l = iArr2;
        }
        r(charSequenceArr);
        setHorizontalScrollBarEnabled(false);
    }

    public void setTitleTabEnable(int i, boolean z) {
        e eVar = this.b;
        if (eVar != null) {
            int childCount = eVar.getChildCount();
            if (i < 0 || i >= childCount) {
                return;
            }
            this.b.getChildAt(i).setEnabled(z);
        }
    }

    public void setUnSelectTextColor(int i) {
    }

    public void setUnreadTip(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        this.p = iArr;
        e eVar = this.b;
        if (eVar != null) {
            eVar.invalidate();
        }
    }

    public void setViewPager(ViewPager viewPager) {
        this.s = viewPager;
        getViewTreeObserver().addOnGlobalLayoutListener(new b(viewPager));
    }

    public final void t(int i) {
        if (i < 2 || i > 4) {
            this.n = false;
        }
    }

    public final int u(int i) {
        return (int) TypedValue.applyDimension(1, i, this.c.getResources().getDisplayMetrics());
    }

    public final int v(int i) {
        return this.h ? (this.b.getChildCount() - 1) - i : i;
    }

    public final void w(AttributeSet attributeSet) {
        Resources resources = getResources();
        this.c.getTheme();
        this.d = resources.getDimensionPixelOffset(R.dimen.os_viewpager_tab_text_padding);
        this.e = resources.getDimensionPixelOffset(R.dimen.os_viewpager_average_tab_text_padding);
        this.f = resources.getDimensionPixelOffset(R.dimen.os_tab_height);
        this.g = resources.getDimensionPixelOffset(R.dimen.os_foot_bar_line_height);
        this.x = this.c.getResources().getDisplayMetrics().widthPixels;
        this.v = u(16);
        this.w = this.x - u(16);
        this.x -= this.v * 2;
        TypedArray typedArrayObtainStyledAttributes = this.c.obtainStyledAttributes(attributeSet, R.styleable.ViewPagerTabs);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ViewPagerTabs_osTabHeight, this.f);
        typedArrayObtainStyledAttributes.recycle();
        this.b = new e(this.c);
        this.q = (int) (resources.getDisplayMetrics().density * 3.0f);
        Paint paint = new Paint();
        this.r = paint;
        paint.setAntiAlias(true);
        this.r.setColor(SupportMenu.CATEGORY_MASK);
        TypedArray typedArrayObtainStyledAttributes2 = this.c.obtainStyledAttributes(new int[]{R.attr.OsBgPrimary});
        setBackgroundColor(typedArrayObtainStyledAttributes2.getColor(0, ContextCompat.getColor(this.c, R.color.os_bg_primary_color)));
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final boolean x() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public final float y(TextView textView) {
        return textView.getPaint().measureText((String) textView.getText());
    }

    public final void z(int i) {
        onPageScrollStateChanged(i);
    }

    public ViewPagerTabs(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new int[2];
        this.k = new int[2];
        this.o = -1;
        this.p = new int[0];
        this.c = context;
        w(attributeSet);
        this.h = x();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f);
        int i = this.v;
        layoutParams.setMargins(i, 0, i, 0);
        addView(this.b, layoutParams);
        setFillViewport(true);
    }

    public void setViewPager(ViewPager viewPager, int i) {
        this.s = viewPager;
        getViewTreeObserver().addOnGlobalLayoutListener(new c(viewPager, i));
    }
}

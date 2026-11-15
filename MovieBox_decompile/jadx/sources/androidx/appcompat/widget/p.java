package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

class p {

    private static final RectF f1776l = new RectF();

    private static ConcurrentHashMap f1777m = new ConcurrentHashMap();

    private int f1778a = 0;

    private boolean f1779b = false;

    private float f1780c = -1.0f;

    private float f1781d = -1.0f;

    private float f1782e = -1.0f;

    private int[] f1783f = new int[0];

    private boolean f1784g = false;

    private TextPaint f1785h;

    private final TextView f1786i;

    private final Context f1787j;

    private final d f1788k;

    private static final class a {
        @NonNull
        static StaticLayout a(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i10, int i11, @NonNull TextView textView, @NonNull TextPaint textPaint, @NonNull d dVar) {
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i10);
            StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i11 == -1) {
                i11 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i11);
            try {
                dVar.a(builderObtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return builderObtain.build();
        }
    }

    private static class b extends d {
        b() {
        }

        @Override
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) p.m(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    private static class c extends b {
        c() {
        }

        @Override
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    private static class d {
        d() {
        }

        abstract void a(StaticLayout.Builder builder, TextView textView);

        boolean b(TextView textView) {
            return ((Boolean) p.m(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    p(TextView textView) {
        this.f1786i = textView;
        this.f1787j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1788k = new c();
        } else {
            this.f1788k = new b();
        }
    }

    private int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    private void c() {
        this.f1778a = 0;
        this.f1781d = -1.0f;
        this.f1782e = -1.0f;
        this.f1780c = -1.0f;
        this.f1783f = new int[0];
        this.f1779b = false;
    }

    private int e(RectF rectF) {
        int length = this.f1783f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i10 = 1;
        int i11 = length - 1;
        int i12 = 0;
        while (i10 <= i11) {
            int i13 = (i10 + i11) / 2;
            if (x(this.f1783f[i13], rectF)) {
                int i14 = i13 + 1;
                i12 = i10;
                i10 = i14;
            } else {
                i12 = i13 - 1;
                i11 = i12;
            }
        }
        return this.f1783f[i12];
    }

    private static Method k(String str) {
        try {
            Method declaredMethod = (Method) f1777m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                f1777m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e10);
            return null;
        }
    }

    static Object m(Object obj, String str, Object obj2) {
        try {
            return k(str).invoke(obj, null);
        } catch (Exception e10) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e10);
            return obj2;
        }
    }

    private void s(float f10) {
        if (f10 != this.f1786i.getPaint().getTextSize()) {
            this.f1786i.getPaint().setTextSize(f10);
            boolean zIsInLayout = this.f1786i.isInLayout();
            if (this.f1786i.getLayout() != null) {
                this.f1779b = false;
                try {
                    Method methodK = k("nullLayouts");
                    if (methodK != null) {
                        methodK.invoke(this.f1786i, null);
                    }
                } catch (Exception e10) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e10);
                }
                if (zIsInLayout) {
                    this.f1786i.forceLayout();
                } else {
                    this.f1786i.requestLayout();
                }
                this.f1786i.invalidate();
            }
        }
    }

    private boolean u() {
        if (y() && this.f1778a == 1) {
            if (!this.f1784g || this.f1783f.length == 0) {
                int iFloor = ((int) Math.floor((this.f1782e - this.f1781d) / this.f1780c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i10 = 0; i10 < iFloor; i10++) {
                    iArr[i10] = Math.round(this.f1781d + (i10 * this.f1780c));
                }
                this.f1783f = b(iArr);
            }
            this.f1779b = true;
        } else {
            this.f1779b = false;
        }
        return this.f1779b;
    }

    private void v(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = typedArray.getDimensionPixelSize(i10, -1);
            }
            this.f1783f = b(iArr);
            w();
        }
    }

    private boolean w() {
        int[] iArr = this.f1783f;
        int length = iArr.length;
        boolean z10 = length > 0;
        this.f1784g = z10;
        if (z10) {
            this.f1778a = 1;
            this.f1781d = iArr[0];
            this.f1782e = iArr[length - 1];
            this.f1780c = -1.0f;
        }
        return z10;
    }

    private boolean x(int i10, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1786i.getText();
        TransformationMethod transformationMethod = this.f1786i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1786i)) != null) {
            text = transformation;
        }
        int maxLines = this.f1786i.getMaxLines();
        l(i10);
        StaticLayout staticLayoutD = d(text, (Layout.Alignment) m(this.f1786i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutD.getLineCount() <= maxLines && staticLayoutD.getLineEnd(staticLayoutD.getLineCount() - 1) == text.length())) && ((float) staticLayoutD.getHeight()) <= rectF.bottom;
    }

    private boolean y() {
        return !(this.f1786i instanceof AppCompatEditText);
    }

    private void z(float f10, float f11, float f12) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
        }
        this.f1778a = 1;
        this.f1781d = f10;
        this.f1782e = f11;
        this.f1780c = f12;
        this.f1784g = false;
    }

    void a() {
        if (n()) {
            if (this.f1779b) {
                if (this.f1786i.getMeasuredHeight() <= 0 || this.f1786i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1788k.b(this.f1786i) ? 1048576 : (this.f1786i.getMeasuredWidth() - this.f1786i.getTotalPaddingLeft()) - this.f1786i.getTotalPaddingRight();
                int height = (this.f1786i.getHeight() - this.f1786i.getCompoundPaddingBottom()) - this.f1786i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f1776l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fE = e(rectF);
                        if (fE != this.f1786i.getTextSize()) {
                            t(0, fE);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            this.f1779b = true;
        }
    }

    StaticLayout d(CharSequence charSequence, Layout.Alignment alignment, int i10, int i11) {
        return a.a(charSequence, alignment, i10, i11, this.f1786i, this.f1785h, this.f1788k);
    }

    int f() {
        return Math.round(this.f1782e);
    }

    int g() {
        return Math.round(this.f1781d);
    }

    int h() {
        return Math.round(this.f1780c);
    }

    int[] i() {
        return this.f1783f;
    }

    int j() {
        return this.f1778a;
    }

    void l(int i10) {
        TextPaint textPaint = this.f1785h;
        if (textPaint == null) {
            this.f1785h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1785h.set(this.f1786i.getPaint());
        this.f1785h.setTextSize(i10);
    }

    boolean n() {
        return y() && this.f1778a != 0;
    }

    void o(AttributeSet attributeSet, int i10) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f1787j.obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        TextView textView = this.f1786i;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R$styleable.AppCompatTextView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeTextType)) {
            this.f1778a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            v(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!y()) {
            this.f1778a = 0;
            return;
        }
        if (this.f1778a == 1) {
            if (!this.f1784g) {
                DisplayMetrics displayMetrics = this.f1787j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                z(dimension2, dimension3, dimension);
            }
            u();
        }
    }

    void p(int i10, int i11, int i12, int i13) {
        if (y()) {
            DisplayMetrics displayMetrics = this.f1787j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (u()) {
                a();
            }
        }
    }

    void q(int[] iArr, int i10) {
        if (y()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i10 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1787j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArrCopyOf[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                this.f1783f = b(iArrCopyOf);
                if (!w()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1784g = false;
            }
            if (u()) {
                a();
            }
        }
    }

    void r(int i10) {
        if (y()) {
            if (i10 == 0) {
                c();
                return;
            }
            if (i10 != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i10);
            }
            DisplayMetrics displayMetrics = this.f1787j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (u()) {
                a();
            }
        }
    }

    void t(int i10, float f10) {
        Context context = this.f1787j;
        s(TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}

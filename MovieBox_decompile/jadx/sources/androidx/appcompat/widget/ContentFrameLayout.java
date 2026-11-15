package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ContentFrameLayout extends FrameLayout {

    private TypedValue f1434a;

    private TypedValue f1435b;

    private TypedValue f1436c;

    private TypedValue f1437d;

    private TypedValue f1438e;

    private TypedValue f1439f;

    private final Rect f1440g;

    private a f1441h;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1438e == null) {
            this.f1438e = new TypedValue();
        }
        return this.f1438e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1439f == null) {
            this.f1439f = new TypedValue();
        }
        return this.f1439f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1436c == null) {
            this.f1436c = new TypedValue();
        }
        return this.f1436c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1437d == null) {
            this.f1437d = new TypedValue();
        }
        return this.f1437d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1434a == null) {
            this.f1434a = new TypedValue();
        }
        return this.f1434a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1435b == null) {
            this.f1435b = new TypedValue();
        }
        return this.f1435b;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f1441h;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f1441h;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00db  */
    @Override
    protected void onMeasure(int i10, int i11) {
        boolean z10;
        int i12;
        int i13;
        float fraction;
        int i14;
        int i15;
        float fraction2;
        int i16;
        int i17;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z11 = true;
        boolean z12 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode != Integer.MIN_VALUE) {
            z10 = false;
        } else {
            TypedValue typedValue = z12 ? this.f1437d : this.f1436c;
            if (typedValue == null || (i16 = typedValue.type) == 0) {
                z10 = false;
            } else {
                if (i16 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i16 == 6) {
                        int i18 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i18, i18);
                    } else {
                        i17 = 0;
                    }
                    if (i17 > 0) {
                        Rect rect = this.f1440g;
                        i10 = View.MeasureSpec.makeMeasureSpec(Math.min(i17 - (rect.left + rect.right), View.MeasureSpec.getSize(i10)), 1073741824);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                i17 = (int) fraction3;
                if (i17 > 0) {
                    Rect rect2 = this.f1440g;
                    i10 = View.MeasureSpec.makeMeasureSpec(Math.min(i17 - (rect2.left + rect2.right), View.MeasureSpec.getSize(i10)), 1073741824);
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z12 ? this.f1438e : this.f1439f;
            if (typedValue2 != null && (i14 = typedValue2.type) != 0) {
                if (i14 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i14 == 6) {
                        int i19 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i19, i19);
                    } else {
                        i15 = 0;
                    }
                    if (i15 > 0) {
                        Rect rect3 = this.f1440g;
                        i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect3.top + rect3.bottom), View.MeasureSpec.getSize(i11)), 1073741824);
                    }
                }
                i15 = (int) fraction2;
                if (i15 > 0) {
                    Rect rect4 = this.f1440g;
                    i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect4.top + rect4.bottom), View.MeasureSpec.getSize(i11)), 1073741824);
                }
            }
        }
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z10 || mode != Integer.MIN_VALUE) {
            z11 = false;
        } else {
            TypedValue typedValue3 = z12 ? this.f1435b : this.f1434a;
            if (typedValue3 == null || (i12 = typedValue3.type) == 0) {
                z11 = false;
            } else {
                if (i12 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i12 == 6) {
                        int i20 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i20, i20);
                    } else {
                        i13 = 0;
                    }
                    if (i13 > 0) {
                        Rect rect5 = this.f1440g;
                        i13 -= rect5.left + rect5.right;
                    }
                    if (measuredWidth < i13) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                    } else {
                        z11 = false;
                    }
                }
                i13 = (int) fraction;
                if (i13 > 0) {
                    Rect rect6 = this.f1440g;
                    i13 -= rect6.left + rect6.right;
                }
                if (measuredWidth < i13) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                } else {
                    z11 = false;
                }
            }
        }
        if (z11) {
            super.onMeasure(iMakeMeasureSpec, i11);
        }
    }

    public void setAttachListener(a aVar) {
        this.f1441h = aVar;
    }

    public void setDecorPadding(int i10, int i11, int i12, int i13) {
        this.f1440g.set(i10, i11, i12, i13);
        if (isLaidOut()) {
            requestLayout();
        }
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1440g = new Rect();
    }
}

package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import com.tn.lib.widget.R$styleable;
import java.util.ArrayList;
import java.util.List;

public class FlowLayout extends ViewGroup {
    public static final int SPACING_ALIGN = -65537;
    public static final int SPACING_AUTO = -65536;

    private boolean f39953a;

    private int f39954b;

    private int f39955c;

    private int f39956d;

    private float f39957e;

    private float f39958f;

    private boolean f39959g;

    private int f39960h;

    private int f39961i;

    private int f39962j;

    private int f39963k;

    private List f39964l;

    private List f39965m;

    private List f39966n;

    private List f39967o;

    public FlowLayout(Context context) {
        this(context, null);
    }

    private float a(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    private int b(TypedArray typedArray, int i10, int i11) {
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i10, typedValue);
        return typedValue.type == 5 ? typedArray.getDimensionPixelSize(i10, i11) : typedArray.getInt(i10, i11);
    }

    private int c(int i10, int i11, int i12, int i13) {
        if (this.f39954b == -65536 || i13 >= this.f39966n.size() || i13 >= this.f39967o.size() || ((Integer) this.f39967o.get(i13)).intValue() <= 0) {
            return 0;
        }
        if (i10 == 1) {
            return ((i11 - i12) - ((Integer) this.f39966n.get(i13)).intValue()) / 2;
        }
        if (i10 != 5) {
            return 0;
        }
        return (i11 - i12) - ((Integer) this.f39966n.get(i13)).intValue();
    }

    private float d(int i10, int i11, int i12, int i13) {
        if (i10 != -65536) {
            return i10;
        }
        if (i13 > 1) {
            return (i11 - i12) / (i13 - 1);
        }
        return 0.0f;
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getChildSpacing() {
        return this.f39954b;
    }

    public int getChildSpacingForLastRow() {
        return this.f39956d;
    }

    public int getCountInRow(int i10) {
        return ((Integer) this.f39967o.get(i10)).intValue();
    }

    public int getMaxRows() {
        return this.f39960h;
    }

    public int getMinChildSpacing() {
        return this.f39955c;
    }

    public float getRowSpacing() {
        return this.f39957e;
    }

    public int getRowsCount() {
        return this.f39967o.size();
    }

    public boolean isFlow() {
        return this.f39953a;
    }

    public boolean isRtl() {
        return this.f39959g;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0144  */
    /* JADX WARN: Code duplicated, block: B:44:0x014a  */
    /* JADX WARN: Code duplicated, block: B:48:0x0174  */
    /* JADX WARN: Code duplicated, block: B:50:0x0180  */
    /* JADX WARN: Code duplicated, block: B:51:0x0182  */
    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int iC;
        int i17;
        int size;
        int i18;
        int i19;
        View childAt;
        int iIntValue;
        int i20;
        int width;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        float f10;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int width2 = this.f39959g ? getWidth() - paddingRight : paddingLeft;
        int i27 = this.f39961i;
        int i28 = i27 & 112;
        int i29 = i27 & 7;
        if (i28 != 16) {
            if (i28 == 80) {
                i14 = (((i13 - i11) - paddingTop) - paddingBottom) - this.f39963k;
            }
            i15 = paddingLeft + paddingRight;
            i16 = i12 - i10;
            iC = width2 + c(i29, i16, i15, 0);
            i17 = this.f39962j & 112;
            size = this.f39967o.size();
            i18 = 0;
            i19 = 0;
            while (i18 < Math.min(size, this.f39960h)) {
                iIntValue = ((Integer) this.f39967o.get(i18)).intValue();
                int iIntValue2 = ((Integer) this.f39965m.get(i18)).intValue();
                float fFloatValue = ((Float) this.f39964l.get(i18)).floatValue();
                i20 = 0;
                while (true) {
                    paddingLeft = paddingLeft;
                    if (i20 >= iIntValue || i19 >= getChildCount()) {
                        break;
                    }
                    int i30 = i19 + 1;
                    View childAt2 = getChildAt(i19);
                    i19 = i30;
                    size = size;
                    if (childAt2.getVisibility() != 8) {
                        int i31 = i20 + 1;
                        ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            int i32 = marginLayoutParams.leftMargin;
                            int i33 = marginLayoutParams.rightMargin;
                            i23 = marginLayoutParams.topMargin;
                            i22 = marginLayoutParams.bottomMargin;
                            int i34 = iIntValue;
                            i25 = i32;
                            i24 = i33;
                            i21 = i34;
                        } else {
                            i21 = iIntValue;
                            i22 = 0;
                            i23 = 0;
                            i24 = 0;
                            i25 = 0;
                        }
                        int measuredWidth = childAt2.getMeasuredWidth();
                        int measuredHeight = childAt2.getMeasuredHeight();
                        int i35 = paddingTop + i23;
                        int i36 = i29;
                        if (i17 == 80) {
                            i26 = ((paddingTop + iIntValue2) - i22) - measuredHeight;
                        } else {
                            if (i17 == 16) {
                                i35 += (((iIntValue2 - i23) - i22) - measuredHeight) / 2;
                            }
                            i26 = i35;
                        }
                        int i37 = i26 + measuredHeight;
                        if (this.f39959g) {
                            int i38 = iC - i24;
                            childAt2.layout(i38 - measuredWidth, i26, i38, i37);
                            f10 = iC - (((measuredWidth + fFloatValue) + i25) + i24);
                        } else {
                            int i39 = iC + i25;
                            childAt2.layout(i39, i26, i39 + measuredWidth, i37);
                            f10 = iC + measuredWidth + fFloatValue + i25 + i24;
                        }
                        iC = (int) f10;
                        i20 = i31;
                        iIntValue = i21;
                        i15 = i15;
                        i17 = i17;
                        i29 = i36;
                    }
                }
                int i40 = i15;
                int i41 = i29;
                int i42 = i17;
                int i43 = size;
                if (this.f39959g) {
                    width = getWidth() - paddingRight;
                } else {
                    width = paddingLeft;
                }
                i18++;
                int iC2 = width + c(i41, i16, i40, i18);
                paddingTop = (int) (paddingTop + iIntValue2 + this.f39958f);
                size = i43;
                i29 = i41;
                i15 = i40;
                i17 = i42;
                iC = iC2;
                paddingLeft = paddingLeft;
            }
            while (i19 < getChildCount()) {
                childAt = getChildAt(i19);
                if (childAt.getVisibility() == 8) {
                    childAt.layout(0, 0, 0, 0);
                }
                i19++;
            }
        }
        i14 = ((((i13 - i11) - paddingTop) - paddingBottom) - this.f39963k) / 2;
        paddingTop += i14;
        i15 = paddingLeft + paddingRight;
        i16 = i12 - i10;
        iC = width2 + c(i29, i16, i15, 0);
        i17 = this.f39962j & 112;
        size = this.f39967o.size();
        i18 = 0;
        i19 = 0;
        while (i18 < Math.min(size, this.f39960h)) {
            iIntValue = ((Integer) this.f39967o.get(i18)).intValue();
            int iIntValue3 = ((Integer) this.f39965m.get(i18)).intValue();
            float fFloatValue2 = ((Float) this.f39964l.get(i18)).floatValue();
            i20 = 0;
            while (true) {
                paddingLeft = paddingLeft;
                if (i20 >= iIntValue) {
                    break;
                }
                break;
                break;
            }
            int i44 = i15;
            int i45 = i29;
            int i46 = i17;
            int i47 = size;
            if (this.f39959g) {
                width = getWidth() - paddingRight;
            } else {
                width = paddingLeft;
            }
            i18++;
            int iC3 = width + c(i45, i16, i44, i18);
            paddingTop = (int) (paddingTop + iIntValue3 + this.f39958f);
            size = i47;
            i29 = i45;
            i15 = i44;
            i17 = i46;
            iC = iC3;
            paddingLeft = paddingLeft;
        }
        while (i19 < getChildCount()) {
            childAt = getChildAt(i19);
            if (childAt.getVisibility() == 8) {
                childAt.layout(0, 0, 0, 0);
            }
            i19++;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int i12;
        int iMin;
        int i13;
        int i14;
        View view;
        int i15;
        int i16;
        int measuredWidth;
        int i17;
        int i18;
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        this.f39964l.clear();
        this.f39965m.clear();
        this.f39966n.clear();
        this.f39967o.clear();
        int childCount = getChildCount();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        boolean z10 = mode != 0 && this.f39953a;
        int i19 = this.f39954b;
        int i20 = SPACING_AUTO;
        int i21 = (i19 == -65536 && mode == 0) ? 0 : i19;
        float f10 = i21 == -65536 ? this.f39955c : i21;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int iMax = 0;
        int i25 = 0;
        int i26 = 0;
        int iMax2 = 0;
        while (i24 < childCount) {
            float f11 = f10;
            View childAt = getChildAt(i24);
            int i27 = i22;
            if (childAt.getVisibility() == 8) {
                i24 = i24;
                i17 = i21;
                mode = mode;
                mode2 = mode2;
                childCount = childCount;
                f11 = f11;
                i18 = i27;
                i14 = SPACING_AUTO;
                measuredWidth = i23;
                size = size;
                size2 = size2;
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    view = childAt;
                    i14 = SPACING_AUTO;
                    measureChildWithMargins(childAt, i10, 0, i11, i26);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i15 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                    i16 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    i14 = SPACING_AUTO;
                    view = childAt;
                    measureChild(view, i10, i11);
                    i15 = 0;
                    i16 = 0;
                }
                measuredWidth = i15 + view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight() + i16;
                if (!z10 || i25 + measuredWidth <= paddingLeft) {
                    i17 = i21;
                    i18 = i27 + 1;
                    i25 = (int) (i25 + measuredWidth + f11);
                    measuredWidth += i23;
                    iMax2 = Math.max(iMax2, measuredHeight);
                } else {
                    i17 = i21;
                    this.f39964l.add(Float.valueOf(d(i17, paddingLeft, i23, i27)));
                    this.f39967o.add(Integer.valueOf(i27));
                    this.f39965m.add(Integer.valueOf(iMax2));
                    int i28 = (int) f11;
                    this.f39966n.add(Integer.valueOf(i25 - i28));
                    if (this.f39964l.size() <= this.f39960h) {
                        i26 += iMax2;
                    }
                    iMax = Math.max(iMax, i25);
                    i25 = measuredWidth + i28;
                    iMax2 = measuredHeight;
                    i18 = 1;
                }
            }
            i23 = measuredWidth;
            i22 = i18;
            i24++;
            i21 = i17;
            i20 = i14;
            f10 = f11;
            size = size;
            size2 = size2;
            mode = mode;
            childCount = childCount;
            mode2 = mode2;
        }
        int i29 = i22;
        int i30 = size;
        int i31 = mode;
        int i32 = size2;
        int i33 = mode2;
        int i34 = iMax2;
        int i35 = i23;
        float f12 = f10;
        int i36 = i20;
        int i37 = i21;
        int i38 = this.f39956d;
        if (i38 == -65537) {
            if (this.f39964l.size() >= 1) {
                List list = this.f39964l;
                list.add((Float) list.get(list.size() - 1));
            } else {
                this.f39964l.add(Float.valueOf(d(i37, paddingLeft, i35, i29)));
            }
        } else if (i38 != -65538) {
            this.f39964l.add(Float.valueOf(d(i38, paddingLeft, i35, i29)));
        } else {
            this.f39964l.add(Float.valueOf(d(i37, paddingLeft, i35, i29)));
        }
        this.f39967o.add(Integer.valueOf(i29));
        this.f39965m.add(Integer.valueOf(i34));
        this.f39966n.add(Integer.valueOf(i25 - ((int) f12)));
        if (this.f39964l.size() <= this.f39960h) {
            i26 += i34;
        }
        int iMax3 = Math.max(iMax, i25);
        if (i37 == i36) {
            iMin = i30;
            i12 = iMin;
        } else if (i31 == 0) {
            iMin = iMax3 + getPaddingLeft() + getPaddingRight();
            i12 = i30;
        } else {
            i12 = i30;
            iMin = Math.min(iMax3 + getPaddingLeft() + getPaddingRight(), i12);
        }
        int paddingTop = i26 + getPaddingTop() + getPaddingBottom();
        int iMin2 = Math.min(this.f39964l.size(), this.f39960h);
        float f13 = this.f39957e;
        if (f13 == -65536.0f && i33 == 0) {
            f13 = 0.0f;
        }
        if (f13 == -65536.0f) {
            if (iMin2 > 1) {
                this.f39958f = (i32 - paddingTop) / (iMin2 - 1);
            } else {
                this.f39958f = 0.0f;
            }
            paddingTop = i32;
            i13 = paddingTop;
        } else {
            this.f39958f = f13;
            if (iMin2 <= 1) {
                i13 = i32;
            } else if (i33 == 0) {
                paddingTop = (int) (paddingTop + (f13 * (iMin2 - 1)));
                i13 = i32;
            } else {
                int i39 = (int) (paddingTop + (f13 * (iMin2 - 1)));
                i13 = i32;
                paddingTop = Math.min(i39, i13);
            }
        }
        this.f39963k = paddingTop;
        setMeasuredDimension(i31 == 1073741824 ? i12 : iMin, i33 == 1073741824 ? i13 : paddingTop);
    }

    public void setChildSpacing(int i10) {
        this.f39954b = i10;
        requestLayout();
    }

    public void setChildSpacingForLastRow(int i10) {
        this.f39956d = i10;
        requestLayout();
    }

    public void setFlow(boolean z10) {
        this.f39953a = z10;
        requestLayout();
    }

    public void setGravity(int i10) {
        if (this.f39961i != i10) {
            this.f39961i = i10;
            requestLayout();
        }
    }

    public void setMaxRows(int i10) {
        this.f39960h = i10;
        requestLayout();
    }

    public void setMinChildSpacing(int i10) {
        this.f39955c = i10;
        requestLayout();
    }

    public void setRowSpacing(float f10) {
        this.f39957e = f10;
        requestLayout();
    }

    public void setRowVerticalGravity(int i10) {
        if (this.f39962j != i10) {
            this.f39962j = i10;
            requestLayout();
        }
    }

    public void setRtl(boolean z10) {
        this.f39959g = z10;
        requestLayout();
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39953a = true;
        this.f39954b = 0;
        this.f39955c = 0;
        this.f39956d = -65538;
        this.f39957e = 0.0f;
        this.f39958f = 0.0f;
        this.f39959g = false;
        this.f39960h = Integer.MAX_VALUE;
        this.f39961i = -1;
        this.f39962j = SPACING_AUTO;
        this.f39964l = new ArrayList();
        this.f39965m = new ArrayList();
        this.f39966n = new ArrayList();
        this.f39967o = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.FlowLayout, 0, 0);
        try {
            this.f39953a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlowLayout_flFlow, true);
            this.f39954b = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flChildSpacing, (int) a(0.0f));
            this.f39955c = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flMinChildSpacing, (int) a(0.0f));
            this.f39956d = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flChildSpacingForLastRow, -65538);
            this.f39957e = b(typedArrayObtainStyledAttributes, R$styleable.FlowLayout_flRowSpacing, (int) a(0.0f));
            this.f39960h = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_flMaxRows, Integer.MAX_VALUE);
            this.f39959g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlowLayout_flRtl, false);
            this.f39961i = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_android_gravity, -1);
            this.f39962j = typedArrayObtainStyledAttributes.getInt(R$styleable.FlowLayout_flRowVerticalGravity, SPACING_AUTO);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }
}

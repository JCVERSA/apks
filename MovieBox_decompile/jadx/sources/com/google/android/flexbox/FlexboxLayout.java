package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FlexboxLayout extends ViewGroup implements a {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;

    private int f27249a;

    private int f27250b;

    private int f27251c;

    private int f27252d;

    private int f27253e;

    private int f27254f;

    private Drawable f27255g;

    private Drawable f27256h;

    private int f27257i;

    private int f27258j;

    private int f27259k;

    private int f27260l;

    private int[] f27261m;

    private SparseIntArray f27262n;

    private c f27263o;

    private List f27264p;

    private c.b f27265q;

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    private boolean a(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (((b) this.f27264p.get(i11)).c() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean b(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View reorderedChildAt = getReorderedChildAt(i10 - i12);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void c(Canvas canvas, boolean z10, boolean z11) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f27264p.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f27264p.get(i10);
            for (int i11 = 0; i11 < bVar.f27317h; i11++) {
                int i12 = bVar.f27324o + i11;
                View reorderedChildAt = getReorderedChildAt(i12);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i12, i11)) {
                        f(canvas, z10 ? reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f27260l, bVar.f27311b, bVar.f27316g);
                    }
                    if (i11 == bVar.f27317h - 1 && (this.f27258j & 4) > 0) {
                        f(canvas, z10 ? (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f27260l : reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, bVar.f27311b, bVar.f27316g);
                    }
                }
            }
            if (h(i10)) {
                e(canvas, paddingLeft, z11 ? bVar.f27313d : bVar.f27311b - this.f27259k, iMax);
            }
            if (i(i10) && (this.f27257i & 4) > 0) {
                e(canvas, paddingLeft, z11 ? bVar.f27311b - this.f27259k : bVar.f27313d, iMax);
            }
        }
    }

    private void d(Canvas canvas, boolean z10, boolean z11) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f27264p.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f27264p.get(i10);
            for (int i11 = 0; i11 < bVar.f27317h; i11++) {
                int i12 = bVar.f27324o + i11;
                View reorderedChildAt = getReorderedChildAt(i12);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i12, i11)) {
                        e(canvas, bVar.f27310a, z11 ? reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f27259k, bVar.f27316g);
                    }
                    if (i11 == bVar.f27317h - 1 && (this.f27257i & 4) > 0) {
                        e(canvas, bVar.f27310a, z11 ? (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f27259k : reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, bVar.f27316g);
                    }
                }
            }
            if (h(i10)) {
                f(canvas, z10 ? bVar.f27312c : bVar.f27310a - this.f27260l, paddingTop, iMax);
            }
            if (i(i10) && (this.f27258j & 4) > 0) {
                f(canvas, z10 ? bVar.f27310a - this.f27260l : bVar.f27312c, paddingTop, iMax);
            }
        }
    }

    private void e(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f27255g;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.f27259k + i11);
        this.f27255g.draw(canvas);
    }

    private void f(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f27256h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.f27260l + i10, i12 + i11);
        this.f27256h.draw(canvas);
    }

    private boolean g(int i10, int i11) {
        if (b(i10, i11)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.f27258j & 1) != 0;
            }
            return (this.f27257i & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f27258j & 2) != 0;
        }
        return (this.f27257i & 2) != 0;
    }

    private boolean h(int i10) {
        if (i10 < 0 || i10 >= this.f27264p.size()) {
            return false;
        }
        if (a(i10)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.f27257i & 1) != 0;
            }
            return (this.f27258j & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f27257i & 2) != 0;
        }
        return (this.f27258j & 2) != 0;
    }

    private boolean i(int i10) {
        if (i10 < 0 || i10 >= this.f27264p.size()) {
            return false;
        }
        for (int i11 = i10 + 1; i11 < this.f27264p.size(); i11++) {
            if (((b) this.f27264p.get(i11)).c() > 0) {
                return false;
            }
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.f27257i & 4) != 0;
        }
        return (this.f27258j & 4) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00df  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x011b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0123  */
    /* JADX WARN: Code duplicated, block: B:55:0x0128  */
    /* JADX WARN: Code duplicated, block: B:59:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x0166  */
    /* JADX WARN: Code duplicated, block: B:62:0x0190  */
    /* JADX WARN: Code duplicated, block: B:64:0x019d  */
    /* JADX WARN: Code duplicated, block: B:65:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:69:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020f  */
    private void j(boolean z10, int i10, int i11, int i12, int i13) {
        float measuredWidth;
        float f10;
        float f11;
        float fMax;
        int i14;
        int i15;
        View reorderedChildAt;
        int i16;
        int i17;
        int i18;
        char c10;
        LayoutParams layoutParams;
        float f12;
        float f13;
        float f14;
        int i19;
        char c11;
        int i20;
        LayoutParams layoutParams2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i21 = i12 - i10;
        int paddingBottom = (i13 - i11) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.f27264p.size();
        int i22 = 0;
        while (i22 < size) {
            b bVar = (b) this.f27264p.get(i22);
            if (h(i22)) {
                int i23 = this.f27259k;
                paddingBottom -= i23;
                paddingTop += i23;
            }
            int i24 = this.f27251c;
            char c12 = 4;
            int i25 = 1;
            if (i24 == 0) {
                measuredWidth = paddingLeft;
                f10 = i21 - paddingRight;
            } else if (i24 != 1) {
                if (i24 == 2) {
                    int i26 = bVar.f27314e;
                    measuredWidth = paddingLeft + ((i21 - i26) / 2.0f);
                    f10 = (i21 - paddingRight) - ((i21 - i26) / 2.0f);
                } else if (i24 == 3) {
                    measuredWidth = paddingLeft;
                    int iC = bVar.c();
                    f11 = (i21 - bVar.f27314e) / (iC != 1 ? iC - 1 : 1.0f);
                    f10 = i21 - paddingRight;
                } else if (i24 == 4) {
                    int iC2 = bVar.c();
                    f11 = iC2 != 0 ? (i21 - bVar.f27314e) / iC2 : 0.0f;
                    float f15 = f11 / 2.0f;
                    measuredWidth = paddingLeft + f15;
                    f10 = (i21 - paddingRight) - f15;
                } else {
                    if (i24 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f27251c);
                    }
                    int iC3 = bVar.c();
                    f11 = iC3 != 0 ? (i21 - bVar.f27314e) / (iC3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f11;
                    f10 = (i21 - paddingRight) - f11;
                }
                fMax = Math.max(f11, 0.0f);
                i14 = 0;
                while (i14 < bVar.f27317h) {
                    i15 = bVar.f27324o + i14;
                    reorderedChildAt = getReorderedChildAt(i15);
                    if (reorderedChildAt != null) {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        c10 = c12;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        c10 = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f12 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        f13 = f10 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        if (g(i15, i14)) {
                            int i27 = this.f27260l;
                            float f16 = i27;
                            f12 += f16;
                            i19 = i27;
                            f14 = f13 - f16;
                        } else {
                            f14 = f13;
                            i19 = 0;
                        }
                        if (i14 == bVar.f27317h - i25) {
                            c11 = 4;
                            i20 = (this.f27258j & 4) > 0 ? this.f27260l : 0;
                            if (this.f27250b == 2) {
                                i16 = paddingLeft;
                                i17 = i25;
                                i18 = i14;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                if (z10) {
                                    this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + reorderedChildAt.getMeasuredHeight());
                                } else {
                                    this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingTop, Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z10) {
                                i17 = i25;
                                i18 = i14;
                                i16 = paddingLeft;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f14), paddingBottom);
                            } else {
                                i16 = paddingLeft;
                                i17 = i25;
                                i18 = i14;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                            }
                            measuredWidth = f12 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            float measuredWidth2 = f14 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                            if (z10) {
                                bVar.d(reorderedChildAt, i20, 0, i19, 0);
                            } else {
                                bVar.d(reorderedChildAt, i19, 0, i20, 0);
                            }
                            f10 = measuredWidth2;
                        } else {
                            c11 = 4;
                        }
                        if (this.f27250b == 2) {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            if (z10) {
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingTop, Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i17 = i25;
                            i18 = i14;
                            i16 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f14), paddingBottom);
                        } else {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f12 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth3 = f14 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z10) {
                            bVar.d(reorderedChildAt, i20, 0, i19, 0);
                        } else {
                            bVar.d(reorderedChildAt, i19, 0, i20, 0);
                        }
                        f10 = measuredWidth3;
                    }
                    i14 = i18 + 1;
                    c12 = c10;
                    i25 = i17;
                    paddingLeft = i16;
                }
                int i28 = paddingLeft;
                int i29 = bVar.f27316g;
                paddingTop += i29;
                paddingBottom -= i29;
                i22++;
                paddingLeft = i28;
            } else {
                int i30 = bVar.f27314e;
                f10 = i30 - paddingLeft;
                measuredWidth = (i21 - i30) + paddingRight;
            }
            f11 = 0.0f;
            fMax = Math.max(f11, 0.0f);
            i14 = 0;
            while (i14 < bVar.f27317h) {
                i15 = bVar.f27324o + i14;
                reorderedChildAt = getReorderedChildAt(i15);
                if (reorderedChildAt != null) {
                    i16 = paddingLeft;
                    i17 = i25;
                    i18 = i14;
                    c10 = c12;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i16 = paddingLeft;
                    i17 = i25;
                    i18 = i14;
                    c10 = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f12 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    f13 = f10 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    if (g(i15, i14)) {
                        int i210 = this.f27260l;
                        float f17 = i210;
                        f12 += f17;
                        i19 = i210;
                        f14 = f13 - f17;
                    } else {
                        f14 = f13;
                        i19 = 0;
                    }
                    if (i14 == bVar.f27317h - i25) {
                        c11 = 4;
                        if ((this.f27258j & 4) > 0) {
                        }
                        if (this.f27250b == 2) {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            if (z10) {
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingTop, Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i17 = i25;
                            i18 = i14;
                            i16 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f14), paddingBottom);
                        } else {
                            i16 = paddingLeft;
                            i17 = i25;
                            i18 = i14;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f12 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth4 = f14 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z10) {
                            bVar.d(reorderedChildAt, i20, 0, i19, 0);
                        } else {
                            bVar.d(reorderedChildAt, i19, 0, i20, 0);
                        }
                        f10 = measuredWidth4;
                    } else {
                        c11 = 4;
                    }
                    if (this.f27250b == 2) {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        if (z10) {
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f14), paddingTop + reorderedChildAt.getMeasuredHeight());
                        } else {
                            this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingTop, Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z10) {
                        i17 = i25;
                        i18 = i14;
                        i16 = paddingLeft;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        this.f27263o.Q(reorderedChildAt, bVar, Math.round(f14) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f14), paddingBottom);
                    } else {
                        i16 = paddingLeft;
                        i17 = i25;
                        i18 = i14;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        this.f27263o.Q(reorderedChildAt, bVar, Math.round(f12), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f12) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                    }
                    measuredWidth = f12 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    float measuredWidth5 = f14 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                    if (z10) {
                        bVar.d(reorderedChildAt, i20, 0, i19, 0);
                    } else {
                        bVar.d(reorderedChildAt, i19, 0, i20, 0);
                    }
                    f10 = measuredWidth5;
                }
                i14 = i18 + 1;
                c12 = c10;
                i25 = i17;
                paddingLeft = i16;
            }
            int i211 = paddingLeft;
            int i212 = bVar.f27316g;
            paddingTop += i212;
            paddingBottom -= i212;
            i22++;
            paddingLeft = i211;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:53:0x011a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0122  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:59:0x012d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x012f  */
    /* JADX WARN: Code duplicated, block: B:61:0x015e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Code duplicated, block: B:64:0x0190  */
    /* JADX WARN: Code duplicated, block: B:65:0x01af  */
    /* JADX WARN: Code duplicated, block: B:68:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:69:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:71:0x0207  */
    private void k(boolean z10, boolean z11, int i10, int i11, int i12, int i13) {
        float f10;
        int i14;
        float f11;
        float f12;
        float fMax;
        int i15;
        int i16;
        View reorderedChildAt;
        int i17;
        boolean z12;
        char c10;
        LayoutParams layoutParams;
        float f13;
        float f14;
        float f15;
        float f16;
        int i18;
        char c11;
        int i19;
        LayoutParams layoutParams2;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i20 = i13 - i11;
        int i21 = (i12 - i10) - paddingRight;
        int size = this.f27264p.size();
        for (int i22 = 0; i22 < size; i22++) {
            b bVar = (b) this.f27264p.get(i22);
            if (h(i22)) {
                int i23 = this.f27260l;
                paddingLeft += i23;
                i21 -= i23;
            }
            int i24 = this.f27251c;
            char c12 = 4;
            boolean z13 = true;
            if (i24 != 0) {
                if (i24 == 1) {
                    int i25 = bVar.f27314e;
                    f10 = (i20 - i25) + paddingBottom;
                    i14 = i25 - paddingTop;
                } else if (i24 == 2) {
                    int i26 = bVar.f27314e;
                    f11 = (i20 - paddingBottom) - ((i20 - i26) / 2.0f);
                    f10 = paddingTop + ((i20 - i26) / 2.0f);
                    f12 = 0.0f;
                } else if (i24 == 3) {
                    f10 = paddingTop;
                    int iC = bVar.c();
                    f12 = (i20 - bVar.f27314e) / (iC != 1 ? iC - 1 : 1.0f);
                    f11 = i20 - paddingBottom;
                } else if (i24 == 4) {
                    int iC2 = bVar.c();
                    f12 = iC2 != 0 ? (i20 - bVar.f27314e) / iC2 : 0.0f;
                    float f17 = f12 / 2.0f;
                    f10 = paddingTop + f17;
                    f11 = (i20 - paddingBottom) - f17;
                } else {
                    if (i24 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.f27251c);
                    }
                    int iC3 = bVar.c();
                    f12 = iC3 != 0 ? (i20 - bVar.f27314e) / (iC3 + 1) : 0.0f;
                    f10 = paddingTop + f12;
                    f11 = (i20 - paddingBottom) - f12;
                }
                fMax = Math.max(f12, 0.0f);
                i15 = 0;
                while (i15 < bVar.f27317h) {
                    i16 = bVar.f27324o + i15;
                    reorderedChildAt = getReorderedChildAt(i16);
                    if (reorderedChildAt != null) {
                        i17 = i15;
                        z12 = z13;
                        c10 = c12;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i17 = i15;
                        z12 = true;
                        c10 = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f13 = f10 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        f14 = f11 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        if (g(i16, i15)) {
                            int i27 = this.f27259k;
                            float f18 = i27;
                            f15 = f13 + f18;
                            i18 = i27;
                            f16 = f14 - f18;
                        } else {
                            f15 = f13;
                            f16 = f14;
                            i18 = 0;
                        }
                        if (i15 == bVar.f27317h - 1) {
                            c11 = 4;
                            i19 = (this.f27257i & 4) > 0 ? this.f27259k : 0;
                            if (z10) {
                                i17 = i15;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                if (z11) {
                                    this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16));
                                } else {
                                    this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f15), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z11) {
                                i17 = i15;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f16) - reorderedChildAt.getMeasuredHeight(), i21, Math.round(f16));
                            } else {
                                i17 = i15;
                                z12 = true;
                                layoutParams2 = layoutParams;
                                c10 = c11;
                                this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                            }
                            LayoutParams layoutParams3 = layoutParams2;
                            float measuredHeight = f15 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                            float measuredHeight2 = f16 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin);
                            if (z11) {
                                bVar.d(reorderedChildAt, 0, i19, 0, i18);
                            } else {
                                bVar.d(reorderedChildAt, 0, i18, 0, i19);
                            }
                            f10 = measuredHeight;
                            f11 = measuredHeight2;
                        } else {
                            c11 = 4;
                        }
                        if (z10) {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            if (z11) {
                                this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16));
                            } else {
                                this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f15), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f16) - reorderedChildAt.getMeasuredHeight(), i21, Math.round(f16));
                        } else {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams4 = layoutParams2;
                        float measuredHeight3 = f15 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin;
                        float measuredHeight4 = f16 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin);
                        if (z11) {
                            bVar.d(reorderedChildAt, 0, i19, 0, i18);
                        } else {
                            bVar.d(reorderedChildAt, 0, i18, 0, i19);
                        }
                        f10 = measuredHeight3;
                        f11 = measuredHeight4;
                    }
                    i15 = i17 + 1;
                    z13 = z12;
                    c12 = c10;
                }
                int i28 = bVar.f27316g;
                paddingLeft += i28;
                i21 -= i28;
            } else {
                f10 = paddingTop;
                i14 = i20 - paddingBottom;
            }
            f11 = i14;
            f12 = 0.0f;
            fMax = Math.max(f12, 0.0f);
            i15 = 0;
            while (i15 < bVar.f27317h) {
                i16 = bVar.f27324o + i15;
                reorderedChildAt = getReorderedChildAt(i16);
                if (reorderedChildAt != null) {
                    i17 = i15;
                    z12 = z13;
                    c10 = c12;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i17 = i15;
                    z12 = true;
                    c10 = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f13 = f10 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    f14 = f11 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    if (g(i16, i15)) {
                        int i29 = this.f27259k;
                        float f19 = i29;
                        f15 = f13 + f19;
                        i18 = i29;
                        f16 = f14 - f19;
                    } else {
                        f15 = f13;
                        f16 = f14;
                        i18 = 0;
                    }
                    if (i15 == bVar.f27317h - 1) {
                        c11 = 4;
                        if ((this.f27257i & 4) > 0) {
                        }
                        if (z10) {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            if (z11) {
                                this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16));
                            } else {
                                this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f15), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f16) - reorderedChildAt.getMeasuredHeight(), i21, Math.round(f16));
                        } else {
                            i17 = i15;
                            z12 = true;
                            layoutParams2 = layoutParams;
                            c10 = c11;
                            this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams5 = layoutParams2;
                        float measuredHeight5 = f15 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                        float measuredHeight6 = f16 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin);
                        if (z11) {
                            bVar.d(reorderedChildAt, 0, i19, 0, i18);
                        } else {
                            bVar.d(reorderedChildAt, 0, i18, 0, i19);
                        }
                        f10 = measuredHeight5;
                        f11 = measuredHeight6;
                    } else {
                        c11 = 4;
                    }
                    if (z10) {
                        i17 = i15;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        if (z11) {
                            this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f16) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f16));
                        } else {
                            this.f27263o.R(reorderedChildAt, bVar, false, paddingLeft, Math.round(f15), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z11) {
                        i17 = i15;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f16) - reorderedChildAt.getMeasuredHeight(), i21, Math.round(f16));
                    } else {
                        i17 = i15;
                        z12 = true;
                        layoutParams2 = layoutParams;
                        c10 = c11;
                        this.f27263o.R(reorderedChildAt, bVar, true, i21 - reorderedChildAt.getMeasuredWidth(), Math.round(f15), i21, Math.round(f15) + reorderedChildAt.getMeasuredHeight());
                    }
                    LayoutParams layoutParams6 = layoutParams2;
                    float measuredHeight7 = f15 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                    float measuredHeight8 = f16 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin);
                    if (z11) {
                        bVar.d(reorderedChildAt, 0, i19, 0, i18);
                    } else {
                        bVar.d(reorderedChildAt, 0, i18, 0, i19);
                    }
                    f10 = measuredHeight7;
                    f11 = measuredHeight8;
                }
                i15 = i17 + 1;
                z13 = z12;
                c12 = c10;
            }
            int i210 = bVar.f27316g;
            paddingLeft += i210;
            i21 -= i210;
        }
    }

    private void l(int i10, int i11) {
        this.f27264p.clear();
        this.f27265q.a();
        this.f27263o.c(this.f27265q, i10, i11);
        this.f27264p = this.f27265q.f27333a;
        this.f27263o.p(i10, i11);
        if (this.f27252d == 3) {
            for (b bVar : this.f27264p) {
                int iMax = Integer.MIN_VALUE;
                for (int i12 = 0; i12 < bVar.f27317h; i12++) {
                    View reorderedChildAt = getReorderedChildAt(bVar.f27324o + i12);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        iMax = this.f27250b != 2 ? Math.max(iMax, reorderedChildAt.getMeasuredHeight() + Math.max(bVar.f27321l - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(iMax, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((bVar.f27321l - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                bVar.f27316g = iMax;
            }
        }
        this.f27263o.o(i10, i11, getPaddingTop() + getPaddingBottom());
        this.f27263o.X();
        n(this.f27249a, i10, i11, this.f27265q.f27334b);
    }

    private void m(int i10, int i11) {
        this.f27264p.clear();
        this.f27265q.a();
        this.f27263o.f(this.f27265q, i10, i11);
        this.f27264p = this.f27265q.f27333a;
        this.f27263o.p(i10, i11);
        this.f27263o.o(i10, i11, getPaddingLeft() + getPaddingRight());
        this.f27263o.X();
        n(this.f27249a, i10, i11, this.f27265q.f27334b);
    }

    private void n(int i10, int i11, int i12, int i13) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 == 0 || i10 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + i10);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i12, i13);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void o() {
        if (this.f27255g == null && this.f27256h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f27262n == null) {
            this.f27262n = new SparseIntArray(getChildCount());
        }
        this.f27261m = this.f27263o.n(view, i10, layoutParams, this.f27262n);
        super.addView(view, i10, layoutParams);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override
    public int getAlignContent() {
        return this.f27253e;
    }

    @Override
    public int getAlignItems() {
        return this.f27252d;
    }

    @Override
    public int getChildHeightMeasureSpec(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override
    public int getChildWidthMeasureSpec(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override
    public int getDecorationLengthMainAxis(View view, int i10, int i11) {
        int i12;
        int i13;
        if (isMainAxisDirectionHorizontal()) {
            i12 = g(i10, i11) ? this.f27260l : 0;
            if ((this.f27258j & 4) <= 0) {
                return i12;
            }
            i13 = this.f27260l;
        } else {
            i12 = g(i10, i11) ? this.f27259k : 0;
            if ((this.f27257i & 4) <= 0) {
                return i12;
            }
            i13 = this.f27259k;
        }
        return i12 + i13;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f27255g;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f27256h;
    }

    @Override
    public int getFlexDirection() {
        return this.f27249a;
    }

    @Override
    public View getFlexItemAt(int i10) {
        return getChildAt(i10);
    }

    @Override
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<b> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f27264p.size());
        for (b bVar : this.f27264p) {
            if (bVar.c() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @Override
    public List<b> getFlexLinesInternal() {
        return this.f27264p;
    }

    @Override
    public int getFlexWrap() {
        return this.f27250b;
    }

    public int getJustifyContent() {
        return this.f27251c;
    }

    @Override
    public int getLargestMainSize() {
        Iterator it = this.f27264p.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((b) it.next()).f27314e);
        }
        return iMax;
    }

    @Override
    public int getMaxLine() {
        return this.f27254f;
    }

    public View getReorderedChildAt(int i10) {
        if (i10 < 0) {
            return null;
        }
        int[] iArr = this.f27261m;
        if (i10 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i10]);
    }

    @Override
    public View getReorderedFlexItemAt(int i10) {
        return getReorderedChildAt(i10);
    }

    public int getShowDividerHorizontal() {
        return this.f27257i;
    }

    public int getShowDividerVertical() {
        return this.f27258j;
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.f27264p.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f27264p.get(i11);
            if (h(i11)) {
                i10 += isMainAxisDirectionHorizontal() ? this.f27259k : this.f27260l;
            }
            if (i(i11)) {
                i10 += isMainAxisDirectionHorizontal() ? this.f27259k : this.f27260l;
            }
            i10 += bVar.f27316g;
        }
        return i10;
    }

    @Override
    public boolean isMainAxisDirectionHorizontal() {
        int i10 = this.f27249a;
        return i10 == 0 || i10 == 1;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.f27256h == null && this.f27255g == null) {
            return;
        }
        if (this.f27257i == 0 && this.f27258j == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i10 = this.f27249a;
        if (i10 == 0) {
            c(canvas, layoutDirection == 1, this.f27250b == 2);
            return;
        }
        if (i10 == 1) {
            c(canvas, layoutDirection != 1, this.f27250b == 2);
            return;
        }
        if (i10 == 2) {
            boolean z10 = layoutDirection == 1;
            if (this.f27250b == 2) {
                z10 = !z10;
            }
            d(canvas, z10, false);
            return;
        }
        if (i10 != 3) {
            return;
        }
        boolean z11 = layoutDirection == 1;
        if (this.f27250b == 2) {
            z11 = !z11;
        }
        d(canvas, z11, true);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i14 = this.f27249a;
        if (i14 == 0) {
            j(layoutDirection == 1, i10, i11, i12, i13);
            return;
        }
        if (i14 == 1) {
            j(layoutDirection != 1, i10, i11, i12, i13);
            return;
        }
        if (i14 == 2) {
            z11 = layoutDirection == 1;
            k(this.f27250b == 2 ? !z11 : z11, false, i10, i11, i12, i13);
        } else if (i14 == 3) {
            z11 = layoutDirection == 1;
            k(this.f27250b == 2 ? !z11 : z11, true, i10, i11, i12, i13);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.f27249a);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        if (this.f27262n == null) {
            this.f27262n = new SparseIntArray(getChildCount());
        }
        if (this.f27263o.O(this.f27262n)) {
            this.f27261m = this.f27263o.m(this.f27262n);
        }
        int i12 = this.f27249a;
        if (i12 == 0 || i12 == 1) {
            l(i10, i11);
            return;
        }
        if (i12 == 2 || i12 == 3) {
            m(i10, i11);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f27249a);
    }

    @Override
    public void onNewFlexItemAdded(View view, int i10, int i11, b bVar) {
        if (g(i10, i11)) {
            if (isMainAxisDirectionHorizontal()) {
                int i12 = bVar.f27314e;
                int i13 = this.f27260l;
                bVar.f27314e = i12 + i13;
                bVar.f27315f += i13;
                return;
            }
            int i14 = bVar.f27314e;
            int i15 = this.f27259k;
            bVar.f27314e = i14 + i15;
            bVar.f27315f += i15;
        }
    }

    @Override
    public void onNewFlexLineAdded(b bVar) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.f27258j & 4) > 0) {
                int i10 = bVar.f27314e;
                int i11 = this.f27260l;
                bVar.f27314e = i10 + i11;
                bVar.f27315f += i11;
                return;
            }
            return;
        }
        if ((this.f27257i & 4) > 0) {
            int i12 = bVar.f27314e;
            int i13 = this.f27259k;
            bVar.f27314e = i12 + i13;
            bVar.f27315f += i13;
        }
    }

    public void setAlignContent(int i10) {
        if (this.f27253e != i10) {
            this.f27253e = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.f27252d != i10) {
            this.f27252d = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.f27255g) {
            return;
        }
        this.f27255g = drawable;
        if (drawable != null) {
            this.f27259k = drawable.getIntrinsicHeight();
        } else {
            this.f27259k = 0;
        }
        o();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.f27256h) {
            return;
        }
        this.f27256h = drawable;
        if (drawable != null) {
            this.f27260l = drawable.getIntrinsicWidth();
        } else {
            this.f27260l = 0;
        }
        o();
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.f27249a != i10) {
            this.f27249a = i10;
            requestLayout();
        }
    }

    @Override
    public void setFlexLines(List<b> list) {
        this.f27264p = list;
    }

    public void setFlexWrap(int i10) {
        if (this.f27250b != i10) {
            this.f27250b = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.f27251c != i10) {
            this.f27251c = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.f27254f != i10) {
            this.f27254f = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.f27257i) {
            this.f27257i = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.f27258j) {
            this.f27258j = i10;
            requestLayout();
        }
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f27254f = -1;
        this.f27263o = new c(this);
        this.f27264p = new ArrayList();
        this.f27265q = new c.b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout, i10, 0);
        this.f27249a = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexDirection, 0);
        this.f27250b = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_flexWrap, 0);
        this.f27251c = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_justifyContent, 0);
        this.f27252d = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignItems, 0);
        this.f27253e = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_alignContent, 0);
        this.f27254f = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDivider, 0);
        if (i11 != 0) {
            this.f27258j = i11;
            this.f27257i = i11;
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerVertical, 0);
        if (i12 != 0) {
            this.f27258j = i12;
        }
        int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i13 != 0) {
            this.f27257i = i13;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override
            public LayoutParams[] newArray(int i10) {
                return new LayoutParams[i10];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FlexboxLayout_Layout);
            this.mOrder = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = typedArrayObtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = typedArrayObtainStyledAttributes.getFloat(R$styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = typedArrayObtainStyledAttributes.getInt(R$styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = typedArrayObtainStyledAttributes.getFraction(R$styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override
        public int getOrder() {
            return this.mOrder;
        }

        @Override
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        public void setAlignSelf(int i10) {
            this.mAlignSelf = i10;
        }

        public void setFlexBasisPercent(float f10) {
            this.mFlexBasisPercent = f10;
        }

        public void setFlexGrow(float f10) {
            this.mFlexGrow = f10;
        }

        public void setFlexShrink(float f10) {
            this.mFlexShrink = f10;
        }

        public void setHeight(int i10) {
            ((ViewGroup.MarginLayoutParams) this).height = i10;
        }

        public void setMaxHeight(int i10) {
            this.mMaxHeight = i10;
        }

        public void setMaxWidth(int i10) {
            this.mMaxWidth = i10;
        }

        @Override
        public void setMinHeight(int i10) {
            this.mMinHeight = i10;
        }

        @Override
        public void setMinWidth(int i10) {
            this.mMinWidth = i10;
        }

        public void setOrder(int i10) {
            this.mOrder = i10;
        }

        public void setWidth(int i10) {
            ((ViewGroup.MarginLayoutParams) this).width = i10;
        }

        public void setWrapBefore(boolean z10) {
            this.mWrapBefore = z10;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = layoutParams.mOrder;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int i10, int i11) {
            super(new ViewGroup.LayoutParams(i10, i11));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        protected LayoutParams(Parcel parcel) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = parcel.readInt();
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    @Override
    public void updateViewCache(int i10, View view) {
    }
}

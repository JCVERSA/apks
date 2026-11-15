package com.yandex.div.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\b&\u0018\u0000 22\u00020\u0001:\u00023!B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J7\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001a\u001a\u00020\u00152\b\u0010\u001c\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u001a\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u001e\u0010\u001fR0\u0010)\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0004\b!\u0010\"\u0012\u0004\b'\u0010(\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b*\u0010$R\u0014\u0010-\u001a\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b,\u0010$R\u0014\u0010/\u001a\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b.\u0010$R\u0014\u00101\u001a\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b0\u0010$¨\u00064"}, d2 = {"Lcom/yandex/div/internal/widget/DivViewGroup;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "child", "parentWidthMeasureSpec", "parentHeightMeasureSpec", "Lzfb;", "measureChild", "(Landroid/view/View;II)V", "widthUsed", "heightUsed", "measureChildWithMargins", "(Landroid/view/View;IIII)V", "Landroid/view/ViewGroup$LayoutParams;", TtmlNode.TAG_P, "", "checkLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Z", "generateLayoutParams", "(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;", "lp", "(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", ES6Iterator.VALUE_PROPERTY, "b", "I", "getGravity", "()I", "setGravity", "(I)V", "getGravity$annotations", "()V", "gravity", "getHorizontalGravity$div_release", "horizontalGravity", "getVerticalGravity$div_release", "verticalGravity", "getHorizontalPaddings$div_release", "horizontalPaddings", "getVerticalPaddings$div_release", "verticalPaddings", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class DivViewGroup extends ViewGroup {

    public static final Companion INSTANCE = new Companion(null);

    public int gravity;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x002e  */
        /* JADX WARN: Code duplicated, block: B:15:0x0030  */
        /* JADX WARN: Code duplicated, block: B:39:0x0067  */
        /* JADX WARN: Code duplicated, block: B:9:0x0024 A[PHI: r9
          0x0024: PHI (r9v8 int) = (r9v0 int), (r9v0 int), (r9v10 int), (r9v0 int) binds: [B:30:0x0050, B:20:0x0040, B:11:0x0028, B:8:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
        public final int a(int i, int i2, int i3, int i4, int i5) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i) - i2;
            int i6 = 0;
            int iMax = Math.max(0, size);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 0) {
                    if (mode == 1073741824) {
                        if (i3 < 0 || i3 > Integer.MAX_VALUE) {
                            if (i3 == -1) {
                                i3 = iMax;
                            } else {
                                if (i3 == -2) {
                                    if (i5 == Integer.MAX_VALUE) {
                                        i3 = iMax;
                                    } else {
                                        i3 = i5;
                                    }
                                } else if (i3 == -3) {
                                    i3 = Math.min(Math.max(iMax, i4), i5);
                                }
                                i6 = Integer.MIN_VALUE;
                            }
                        }
                        i6 = 1073741824;
                    }
                    i3 = 0;
                } else if (i3 < 0 || i3 > Integer.MAX_VALUE) {
                    if (i3 != -1) {
                        if (i3 != -2 && i3 != -3) {
                            i3 = 0;
                        } else if (i5 != Integer.MAX_VALUE) {
                            i3 = i5;
                            i6 = Integer.MIN_VALUE;
                        }
                    }
                    i3 = iMax;
                } else {
                    i6 = 1073741824;
                }
            } else if (i3 < 0 || i3 > Integer.MAX_VALUE) {
                if (i3 == -1) {
                    i3 = iMax;
                } else if (i3 == -2) {
                    if (i5 == Integer.MAX_VALUE) {
                        i3 = iMax;
                    } else {
                        i3 = i5;
                    }
                } else if (i3 == -3) {
                    i3 = Math.min(Math.max(iMax, i4), i5);
                } else {
                    i3 = 0;
                }
                i6 = Integer.MIN_VALUE;
            } else {
                i6 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i3, i6);
        }

        public final float b(float f, int i) {
            return f / (i * 2);
        }

        public final float c(float f, int i) {
            if (i == 1) {
                return 0.0f;
            }
            return f / (i - 1);
        }

        public final float d(float f, int i) {
            return f / (i + 1);
        }

        public final int e(int i) {
            return 125829127 & i;
        }

        public final int f(int i) {
            return 1879048304 & i;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivViewGroup(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static void getGravity$annotations() {
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof DivLayoutParams;
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new DivLayoutParams(-2, -2);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new DivLayoutParams(getContext(), attrs);
    }

    public final int getGravity() {
        return this.gravity;
    }

    public final int getHorizontalGravity$div_release() {
        return INSTANCE.e(this.gravity);
    }

    public final int getHorizontalPaddings$div_release() {
        return getPaddingLeft() + getPaddingRight();
    }

    public final int getVerticalGravity$div_release() {
        return INSTANCE.f(this.gravity);
    }

    public final int getVerticalPaddings$div_release() {
        return getPaddingTop() + getPaddingBottom();
    }

    @Override
    public void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        y45.j(child, "child");
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        Companion companion = INSTANCE;
        child.measure(companion.a(parentWidthMeasureSpec, getHorizontalPaddings$div_release(), ((ViewGroup.MarginLayoutParams) divLayoutParams).width, child.getMinimumWidth(), divLayoutParams.getMaxWidth()), companion.a(parentHeightMeasureSpec, getVerticalPaddings$div_release(), ((ViewGroup.MarginLayoutParams) divLayoutParams).height, child.getMinimumHeight(), divLayoutParams.getMaxHeight()));
    }

    @Override
    public void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        y45.j(child, "child");
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        Companion companion = INSTANCE;
        child.measure(companion.a(parentWidthMeasureSpec, getHorizontalPaddings$div_release() + divLayoutParams.c() + widthUsed, ((ViewGroup.MarginLayoutParams) divLayoutParams).width, child.getMinimumWidth(), divLayoutParams.getMaxWidth()), companion.a(parentHeightMeasureSpec, getVerticalPaddings$div_release() + divLayoutParams.h() + heightUsed, ((ViewGroup.MarginLayoutParams) divLayoutParams).height, child.getMinimumHeight(), divLayoutParams.getMaxHeight()));
    }

    public final void setGravity(int i) {
        if (this.gravity == i) {
            return;
        }
        Companion companion = INSTANCE;
        if (companion.e(i) == 0) {
            i |= GravityCompat.START;
        }
        if (companion.f(i) == 0) {
            i |= 48;
        }
        this.gravity = i;
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof DivLayoutParams) {
            return new DivLayoutParams((DivLayoutParams) lp);
        }
        return lp instanceof ViewGroup.MarginLayoutParams ? new DivLayoutParams((ViewGroup.MarginLayoutParams) lp) : new DivLayoutParams(lp);
    }

    public DivViewGroup(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final class b {
        public float a;
        public float b;
        public int c;

        public b(float f, float f2, int i) {
            this.a = f;
            this.b = f2;
            this.c = i;
        }

        public final int a() {
            return this.c;
        }

        public final float b() {
            return this.a;
        }

        public final float c() {
            return this.b;
        }

        public final void d(float f, int i, int i2) {
            this.a = 0.0f;
            this.b = 0.0f;
            this.c = 0;
            switch (i) {
                case 1:
                case 16:
                    this.a = f / 2;
                    return;
                case 3:
                case 48:
                    return;
                case 5:
                case 80:
                    this.a = f;
                    return;
                case 16777216:
                case 268435456:
                    float fB = DivViewGroup.INSTANCE.b(f, i2);
                    this.a = fB;
                    float f2 = 2;
                    this.b = fB * f2;
                    this.c = (int) (fB / f2);
                    return;
                case 33554432:
                case 536870912:
                    this.b = DivViewGroup.INSTANCE.c(f, i2);
                    return;
                case 67108864:
                case 1073741824:
                    float fD = DivViewGroup.INSTANCE.d(f, i2);
                    this.a = fD;
                    this.b = fD;
                    this.c = (int) (fD / 2);
                    return;
                default:
                    throw new IllegalStateException("Invalid gravity is set: " + i);
            }
        }

        public b(DivViewGroup divViewGroup, float f, float f2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 0 : i);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.gravity = 8388659;
        setClipToPadding(false);
    }
}

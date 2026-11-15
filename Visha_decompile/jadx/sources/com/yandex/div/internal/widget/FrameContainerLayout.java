package com.yandex.div.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.widget.AspectView;
import defpackage.af5;
import defpackage.d81;
import defpackage.go8;
import defpackage.odc;
import defpackage.s86;
import defpackage.wn8;
import defpackage.xq8;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010#\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0017\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0016\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u001dJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010!J'\u0010\"\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b$\u0010%J'\u0010'\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b+\u0010!J'\u0010,\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b,\u0010\u0011J'\u0010-\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b-\u0010\u0011J/\u00102\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\u000f2\u0006\u00104\u001a\u00020\u0007H\u0016¢\u0006\u0004\b5\u0010\u001dJ\u001f\u00106\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0014¢\u0006\u0004\b6\u0010!J7\u0010:\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0014¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0013H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010?\u001a\u00020>H\u0014¢\u0006\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010BR(\u0010J\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0004\b$\u0010D\u0012\u0004\bH\u0010I\u001a\u0004\bE\u0010=\"\u0004\bF\u0010GR\u001a\u0010M\u001a\b\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010LR\u001a\u0010N\u001a\b\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010LR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\u000b0K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010LR\u0016\u0010Q\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010PR\u0016\u0010R\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010PR\u0016\u0010S\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010PR+\u0010[\u001a\u00020T2\u0006\u0010U\u001a\u00020T8V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b-\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0014\u0010^\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u0014\u0010`\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b_\u0010]R\u0014\u0010b\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\ba\u0010]R\u0014\u0010d\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bc\u0010]R\u0014\u0010f\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\be\u0010=R\u0014\u0010h\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bg\u0010]R\u0014\u0010j\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bi\u0010]¨\u0006k"}, d2 = {"Lcom/yandex/div/internal/widget/FrameContainerLayout;", "Lcom/yandex/div/internal/widget/DivViewGroup;", "Lcom/yandex/div/core/widget/AspectView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "child", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "j", "(Landroid/view/View;II)V", "Lcom/yandex/div/internal/widget/DivLayoutParams;", "", "exactWidth", "exactHeight", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/yandex/div/internal/widget/DivLayoutParams;ZZ)Z", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lcom/yandex/div/internal/widget/DivLayoutParams;Z)Z", GslbInterceptor.HEADER_KEY_GSLB, "childWidth", "o", "(I)V", "childHeight", "n", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(II)V", "b", "(Landroid/view/View;ZZ)V", "d", "(I)I", "widthSize", "c", "(III)I", "e", "(I)Z", CmcdData.OBJECT_TYPE_MANIFEST, CmcdData.STREAM_TYPE_LIVE, "k", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "f", "(IIII)V", "gravity", "setForegroundGravity", "onMeasure", "changed", "t", "r", "onLayout", "(ZIIII)V", "shouldDelayChildPressedState", "()Z", "Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "foregroundPadding", "Z", "getMeasureAllChildren", "setMeasureAllChildren", "(Z)V", "getMeasureAllChildren$annotations", "()V", "measureAllChildren", "", "Ljava/util/Set;", "measuredMatchParentChildren", "skippedMatchParentChildren", "matchParentChildren", "I", "maxWidth", "maxHeight", "childState", "", "<set-?>", "Lgo8;", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "aspectRatio", "getPaddingLeftWithForeground", "()I", "paddingLeftWithForeground", "getPaddingRightWithForeground", "paddingRightWithForeground", "getPaddingTopWithForeground", "paddingTopWithForeground", "getPaddingBottomWithForeground", "paddingBottomWithForeground", "getUseAspect", "useAspect", "getHorizontalPadding", "horizontalPadding", "getVerticalPadding", "verticalPadding", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class FrameContainerLayout extends DivViewGroup implements AspectView {
    public static final af5[] l = {xq8.f(new MutablePropertyReference1Impl(FrameContainerLayout.class, "aspectRatio", "getAspectRatio()F", 0))};

    public final Rect foregroundPadding;

    public boolean measureAllChildren;

    public final Set measuredMatchParentChildren;

    public final Set skippedMatchParentChildren;

    public final Set matchParentChildren;

    public int maxWidth;

    public int maxHeight;

    public int childState;

    public final go8 aspectRatio;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameContainerLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final int getHorizontalPadding() {
        return getPaddingLeftWithForeground() + getPaddingRightWithForeground();
    }

    public static void getMeasureAllChildren$annotations() {
    }

    private final int getPaddingBottomWithForeground() {
        return Math.max(getPaddingBottom(), this.foregroundPadding.bottom);
    }

    private final int getPaddingLeftWithForeground() {
        return Math.max(getPaddingLeft(), this.foregroundPadding.left);
    }

    private final int getPaddingRightWithForeground() {
        return Math.max(getPaddingRight(), this.foregroundPadding.right);
    }

    private final int getPaddingTopWithForeground() {
        return Math.max(getPaddingTop(), this.foregroundPadding.top);
    }

    private final boolean getUseAspect() {
        return !(getAspectRatio() == 0.0f);
    }

    private final int getVerticalPadding() {
        return getPaddingTopWithForeground() + getPaddingBottomWithForeground();
    }

    public final void a(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.matchParentChildren.isEmpty()) {
            return;
        }
        boolean zE = odc.e(widthMeasureSpec);
        boolean zE2 = odc.e(heightMeasureSpec);
        if (zE && zE2) {
            return;
        }
        boolean z = false;
        boolean z2 = !zE && this.maxWidth == 0;
        if (!zE2 && !getUseAspect() && this.maxHeight == 0) {
            z = true;
        }
        if (!z2 && !z) {
            Iterator it = this.matchParentChildren.iterator();
            while (it.hasNext()) {
                b((View) it.next(), zE, zE2);
            }
            return;
        }
        for (View view : this.matchParentChildren) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
            DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
            if (this.skippedMatchParentChildren.contains(view) && ((((ViewGroup.MarginLayoutParams) divLayoutParams).width == -1 && z2) || (((ViewGroup.MarginLayoutParams) divLayoutParams).height == -1 && z))) {
                measureChildWithMargins(view, widthMeasureSpec, 0, heightMeasureSpec, 0);
                this.childState = View.combineMeasuredStates(this.childState, view.getMeasuredState());
                this.skippedMatchParentChildren.remove(view);
            }
            if (z2) {
                o(view.getMeasuredWidth() + divLayoutParams.c());
            }
            if (z) {
                n(view.getMeasuredHeight() + divLayoutParams.h());
            }
        }
    }

    public final void b(View child, boolean exactWidth, boolean exactHeight) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        if (i(divLayoutParams, exactWidth)) {
            o(divLayoutParams.c());
        }
        if (g(divLayoutParams, exactHeight)) {
            n(divLayoutParams.h());
        }
    }

    public final int c(int widthMeasureSpec, int heightMeasureSpec, int widthSize) {
        if (odc.e(heightMeasureSpec)) {
            return 0;
        }
        if (e(widthMeasureSpec)) {
            return s86.c(widthSize / getAspectRatio());
        }
        int iD = wn8.d(this.maxHeight + getVerticalPadding(), getSuggestedMinimumHeight());
        Drawable foreground = getForeground();
        return foreground != null ? wn8.d(iD, foreground.getMinimumHeight()) : iD;
    }

    public final int d(int widthMeasureSpec) {
        if (odc.e(widthMeasureSpec)) {
            return 0;
        }
        int iD = wn8.d(this.maxWidth + getHorizontalPadding(), getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        return foreground != null ? wn8.d(iD, foreground.getMinimumWidth()) : iD;
    }

    public final boolean e(int widthMeasureSpec) {
        return getUseAspect() && !odc.e(widthMeasureSpec);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0073  */
    /* JADX WARN: Code duplicated, block: B:18:0x0077  */
    /* JADX WARN: Code duplicated, block: B:19:0x007b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0082  */
    public final void f(int left, int top, int right, int bottom) {
        int i;
        int i2;
        int i3;
        int paddingLeftWithForeground = getPaddingLeftWithForeground();
        int paddingRightWithForeground = (right - left) - getPaddingRightWithForeground();
        int paddingTopWithForeground = getPaddingTopWithForeground();
        int paddingBottomWithForeground = (bottom - top) - getPaddingBottomWithForeground();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
                DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int absoluteGravity = Gravity.getAbsoluteGravity(divLayoutParams.getGravity(), getLayoutDirection());
                int gravity = divLayoutParams.getGravity() & 112;
                int i5 = absoluteGravity & 7;
                if (i5 != 1) {
                    if (i5 != 5) {
                        i = ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin;
                    } else {
                        i2 = (paddingRightWithForeground - measuredWidth) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin;
                    }
                    if (gravity != 16) {
                        i3 = paddingTopWithForeground + (((((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin) / 2);
                    } else if (gravity != 80) {
                        i3 = ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin + paddingTopWithForeground;
                    } else {
                        i3 = (paddingBottomWithForeground - measuredHeight) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin;
                    }
                    childAt.layout(i2, i3, measuredWidth + i2, measuredHeight + i3);
                } else {
                    i = ((((paddingRightWithForeground - paddingLeftWithForeground) - measuredWidth) + ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin) / 2;
                }
                i2 = i + paddingLeftWithForeground;
                if (gravity != 16) {
                    i3 = paddingTopWithForeground + (((((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) + ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin) / 2);
                } else if (gravity != 80) {
                    i3 = ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin + paddingTopWithForeground;
                } else {
                    i3 = (paddingBottomWithForeground - measuredHeight) - ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin;
                }
                childAt.layout(i2, i3, measuredWidth + i2, measuredHeight + i3);
            }
        }
    }

    public final boolean g(DivLayoutParams divLayoutParams, boolean z) {
        return !z && ((ViewGroup.MarginLayoutParams) divLayoutParams).height == -1;
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new DivLayoutParams(-1, -1);
    }

    public float getAspectRatio() {
        return ((Number) this.aspectRatio.getValue(this, l[0])).floatValue();
    }

    public final boolean getMeasureAllChildren() {
        return this.measureAllChildren;
    }

    public final boolean h(DivLayoutParams divLayoutParams, boolean z, boolean z2) {
        return i(divLayoutParams, z) || g(divLayoutParams, z2);
    }

    public final boolean i(DivLayoutParams divLayoutParams, boolean z) {
        return !z && ((ViewGroup.MarginLayoutParams) divLayoutParams).width == -1;
    }

    public final void j(View child, int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        boolean zE = odc.e(widthMeasureSpec);
        boolean zE2 = odc.e(heightMeasureSpec);
        boolean z = ((ViewGroup.MarginLayoutParams) divLayoutParams).width == -1;
        int i = ((ViewGroup.MarginLayoutParams) divLayoutParams).height;
        boolean z2 = i == -1;
        if (!(zE && zE2) && (!zE2 ? !(!zE ? !(z && (z2 || (i == -3 && getUseAspect()))) : !z2) : !z)) {
            if (h(divLayoutParams, zE, zE2)) {
                this.skippedMatchParentChildren.add(child);
                return;
            }
            return;
        }
        measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
        this.childState = View.combineMeasuredStates(this.childState, child.getMeasuredState());
        if (h(divLayoutParams, zE, zE2)) {
            this.measuredMatchParentChildren.add(child);
        }
        if (!zE && !z) {
            o(child.getMeasuredWidth() + divLayoutParams.c());
        }
        if (zE2 || z2 || getUseAspect()) {
            return;
        }
        n(child.getMeasuredHeight() + divLayoutParams.h());
    }

    public final void k(View child, int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        DivLayoutParams divLayoutParams = (DivLayoutParams) layoutParams;
        int horizontalPadding = getHorizontalPadding() + divLayoutParams.c();
        int verticalPadding = getVerticalPadding() + divLayoutParams.h();
        int i = ((ViewGroup.MarginLayoutParams) divLayoutParams).width;
        int iH = i == -1 ? odc.h(wn8.d(getMeasuredWidth() - horizontalPadding, 0)) : DivViewGroup.INSTANCE.a(widthMeasureSpec, horizontalPadding, i, child.getMinimumWidth(), divLayoutParams.getMaxWidth());
        int i2 = ((ViewGroup.MarginLayoutParams) divLayoutParams).height;
        child.measure(iH, i2 == -1 ? odc.h(wn8.d(getMeasuredHeight() - verticalPadding, 0)) : DivViewGroup.INSTANCE.a(heightMeasureSpec, verticalPadding, i2, child.getMinimumHeight(), divLayoutParams.getMaxHeight()));
        if (this.skippedMatchParentChildren.contains(child)) {
            this.childState = View.combineMeasuredStates(this.childState, child.getMeasuredState());
        }
    }

    public final void l(View child, int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams");
        if (((ViewGroup.MarginLayoutParams) ((DivLayoutParams) layoutParams)).height == -3) {
            measureChildWithMargins(child, widthMeasureSpec, 0, heightMeasureSpec, 0);
            this.matchParentChildren.remove(child);
        }
    }

    public final void m(int widthMeasureSpec, int heightMeasureSpec) {
        if (e(widthMeasureSpec)) {
            boolean z = this.measureAllChildren;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (z || childAt.getVisibility() != 8) {
                    y45.i(childAt, "child");
                    l(childAt, widthMeasureSpec, heightMeasureSpec);
                }
            }
        }
    }

    public final void n(int childHeight) {
        this.maxHeight = Math.max(this.maxHeight, childHeight);
    }

    public final void o(int childWidth) {
        this.maxWidth = Math.max(this.maxWidth, childWidth);
    }

    @Override
    public void onLayout(boolean changed, int l2, int t, int r, int b) {
        f(getLeft(), getTop(), getRight(), getBottom());
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.maxWidth = 0;
        this.maxHeight = 0;
        this.childState = 0;
        boolean zE = odc.e(widthMeasureSpec);
        if (getUseAspect()) {
            heightMeasureSpec = !zE ? View.MeasureSpec.makeMeasureSpec(0, 0) : odc.h(s86.c(View.MeasureSpec.getSize(widthMeasureSpec) / getAspectRatio()));
        }
        boolean z = this.measureAllChildren;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (z || childAt.getVisibility() != 8) {
                y45.i(childAt, "child");
                j(childAt, widthMeasureSpec, heightMeasureSpec);
            }
        }
        d81.C(this.matchParentChildren, this.measuredMatchParentChildren);
        d81.C(this.matchParentChildren, this.skippedMatchParentChildren);
        a(widthMeasureSpec, heightMeasureSpec);
        int iResolveSizeAndState = View.resolveSizeAndState(d(widthMeasureSpec), widthMeasureSpec, this.childState);
        int iC = c(widthMeasureSpec, heightMeasureSpec, 16777215 & iResolveSizeAndState);
        if (odc.f(heightMeasureSpec)) {
            heightMeasureSpec = odc.h(iC);
            m(widthMeasureSpec, heightMeasureSpec);
        }
        setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(iC, heightMeasureSpec, this.childState << 16));
        Iterator it = this.matchParentChildren.iterator();
        while (it.hasNext()) {
            k((View) it.next(), widthMeasureSpec, heightMeasureSpec);
        }
        this.measuredMatchParentChildren.clear();
        this.skippedMatchParentChildren.clear();
        this.matchParentChildren.clear();
    }

    @Override
    public void setAspectRatio(float f) {
        this.aspectRatio.setValue(this, l[0], Float.valueOf(f));
    }

    @Override
    public void setForegroundGravity(int gravity) {
        if (getForegroundGravity() == gravity) {
            return;
        }
        super.setForegroundGravity(gravity);
        if (getForegroundGravity() != 119 || getForeground() == null) {
            this.foregroundPadding.setEmpty();
        } else {
            getForeground().getPadding(this.foregroundPadding);
        }
        requestLayout();
    }

    public final void setMeasureAllChildren(boolean z) {
        this.measureAllChildren = z;
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrameContainerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public FrameContainerLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameContainerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.foregroundPadding = new Rect();
        this.measuredMatchParentChildren = new LinkedHashSet();
        this.skippedMatchParentChildren = new LinkedHashSet();
        this.matchParentChildren = new LinkedHashSet();
        this.aspectRatio = AspectView.x6.a();
    }
}

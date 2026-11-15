package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.push.PushConstants;
import com.transsion.widgetslib.view.BadgeView;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.view.OSLiquidFobItemContainer;
import defpackage.c74;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.y45;
import defpackage.yi5;
import java.util.LinkedHashMap;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010%\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 v2\u00020\u0001:\u0001wB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010\u0017J\u0015\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0006¢\u0006\u0004\b$\u0010\u0017J\r\u0010%\u001a\u00020\u0006¢\u0006\u0004\b%\u0010\u001eJ!\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\n2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b)\u0010\u0013J\u001d\u0010+\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0019¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\rH\u0014¢\u0006\u0004\b-\u0010.J\u001d\u00101\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\n¢\u0006\u0004\b1\u00102J\u0015\u00104\u001a\u00020\r2\u0006\u00103\u001a\u00020\u0006¢\u0006\u0004\b4\u0010\u0017J\r\u00105\u001a\u00020\u0019¢\u0006\u0004\b5\u00106J\u001d\u00108\u001a\u00020\r2\u0006\u00107\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b8\u0010\u000fJ\u0015\u00109\u001a\u00020\r2\u0006\u00107\u001a\u00020\n¢\u0006\u0004\b9\u0010:J\u0015\u0010<\u001a\u00020\u00192\u0006\u0010;\u001a\u00020\n¢\u0006\u0004\b<\u0010=J\u0015\u0010?\u001a\u00020\r2\u0006\u0010>\u001a\u00020\u0006¢\u0006\u0004\b?\u0010\u0017R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010J\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010K\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010IR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010IR\u0016\u0010S\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010IR\"\u0010X\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010 \"\u0004\bW\u0010:R\"\u0010[\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010U\u001a\u0004\bY\u0010 \"\u0004\bZ\u0010:R\u0016\u0010\\\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010UR\u0016\u0010^\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010IR\u001b\u0010c\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR \u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00190d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u001b\u0010j\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010`\u001a\u0004\bi\u0010bR\u0016\u0010l\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010UR\u0016\u0010n\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010UR$\u0010p\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010u¨\u0006x"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidFobItemContainer;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "targetPosition", "currentLeft", "Lzfb;", "e", "(FF)V", "Landroid/graphics/Canvas;", "canvas", "j", "(Landroid/graphics/Canvas;)V", "k", "color", "setSelectedBackgroundColor", "(I)V", "position", "", "animated", "setSelectedPosition", "(ILjava/lang/Boolean;)V", "getSelectedPosition", "()I", "getTabBackgroundWidth", "()F", "marginDp", "setBackgroundMarginVerticalDp", "itemSpaceDp", "setItemSpaceDp", "getBackgroundMarginVerticalDp", "tabLeft", "updateBackgroundPosition", "(FLjava/lang/Boolean;)V", "dispatchDraw", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setItemShowBadge", "(IZ)V", "onDetachedFromWindow", "()V", "width", TtmlNode.LEFT, "setIndicatorWidth", "(IF)V", "selectColor", "setSelectColor", "isAnimRunning", "()Z", "finalPositionAppend", "animateToFinalPositionInternal", "animateToFinalPosition", "(F)V", "x", "eventInIndicator", "(F)Z", "eventPosition", "updFinalPosition", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "backgroundPaint", "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "backgroundRect", "d", "I", "selectedBackgroundColor", "selectedPosition", "Ljv9;", "f", "Ljv9;", "backgroundAnimator", GslbInterceptor.HEADER_KEY_GSLB, "backgroundMarginVerticalDp", CmcdData.STREAMING_FORMAT_HLS, "itemSpace", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "F", "getCurrentBackgroundLeft$widgetsliquid_release", "setCurrentBackgroundLeft$widgetsliquid_release", "currentBackgroundLeft", "getCurrentBackgroundWidth$widgetsliquid_release", "setCurrentBackgroundWidth$widgetsliquid_release", "currentBackgroundWidth", "targetBackgroundLeft", CmcdData.STREAM_TYPE_LIVE, "mSelectColor", CmcdData.OBJECT_TYPE_MANIFEST, "Lyi5;", "getMXfModePaint", "()Landroid/graphics/Paint;", "mXfModePaint", "", "n", "Ljava/util/Map;", "itemBadgeMap", "o", "getBadgePaint", "badgePaint", TtmlNode.TAG_P, "badgeRadius", "q", "mBadgeOffset", "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;", "bgAnimEndListener", "Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;", "getBgAnimEndListener", "()Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;", "setBgAnimEndListener", "(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$b;)V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSLiquidFobItemContainer extends LinearLayout {
    public static final int BACKGROUND_EXPAND_DP = 8;

    public final Paint backgroundPaint;

    public final RectF backgroundRect;

    public int selectedBackgroundColor;

    public int selectedPosition;

    public jv9 backgroundAnimator;

    public int backgroundMarginVerticalDp;

    public int itemSpace;

    public float currentBackgroundLeft;

    public float currentBackgroundWidth;

    public float targetBackgroundLeft;

    public int mSelectColor;

    public final yi5 mXfModePaint;

    public final Map itemBadgeMap;

    public final yi5 badgePaint;

    public float badgeRadius;

    public float mBadgeOffset;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidFobItemContainer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void f(OSLiquidFobItemContainer oSLiquidFobItemContainer, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidFobItemContainer, "this$0");
        oSLiquidFobItemContainer.currentBackgroundLeft = f;
        oSLiquidFobItemContainer.invalidate();
    }

    public static final void g(OSLiquidFobItemContainer oSLiquidFobItemContainer, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidFobItemContainer, "this$0");
        oSLiquidFobItemContainer.getClass();
    }

    private final Paint getBadgePaint() {
        return (Paint) this.badgePaint.getValue();
    }

    private final Paint getMXfModePaint() {
        return (Paint) this.mXfModePaint.getValue();
    }

    public static final void h(OSLiquidFobItemContainer oSLiquidFobItemContainer, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidFobItemContainer, "this$0");
        oSLiquidFobItemContainer.currentBackgroundLeft = f;
        oSLiquidFobItemContainer.invalidate();
    }

    public static final void i(OSLiquidFobItemContainer oSLiquidFobItemContainer, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidFobItemContainer, "this$0");
        oSLiquidFobItemContainer.getClass();
    }

    public static void setSelectedPosition$default(OSLiquidFobItemContainer oSLiquidFobItemContainer, int i, Boolean bool, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bool = Boolean.TRUE;
        }
        oSLiquidFobItemContainer.setSelectedPosition(i, bool);
    }

    public static void updateBackgroundPosition$default(OSLiquidFobItemContainer oSLiquidFobItemContainer, float f, Boolean bool, int i, Object obj) {
        if ((i & 2) != 0) {
            bool = Boolean.TRUE;
        }
        oSLiquidFobItemContainer.updateBackgroundPosition(f, bool);
    }

    public final void animateToFinalPosition(float finalPositionAppend) {
        View childAt = getChildAt(this.selectedPosition);
        if (childAt == null) {
            return;
        }
        animateToFinalPositionInternal(finalPositionAppend, childAt.getLeft() - olb.h(getContext(), this.itemSpace));
    }

    public final void animateToFinalPositionInternal(float finalPositionAppend, float currentLeft) {
        if (this.backgroundAnimator == null) {
            jv9 jv9Var = new jv9(new fz3());
            kv9 kv9Var = new kv9();
            kv9Var.i(400.0f);
            kv9Var.g(0.79f);
            jv9Var.z(kv9Var);
            jv9Var.m(currentLeft);
            jv9Var.b(new f43.r() {
                @Override
                public final void a(f43 f43Var, float f, float f2) {
                    OSLiquidFobItemContainer.h(this.a, f43Var, f, f2);
                }
            });
            jv9Var.a(new f43.q() {
                @Override
                public final void a(f43 f43Var, boolean z, float f, float f2) {
                    OSLiquidFobItemContainer.i(this.a, f43Var, z, f, f2);
                }
            });
            this.backgroundAnimator = jv9Var;
        }
        jv9 jv9Var2 = this.backgroundAnimator;
        if (jv9Var2 != null) {
            jv9Var2.s(finalPositionAppend);
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        k(canvas);
        j(canvas);
        int iSaveLayer = canvas.saveLayer(null, null, 31);
        super.dispatchDraw(canvas);
        if (this.selectedPosition >= 0 && this.currentBackgroundWidth > 0.0f && this.mSelectColor != 0) {
            float height = (getHeight() - olb.h(getContext(), this.backgroundMarginVerticalDp * 2)) - (olb.h(getContext(), this.backgroundMarginVerticalDp) << 1);
            getMXfModePaint().setColor(this.mSelectColor);
            canvas.drawRoundRect(this.backgroundRect, height, height, getMXfModePaint());
        }
        canvas.restoreToCount(iSaveLayer);
    }

    public final void e(float targetPosition, float currentLeft) {
        if (this.backgroundAnimator == null) {
            jv9 jv9Var = new jv9(new fz3());
            kv9 kv9Var = new kv9();
            kv9Var.i(400.0f);
            kv9Var.g(0.79f);
            jv9Var.z(kv9Var);
            jv9Var.m(currentLeft);
            jv9Var.b(new f43.r() {
                @Override
                public final void a(f43 f43Var, float f, float f2) {
                    OSLiquidFobItemContainer.f(this.a, f43Var, f, f2);
                }
            });
            jv9Var.a(new f43.q() {
                @Override
                public final void a(f43 f43Var, boolean z, float f, float f2) {
                    OSLiquidFobItemContainer.g(this.a, f43Var, z, f, f2);
                }
            });
            this.backgroundAnimator = jv9Var;
        }
        animateToFinalPosition(targetPosition);
    }

    public final boolean eventInIndicator(float x) {
        float f = this.currentBackgroundLeft;
        return x >= f && x <= f + this.currentBackgroundWidth;
    }

    public final int getBackgroundMarginVerticalDp() {
        return this.backgroundMarginVerticalDp;
    }

    public final OSLiquidFootOperationBar.b getBgAnimEndListener() {
        return null;
    }

    public final float getCurrentBackgroundLeft() {
        return this.currentBackgroundLeft;
    }

    public final float getCurrentBackgroundWidth() {
        return this.currentBackgroundWidth;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final float getTabBackgroundWidth() {
        return this.currentBackgroundWidth;
    }

    public final boolean isAnimRunning() {
        jv9 jv9Var = this.backgroundAnimator;
        return jv9Var != null && jv9Var.h();
    }

    public final void j(Canvas canvas) {
        View childAt;
        ViewGroup viewGroup;
        View childAt2;
        int left;
        int width;
        float top;
        float f;
        for (Map.Entry entry : this.itemBadgeMap.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            if (((Boolean) entry.getValue()).booleanValue() && iIntValue >= 0 && iIntValue < getChildCount() && (childAt = getChildAt(iIntValue)) != null && (childAt2 = (viewGroup = (ViewGroup) childAt).getChildAt(0)) != null) {
                boolean zG0 = olb.g0(getContext());
                float width2 = ((childAt2.getWidth() / 2) + this.badgeRadius) - this.mBadgeOffset;
                if (zG0) {
                    left = viewGroup.getLeft() + childAt2.getLeft();
                    width = childAt2.getWidth() / 2;
                } else {
                    left = viewGroup.getLeft();
                    width = viewGroup.getWidth() / 2;
                }
                int i = left + width;
                float f2 = olb.l0() ? i - width2 : i + width2;
                if (zG0) {
                    top = viewGroup.getTop() + childAt2.getTop() + this.badgeRadius;
                    f = this.mBadgeOffset;
                } else {
                    top = viewGroup.getTop() + this.badgeRadius;
                    f = this.mBadgeOffset;
                }
                canvas.drawCircle(f2, top - f, this.badgeRadius, getBadgePaint());
            }
        }
    }

    public final void k(Canvas canvas) {
        if (this.selectedPosition < 0 || this.currentBackgroundWidth <= 0.0f) {
            return;
        }
        float height = getHeight() - olb.h(getContext(), this.backgroundMarginVerticalDp * 2);
        int iH = olb.h(getContext(), this.backgroundMarginVerticalDp);
        float f = height - (iH << 1);
        RectF rectF = this.backgroundRect;
        float f2 = this.currentBackgroundLeft;
        float f3 = iH;
        rectF.set(f2, f3, this.currentBackgroundWidth + f2, height + f3);
        canvas.drawRoundRect(this.backgroundRect, f, f, this.backgroundPaint);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        jv9 jv9Var = this.backgroundAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        this.backgroundAnimator = null;
    }

    public final void setBackgroundMarginVerticalDp(int marginDp) {
        this.backgroundMarginVerticalDp = marginDp;
        invalidate();
    }

    public final void setBgAnimEndListener(OSLiquidFootOperationBar.b bVar) {
    }

    public final void setCurrentBackgroundLeft$widgetsliquid_release(float f) {
        this.currentBackgroundLeft = f;
    }

    public final void setCurrentBackgroundWidth$widgetsliquid_release(float f) {
        this.currentBackgroundWidth = f;
    }

    public final void setIndicatorWidth(int width, float left) {
        this.currentBackgroundWidth = Math.max(0.0f, width);
        this.currentBackgroundLeft = left;
        invalidate();
    }

    public final void setItemShowBadge(int position, boolean show) {
        this.itemBadgeMap.put(Integer.valueOf(position), Boolean.valueOf(show));
        invalidate();
    }

    public final void setItemSpaceDp(int itemSpaceDp) {
        this.itemSpace = itemSpaceDp;
        invalidate();
    }

    public final void setSelectColor(int selectColor) {
        this.mSelectColor = selectColor;
        getMXfModePaint().setColor(selectColor);
        invalidate();
    }

    public final void setSelectedBackgroundColor(int color) {
        this.selectedBackgroundColor = color;
        this.backgroundPaint.setColor(color);
        invalidate();
    }

    public final void setSelectedPosition(int position, Boolean animated) {
        if (position < 0 || position >= getChildCount()) {
            return;
        }
        this.selectedPosition = position;
        updateBackgroundPosition(getChildAt(position).getLeft(), animated);
    }

    public final void updFinalPosition(int eventPosition) {
        this.selectedPosition = eventPosition;
    }

    public final void updateBackgroundPosition(float tabLeft, Boolean animated) {
        View childAt;
        int i = this.selectedPosition;
        if (i < 0 || i >= getChildCount() || (childAt = getChildAt(this.selectedPosition)) == null) {
            return;
        }
        int iH = olb.h(getContext(), this.itemSpace);
        if (tabLeft < 0.001f) {
            this.targetBackgroundLeft = childAt.getLeft() - iH;
        } else {
            this.targetBackgroundLeft = tabLeft - iH;
        }
        this.currentBackgroundWidth = getTabBackgroundWidth();
        float width = childAt.getWidth();
        if (width > 0.0f) {
            this.currentBackgroundWidth = width + (iH * 2);
        }
        if (!y45.e(animated, Boolean.FALSE)) {
            e(this.targetBackgroundLeft, this.currentBackgroundLeft);
            return;
        }
        float f = this.targetBackgroundLeft;
        this.currentBackgroundLeft = f;
        jv9 jv9Var = this.backgroundAnimator;
        if (jv9Var != null) {
            jv9Var.s(f);
            jv9Var.A();
        }
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidFobItemContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSLiquidFobItemContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidFobItemContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.backgroundRect = new RectF();
        this.selectedPosition = -1;
        this.backgroundMarginVerticalDp = 4;
        this.itemSpace = 8;
        this.mXfModePaint = b.a(new c74() {
            @Override
            public final Paint invoke() {
                Paint paint2 = new Paint();
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
                return paint2;
            }
        });
        this.itemBadgeMap = new LinkedHashMap();
        this.badgePaint = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final Paint invoke() {
                Paint paint2 = new Paint(1);
                paint2.setColor(this.this$0.getContext().getColor(R.color.os_warning_primary_hios));
                return paint2;
            }
        });
        setWillNotDraw(false);
        this.selectedBackgroundColor = 855638016;
        paint.setColor(855638016);
        this.badgeRadius = olb.h(context, BadgeView.getNotWidthByType(0)) / 2.0f;
        this.mBadgeOffset = olb.h(context, 2);
    }
}

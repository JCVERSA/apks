package com.zhpan.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.zhpan.indicator.base.BaseIndicatorView;
import defpackage.da0;
import defpackage.pl;
import defpackage.rz4;
import defpackage.t23;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b$\u0010\u001aR\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/zhpan/indicator/IndicatorView;", "Lcom/zhpan/indicator/base/BaseIndicatorView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "onLayout", "(ZIIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Lrz4;", "options", "setIndicatorOptions", "(Lrz4;)V", "notifyDataChanged", "()V", "orientation", "setOrientation", "(I)V", "c", "Lt23;", "f", "Lt23;", "mDrawerProxy", "indicator_release"}, k = 1, mv = {1, 4, 0})
public final class IndicatorView extends BaseIndicatorView {

    public t23 mDrawerProxy;

    public IndicatorView(Context context) {
        this(context, null, 0, 6, null);
    }

    public final void c(Canvas canvas) {
        if (getMIndicatorOptions().g() == 1) {
            canvas.rotate(90.0f, getWidth() / 2.0f, getWidth() / 2.0f);
        } else if (getMIndicatorOptions().g() == 3) {
            canvas.rotate(180.0f, getWidth() / 2.0f, getHeight() / 2.0f);
        }
    }

    @Override
    public void notifyDataChanged() {
        this.mDrawerProxy = new t23(getMIndicatorOptions());
        super.notifyDataChanged();
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.k(canvas, "canvas");
        super.onDraw(canvas);
        c(canvas);
        this.mDrawerProxy.a(canvas);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mDrawerProxy.c(changed, left, top, right, bottom);
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        da0.b bVarOnMeasure = this.mDrawerProxy.onMeasure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(bVarOnMeasure.b(), bVarOnMeasure.a());
    }

    @Override
    public void setIndicatorOptions(rz4 options) {
        y45.k(options, "options");
        super.setIndicatorOptions(options);
        this.mDrawerProxy.d(options);
    }

    public final void setOrientation(int orientation) {
        getMIndicatorOptions().u(orientation);
    }

    public IndicatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public IndicatorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.k(context, "context");
        pl.a(context, attributeSet, getMIndicatorOptions());
        this.mDrawerProxy = new t23(getMIndicatorOptions());
    }
}

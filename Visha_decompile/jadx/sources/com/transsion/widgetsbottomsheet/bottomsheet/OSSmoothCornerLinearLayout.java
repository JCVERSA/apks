package com.transsion.widgetsbottomsheet.bottomsheet;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsbottomsheet.R;
import defpackage.olb;
import defpackage.ws7;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSSmoothCornerLinearLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "setStrokeDrawableBg", "()V", "color", "setFillColor", "(I)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "Lws7;", "b", "Lws7;", "mOsSmoothCornerDrawable", "", "c", "F", "mCorner", "d", "I", "mFillColor", "e", "Z", "adaptLargeScreen", "Landroid/graphics/drawable/Drawable;", "f", "Landroid/graphics/drawable/Drawable;", "strokeDrawableBg", "Landroid/graphics/Path;", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/graphics/Path;", "mClipPath", "Landroid/graphics/RectF;", CmcdData.STREAMING_FORMAT_HLS, "Landroid/graphics/RectF;", "mLayerRect", "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSSmoothCornerLinearLayout extends LinearLayout {

    public ws7 mOsSmoothCornerDrawable;

    public float mCorner;

    public int mFillColor;

    public boolean adaptLargeScreen;

    public Drawable strokeDrawableBg;

    public final Path mClipPath;

    public final RectF mLayerRect;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (!olb.g0(getContext())) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        this.mLayerRect.set(0.0f, 0.0f, getWidth(), getHeight());
        this.mClipPath.reset();
        Path path = this.mClipPath;
        RectF rectF = this.mLayerRect;
        float f = this.mCorner;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(this.mClipPath);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.adaptLargeScreen != olb.a(getContext())) {
            this.mOsSmoothCornerDrawable = null;
            this.adaptLargeScreen = !this.adaptLargeScreen;
            invalidate();
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.adaptLargeScreen) {
            ws7 ws7Var = new ws7(getContext(), new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.mFillColor, this.mCorner);
            this.mOsSmoothCornerDrawable = ws7Var;
            setBackground(ws7Var);
        }
        Drawable drawable = this.strokeDrawableBg;
        if (drawable != null) {
            setBackground(drawable);
        }
    }

    public final void setFillColor(int color) {
        this.mFillColor = color;
        ws7 ws7Var = this.mOsSmoothCornerDrawable;
        if (ws7Var != null) {
            ws7Var.setFillColor(color);
        }
        invalidate();
    }

    public final void setStrokeDrawableBg() {
        this.strokeDrawableBg = getContext().getDrawable(R.drawable.os_bottom_sheet_stroke_bg);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSSmoothCornerLinearLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mClipPath = new Path();
        this.mLayerRect = new RectF();
        this.mCorner = context.getResources().getDimension(com.transsion.widgetslib.R.dimen.os_radius_xxxl);
        this.mFillColor = context.getColor(com.transsion.widgetslib.R.color.os_altitude_secondary_color);
        this.adaptLargeScreen = olb.j0(context) && !olb.Z(context) && (!olb.Y(context) || olb.Q(context) || olb.d0(context));
    }
}

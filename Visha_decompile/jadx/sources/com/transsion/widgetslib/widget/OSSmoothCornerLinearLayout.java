package com.transsion.widgetslib.widget;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.widgetslib.R;
import defpackage.ws7;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/transsion/widgetslib/widget/OSSmoothCornerLinearLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "onLayout", "(ZIIII)V", "Lws7;", "b", "Lws7;", "mOsSmoothCornerDrawable", "", "c", "F", "mCorner", "d", "I", "mFillColor", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "mDrawable", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "f", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "mCanvas", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSSmoothCornerLinearLayout extends LinearLayout {

    public ws7 mOsSmoothCornerDrawable;

    public float mCorner;

    public int mFillColor;

    public Drawable mDrawable;

    public TranCanvas mCanvas;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mCanvas.smoothcornerCubicEdgeEnabled()) {
            ws7 ws7Var = new ws7(getContext(), new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.mFillColor, this.mCorner);
            this.mOsSmoothCornerDrawable = ws7Var;
            setBackground(ws7Var);
        }
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
        this.mCanvas = new TranCanvas();
        this.mCorner = context.getResources().getDimension(R.dimen.os_radius_m);
        this.mFillColor = context.getColor(R.color.os_color_gray80);
        Drawable drawable = context.getDrawable(R.drawable.os_snackbar_background);
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setTint(this.mFillColor);
        }
        setBackground(this.mDrawable);
    }
}

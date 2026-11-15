package com.transsion.widgetslib.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.hubsdk.api.graphics.TranOutline;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.PromptController;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00102\u001a\u0004\u0018\u00010/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/transsion/widgetslib/widget/OSSmoothCornerFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "color", "Lzfb;", "setFillColor", "(I)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Lcom/transsion/widgetslib/dialog/PromptController;", "b", "Lcom/transsion/widgetslib/dialog/PromptController;", "getDialogController", "()Lcom/transsion/widgetslib/dialog/PromptController;", "setDialogController", "(Lcom/transsion/widgetslib/dialog/PromptController;)V", "dialogController", "", "c", "F", "mCorner", "d", "I", "mFillColor", "e", "totalHeight", "Landroid/graphics/Paint;", "f", "Landroid/graphics/Paint;", "paint", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "mCanvas", "Landroid/graphics/drawable/Drawable;", CmcdData.STREAMING_FORMAT_HLS, "Landroid/graphics/drawable/Drawable;", "drawable", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "mTranOutLine", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSSmoothCornerFrameLayout extends FrameLayout {

    public PromptController dialogController;

    public float mCorner;

    public int mFillColor;

    public int totalHeight;

    public Paint paint;

    public TranCanvas mCanvas;

    public final Drawable drawable;

    public final TranOutline mTranOutLine;

    public static final class a extends ViewOutlineProvider {
        public a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            OSSmoothCornerFrameLayout.this.mTranOutLine.setSmoothRoundRect(outline, 0, 0, view.getWidth(), view.getHeight(), OSSmoothCornerFrameLayout.this.mCorner, TranOutline.CornerFlag.ALL);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerFrameLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.draw(canvas);
    }

    public final PromptController getDialogController() {
        return this.dialogController;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        PromptController promptController = this.dialogController;
        if (promptController != null && promptController.t()) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(wn8.g(View.MeasureSpec.getSize(heightMeasureSpec), (getContext().getResources().getDisplayMetrics().heightPixels - getContext().getResources().getDimensionPixelSize(R.dimen.os_dialog_top_margin)) - getContext().getResources().getDimensionPixelSize(R.dimen.os_dialog_bottom_margin)), View.MeasureSpec.getMode(heightMeasureSpec));
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.totalHeight = View.MeasureSpec.getSize(heightMeasureSpec);
    }

    public final void setDialogController(PromptController promptController) {
        this.dialogController = promptController;
    }

    public final void setFillColor(int color) {
        this.mFillColor = color;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSSmoothCornerFrameLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.paint = new Paint();
        this.mCanvas = new TranCanvas();
        Drawable drawable = context.getDrawable(R.drawable.os_dialog_bg);
        this.drawable = drawable;
        this.mTranOutLine = new TranOutline();
        this.mCorner = context.getResources().getDimension(R.dimen.os_radius_xxxl);
        int color = context.getColor(R.color.os_altitude_secondary_color);
        this.mFillColor = color;
        if (drawable != null) {
            drawable.setTint(color);
        }
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.mFillColor);
        TranCanvas tranCanvas = this.mCanvas;
        if (tranCanvas == null || !tranCanvas.smoothcornerCubicEdgeEnabled()) {
            return;
        }
        setClipToOutline(true);
        setOutlineProvider(new a());
    }
}

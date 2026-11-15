package com.cloud.sdk.commonutil.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.sdk.commonutil.R;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0016\u0010'\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\"R\u0016\u0010(\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\"¨\u0006)"}, d2 = {"Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "Lzfb;", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Path;", "b", "Landroid/graphics/Path;", "path", "Landroid/graphics/Paint;", "c", "Landroid/graphics/Paint;", "paint", "d", "I", "viewColor", "", "e", "F", "topLeftRadius", "f", "topRightRadius", GslbInterceptor.HEADER_KEY_GSLB, "bottomLeftRadius", "bottomRightRadius", "commonutil_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TranCustomRoundAngleView extends View {

    public final Path path;

    public final Paint paint;

    public int viewColor;

    public float topLeftRadius;

    public float topRightRadius;

    public float bottomLeftRadius;

    public float bottomRightRadius;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TranCustomRoundAngleView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        int iSave = canvas.save();
        canvas.clipPath(this.path);
        super.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        RectF rectF = new RectF(0.0f, 0.0f, w, h);
        this.path.reset();
        float f = this.topLeftRadius;
        float f2 = this.topRightRadius;
        float f3 = this.bottomRightRadius;
        float f4 = this.bottomLeftRadius;
        this.path.addRoundRect(rectF, new float[]{f, f, f2, f2, f3, f3, f4, f4}, Path.Direction.CW);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TranCustomRoundAngleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public TranCustomRoundAngleView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranCustomRoundAngleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.path = new Path();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.paint = paint;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TranCustomRoundAngleView);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.topLeftRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCustomRoundAngleView_topLeftRadius, 0.0f);
        this.topRightRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCustomRoundAngleView_topRightRadius, 0.0f);
        this.bottomLeftRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCustomRoundAngleView_bottomLeftRadius, 0.0f);
        this.bottomRightRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.TranCustomRoundAngleView_bottomRightRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        paint.setColor(this.viewColor);
    }
}

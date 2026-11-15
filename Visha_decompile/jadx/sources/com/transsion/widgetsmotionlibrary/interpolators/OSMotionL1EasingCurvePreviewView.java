package com.transsion.widgetsmotionlibrary.interpolators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010\u0013\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001bR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010$\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!R\u0014\u0010&\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010!R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010!¨\u00060"}, d2 = {"Lcom/transsion/widgetsmotionlibrary/interpolators/OSMotionL1EasingCurvePreviewView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", AnnotatedPrivateKey.LABEL, "Lzfb;", "setCurveLabel", "(Ljava/lang/String;)V", "", "x1", "y1", "x2", "y2", "setBezierControls", "(FFFF)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "b", "F", "c", "d", "e", "Landroid/graphics/Paint;", "f", "Landroid/graphics/Paint;", "curvePaint", GslbInterceptor.HEADER_KEY_GSLB, "axisPaint", CmcdData.STREAMING_FORMAT_HLS, "gridPaint", "Landroid/graphics/Path;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroid/graphics/Path;", "path", "j", "Ljava/lang/String;", "curveLabel", "k", "labelPaint", "widgetsMotionLibrary_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSMotionL1EasingCurvePreviewView extends View {

    public float x1;

    public float y1;

    public float x2;

    public float y2;

    public final Paint curvePaint;

    public final Paint axisPaint;

    public final Paint gridPaint;

    public final Path path;

    public String curveLabel;

    public final Paint labelPaint;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMotionL1EasingCurvePreviewView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f = getResources().getDisplayMetrics().density;
        this.labelPaint.setTextSize(11.0f * f);
        float f2 = 14.0f * f;
        float f3 = f * 18.0f;
        float f4 = width - f2;
        float f5 = height - f3;
        float f6 = f4 - f2;
        float f7 = f5 - f3;
        float f8 = f2 + (f6 * 0.5f);
        canvas.drawLine(f8, f3, f8, f5, this.gridPaint);
        float f9 = f5 - (0.5f * f7);
        canvas.drawLine(f2, f9, f4, f9, this.gridPaint);
        canvas.drawLine(f2, f5, f4, f5, this.axisPaint);
        canvas.drawLine(f2, f5, f2, f3, this.axisPaint);
        this.path.rewind();
        this.path.moveTo(f2, f5);
        this.path.cubicTo(f2 + (this.x1 * f6), f5 - (this.y1 * f7), f2 + (this.x2 * f6), f5 - (this.y2 * f7), f4, f3);
        canvas.drawPath(this.path, this.curvePaint);
        String str = this.curveLabel;
        if (str != null) {
            canvas.drawText(str, f2, f3 - (f * 4.0f), this.labelPaint);
        }
    }

    public final void setBezierControls(float x1, float y1, float x2, float y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        invalidate();
    }

    public final void setCurveLabel(String label) {
        this.curveLabel = label;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMotionL1EasingCurvePreviewView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSMotionL1EasingCurvePreviewView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSMotionL1EasingCurvePreviewView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.x2 = 1.0f;
        this.y2 = 1.0f;
        Paint paint = new Paint(1);
        paint.setColor(-15374912);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(getResources().getDisplayMetrics().density * 3.0f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.curvePaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(1711276032);
        paint2.setStyle(style);
        paint2.setStrokeWidth(getResources().getDisplayMetrics().density * 1.5f);
        this.axisPaint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(570425344);
        paint3.setStyle(style);
        paint3.setStrokeWidth(1.0f);
        this.gridPaint = paint3;
        this.path = new Path();
        Paint paint4 = new Paint(1);
        paint4.setColor(-587202560);
        paint4.setTextAlign(Paint.Align.LEFT);
        this.labelPaint = paint4;
    }
}

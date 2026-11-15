package com.transsion.cloud.weigets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.common.R;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b$\u0010\u001fJ\u0015\u0010%\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b%\u0010\u001bJ\u0015\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001c¢\u0006\u0004\b'\u0010\u001fJ\u0015\u0010*\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\u0015\u0010,\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b,\u0010+J\u000f\u0010-\u001a\u00020\u000eH\u0002¢\u0006\u0004\b-\u0010.J\u001f\u00100\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u001cH\u0002¢\u0006\u0004\b0\u0010#R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u00109\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00104R\u0016\u0010;\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00104R\u0016\u0010=\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00101R\u0016\u0010>\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u00104R\u0016\u0010A\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010@R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010I\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010FR\u0014\u0010K\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010FR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010Q\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010NR\u0014\u0010S\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010N¨\u0006T"}, d2 = {"Lcom/transsion/cloud/weigets/ShadowFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "Lzfb;", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "color", "setShadowColor", "(I)V", "", "radius", "setShadowRadius", "(F)V", "offsetX", "offsetY", "setShadowOffset", "(FF)V", "setCornerRadius", "setBorderColor", "width", "setBorderWidth", "", "enable", "setEnableShadow", "(Z)V", "setEnableBorder", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V", "height", "b", "I", "shadowColor", "c", "F", "shadowRadius", "d", "shadowOffsetX", "e", "shadowOffsetY", "f", "cornerRadius", GslbInterceptor.HEADER_KEY_GSLB, "borderColor", "borderWidth", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Z", "enableShadow", "j", "enableBorder", "Landroid/graphics/Paint;", "k", "Landroid/graphics/Paint;", "shadowPaint", CmcdData.STREAM_TYPE_LIVE, "borderPaint", CmcdData.OBJECT_TYPE_MANIFEST, "backgroundPaint", "Landroid/graphics/Path;", "n", "Landroid/graphics/Path;", "shadowPath", "o", "borderPath", TtmlNode.TAG_P, "backgroundPath", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShadowFrameLayout extends FrameLayout {

    public int shadowColor;

    public float shadowRadius;

    public float shadowOffsetX;

    public float shadowOffsetY;

    public float cornerRadius;

    public int borderColor;

    public float borderWidth;

    public boolean enableShadow;

    public boolean enableBorder;

    public final Paint shadowPaint;

    public final Paint borderPaint;

    public final Paint backgroundPaint;

    public final Path shadowPath;

    public final Path borderPath;

    public final Path backgroundPath;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShadowFrameLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final void a() {
        Paint paint = this.shadowPaint;
        paint.setColor(this.shadowColor);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        if (this.enableShadow) {
            float f = this.shadowRadius;
            if (f > 0.0f) {
                paint.setShadowLayer(f, this.shadowOffsetX, this.shadowOffsetY, this.shadowColor);
            }
        }
        Paint paint2 = this.borderPaint;
        paint2.setColor(this.borderColor);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(this.borderWidth);
        Paint paint3 = this.backgroundPaint;
        paint3.setColor(-1);
        paint3.setStyle(style);
    }

    public final void b(float width, float height) {
        float fMax = (this.enableShadow ? Math.max(this.shadowRadius, Math.max(Math.abs(this.shadowOffsetX), Math.abs(this.shadowOffsetY))) : 0.0f) + (this.enableBorder ? this.borderWidth / 2 : 0.0f);
        RectF rectF = new RectF(fMax, fMax, width - fMax, height - fMax);
        this.shadowPath.reset();
        if (this.enableShadow) {
            Path path = this.shadowPath;
            float f = this.cornerRadius;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
        }
        this.borderPath.reset();
        if (this.enableBorder) {
            Path path2 = this.borderPath;
            float f2 = this.cornerRadius;
            path2.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        }
        this.backgroundPath.reset();
        Path path3 = this.backgroundPath;
        float f3 = this.cornerRadius;
        path3.addRoundRect(rectF, f3, f3, Path.Direction.CW);
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.enableShadow && this.shadowRadius > 0.0f) {
            canvas.drawPath(this.shadowPath, this.shadowPaint);
        }
        canvas.drawPath(this.backgroundPath, this.backgroundPaint);
        if (this.enableBorder && this.borderWidth > 0.0f) {
            canvas.drawPath(this.borderPath, this.borderPaint);
        }
        super.onDraw(canvas);
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iMax = (int) (((this.enableShadow ? Math.max(this.shadowRadius, Math.max(Math.abs(this.shadowOffsetX), Math.abs(this.shadowOffsetY))) : 0.0f) + (this.enableBorder ? this.borderWidth : 0.0f)) * 2);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthMeasureSpec) + iMax, View.MeasureSpec.getMode(widthMeasureSpec)), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(heightMeasureSpec) + iMax, View.MeasureSpec.getMode(heightMeasureSpec)));
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        b(w, h);
    }

    public final void setBorderColor(int color) {
        this.borderColor = color;
        a();
        invalidate();
    }

    public final void setBorderWidth(float width) {
        this.borderWidth = width;
        a();
        requestLayout();
    }

    public final void setCornerRadius(float radius) {
        this.cornerRadius = radius;
        requestLayout();
    }

    public final void setEnableBorder(boolean enable) {
        this.enableBorder = enable;
        a();
        requestLayout();
    }

    public final void setEnableShadow(boolean enable) {
        this.enableShadow = enable;
        a();
        requestLayout();
    }

    public final void setShadowColor(int color) {
        this.shadowColor = color;
        a();
        invalidate();
    }

    public final void setShadowOffset(float offsetX, float offsetY) {
        this.shadowOffsetX = offsetX;
        this.shadowOffsetY = offsetY;
        a();
        requestLayout();
    }

    public final void setShadowRadius(float radius) {
        this.shadowRadius = radius;
        a();
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShadowFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public ShadowFrameLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadowFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.shadowColor = -7829368;
        this.shadowPaint = new Paint(1);
        this.borderPaint = new Paint(1);
        this.backgroundPaint = new Paint(1);
        this.shadowPath = new Path();
        this.borderPath = new Path();
        this.backgroundPath = new Path();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShadowFrameLayout, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            try {
                this.shadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowFrameLayout_shadowColor, -7829368);
                this.shadowRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowFrameLayout_shadowRadius, 0.0f);
                this.shadowOffsetX = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowFrameLayout_shadowOffsetX, 0.0f);
                this.shadowOffsetY = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowFrameLayout_shadowOffsetY, 0.0f);
                this.cornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowFrameLayout_cornerRadius, 0.0f);
                this.borderColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowFrameLayout_borderColor, 0);
                this.borderWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.ShadowFrameLayout_borderWidth, 0.0f);
                this.enableShadow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ShadowFrameLayout_enableShadow, false);
                this.enableBorder = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ShadowFrameLayout_enableBorder, false);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        a();
        setLayerType(1, null);
        setWillNotDraw(false);
    }
}

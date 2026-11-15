package com.yandex.div.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.widget.AspectView;
import defpackage.af5;
import defpackage.go8;
import defpackage.odc;
import defpackage.s86;
import defpackage.wn8;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0001GB'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ7\u0010!\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0014¢\u0006\u0004\b!\u0010\"J/\u0010'\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020)H\u0014¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b-\u0010\u0015J\u001f\u0010.\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010\u0015R+\u00104\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00078F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b-\u00100\u001a\u0004\b1\u0010\u0011\"\u0004\b2\u00103R+\u0010:\u001a\u0002052\u0006\u0010/\u001a\u0002058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u00100\u001a\u0004\b6\u00107\"\u0004\b8\u00109R+\u0010@\u001a\u00020;2\u0006\u0010/\u001a\u00020;8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u00100\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010BR\u0016\u0010F\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006H"}, d2 = {"Lcom/yandex/div/internal/widget/AspectImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Lcom/yandex/div/core/widget/AspectView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/widget/ImageView$ScaleType;", "scaleType", "Lzfb;", "setScaleType", "(Landroid/widget/ImageView$ScaleType;)V", "getBaseline", "()I", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "d", "(I)Z", "c", "invalidate", "()V", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "width", "height", "oldWidth", "oldHeight", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "b", "e", "<set-?>", "Lgo8;", "getGravity", "setGravity", "(I)V", "gravity", "", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "aspectRatio", "Lcom/yandex/div/internal/widget/AspectImageView$Scale;", "getImageScale", "()Lcom/yandex/div/internal/widget/AspectImageView$Scale;", "setImageScale", "(Lcom/yandex/div/internal/widget/AspectImageView$Scale;)V", "imageScale", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", "transformMatrix", "f", "Z", "isMatrixInvalidated", RtspHeaders.SCALE, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class AspectImageView extends AppCompatImageView implements AspectView {
    public static final af5[] g = {xq8.f(new MutablePropertyReference1Impl(AspectImageView.class, "gravity", "getGravity()I", 0)), xq8.f(new MutablePropertyReference1Impl(AspectImageView.class, "aspectRatio", "getAspectRatio()F", 0)), xq8.f(new MutablePropertyReference1Impl(AspectImageView.class, "imageScale", "getImageScale()Lcom/yandex/div/internal/widget/AspectImageView$Scale;", 0))};

    public final go8 gravity;

    public final go8 aspectRatio;

    public final go8 imageScale;

    public final Matrix transformMatrix;

    public boolean isMatrixInvalidated;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/yandex/div/internal/widget/AspectImageView$Scale;", "", "(Ljava/lang/String;I)V", "NO_SCALE", "FIT", "FILL", "STRETCH", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Scale {
        NO_SCALE,
        FIT,
        FILL,
        STRETCH
    }

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.NO_SCALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Scale.FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Scale.STRETCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AspectImageView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final void b(int widthMeasureSpec, int heightMeasureSpec) {
        float aspectRatio = getAspectRatio();
        if (aspectRatio == 0.0f) {
            return;
        }
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        boolean zD = d(widthMeasureSpec);
        boolean zC = c(heightMeasureSpec);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (!zD && !zC) {
            measuredHeight = s86.c(measuredWidth / aspectRatio);
        } else if (!zD && zC) {
            measuredHeight = s86.c(measuredWidth / aspectRatio);
        } else if (zD && !zC) {
            measuredWidth = s86.c(measuredHeight * aspectRatio);
        } else if (zD && zC) {
            measuredHeight = s86.c(measuredWidth / aspectRatio);
        }
        setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(measuredWidth, mode), View.MeasureSpec.makeMeasureSpec(measuredHeight, mode2));
    }

    public boolean c(int heightMeasureSpec) {
        return View.MeasureSpec.getMode(heightMeasureSpec) != 1073741824;
    }

    public boolean d(int widthMeasureSpec) {
        return View.MeasureSpec.getMode(widthMeasureSpec) != 1073741824;
    }

    public final void e(int width, int height) {
        float fMin;
        float f;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float fD = wn8.d((width - getPaddingLeft()) - getPaddingRight(), 0);
        float fD2 = wn8.d((height - getPaddingTop()) - getPaddingBottom(), 0);
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(getGravity(), ViewCompat.getLayoutDirection(this));
        Scale imageScale = getImageScale();
        int[] iArr = a.a;
        int i = iArr[imageScale.ordinal()];
        if (i == 1) {
            fMin = 1.0f;
        } else if (i == 2) {
            fMin = Math.min(fD / intrinsicWidth, fD2 / intrinsicHeight);
        } else if (i == 3) {
            fMin = Math.max(fD / intrinsicWidth, fD2 / intrinsicHeight);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            fMin = fD / intrinsicWidth;
        }
        float f2 = iArr[getImageScale().ordinal()] == 4 ? fD2 / intrinsicHeight : fMin;
        int i2 = absoluteGravity & 7;
        float f3 = 0.0f;
        if (i2 != 1) {
            f = i2 != 5 ? 0.0f : fD - (intrinsicWidth * fMin);
        } else {
            f = (fD - (intrinsicWidth * fMin)) / 2;
        }
        int i3 = absoluteGravity & 112;
        if (i3 == 16) {
            f3 = (fD2 - (intrinsicHeight * f2)) / 2;
        } else if (i3 == 80) {
            f3 = fD2 - (intrinsicHeight * f2);
        }
        Matrix matrix = this.transformMatrix;
        matrix.reset();
        matrix.postScale(fMin, f2);
        matrix.postTranslate(f, f3);
        setImageMatrix(this.transformMatrix);
    }

    public final float getAspectRatio() {
        return ((Number) this.aspectRatio.getValue(this, g[1])).floatValue();
    }

    @Override
    public int getBaseline() {
        return getMeasuredHeight() - getPaddingBottom();
    }

    public final int getGravity() {
        return ((Number) this.gravity.getValue(this, g[0])).intValue();
    }

    public final Scale getImageScale() {
        return (Scale) this.imageScale.getValue(this, g[2]);
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.isMatrixInvalidated = true;
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if ((getImageMatrix() == null || y45.e(getImageMatrix(), this.transformMatrix)) && this.isMatrixInvalidated && getWidth() > 0 && getHeight() > 0) {
            e(getWidth(), getHeight());
            this.isMatrixInvalidated = false;
        }
        super.onDraw(canvas);
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.isMatrixInvalidated = true;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        b(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        this.isMatrixInvalidated = true;
    }

    @Override
    public final void setAspectRatio(float f) {
        this.aspectRatio.setValue(this, g[1], Float.valueOf(f));
    }

    public final void setGravity(int i) {
        this.gravity.setValue(this, g[0], Integer.valueOf(i));
    }

    public final void setImageScale(Scale scale) {
        y45.j(scale, "<set-?>");
        this.imageScale.setValue(this, g[2], scale);
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AspectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public AspectImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AspectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.gravity = odc.b(0, null, 2, null);
        this.aspectRatio = AspectView.x6.a();
        this.imageScale = odc.d(Scale.NO_SCALE, null, 2, null);
        this.transformMatrix = new Matrix();
        this.isMatrixInvalidated = true;
        super.setScaleType(ImageView.ScaleType.MATRIX);
    }
}

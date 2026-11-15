package com.yandex.div.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.xi;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0010\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\b\b\u0001\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\rJ/\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001d\u0010\u0014J\u0017\u0010 \u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010&\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R*\u00105\u001a\u00020/2\u0006\u00103\u001a\u00020/8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00101\u001a\u0004\b5\u00106\"\u0004\b7\u00108R*\u0010>\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010\rR2\u0010?\u001a\u00020\u00062\b\b\u0001\u0010?\u001a\u00020\u00068\u0006@FX\u0087\u000e¢\u0006\u0018\n\u0004\b@\u0010:\u0012\u0004\bC\u0010#\u001a\u0004\bA\u0010<\"\u0004\bB\u0010\rR$\u0010G\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bE\u0010<\"\u0004\bF\u0010\rR\u0014\u0010H\u001a\u00020/8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u00106¨\u0006I"}, d2 = {"Lcom/yandex/div/internal/widget/SeparatorView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "resId", "Lzfb;", "setDividerColorResource", "(I)V", "setDividerHeightResource", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "setPadding", "(IIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "width", "height", "oldWidth", "oldHeight", "onSizeChanged", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "c", "()V", PlayAudioData.TAG_SIZE, "measureSpec", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(II)I", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "dividerPaint", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "dividerRect", "", "d", "Z", "isDividerRectChanged", ES6Iterator.VALUE_PROPERTY, "e", "isHorizontal", "()Z", "setHorizontal", "(Z)V", "f", "I", "getDividerThickness", "()I", "setDividerThickness", "dividerThickness", "dividerGravity", GslbInterceptor.HEADER_KEY_GSLB, "getDividerGravity", "setDividerGravity", "getDividerGravity$annotations", "color", "getDividerColor", "setDividerColor", "dividerColor", "isDividerVisible", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SeparatorView extends View {

    public final Paint dividerPaint;

    public final Rect dividerRect;

    public boolean isDividerRectChanged;

    public boolean isHorizontal;

    public int dividerThickness;

    public int dividerGravity;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SeparatorView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static void getDividerGravity$annotations() {
    }

    public final int a(int size, int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size2 = View.MeasureSpec.getSize(measureSpec);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? size : size2;
        }
        return Math.min(size, size2);
    }

    public final boolean b() {
        return Color.alpha(this.dividerPaint.getColor()) > 0;
    }

    public final void c() {
        if (this.isDividerRectChanged) {
            int paddingTop = this.isHorizontal ? getPaddingTop() : getPaddingLeft();
            int paddingBottom = this.isHorizontal ? getPaddingBottom() : getPaddingRight();
            int height = this.isHorizontal ? getHeight() : getWidth();
            int i = (height - paddingTop) - paddingBottom;
            int i2 = this.dividerGravity;
            if (i2 == 17) {
                paddingTop += (i - this.dividerThickness) / 2;
            } else if (i2 != 8388611) {
                if (i2 != 8388613) {
                    xi.i("Unknown divider gravity value");
                    paddingTop = 0;
                } else {
                    paddingTop = (height - paddingBottom) - this.dividerThickness;
                }
            }
            if (this.isHorizontal) {
                Rect rect = this.dividerRect;
                rect.top = paddingTop;
                rect.bottom = paddingTop + Math.min(i, this.dividerThickness);
                this.dividerRect.left = getPaddingLeft();
                this.dividerRect.right = getWidth() - getPaddingRight();
            } else {
                Rect rect2 = this.dividerRect;
                rect2.left = paddingTop;
                rect2.right = paddingTop + Math.min(i, this.dividerThickness);
                this.dividerRect.top = getPaddingTop();
                this.dividerRect.bottom = getHeight() - getPaddingBottom();
            }
            this.isDividerRectChanged = false;
        }
    }

    public final int getDividerColor() {
        return this.dividerPaint.getColor();
    }

    public final int getDividerGravity() {
        return this.dividerGravity;
    }

    public final int getDividerThickness() {
        return this.dividerThickness;
    }

    public final boolean getIsHorizontal() {
        return this.isHorizontal;
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        if (b()) {
            c();
            canvas.drawRect(this.dividerRect, this.dividerPaint);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.isHorizontal) {
            paddingTop += this.dividerThickness;
        } else {
            paddingLeft += this.dividerThickness;
        }
        setMeasuredDimension(a(Math.max(paddingLeft, getSuggestedMinimumWidth()), widthMeasureSpec), a(Math.max(paddingTop, getSuggestedMinimumHeight()), heightMeasureSpec));
    }

    @Override
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        this.isDividerRectChanged = true;
    }

    public final void setDividerColor(int i) {
        if (this.dividerPaint.getColor() != i) {
            this.dividerPaint.setColor(i);
            invalidate();
        }
    }

    public final void setDividerColorResource(@ColorRes int resId) {
        setDividerColor(ContextCompat.getColor(getContext(), resId));
    }

    public final void setDividerGravity(int i) {
        if (this.dividerGravity != i) {
            this.dividerGravity = i;
            this.isDividerRectChanged = true;
            invalidate();
        }
    }

    public final void setDividerHeightResource(@DimenRes int resId) {
        setDividerThickness(getResources().getDimensionPixelSize(resId));
    }

    public final void setDividerThickness(int i) {
        if (this.dividerThickness != i) {
            this.dividerThickness = i;
            this.isDividerRectChanged = true;
            requestLayout();
        }
    }

    public final void setHorizontal(boolean z) {
        if (this.isHorizontal != z) {
            this.isHorizontal = z;
            this.isDividerRectChanged = true;
            requestLayout();
        }
    }

    @Override
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(left, top, right, bottom);
        this.isDividerRectChanged = true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SeparatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public SeparatorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeparatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        Paint paint = new Paint();
        paint.setColor(0);
        this.dividerPaint = paint;
        this.dividerRect = new Rect();
        this.isHorizontal = true;
        this.dividerGravity = 17;
    }
}

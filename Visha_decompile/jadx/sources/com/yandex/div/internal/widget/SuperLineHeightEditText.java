package com.yandex.div.internal.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.cx3;
import defpackage.dx3;
import defpackage.odc;
import defpackage.pha;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J1\u0010\u001a\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ/\u0010$\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010'J\u0017\u0010*\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010\u000fJ\u0017\u0010-\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020+H\u0017¢\u0006\u0004\b-\u0010.J\u0019\u0010/\u001a\u00020\r2\b\b\u0002\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u00100R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00101R\u0016\u00104\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0016\u00106\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00101R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010=\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0015\u0010?\u001a\u00020\u00078Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010'R+\u0010E\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u00078V@VX\u0096\u008e\u0002¢\u0006\u0012\u001a\u0004\bA\u0010'\"\u0004\bB\u00100*\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/yandex/div/internal/widget/SuperLineHeightEditText;", "Landroidx/appcompat/widget/AppCompatEditText;", "Ldx3;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "enabled", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Z)V", "unit", "", PlayAudioData.TAG_SIZE, "setTextSize", "(IF)V", "", "text", TtmlNode.START, "lengthBefore", "lengthAfter", "onTextChanged", "(Ljava/lang/CharSequence;III)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "getCompoundPaddingTop", "()I", "getCompoundPaddingBottom", "whether", "setHorizontallyScrolling", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "b", "(I)V", "Z", "horizontalScrollingEnabled", "c", "isTextFitting", "d", "isDisallowInterceptTouchEvent", "Lcx3;", "e", "Lcx3;", "fixedLineHeightHelper", "getInterceptTouchEventNeeded", "()Z", "interceptTouchEventNeeded", "getVisibleLineCount", "visibleLineCount", "<set-?>", "getFixedLineHeight", "setFixedLineHeight", "getFixedLineHeight$delegate", "(Lcom/yandex/div/internal/widget/SuperLineHeightEditText;)Ljava/lang/Object;", "fixedLineHeight", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SuperLineHeightEditText extends AppCompatEditText implements dx3 {

    public boolean horizontalScrollingEnabled;

    public boolean isTextFitting;

    public boolean isDisallowInterceptTouchEvent;

    public final cx3 fixedLineHeightHelper;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightEditText(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final void a(boolean enabled) {
        this.isDisallowInterceptTouchEvent = enabled;
        getParent().requestDisallowInterceptTouchEvent(enabled);
    }

    public static void c(SuperLineHeightEditText superLineHeightEditText, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateFittingText");
        }
        if ((i2 & 1) != 0) {
            i = superLineHeightEditText.getHeight();
        }
        superLineHeightEditText.b(i);
    }

    private final boolean getInterceptTouchEventNeeded() {
        return (this.horizontalScrollingEnabled || this.isTextFitting) ? false : true;
    }

    private final int getVisibleLineCount() {
        if (getLineCount() == 0) {
            return 1;
        }
        return getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
    }

    public final void b(int h) {
        if (getLayout() == null || h == 0) {
            return;
        }
        this.isTextFitting = (h - getCompoundPaddingTop()) - getCompoundPaddingBottom() >= pha.f(this, getLayout().getLineCount());
    }

    @Override
    public int getCompoundPaddingBottom() {
        return super.getCompoundPaddingBottom() + this.fixedLineHeightHelper.e();
    }

    @Override
    public int getCompoundPaddingTop() {
        return super.getCompoundPaddingTop() + this.fixedLineHeightHelper.f();
    }

    public int getFixedLineHeight() {
        return this.fixedLineHeightHelper.g();
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int maxLines;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        cx3 cx3Var = this.fixedLineHeightHelper;
        if (getLineCount() == 0) {
            maxLines = 1;
        } else {
            maxLines = getLineCount() > getMaxLines() ? getMaxLines() : getLineCount();
        }
        if (cx3Var.g() == -1 || odc.e(heightMeasureSpec)) {
            return;
        }
        int iD = wn8.d(pha.f(cx3Var.a, maxLines) + (maxLines >= cx3Var.a.getLineCount() ? cx3Var.b + cx3Var.c : 0) + cx3Var.a.getPaddingTop() + cx3Var.a.getPaddingBottom(), cx3Var.a.getMinimumHeight());
        super.setMeasuredDimension(getMeasuredWidthAndState(), View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE ? odc.g(Math.min(iD, View.MeasureSpec.getSize(heightMeasureSpec))) : odc.h(iD));
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        b(h);
    }

    @Override
    public void onTextChanged(CharSequence text, int start, int lengthBefore, int lengthAfter) {
        super.onTextChanged(text, start, lengthBefore, lengthAfter);
        c(this, 0, 1, null);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (!getInterceptTouchEventNeeded()) {
            if (this.isDisallowInterceptTouchEvent) {
                a(false);
            }
            return super.onTouchEvent(event);
        }
        int action = event.getAction() & 255;
        if (action == 0) {
            a(true);
        } else if (action == 1 || action == 3) {
            a(false);
        }
        return super.onTouchEvent(event);
    }

    @Override
    public void setFixedLineHeight(int i) {
        this.fixedLineHeightHelper.k(i);
    }

    @Override
    public void setHorizontallyScrolling(boolean whether) {
        this.horizontalScrollingEnabled = whether;
        super.setHorizontallyScrolling(whether);
    }

    @Override
    public void setTextSize(int unit, float size) {
        super.setTextSize(unit, size);
        this.fixedLineHeightHelper.h();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public SuperLineHeightEditText(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.isTextFitting = true;
        this.fixedLineHeightHelper = new cx3(this);
    }
}

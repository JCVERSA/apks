package com.yandex.div.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
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
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR*\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0015\u0010%\u001a\u00020\u00078Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u0016R+\u0010,\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00078V@VX\u0096\u008e\u0002¢\u0006\u0012\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010)*\u0004\b*\u0010+¨\u0006-"}, d2 = {"Lcom/yandex/div/internal/widget/SuperLineHeightTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Ldx3;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "unit", "", PlayAudioData.TAG_SIZE, "Lzfb;", "setTextSize", "(IF)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "getCompoundPaddingTop", "()I", "getCompoundPaddingBottom", "Lcx3;", "c", "Lcx3;", "fixedLineHeightHelper", "", ES6Iterator.VALUE_PROPERTY, "d", "Z", "isTightenWidth", "()Z", "setTightenWidth", "(Z)V", "getVisibleLineCount", "visibleLineCount", "<set-?>", "getFixedLineHeight", "setFixedLineHeight", "(I)V", "getFixedLineHeight$delegate", "(Lcom/yandex/div/internal/widget/SuperLineHeightTextView;)Ljava/lang/Object;", "fixedLineHeight", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SuperLineHeightTextView extends AppCompatTextView implements dx3 {

    public final cx3 fixedLineHeightHelper;

    public boolean isTightenWidth;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightTextView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final int getVisibleLineCount() {
        return Math.min(getLineCount(), getMaxLines());
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

    public final boolean getIsTightenWidth() {
        return this.isTightenWidth;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        cx3 cx3Var = this.fixedLineHeightHelper;
        int iMin = Math.min(getLineCount(), getMaxLines());
        if (cx3Var.g() != -1 && !odc.e(heightMeasureSpec)) {
            int iD = wn8.d(pha.f(cx3Var.a, iMin) + (iMin >= cx3Var.a.getLineCount() ? cx3Var.b + cx3Var.c : 0) + cx3Var.a.getPaddingTop() + cx3Var.a.getPaddingBottom(), cx3Var.a.getMinimumHeight());
            super.setMeasuredDimension(getMeasuredWidthAndState(), View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE ? odc.g(Math.min(iD, View.MeasureSpec.getSize(heightMeasureSpec))) : odc.h(iD));
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams != null && this.isTightenWidth && ((ViewGroup.MarginLayoutParams) divLayoutParams).width == -3 && divLayoutParams.getMaxWidth() != Integer.MAX_VALUE) {
            int lineCount = getLayout().getLineCount();
            float fMax = 0.0f;
            for (int i = 0; i < lineCount; i++) {
                fMax = Math.max(fMax, getLayout().getLineWidth(i));
            }
            int iCeil = (int) Math.ceil(fMax + getCompoundPaddingLeft() + getCompoundPaddingRight());
            if (iCeil < getMeasuredWidth()) {
                super.setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(iCeil, View.MeasureSpec.getMode(getMeasuredWidthAndState())), getMeasuredHeightAndState());
            }
        }
    }

    @Override
    public void setFixedLineHeight(int i) {
        this.fixedLineHeightHelper.k(i);
    }

    @Override
    public void setTextSize(int unit, float size) {
        super.setTextSize(unit, size);
        this.fixedLineHeightHelper.h();
    }

    public final void setTightenWidth(boolean z) {
        boolean z2 = this.isTightenWidth;
        this.isTightenWidth = z;
        if (z2 != z) {
            requestLayout();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public SuperLineHeightTextView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuperLineHeightTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.fixedLineHeightHelper = new cx3(this);
    }
}

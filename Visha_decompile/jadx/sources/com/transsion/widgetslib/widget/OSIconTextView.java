package com.transsion.widgetslib.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import defpackage.l57;
import defpackage.olb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/widgetslib/widget/OSIconTextView;", "Landroid/widget/TextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", "supportRtl", "Lzfb;", "setSupportRtl", "(Z)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "b", "I", "mDefaultSize", "c", "Z", "isNeedRtl", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSIconTextView extends TextView {

    public int mDefaultSize;

    public boolean isNeedRtl;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSIconTextView(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if ((View.MeasureSpec.getMode(widthMeasureSpec) == Integer.MIN_VALUE || View.MeasureSpec.getMode(widthMeasureSpec) == 0) && (View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE || View.MeasureSpec.getMode(heightMeasureSpec) == 0)) {
            widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mDefaultSize, 1073741824) + getPaddingStart() + getPaddingEnd();
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mDefaultSize, 1073741824) + getPaddingTop() + getPaddingBottom();
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setSupportRtl(boolean supportRtl) {
        this.isNeedRtl = supportRtl;
        if (supportRtl) {
            setRotationY(olb.l0() ? 180.0f : 0.0f);
        } else {
            setRotationY(0.0f);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSIconTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSIconTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSIconTextView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSIconTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        setTypeface(l57.a.a(context));
        setGravity(17);
        this.mDefaultSize = context.getResources().getDimensionPixelSize(R.dimen.os_icon_textview_default_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.textSize, android.R.attr.textColor, android.R.attr.clickable}, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        if (!typedArrayObtainStyledAttributes.getValue(0, new TypedValue())) {
            setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.os_icon_textview_default_text_size));
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(1);
            if (colorStateList != null) {
                setTextColor(colorStateList);
            } else {
                setTextColor(typedArrayObtainStyledAttributes.getColor(1, 0));
            }
        } else {
            setTextColor(olb.l(R.attr.os_text_tertiary, context.getColor(R.color.os_text_tertiary_hios), context));
        }
        if (!typedArrayObtainStyledAttributes.hasValue(2)) {
            setClickable(true);
        }
        typedArrayObtainStyledAttributes.recycle();
        setVerticalScrollBarEnabled(false);
        setElegantTextHeight(false);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.OSIconTextView);
        y45.i(typedArrayObtainStyledAttributes2, "context.obtainStyledAttr…styleable.OSIconTextView)");
        int indexCount = typedArrayObtainStyledAttributes2.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes2.getIndex(i3);
            if (index == R.styleable.OSIconTextView_os_icon_support_rtl) {
                this.isNeedRtl = typedArrayObtainStyledAttributes2.getBoolean(index, false);
            }
        }
        typedArrayObtainStyledAttributes2.recycle();
        setSupportRtl(this.isNeedRtl);
    }
}

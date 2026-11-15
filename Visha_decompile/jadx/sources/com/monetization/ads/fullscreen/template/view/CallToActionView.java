package com.monetization.ads.fullscreen.template.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.x42;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/monetization/ads/fullscreen/template/view/CallToActionView;", "Landroid/widget/Button;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "text", "Landroid/widget/TextView$BufferType;", "type", "Lzfb;", "setText", "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class CallToActionView extends Button {
    private CharSequence a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public CallToActionView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private static Drawable a(Context context, int i) {
        return ContextCompat.getDrawable(context, i);
    }

    @Override
    public final CharSequence getText() {
        return this.a;
    }

    @Override
    public void setText(CharSequence text, TextView.BufferType type) {
        y45.j(text, "text");
        y45.j(type, "type");
        if (text instanceof String) {
            this.a = text;
        }
        super.setText(this.a, TextView.BufferType.SPANNABLE);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public CallToActionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void a() {
        setSpannableFactory(Spannable.Factory.getInstance());
        setText(this.a);
    }

    public CallToActionView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public CallToActionView(Context context, AttributeSet attributeSet, int i) {
        int i2;
        super(context, attributeSet, i);
        y45.j(context, "context");
        Drawable drawableA = null;
        int i3 = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MonetizationAdsInternalIconButton, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MonetizationAdsInternalIconButton_monetization_internal_icon, 0);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalIconButton_monetization_internal_icon_size, 0);
            int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalIconButton_monetization_internal_icon_offset, 0);
            typedArrayObtainStyledAttributes.recycle();
            drawableA = resourceId != 0 ? a(context, resourceId) : null;
            i2 = dimensionPixelSize2;
            i3 = dimensionPixelSize;
        } else {
            i2 = 0;
        }
        setSpannableFactory(new x42(drawableA, i3, i2));
    }
}

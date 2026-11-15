package com.monetization.ads.fullscreen.template.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.yandex.mobile.ads.impl.me;
import com.yandex.mobile.ads.impl.ne;
import com.yandex.mobile.ads.impl.ry1;
import com.yandex.mobile.ads.impl.su0;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\u0018\u00002\u00020\u0001B;\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;", "Landroid/widget/TextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "", "defStyleAttr", "Lcom/yandex/mobile/ads/impl/su0;", "measureSpecProvider", "Lcom/yandex/mobile/ads/impl/ne;", "appCompatAutoSizeControllerFactory", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/su0;Lcom/yandex/mobile/ads/impl/ne;)V", "Lzfb;", "setMeasureSpecProvider", "(Lcom/yandex/mobile/ads/impl/su0;)V", "autoSizeTextType", "setAutoSizeTextType", "(I)V", "unit", "", PlayAudioData.TAG_SIZE, "setTextSize", "(IF)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class ExtendedTextView extends TextView {
    private su0 a;
    private final me b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedTextView(Context context) {
        this(context, null, 0, null, null, 30, null);
        y45.j(context, "context");
    }

    @Override
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        su0.a aVarA = this.a.a(i, i2);
        super.onMeasure(aVarA.a, aVarA.b);
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        y45.j(charSequence, "text");
        super.onTextChanged(charSequence, i, i2, i3);
    }

    public final void setAutoSizeTextType(int autoSizeTextType) {
        setAutoSizeTextTypeWithDefaults(autoSizeTextType);
    }

    public final void setMeasureSpecProvider(su0 measureSpecProvider) {
        y45.j(measureSpecProvider, "measureSpecProvider");
        this.a = measureSpecProvider;
        requestLayout();
        invalidate();
    }

    @Override
    public void setTextSize(int unit, float size) {
        super.setTextSize(unit, size);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null, null, 28, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, null, 24, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedTextView(Context context, AttributeSet attributeSet, int i, su0 su0Var) {
        this(context, attributeSet, i, su0Var, null, 16, null);
        y45.j(context, "context");
        y45.j(su0Var, "measureSpecProvider");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedTextView(Context context, AttributeSet attributeSet, int i, su0 su0Var, ne neVar) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        y45.j(su0Var, "measureSpecProvider");
        y45.j(neVar, "appCompatAutoSizeControllerFactory");
        this.a = su0Var;
        neVar.getClass();
        this.b = ne.a(this);
    }

    public ExtendedTextView(Context context, AttributeSet attributeSet, int i, su0 su0Var, ne neVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? new ry1() : su0Var, (i2 & 16) != 0 ? new ne() : neVar);
    }
}

package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0000\u0018\u00002\u00020\u0001:\u00012B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010(\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R$\u00101\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00063"}, d2 = {"Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;", "heightCalculator", "Lzfb;", "setHeightCalculator", "(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;)V", "position", "", "positionOffset", "", "shouldRequestLayoutOnScroll", "(IF)Z", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "b", "Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;", "c", "I", "_collapsiblePaddingBottom", "Landroid/graphics/Rect;", "d", "Landroid/graphics/Rect;", "visibleRect", "e", "Z", "getAnimateOnScroll", "()Z", "setAnimateOnScroll", "(Z)V", "animateOnScroll", "f", "Ljava/lang/Integer;", "lastHeightMeasureSpec", "padding", "getCollapsiblePaddingBottom", "()I", "setCollapsiblePaddingBottom", "(I)V", "collapsiblePaddingBottom", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ViewPagerFixedSizeLayout extends FrameLayout {

    public a heightCalculator;

    public int _collapsiblePaddingBottom;

    public Rect visibleRect;

    public boolean animateOnScroll;

    public Integer lastHeightMeasureSpec;

    public interface a {
        int a(int i, int i2);

        void b();

        boolean c(int i, float f);

        void d(int i, float f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewPagerFixedSizeLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final boolean getAnimateOnScroll() {
        return this.animateOnScroll;
    }

    public final int get_collapsiblePaddingBottom() {
        return this._collapsiblePaddingBottom;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.lastHeightMeasureSpec = Integer.valueOf(heightMeasureSpec);
        a aVar = this.heightCalculator;
        if (aVar != null) {
            y45.g(aVar);
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(aVar.a(widthMeasureSpec, heightMeasureSpec), 1073741824);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setAnimateOnScroll(boolean z) {
        this.animateOnScroll = z;
    }

    public final void setCollapsiblePaddingBottom(int i) {
        if (this._collapsiblePaddingBottom != i) {
            this._collapsiblePaddingBottom = i;
        }
    }

    public final void setHeightCalculator(a heightCalculator) {
        this.heightCalculator = heightCalculator;
    }

    public final boolean shouldRequestLayoutOnScroll(int position, float positionOffset) {
        a aVar;
        if (!this.animateOnScroll || (aVar = this.heightCalculator) == null || !aVar.c(position, positionOffset)) {
            return false;
        }
        Rect rect = this.visibleRect;
        if (rect == null) {
            rect = new Rect();
            this.visibleRect = rect;
        }
        getLocalVisibleRect(rect);
        if (rect.height() == getHeight()) {
            return true;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
        Integer num = this.lastHeightMeasureSpec;
        int iA = aVar.a(iMakeMeasureSpec, num != null ? num.intValue() : View.MeasureSpec.makeMeasureSpec(0, 0));
        if (iA != getHeight()) {
            return iA <= rect.bottom && rect.top <= iA;
        }
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewPagerFixedSizeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public ViewPagerFixedSizeLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerFixedSizeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.animateOnScroll = true;
    }
}

package com.yandex.div.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.af5;
import defpackage.jd8;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u001b\u0018\u0000 '2\u00020\u0001:\u0001\u0018B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\u000bB\u0013\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0006\u0010\u000eB\u0013\b\u0016\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u000fB\u0011\b\u0016\u0012\u0006\u0010\r\u001a\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u001d\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u001cR\"\u0010#\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010.\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010&\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*R+\u00103\u001a\u00020\b2\u0006\u0010/\u001a\u00020\b8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b\u0018\u0010\u0017\"\u0004\b2\u0010\u001cR+\u00107\u001a\u00020\b2\u0006\u0010/\u001a\u00020\b8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b4\u00101\u001a\u0004\b5\u0010\u0017\"\u0004\b6\u0010\u001cR\"\u00109\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010\u0019\u001a\u0004\b0\u0010\u0017\"\u0004\b8\u0010\u001cR\"\u0010<\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0019\u001a\u0004\b4\u0010\u0017\"\u0004\b;\u0010\u001cR\u0014\u0010=\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u0017R\u0014\u0010>\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u0017¨\u0006?"}, d2 = {"Lcom/yandex/div/internal/widget/DivLayoutParams;", "Landroid/view/ViewGroup$MarginLayoutParams;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "width", "height", "(II)V", "Landroid/view/ViewGroup$LayoutParams;", "source", "(Landroid/view/ViewGroup$LayoutParams;)V", "(Landroid/view/ViewGroup$MarginLayoutParams;)V", "(Lcom/yandex/div/internal/widget/DivLayoutParams;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "b", CmcdData.OBJECT_TYPE_MANIFEST, "(I)V", "gravity", "Z", "j", "()Z", "k", "(Z)V", "isBaselineAligned", "", "c", "F", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "()F", "r", "(F)V", "verticalWeight", "d", "n", "horizontalWeight", "<set-?>", "e", "Ljd8;", CmcdData.STREAM_TYPE_LIVE, "columnSpan", "f", GslbInterceptor.HEADER_KEY_GSLB, "q", "rowSpan", "o", "maxHeight", CmcdData.STREAMING_FORMAT_HLS, TtmlNode.TAG_P, "maxWidth", "horizontalMargins", "verticalMargins", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivLayoutParams extends ViewGroup.MarginLayoutParams {

    public int gravity;

    public boolean isBaselineAligned;

    public float verticalWeight;

    public float horizontalWeight;

    public final jd8 columnSpan;

    public final jd8 rowSpan;

    public int maxHeight;

    public int maxWidth;
    public static final af5[] j = {xq8.f(new MutablePropertyReference1Impl(DivLayoutParams.class, "columnSpan", "getColumnSpan()I", 0)), xq8.f(new MutablePropertyReference1Impl(DivLayoutParams.class, "rowSpan", "getRowSpan()I", 0))};

    public DivLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gravity = 8388659;
        this.columnSpan = new jd8(1, null, 2, null);
        this.rowSpan = new jd8(1, null, 2, null);
        this.maxHeight = Integer.MAX_VALUE;
        this.maxWidth = Integer.MAX_VALUE;
    }

    public final int a() {
        return this.columnSpan.a(this, j[0]).intValue();
    }

    public final int getGravity() {
        return this.gravity;
    }

    public final int c() {
        return ((ViewGroup.MarginLayoutParams) this).leftMargin + ((ViewGroup.MarginLayoutParams) this).rightMargin;
    }

    public final float getHorizontalWeight() {
        return this.horizontalWeight;
    }

    public final int getMaxHeight() {
        return this.maxHeight;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || DivLayoutParams.class != other.getClass()) {
            return false;
        }
        DivLayoutParams divLayoutParams = (DivLayoutParams) other;
        return ((ViewGroup.MarginLayoutParams) this).width == ((ViewGroup.MarginLayoutParams) divLayoutParams).width && ((ViewGroup.MarginLayoutParams) this).height == ((ViewGroup.MarginLayoutParams) divLayoutParams).height && ((ViewGroup.MarginLayoutParams) this).leftMargin == ((ViewGroup.MarginLayoutParams) divLayoutParams).leftMargin && ((ViewGroup.MarginLayoutParams) this).rightMargin == ((ViewGroup.MarginLayoutParams) divLayoutParams).rightMargin && ((ViewGroup.MarginLayoutParams) this).topMargin == ((ViewGroup.MarginLayoutParams) divLayoutParams).topMargin && ((ViewGroup.MarginLayoutParams) this).bottomMargin == ((ViewGroup.MarginLayoutParams) divLayoutParams).bottomMargin && this.gravity == divLayoutParams.gravity && this.isBaselineAligned == divLayoutParams.isBaselineAligned && a() == divLayoutParams.a() && g() == divLayoutParams.g() && this.verticalWeight == divLayoutParams.verticalWeight && this.horizontalWeight == divLayoutParams.horizontalWeight && this.maxHeight == divLayoutParams.maxHeight && this.maxWidth == divLayoutParams.maxWidth;
    }

    public final int getMaxWidth() {
        return this.maxWidth;
    }

    public final int g() {
        return this.rowSpan.a(this, j[1]).intValue();
    }

    public final int h() {
        return ((ViewGroup.MarginLayoutParams) this).topMargin + ((ViewGroup.MarginLayoutParams) this).bottomMargin;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((super.hashCode() * 31) + this.gravity) * 31) + (this.isBaselineAligned ? 1 : 0)) * 31) + a()) * 31) + g()) * 31) + Float.floatToIntBits(this.verticalWeight)) * 31) + Float.floatToIntBits(this.horizontalWeight)) * 31;
        int i = this.maxHeight;
        if (i == Integer.MAX_VALUE) {
            i = 0;
        }
        int i2 = (iHashCode + i) * 31;
        int i3 = this.maxWidth;
        return i2 + (i3 != Integer.MAX_VALUE ? i3 : 0);
    }

    public final float getVerticalWeight() {
        return this.verticalWeight;
    }

    public final boolean getIsBaselineAligned() {
        return this.isBaselineAligned;
    }

    public final void k(boolean z) {
        this.isBaselineAligned = z;
    }

    public final void l(int i) {
        this.columnSpan.b(this, j[0], Integer.valueOf(i));
    }

    public final void m(int i) {
        this.gravity = i;
    }

    public final void n(float f) {
        this.horizontalWeight = f;
    }

    public final void o(int i) {
        this.maxHeight = i;
    }

    public final void p(int i) {
        this.maxWidth = i;
    }

    public final void q(int i) {
        this.rowSpan.b(this, j[1], Integer.valueOf(i));
    }

    public final void r(float f) {
        this.verticalWeight = f;
    }

    public DivLayoutParams(int i, int i2) {
        super(i, i2);
        this.gravity = 8388659;
        this.columnSpan = new jd8(1, null, 2, null);
        this.rowSpan = new jd8(1, null, 2, null);
        this.maxHeight = Integer.MAX_VALUE;
        this.maxWidth = Integer.MAX_VALUE;
    }

    public DivLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.gravity = 8388659;
        this.columnSpan = new jd8(1, null, 2, null);
        this.rowSpan = new jd8(1, null, 2, null);
        this.maxHeight = Integer.MAX_VALUE;
        this.maxWidth = Integer.MAX_VALUE;
    }

    public DivLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.gravity = 8388659;
        this.columnSpan = new jd8(1, null, 2, null);
        this.rowSpan = new jd8(1, null, 2, null);
        this.maxHeight = Integer.MAX_VALUE;
        this.maxWidth = Integer.MAX_VALUE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivLayoutParams(DivLayoutParams divLayoutParams) {
        super((ViewGroup.MarginLayoutParams) divLayoutParams);
        y45.j(divLayoutParams, "source");
        this.gravity = 8388659;
        this.columnSpan = new jd8(1, null, 2, null);
        this.rowSpan = new jd8(1, null, 2, null);
        this.maxHeight = Integer.MAX_VALUE;
        this.maxWidth = Integer.MAX_VALUE;
        this.gravity = divLayoutParams.gravity;
        this.isBaselineAligned = divLayoutParams.isBaselineAligned;
        this.verticalWeight = divLayoutParams.verticalWeight;
        this.horizontalWeight = divLayoutParams.horizontalWeight;
        l(divLayoutParams.a());
        q(divLayoutParams.g());
        this.maxHeight = divLayoutParams.maxHeight;
        this.maxWidth = divLayoutParams.maxWidth;
    }
}

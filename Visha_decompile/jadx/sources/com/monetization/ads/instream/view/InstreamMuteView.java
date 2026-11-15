package com.monetization.ads.instream.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.AttrRes;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.bj2;
import com.yandex.mobile.ads.impl.z31;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0003\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/monetization/ads/instream/view/InstreamMuteView;", "Landroid/widget/ImageView;", "Lcom/yandex/mobile/ads/impl/z31;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "muted", "Lzfb;", "setMuted", "(Z)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class InstreamMuteView extends ImageView implements z31 {
    private final bj2 a;
    private boolean b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InstreamMuteView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @SuppressLint({"CustomViewStyleable"})
    private static bj2 a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MonetizationAdsInternalInstreamMuteView);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_on, R.drawable.monetization_ads_internal_ic_sound_on_default);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_off, R.drawable.monetization_ads_internal_ic_sound_off_default);
        typedArrayObtainStyledAttributes.recycle();
        return new bj2(resourceId2, resourceId);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        Resources resources = getResources();
        if (isFocused()) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.monetization_instream_internal_mute_width);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.monetization_instream_internal_mute_height);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.monetization_instream_internal_mute_width_v2);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.monetization_instream_internal_mute_height_v2);
        }
        setMeasuredDimension(dimensionPixelSize, dimensionPixelSize2);
    }

    @Override
    public void setMuted(boolean muted) {
        this.b = muted;
        this.a.a(this, muted);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InstreamMuteView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public InstreamMuteView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstreamMuteView(Context context, AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.a = a(context, attributeSet);
        a();
    }

    private final void a() {
        setMuted(this.b);
    }
}

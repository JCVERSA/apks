package com.yandex.mobile.ads.nativeads.template;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.fu;
import com.yandex.mobile.ads.impl.jn2;
import com.yandex.mobile.ads.impl.nl2;
import com.yandex.mobile.ads.impl.ol2;
import com.yandex.mobile.ads.impl.s61;
import com.yandex.mobile.ads.impl.zt;
import com.yandex.mobile.ads.nativeads.NativeAd;
import com.yandex.mobile.ads.nativeads.template.appearance.NativeTemplateAppearance;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;", "Lcom/yandex/mobile/ads/impl/zt;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;", "templateAppearance", "Lzfb;", "applyAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;)V", "Lcom/yandex/mobile/ads/nativeads/NativeAd;", "nativeAd", "setAd", "(Lcom/yandex/mobile/ads/nativeads/NativeAd;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class NativeBannerView extends zt {
    private final nl2 K;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeBannerView(Context context) {
        this(context, null);
        y45.j(context, "context");
    }

    public final void applyAppearance(NativeTemplateAppearance templateAppearance) {
        y45.j(templateAppearance, "templateAppearance");
        applyAppearance((fu) templateAppearance);
    }

    public final void setAd(NativeAd nativeAd) {
        y45.j(nativeAd, "nativeAd");
        this.K.getClass();
        y45.j(nativeAd, "nativeAd");
        if (!(nativeAd instanceof s61)) {
            throw new IllegalArgumentException("You should pass NativeAd received from native ad loader API.");
        }
        setAd(((s61) nativeAd).a());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeBannerView(Context context, AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i, new NativeTemplateAppearance.Builder().build(), jn2.a, new ol2(), null, null, null, 448, null);
        y45.j(context, "context");
        this.K = new nl2();
    }
}

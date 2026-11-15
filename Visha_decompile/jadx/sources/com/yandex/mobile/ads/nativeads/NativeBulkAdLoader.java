package com.yandex.mobile.ads.nativeads;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.wt;
import com.yandex.mobile.ads.impl.ym2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;", "", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;", "listener", "Lzfb;", "setNativeBulkAdLoadListener", "(Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;)V", "Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;", "nativeAdRequestConfiguration", "", "adsCount", "loadAds", "(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;I)V", "cancelLoading", "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class NativeBulkAdLoader {
    private final wt a;
    private final f b;

    public NativeBulkAdLoader(Context context) {
        y45.j(context, "context");
        this.a = new wt(context, new en2(context));
        this.b = new f();
    }

    public final void cancelLoading() {
        this.a.a();
    }

    public final void loadAds(NativeAdRequestConfiguration nativeAdRequestConfiguration, int adsCount) {
        y45.j(nativeAdRequestConfiguration, "nativeAdRequestConfiguration");
        this.a.a(this.b.a(nativeAdRequestConfiguration), adsCount);
    }

    public final void setNativeBulkAdLoadListener(NativeBulkAdLoadListener listener) {
        this.a.a(listener != null ? new ym2(listener) : null);
    }
}

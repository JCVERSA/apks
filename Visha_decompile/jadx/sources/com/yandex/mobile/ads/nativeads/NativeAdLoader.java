package com.yandex.mobile.ads.nativeads;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.um2;
import com.yandex.mobile.ads.impl.vt;
import com.yandex.mobile.ads.impl.wt;
import com.yandex.mobile.ads.impl.zm2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;", "", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;", "listener", "Lzfb;", "setNativeAdLoadListener", "(Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;)V", "Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;", "nativeAdRequestConfiguration", "loadAd", "(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;)V", "cancelLoading", "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public class NativeAdLoader {
    private final wt a;
    private final f b;

    public NativeAdLoader(Context context) {
        y45.j(context, "context");
        this.a = new wt(context, new en2(context));
        this.b = new f();
    }

    public final void cancelLoading() {
        this.a.a();
    }

    public final void loadAd(NativeAdRequestConfiguration nativeAdRequestConfiguration) {
        y45.j(nativeAdRequestConfiguration, "nativeAdRequestConfiguration");
        this.a.a(this.b.a(nativeAdRequestConfiguration));
    }

    public final void setNativeAdLoadListener(NativeAdLoadListener listener) {
        vt um2Var;
        if (listener instanceof a) {
            um2Var = new zm2((a) listener);
        } else {
            um2Var = listener != null ? new um2(listener) : null;
        }
        this.a.a(um2Var);
    }
}

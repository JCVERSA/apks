package com.yandex.mobile.ads.appopenad;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.common.AdRequestConfiguration;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.ll2;
import com.yandex.mobile.ads.impl.rl2;
import com.yandex.mobile.ads.impl.xs;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;", "", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;", "appOpenAdLoadListener", "Lzfb;", "setAdLoadListener", "(Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;)V", "Lcom/yandex/mobile/ads/common/AdRequestConfiguration;", "adRequestConfiguration", "loadAd", "(Lcom/yandex/mobile/ads/common/AdRequestConfiguration;)V", "cancelLoading", "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class AppOpenAdLoader {
    private final xs a;
    private final ll2 b;

    public AppOpenAdLoader(Context context) {
        y45.j(context, "context");
        this.a = new xs(context, new en2(context));
        this.b = new ll2();
    }

    public final void cancelLoading() {
        this.a.a();
    }

    public final void loadAd(AdRequestConfiguration adRequestConfiguration) {
        y45.j(adRequestConfiguration, "adRequestConfiguration");
        this.a.a(this.b.a(adRequestConfiguration));
    }

    public final void setAdLoadListener(AppOpenAdLoadListener appOpenAdLoadListener) {
        this.a.a(appOpenAdLoadListener != null ? new rl2(appOpenAdLoadListener) : null);
    }
}

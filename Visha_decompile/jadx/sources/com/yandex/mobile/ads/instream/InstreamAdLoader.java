package com.yandex.mobile.ads.instream;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.fm0;
import com.yandex.mobile.ads.impl.gm2;
import com.yandex.mobile.ads.impl.il1;
import com.yandex.mobile.ads.impl.km2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/yandex/mobile/ads/instream/InstreamAdLoader;", "Lcom/yandex/mobile/ads/impl/il1;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lcom/yandex/mobile/ads/instream/InstreamAdRequestConfiguration;", "configuration", "Lzfb;", "loadInstreamAd", "(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAdRequestConfiguration;)V", "Lcom/yandex/mobile/ads/instream/InstreamAdLoadListener;", "listener", "setInstreamAdLoadListener", "(Lcom/yandex/mobile/ads/instream/InstreamAdLoadListener;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class InstreamAdLoader extends il1 {
    private final fm0 a;

    public InstreamAdLoader(Context context) {
        y45.j(context, "context");
        this.a = new fm0(context, new en2(context));
    }

    public final void loadInstreamAd(Context context, InstreamAdRequestConfiguration configuration) {
        y45.j(context, "context");
        y45.j(configuration, "configuration");
        this.a.a(new km2(configuration));
    }

    public final void setInstreamAdLoadListener(InstreamAdLoadListener listener) {
        this.a.a(listener != null ? new gm2(listener) : null);
    }
}

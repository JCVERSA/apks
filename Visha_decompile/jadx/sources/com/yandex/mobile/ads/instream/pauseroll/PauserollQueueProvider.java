package com.yandex.mobile.ads.instream.pauseroll;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.em2;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.et;
import com.yandex.mobile.ads.impl.mt;
import com.yandex.mobile.ads.impl.qg1;
import com.yandex.mobile.ads.impl.vt0;
import com.yandex.mobile.ads.instream.InstreamAd;
import com.yandex.mobile.ads.instream.InstreamAdBreakQueue;
import com.yandex.mobile.ads.instream.InstreamAdBreakType;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/instream/pauseroll/PauserollQueueProvider;", "", "Lcom/yandex/mobile/ads/instream/InstreamAdBreakQueue;", "Lcom/yandex/mobile/ads/instream/pauseroll/Pauseroll;", "getQueue", "()Lcom/yandex/mobile/ads/instream/InstreamAdBreakQueue;", "queue", "Landroid/content/Context;", "context", "Lcom/yandex/mobile/ads/instream/InstreamAd;", "instreamAd", MethodDecl.initName, "(Landroid/content/Context;Lcom/yandex/mobile/ads/instream/InstreamAd;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class PauserollQueueProvider {
    private final qg1 a;
    private final vt0<Pauseroll> b;

    public PauserollQueueProvider(Context context, InstreamAd instreamAd) {
        y45.j(context, "context");
        y45.j(instreamAd, "instreamAd");
        en2 en2Var = new en2(context);
        et etVarA = mt.a(instreamAd);
        this.a = new qg1();
        this.b = new vt0<>(context, en2Var, etVarA);
    }

    public final InstreamAdBreakQueue<Pauseroll> getQueue() {
        return new em2(this.b.a(this.a, InstreamAdBreakType.PAUSEROLL));
    }
}

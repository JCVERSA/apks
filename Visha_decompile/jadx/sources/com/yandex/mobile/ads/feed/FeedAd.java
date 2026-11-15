package com.yandex.mobile.ads.feed;

import android.content.Context;
import com.yandex.mobile.ads.impl.ba0;
import com.yandex.mobile.ads.impl.d90;
import com.yandex.mobile.ads.impl.da0;
import com.yandex.mobile.ads.impl.e90;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.f90;
import com.yandex.mobile.ads.impl.j01;
import com.yandex.mobile.ads.impl.k90;
import com.yandex.mobile.ads.impl.l90;
import com.yandex.mobile.ads.impl.na0;
import com.yandex.mobile.ads.impl.o3;
import com.yandex.mobile.ads.impl.t90;
import com.yandex.mobile.ads.impl.ts;
import com.yandex.mobile.ads.impl.v10;
import com.yandex.mobile.ads.impl.v7;
import com.yandex.mobile.ads.impl.w90;
import com.yandex.mobile.ads.impl.x90;
import com.yandex.mobile.ads.impl.y90;
import defpackage.kw6;
import defpackage.lg9;
import defpackage.mc2;
import defpackage.v6a;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R.\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAd;", "Lcom/yandex/mobile/ads/feed/a;", "Lzfb;", "preloadAd", "()V", "Lcom/yandex/mobile/ads/feed/FeedAdLoadListener;", ES6Iterator.VALUE_PROPERTY, "b", "Lcom/yandex/mobile/ads/feed/FeedAdLoadListener;", "getLoadListener", "()Lcom/yandex/mobile/ads/feed/FeedAdLoadListener;", "setLoadListener", "(Lcom/yandex/mobile/ads/feed/FeedAdLoadListener;)V", "loadListener", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class FeedAd extends a {
    private final na0 a;

    private FeedAdLoadListener loadListener;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAd$Builder;", "", "Lcom/yandex/mobile/ads/feed/FeedAd;", "build", "()Lcom/yandex/mobile/ads/feed/FeedAd;", "Landroid/content/Context;", "context", "Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;", "requestConfiguration", "Lcom/yandex/mobile/ads/feed/FeedAdAppearance;", "appearance", MethodDecl.initName, "(Landroid/content/Context;Lcom/yandex/mobile/ads/feed/FeedAdRequestConfiguration;Lcom/yandex/mobile/ads/feed/FeedAdAppearance;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private final Context a;
        private final FeedAdRequestConfiguration b;
        private final FeedAdAppearance c;
        private final e90 d;

        public Builder(Context context, FeedAdRequestConfiguration feedAdRequestConfiguration, FeedAdAppearance feedAdAppearance) {
            y45.j(context, "context");
            y45.j(feedAdRequestConfiguration, "requestConfiguration");
            y45.j(feedAdAppearance, "appearance");
            this.a = context;
            this.b = feedAdRequestConfiguration;
            this.c = feedAdAppearance;
            this.d = new e90();
        }

        public final FeedAd build() {
            v7 v7VarA = this.d.a(this.b, this.c);
            en2 en2Var = new en2(this.a);
            Context applicationContext = this.a.getApplicationContext();
            y45.g(applicationContext);
            k90 k90Var = new k90(applicationContext, en2Var.c());
            l90 l90Var = new l90(k90Var, en2Var.c(), new v10());
            o3 o3Var = new o3(ts.j, en2Var);
            kw6 kw6VarB = lg9.b(1, 0, null, 6, null);
            w90 w90Var = new w90(applicationContext, en2Var, o3Var);
            x90 x90Var = new x90(w90Var, new f90());
            ba0 ba0Var = new ba0(l90Var);
            j01 j01Var = new j01();
            y90 y90Var = new y90(j01Var);
            da0 da0Var = new da0(v7VarA, x90Var, ba0Var, y90Var);
            return new FeedAd(new na0(applicationContext, en2Var, v7VarA, k90Var, l90Var, o3Var, kw6VarB, w90Var, x90Var, ba0Var, j01Var, y90Var, da0Var, new t90(kw6VarB, da0Var), d.a(mc2.c().plus(v6a.b(null, 1, null)))), null);
        }
    }

    private FeedAd(na0 na0Var) {
        this.a = na0Var;
    }

    @Override
    public final na0 getA() {
        return this.a;
    }

    public final FeedAdLoadListener getLoadListener() {
        return this.loadListener;
    }

    public final void preloadAd() {
        this.a.f();
    }

    public final void setLoadListener(FeedAdLoadListener feedAdLoadListener) {
        this.a.a(new d90(feedAdLoadListener));
        this.loadListener = feedAdLoadListener;
    }

    public FeedAd(na0 na0Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(na0Var);
    }
}

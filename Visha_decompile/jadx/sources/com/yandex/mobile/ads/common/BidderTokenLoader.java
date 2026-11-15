package com.yandex.mobile.ads.common;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.yandex.mobile.ads.banner.BannerAdSize;
import com.yandex.mobile.ads.banner.a;
import com.yandex.mobile.ads.impl.bf1;
import com.yandex.mobile.ads.impl.cl;
import com.yandex.mobile.ads.impl.dl;
import com.yandex.mobile.ads.impl.ef1;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.eu1;
import com.yandex.mobile.ads.impl.g5;
import com.yandex.mobile.ads.impl.gu1;
import com.yandex.mobile.ads.impl.gz1;
import com.yandex.mobile.ads.impl.j32;
import com.yandex.mobile.ads.impl.jc;
import com.yandex.mobile.ads.impl.p50;
import com.yandex.mobile.ads.impl.qu;
import com.yandex.mobile.ads.impl.ts;
import com.yandex.mobile.ads.impl.ul2;
import com.yandex.mobile.ads.impl.vl2;
import com.yandex.mobile.ads.impl.wv1;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/common/BidderTokenLoader;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;", "bidderTokenRequestConfiguration", "Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;", "listener", "Lzfb;", "loadBidderToken", "(Landroid/content/Context;Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BidderTokenLoader {
    static {
        new BidderTokenLoader();
    }

    private BidderTokenLoader() {
    }

    public static final void loadBidderToken(Context context, BidderTokenRequestConfiguration bidderTokenRequestConfiguration, BidderTokenLoadListener listener) {
        ts tsVar;
        y45.j(context, "context");
        y45.j(bidderTokenRequestConfiguration, "bidderTokenRequestConfiguration");
        y45.j(listener, "listener");
        en2 en2Var = new en2(context);
        ul2 ul2Var = new ul2(listener);
        y45.j(bidderTokenRequestConfiguration, Progress.REQUEST);
        switch (vl2.a[bidderTokenRequestConfiguration.getAdType().ordinal()]) {
            case 1:
                tsVar = null;
                break;
            case 2:
                tsVar = ts.d;
                break;
            case 3:
                tsVar = ts.e;
                break;
            case 4:
                tsVar = ts.f;
                break;
            case 5:
                tsVar = ts.g;
                break;
            case 6:
                tsVar = ts.i;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        BannerAdSize bannerAdSize = bidderTokenRequestConfiguration.getBannerAdSize();
        gz1 gz1VarA = bannerAdSize != null ? a.a(bannerAdSize).a() : null;
        Map<String, String> parameters = bidderTokenRequestConfiguration.getParameters();
        if (parameters == null) {
            parameters = kotlin.collections.a.l();
        }
        dl dlVar = new dl(tsVar, gz1VarA, parameters);
        nk1 nk1VarA = d.a(v6a.b(null, 1, null).plus(qu.a()));
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        g5 g5Var = new g5();
        int i = p50.e;
        p50 p50VarA = p50.a.a(applicationContext);
        jc jcVar = new jc();
        wv1 wv1Var = new wv1(applicationContext, en2Var, nk1VarA, g5Var, p50VarA, jcVar);
        int i2 = j32.d;
        new gu1(context, en2Var, nk1VarA, applicationContext, g5Var, p50VarA, jcVar, wv1Var, j32.a.a(), new eu1(g5Var), new ef1(g5Var, en2Var.c(), new cl(), new bf1(g5Var))).a(dlVar, ul2Var);
    }
}

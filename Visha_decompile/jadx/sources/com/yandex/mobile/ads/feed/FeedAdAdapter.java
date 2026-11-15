package com.yandex.mobile.ads.feed;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.mobile.ads.impl.g90;
import com.yandex.mobile.ads.impl.na0;
import com.yandex.mobile.ads.impl.qe2;
import com.yandex.mobile.ads.impl.st;
import com.yandex.mobile.ads.impl.t4;
import com.yandex.mobile.ads.impl.yl2;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdAdapter;", "Lcom/yandex/mobile/ads/impl/g90;", "Lcom/yandex/mobile/ads/feed/FeedAdEventListener;", GslbInterceptor.HEADER_KEY_GSLB, "Lcom/yandex/mobile/ads/feed/FeedAdEventListener;", "getEventListener", "()Lcom/yandex/mobile/ads/feed/FeedAdEventListener;", "setEventListener", "(Lcom/yandex/mobile/ads/feed/FeedAdEventListener;)V", "eventListener", "Lcom/yandex/mobile/ads/feed/FeedAd;", "feedAd", MethodDecl.initName, "(Lcom/yandex/mobile/ads/feed/FeedAd;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class FeedAdAdapter extends g90 {

    private FeedAdEventListener eventListener;
    private final st h;
    private final qe2 i;

    public final class a implements st {

        public static final class C0308a extends Lambda implements c74 {
            final FeedAdAdapter b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0308a(FeedAdAdapter feedAdAdapter) {
                super(0);
                this.b = feedAdAdapter;
            }

            @Override
            public final Object invoke() {
                FeedAdEventListener eventListener = this.b.getEventListener();
                if (eventListener != null) {
                    eventListener.onAdClicked();
                }
                return zfb.a;
            }
        }

        public static final class b extends Lambda implements c74 {
            final FeedAdAdapter b;
            final yl2 c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(FeedAdAdapter feedAdAdapter, yl2 yl2Var) {
                super(0);
                this.b = feedAdAdapter;
                this.c = yl2Var;
            }

            @Override
            public final Object invoke() {
                FeedAdEventListener eventListener = this.b.getEventListener();
                if (eventListener != null) {
                    eventListener.onImpression(this.c);
                }
                return zfb.a;
            }
        }

        public a() {
        }

        @Override
        public final void a(t4 t4Var) {
            new CallbackStackTraceMarker(new b(FeedAdAdapter.this, t4Var != null ? new yl2(t4Var) : null));
        }

        @Override
        public final void closeNativeAd() {
        }

        @Override
        public final void onAdClicked() {
            new CallbackStackTraceMarker(new C0308a(FeedAdAdapter.this));
        }

        @Override
        public final void onLeftApplication() {
        }

        @Override
        public final void onReturnedToApplication() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FeedAdAdapter(FeedAd feedAd) {
        y45.j(feedAd, "feedAd");
        na0 na0VarA = feedAd.a();
        y45.i(na0VarA, "getFeedViewModel(...)");
        super(na0VarA, null, 2, null);
        this.h = new a();
        this.i = new qe2();
    }

    @Override
    public final st getH() {
        return this.h;
    }

    @Override
    public final qe2 getI() {
        return this.i;
    }

    public final FeedAdEventListener getEventListener() {
        return this.eventListener;
    }

    public final void setEventListener(FeedAdEventListener feedAdEventListener) {
        this.eventListener = feedAdEventListener;
    }
}

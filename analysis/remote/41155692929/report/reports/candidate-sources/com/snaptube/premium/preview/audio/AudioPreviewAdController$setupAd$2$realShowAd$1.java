package com.snaptube.premium.preview.audio;

import com.snaptube.ad.guardian.TrackConstant;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.premium.R;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.bx2;
import o.mg8;
import o.or3;
import o.ve7;
import o.wu7;
import o.ys2;
import o.zf1;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lo/mg8;", "invoke", "()V", "<no name provided>"}, k = 3, mv = {1, 9, 0})
public final class AudioPreviewAdController$setupAd$2$realShowAd$1 extends Lambda implements bx2 {
    final AdView $adView;
    final ys2 $root;
    final AudioPreviewAdController this$0;

    public static final class a extends zf1 {
        public final AudioPreviewAdController a;
        public final ys2 b;

        public a(AudioPreviewAdController audioPreviewAdController, ys2 ys2Var) {
            this.a = audioPreviewAdController;
            this.b = ys2Var;
        }

        @Override
        public void onAdImpression(String str, String str2, String str3) {
        }

        @Override
        public void onAdImpression(String str, String str2, String str3, PubnativeAdModel pubnativeAdModel) {
            or3.f(pubnativeAdModel, "adData");
            if (or3.a(str, AudioPreviewAdController.c(this.a).pos())) {
                AudioPreviewAdController.e(this.a, this.b, str, str2, str3, pubnativeAdModel);
            }
        }
    }

    public static final class b extends ve7 {
        public final AudioPreviewAdController a;
        public final ys2 b;

        public b(AudioPreviewAdController audioPreviewAdController, ys2 ys2Var) {
            this.a = audioPreviewAdController;
            this.b = ys2Var;
        }

        @Override
        public void c(Object obj) {
            d((RxBus.d) obj);
        }

        public void d(RxBus.d dVar) {
            Object obj = dVar != null ? dVar.d : null;
            if (or3.a(obj instanceof String ? (String) obj : null, AudioPreviewAdController.c(this.a).pos())) {
                AudioPreviewAdController.d(this.a, this.b);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPreviewAdController$setupAd$2$realShowAd$1(AdView adView, AudioPreviewAdController audioPreviewAdController, ys2 ys2Var) {
        super(0);
        this.$adView = adView;
        this.this$0 = audioPreviewAdController;
        this.$root = ys2Var;
    }

    @Override
    public Object invoke() {
        m157invoke();
        return mg8.a;
    }

    public final void m157invoke() {
        ProductionEnv.d("AudioPreviewAd", "real show ad");
        AdView adView = this.$adView;
        AudioPreviewAdController audioPreviewAdController = this.this$0;
        adView.setAdListener(new a(audioPreviewAdController, this.$root));
        adView.setAdMaxWidth(TrackConstant.SCAN_MAX_COUNT);
        adView.setAdRadius(12);
        adView.setLayoutId(R.layout.audio_preview_ad);
        adView.setPlacementAlias(AudioPreviewAdController.c(audioPreviewAdController).pos());
        ProductionEnv.d("AudioPreviewAd", "layoutId: " + adView.getLayoutId());
        adView.o0();
        if (AudioPreviewAdController.a(this.this$0) != null) {
            wu7 wu7VarA = AudioPreviewAdController.a(this.this$0);
            or3.c(wu7VarA);
            if (!wu7VarA.isUnsubscribed()) {
                return;
            }
        }
        AudioPreviewAdController.f(this.this$0, RxBus.d().c(1052).g(RxBus.f).x0(new b(this.this$0, this.$root)));
    }
}

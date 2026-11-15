package androidx.privacysandbox.ads.adservices.java.adselection;

import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "<anonymous>", "(Lnk1;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1", f = "AdSelectionManagerFutures.kt", l = {94}, m = "invokeSuspend")
public final class AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1 extends SuspendLambda implements s74 {
    final AdSelectionConfig $adSelectionConfig;
    int label;
    final AdSelectionManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(AdSelectionManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, AdSelectionConfig adSelectionConfig, wh1<? super AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = api33Ext4JavaImpl;
        this.$adSelectionConfig = adSelectionConfig;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this.this$0, this.$adSelectionConfig, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super AdSelectionOutcome> wh1Var) {
        return ((AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            AdSelectionManager adSelectionManager = this.this$0.mAdSelectionManager;
            y45.g(adSelectionManager);
            AdSelectionConfig adSelectionConfig = this.$adSelectionConfig;
            this.label = 1;
            obj = adSelectionManager.selectAds(adSelectionConfig, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }
}

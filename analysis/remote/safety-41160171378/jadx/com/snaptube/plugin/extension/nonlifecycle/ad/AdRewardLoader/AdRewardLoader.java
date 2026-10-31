package com.snaptube.plugin.extension.nonlifecycle.ad;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.result.ActivityResult;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import javax.inject.Inject;
import kotlin.Metadata;
import o.b6;
import o.b7;
import o.cy2;
import o.dx2;
import o.e6;
import o.fc1;
import o.g6;
import o.gb;
import o.kf5;
import o.ne3;
import o.or3;
import o.rb;
import o.sb;
import o.sh;
import o.tx2;
import o.ux2;
import o.wd0;
import o.wu7;
import o.x24;
import o.y24;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 >2\u00020\u0001:\u0002?@B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\fJC\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\b2\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R2\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001c\u00109\u001a\b\u0012\u0004\u0012\u000206058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006A"}, d2 = {"Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;", "Lcom/snaptube/plugin/extension/nonlifecycle/ad/RewardLoader;", "", "placementId", "Landroid/os/Bundle;", "frequencyExtraInfo", "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Lo/x24;", "owner", "Lo/mg8;", "u", "(Lo/x24;)V", "onDestroy", "Landroid/content/Context;", "context", "lifecycleOwner", "Lkotlin/Function3;", "Lcom/snaptube/plugin/extension/nonlifecycle/ad/RewardLoader$RewardedResult;", "", "Lnet/pubnative/mediation/request/model/PubnativeAdModel;", "pendingRewardRunnable", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/content/Context;Lo/x24;Lo/tx2;)V", "c", "Ljava/lang/String;", "Landroid/os/Bundle;", "Lo/ne3;", "e", "Lo/ne3;", "getAdManager", "()Lo/ne3;", "setAdManager", "(Lo/ne3;)V", "adManager", "Lo/b7;", "f", "Lo/b7;", "getAdCache", "()Lo/b7;", "setAdCache", "(Lo/b7;)V", "adCache", "Lo/gb;", "g", "Lo/gb;", CampaignEx.JSON_KEY_AD_R, "()Lo/gb;", "setAdRepositoryService", "(Lo/gb;)V", "adRepositoryService", "h", "Lo/tx2;", "Lo/g6;", "Landroid/content/Intent;", "i", "Lo/g6;", "rewardActivityLauncher", "Lo/wu7;", "j", "Lo/wu7;", "rewardSubscription", CampaignEx.JSON_KEY_AD_K, "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdRewardLoader extends RewardLoader {

    public final String placementId;

    public final Bundle frequencyExtraInfo;

    @Inject
    public ne3 adManager;

    @Inject
    public b7 adCache;

    @Inject
    public gb adRepositoryService;

    public tx2 pendingRewardRunnable;

    public g6 rewardActivityLauncher;

    public wu7 rewardSubscription;

    public interface b {
        void B(AdRewardLoader adRewardLoader);
    }

    public static final class c implements kf5, cy2 {
        public final dx2 a;

        public c(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public AdRewardLoader(String str, Bundle bundle) {
        or3.f(str, "placementId");
        this.placementId = str;
        this.frequencyExtraInfo = bundle;
        ((b) fc1.a(PhoenixApplication.z())).B(this);
    }

    public static void e(dx2 dx2Var, Object obj) {
        t(dx2Var, obj);
    }

    public static void f(ActivityResult activityResult) {
        s(activityResult);
    }

    public static final Bundle g(AdRewardLoader adRewardLoader) {
        return adRewardLoader.frequencyExtraInfo;
    }

    public static final tx2 h(AdRewardLoader adRewardLoader) {
        return adRewardLoader.pendingRewardRunnable;
    }

    public static final String i(AdRewardLoader adRewardLoader) {
        return adRewardLoader.placementId;
    }

    public static final g6 n(AdRewardLoader adRewardLoader) {
        return adRewardLoader.rewardActivityLauncher;
    }

    public static final void o(AdRewardLoader adRewardLoader, tx2 tx2Var) {
        adRewardLoader.pendingRewardRunnable = tx2Var;
    }

    public static final void s(ActivityResult activityResult) {
    }

    public static final void t(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    @Override
    public void d(Context context, x24 lifecycleOwner, tx2 pendingRewardRunnable) {
        or3.f(context, "context");
        or3.f(lifecycleOwner, "lifecycleOwner");
        wd0.d(y24.a(lifecycleOwner), null, null, new AdRewardLoader$launchAdReward$1(this, lifecycleOwner, context, pendingRewardRunnable, null), 3, null);
    }

    @Override
    public void onDestroy(x24 owner) {
        or3.f(owner, "owner");
        ProductionEnv.d("AdRewardLoader", "onDestroy: ");
        wu7 wu7Var = this.rewardSubscription;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        super.onDestroy(owner);
    }

    public final gb r() {
        gb gbVar = this.adRepositoryService;
        if (gbVar != null) {
            return gbVar;
        }
        or3.w("adRepositoryService");
        return null;
    }

    @Override
    public void u(x24 owner) {
        or3.f(owner, "owner");
        super.u(owner);
        ProductionEnv.d("AdRewardLoader", "onCreate: ");
        g6 g6VarRegisterForActivityResult = ((b6) owner).registerForActivityResult(new e6(), new rb());
        or3.e(g6VarRegisterForActivityResult, "registerForActivityResult(...)");
        this.rewardActivityLauncher = g6VarRegisterForActivityResult;
        this.rewardSubscription = RxBus.d().c(1252, 1253, 1261).Y(sh.c()).t0(new sb(new AdRewardLoader$onCreate$2(this)));
    }
}

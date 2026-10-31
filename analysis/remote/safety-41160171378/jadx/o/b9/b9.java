package o;

import android.content.Context;
import android.text.TextUtils;
import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.player_guide.strategy.model.AppRes;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.ads.splash.RewardSplashAdActivity;
import java.util.Map;

public class b9 extends com.snaptube.player_guide.resAction.d {
    public final AppRes i;
    public final boolean j;

    public static final class a implements gn7 {
        public final Context a;
        public final b9 b;

        public a(Context context, b9 b9Var) {
            this.a = context;
            this.b = b9Var;
        }

        @Override
        public void a() {
            if (ju5.c(this.a)) {
                ju5.e(this.a, b9.s(this.b).getLog().e, b9.s(this.b).getBaseInfo().a, b9.s(this.b).getGuideTask().f377o, b9.s(this.b).getGuideTask().n);
            } else {
                NavigationManager.j0(this.a, this.b.h(), true);
            }
            RewardSplashAdActivity.INSTANCE.c();
        }

        @Override
        public void j() {
            gn7.a.a(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b9(AppRes appRes, Map map, boolean z) {
        super(appRes, map, z);
        or3.f(appRes, "appRes");
        this.i = appRes;
        this.j = z;
    }

    public static final AppRes s(b9 b9Var) {
        return b9Var.i;
    }

    @Override
    public boolean k() {
        return (!super.k() || this.i.getLog() == null || TextUtils.isEmpty(this.i.getLog().e)) ? false : true;
    }

    @Override
    public boolean l(Context context) {
        or3.f(context, "context");
        if (super.l(context)) {
            return true;
        }
        RewardSplashAdActivity.Companion companion = RewardSplashAdActivity.INSTANCE;
        boolean zL1 = NavigationManager.l1(context, companion.b(context, true, "ad_guide_res", this.i.getGuideTask().q, null, null, !t()));
        if (zL1) {
            companion.a(new a(context, this));
        }
        return zL1;
    }

    public final boolean t() {
        return or3.a(this.i.getGuideTask().q, PlayerGuideAdPos.AD_POS_DOWNLOAD_OUTSIDE_REWARD.getName());
    }
}

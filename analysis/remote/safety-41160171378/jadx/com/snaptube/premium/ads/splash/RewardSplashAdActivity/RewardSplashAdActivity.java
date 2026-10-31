package com.snaptube.premium.ads.splash;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.ads.activity.SplashAdActivity;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import o.gn7;
import o.or3;
import o.pg1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity;", "Lcom/snaptube/ads/activity/SplashAdActivity;", "<init>", "()V", CampaignEx.JSON_KEY_AD_Q, "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class RewardSplashAdActivity extends SplashAdActivity {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final void a(gn7 gn7Var) {
            or3.f(gn7Var, "callback");
            RewardSplashAdActivity.o1(gn7Var);
        }

        public final Intent b(Context context, boolean z, String str, String str2, Bundle bundle, Map map, boolean z2) {
            Intent intent = new Intent(context, (Class<?>) (z2 ? SplashAdActivity.class : RewardSplashAdActivity.class));
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            intent.putExtra("force_show", z);
            intent.putExtra("entrance", str);
            intent.putExtra(IntentUtil.POS, str2);
            intent.putExtra("show_cover_bg", false);
            intent.putExtra("waterfall_load_time_out", 0L);
            intent.putExtra("use_cache", true);
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.putAll(map);
            }
            intent.putExtra("extras", map2);
            if (!z2) {
                intent.setFlags(intent.getFlags() | 276856832);
            }
            return intent;
        }

        public final void c() {
            RewardSplashAdActivity.o1(null);
        }
    }

    public static final void o1(gn7 gn7Var) {
        SplashAdActivity.p = gn7Var;
    }
}

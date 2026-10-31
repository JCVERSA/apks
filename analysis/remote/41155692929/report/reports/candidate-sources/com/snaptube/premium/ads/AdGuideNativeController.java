package com.snaptube.premium.ads;

import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.util.ProductionEnv;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d;
import net.pubnative.mediation.config.model.PubnativeDeliveryRuleModel;
import net.pubnative.mediation.config.model.PubnativeNetworkModel;
import net.pubnative.mediation.config.model.PubnativePlacementModel;
import net.pubnative.mediation.config.model.PubnativePriorityRuleModel;
import net.pubnative.mediation.utils.WaterfallPlugin;
import o.cv0;
import o.i04;
import o.kd8;
import o.or3;
import o.q23;
import o.y8;
import o.z8;
import org.json.JSONObject;

public final class AdGuideNativeController {
    public static final AdGuideNativeController a;
    public static final String[] b;
    public static final PubnativePlacementModel c;
    public static final PubnativeNetworkModel d;
    public static final PubnativePriorityRuleModel e;

    static {
        AdGuideNativeController adGuideNativeController = new AdGuideNativeController();
        a = adGuideNativeController;
        b = new String[]{PlayerGuideAdPos.AD_POS_MUSIC_DETAIL_CONTINUE_PLAY.getName(), PlayerGuideAdPos.AD_POS_AUDIO_FULL_SCREEN_LYRIC.getName(), PlayerGuideAdPos.AD_POS_VIDEO_DETAIL_CONTINUE_PLAY.getName(), PlayerGuideAdPos.AD_POS_VIDEO_FULL_SCREEN.getName(), PlayerGuideAdPos.AD_POS_VIDEO_PLAY_AS_AUDIO.getName(), PlayerGuideAdPos.AD_POS_VIDEO_PLAYBACK_SPEED.getName(), PlayerGuideAdPos.AD_POS_DOWNLOAD_OUTSIDE_REWARD.getName(), PlayerGuideAdPos.AD_POS_BATCH_DOWNLOAD_REWARD.getName(), PlayerGuideAdPos.AD_POS_START_DOWNLOAD_INTERSTITIAL.getName(), PlayerGuideAdPos.AD_POS_LOCAL_PLAY_AUDIO_GP.getName(), PlayerGuideAdPos.AD_POS_LOCAL_PLAY_VIDEO_GP.getName()};
        c = adGuideNativeController.d();
        PubnativeNetworkModel pubnativeNetworkModel = new PubnativeNetworkModel();
        pubnativeNetworkModel.params = d.g(kd8.a("placement_id", "ad_guide_native_network_placement_id"));
        pubnativeNetworkModel.adapter = "AdGuideNetworkAdapter";
        pubnativeNetworkModel.timeout = 30000;
        d = pubnativeNetworkModel;
        PubnativePriorityRuleModel pubnativePriorityRuleModel = new PubnativePriorityRuleModel();
        pubnativePriorityRuleModel.id = Integer.MAX_VALUE;
        pubnativePriorityRuleModel.network_code = "adGuide#ad_guide_native_network_placement_id";
        pubnativePriorityRuleModel.expected_price = 1.0E-4f;
        e = pubnativePriorityRuleModel;
    }

    public static PubnativeNetworkModel a(PubnativeNetworkModel pubnativeNetworkModel, String str) {
        return f(pubnativeNetworkModel, str);
    }

    public static PubnativePlacementModel b(PubnativePlacementModel pubnativePlacementModel, String str) {
        return h(pubnativePlacementModel, str);
    }

    public static final PubnativePriorityRuleModel c() {
        return e;
    }

    public static final PubnativeNetworkModel f(PubnativeNetworkModel pubnativeNetworkModel, String str) {
        return or3.a("adGuide#ad_guide_native_network_placement_id", str) ? d : pubnativeNetworkModel;
    }

    public static final PubnativePlacementModel h(PubnativePlacementModel pubnativePlacementModel, String str) {
        String strX = q23.x(new PlayerGuideAdPos(str, ""));
        if (strX == null) {
            strX = i04.a;
        }
        if (!q23.W(strX)) {
            JSONObject jSONObjectC = com.snaptube.player_guide.b.a.c();
            if (pubnativePlacementModel != null) {
                return pubnativePlacementModel;
            }
            if (jSONObjectC != null && !jSONObjectC.has(str)) {
                return pubnativePlacementModel;
            }
            PubnativePlacementModel pubnativePlacementModelD = a.d();
            pubnativePlacementModelD.priority_rules.add(e);
            return pubnativePlacementModelD;
        }
        ProductionEnv.d("AdGuideNativeController" + str, " " + strX + " 已安装，不插入兜底");
        a.i(pubnativePlacementModel);
        return pubnativePlacementModel;
    }

    public final PubnativePlacementModel d() {
        PubnativePlacementModel pubnativePlacementModel = new PubnativePlacementModel();
        pubnativePlacementModel.priority_rules = new ArrayList();
        pubnativePlacementModel.delivery_rule = new PubnativeDeliveryRuleModel();
        return pubnativePlacementModel;
    }

    public final WaterfallPlugin.NetworkHandler e() {
        return new z8();
    }

    public final WaterfallPlugin.PlacementHandler g() {
        return new y8();
    }

    public final void i(PubnativePlacementModel pubnativePlacementModel) {
        List<PubnativePriorityRuleModel> list;
        if (pubnativePlacementModel == null || (list = pubnativePlacementModel.priority_rules) == null) {
            return;
        }
        cv0.B(list, AdGuideNativeController$removeGuideRule$1.INSTANCE);
    }
}

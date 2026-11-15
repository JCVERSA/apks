package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseAdSceneCtxExprHandler {
    @Override
    public String h(String sceneId, MbAdDbPlans mbAdDbPlans, Map ctxMap) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(ctxMap, "ctxMap");
        if (mbAdDbPlans != null) {
            return mbAdDbPlans.getCtxEnableExpr();
        }
        return null;
    }

    @Override
    public String i() {
        return "命中 白名单,当前广告计划 满足展示条件";
    }

    @Override
    public String j() {
        return "未命中 白名单,当前广告计划 不满足展示条件";
    }

    @Override
    public boolean k(boolean z10) {
        return z10;
    }
}

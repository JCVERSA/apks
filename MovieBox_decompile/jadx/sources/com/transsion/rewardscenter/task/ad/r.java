package com.transsion.rewardscenter.task.ad;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$layout;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class r extends BaseItemProvider {

    private final BaseStageTaskAdHelper f49115e;

    private boolean f49116f;

    private final int f49117g = AdTaskType.STAGE_AD.getValue();

    private final int f49118h = R$layout.member_task_stage_item_layout;

    public r(BaseStageTaskAdHelper baseStageTaskAdHelper) {
        this.f49115e = baseStageTaskAdHelper;
    }

    public static final Unit A(r rVar, v vVar, v.c it) {
        Intrinsics.h(it, "it");
        rVar.B((v.c) vVar);
        return Unit.f64096a;
    }

    private final void B(v.c cVar) {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_stage");
        map.put("ad_state", cVar.e().name());
        qi.h.f69682a.o("MemberAdTask", map);
    }

    private final void C() {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_stage");
        qi.h.f69682a.z("MemberAdTask", map);
    }

    @Override
    public int l() {
        return this.f49117g;
    }

    @Override
    public int m() {
        return this.f49118h;
    }

    @Override
    public void b(BaseViewHolder helper, final v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof v.c) {
            View view = helper.itemView;
            Intrinsics.f(view, "null cannot be cast to non-null type com.transsion.rewardscenter.task.ad.StageTaskAdView");
            StageTaskAdView stageTaskAdView = (StageTaskAdView) view;
            stageTaskAdView.setAdHelper(this.f49115e);
            stageTaskAdView.setData((v.c) item);
            stageTaskAdView.setClickCallback(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return r.A(this.f49113a, item, (v.c) obj);
                }
            });
            if (this.f49116f) {
                return;
            }
            this.f49116f = true;
            C();
        }
    }
}

package com.transsion.rewardscenter.task.ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class p extends BaseItemProvider {

    private final MemberTaskAdHelper f49109e;

    private boolean f49110f;

    private final int f49111g = AdTaskType.REWARD_AD.getValue();

    private final int f49112h = R$layout.member_task_reward_layout;

    public p(MemberTaskAdHelper memberTaskAdHelper) {
        this.f49109e = memberTaskAdHelper;
    }

    public static final void B(p pVar, View view) {
        pVar.D(true);
        MemberTaskAdHelper memberTaskAdHelper = pVar.f49109e;
        if (memberTaskAdHelper != null) {
            memberTaskAdHelper.Y(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return p.C(((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public static final Unit C(boolean z10) {
        return Unit.f64096a;
    }

    private final void D(boolean z10) {
        HashMap map = new HashMap();
        map.put("module_name", "member_ad_task_reward");
        if (z10) {
            qi.h.f69682a.o("MemberAdTask", map);
        } else {
            qi.h.f69682a.z("MemberAdTask", map);
        }
    }

    static void E(p pVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        pVar.D(z10);
    }

    @Override
    public void b(BaseViewHolder helper, v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof v.b) {
            View viewFindViewById = helper.itemView.findViewById(R$id.reward_action);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        p.B(this.f49108a, view);
                    }
                });
            }
            if (this.f49110f) {
                return;
            }
            this.f49110f = true;
            E(this, false, 1, null);
        }
    }

    @Override
    public int l() {
        return this.f49111g;
    }

    @Override
    public int m() {
        return this.f49112h;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(m(), parent, false);
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }
}

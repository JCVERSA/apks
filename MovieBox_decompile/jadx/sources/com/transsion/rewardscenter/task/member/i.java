package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

public final class i extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        return String.valueOf(item.getTitle());
    }

    @Override
    public boolean F(MemberTaskItem memberTaskItem) {
        return false;
    }

    @Override
    public void G() {
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "https://h5-aoneroom.com/spa/fissionh5/pp";
        } else {
            jumpUrl = item.getJumpUrl();
            if (jumpUrl == null) {
                jumpUrl = "";
            }
        }
        hj.b.d(hj.b.f61369a, k(), "oneroom://com.community.oneroom?type=/web/web&url=" + jumpUrl, null, 4, null);
    }

    @Override
    public int l() {
        return TaskType.PALM_PAY.getValue();
    }

    @Override
    public void b(BaseViewHolder helper, MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        super.b(helper, item);
        TextView textView = (TextView) helper.getView(R$id.member_item_task_button);
        item.setStatus(0);
        E(textView, item);
    }
}

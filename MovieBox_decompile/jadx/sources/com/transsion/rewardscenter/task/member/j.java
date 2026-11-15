package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

public final class j extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer status;
        Integer durationCondition;
        return (memberTaskItem == null || (status = memberTaskItem.getStatus()) == null || status.intValue() != 3) && hm.k.f61387a.H() >= ((memberTaskItem == null || (durationCondition = memberTaskItem.getDurationCondition()) == null) ? 0 : durationCondition.intValue());
    }

    @Override
    public void G() {
        hm.k.f61387a.w();
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "oneroom://com.community.oneroom?type=/commercial/gamecenter&fromTask=true";
        } else {
            jumpUrl = item.getJumpUrl();
            if (jumpUrl == null) {
                jumpUrl = "";
            }
        }
        hj.b.d(hj.b.f61369a, k(), jumpUrl, null, 4, null);
    }

    @Override
    public int l() {
        return TaskType.PLAY_GAME.getValue();
    }
}

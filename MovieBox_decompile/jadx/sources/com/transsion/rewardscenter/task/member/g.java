package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class g extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        Integer durationCondition = item.getDurationCondition();
        long jIntValue = ((long) (durationCondition != null ? durationCondition.intValue() : 0)) / 60;
        long jI = RangesKt.i(hm.k.f61387a.D(), jIntValue);
        return item.getTitle() + " (" + jI + "/" + jIntValue + " mins)";
    }

    @Override
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer status;
        Integer durationCondition;
        return (memberTaskItem == null || (status = memberTaskItem.getStatus()) == null || status.intValue() != 3) && hm.k.f61387a.D() >= ((long) ((memberTaskItem == null || (durationCondition = memberTaskItem.getDurationCondition()) == null) ? 0 : durationCondition.intValue())) / 60;
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&topTab=Game";
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
        return TaskType.GAME_RES_BROWSE.getValue();
    }
}

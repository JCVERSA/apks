package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class e extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        Integer timesCondition = item.getTimesCondition();
        int iIntValue = timesCondition != null ? timesCondition.intValue() : 0;
        int iH = RangesKt.h(hm.k.f61387a.G(), iIntValue);
        return item.getTitle() + " (" + iH + "/" + iIntValue + ")";
    }

    @Override
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer timesCondition;
        return hm.k.f61387a.G() >= ((memberTaskItem == null || (timesCondition = memberTaskItem.getTimesCondition()) == null) ? 0 : timesCondition.intValue());
    }

    @Override
    public void G() {
        hm.k.f61387a.u();
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "oneroom://com.community.oneroom?type=/main/tab&tabIndex=0";
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
        return TaskType.DOWNLOAD_MOVIE.getValue();
    }
}

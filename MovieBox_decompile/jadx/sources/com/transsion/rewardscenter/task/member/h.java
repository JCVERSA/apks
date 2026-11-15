package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

public final class h extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public void E(TextView button, MemberTaskItem item) {
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        super.E(button, item);
        button.setAlpha(0.5f);
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
    }

    @Override
    public int l() {
        return TaskType.OPEN_APP.getValue();
    }
}

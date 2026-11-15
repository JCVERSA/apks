package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.tn.lib.widget.R$string;
import com.transsion.member.w;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

public final class f extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(zo.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer status;
        return (memberTaskItem == null || (status = memberTaskItem.getStatus()) == null || status.intValue() != 3) && hm.k.f61387a.C() > 0;
    }

    @Override
    public void G() {
        hm.k.f61387a.v();
        w.f45184a.b().putLong("kv_game_download_app_claim_item", System.currentTimeMillis());
    }

    @Override
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        long jCurrentTimeMillis = System.currentTimeMillis() - w.f45184a.b().getLong("kv_game_download_app_claim_item", 0L);
        Integer timeInterval = item.getTimeInterval();
        if (jCurrentTimeMillis <= (timeInterval != null ? timeInterval.intValue() : 0) * 1000) {
            fh.b.f60176a.e(k().getString(R$string.try_again));
            return;
        }
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
        return TaskType.GAME_RES_APP_DOWNLOAD.getValue();
    }
}

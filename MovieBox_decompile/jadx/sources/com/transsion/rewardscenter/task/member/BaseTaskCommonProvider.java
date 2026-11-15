package com.transsion.rewardscenter.task.member;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$mipmap;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenterapi.MemberTaskItem;
import java.util.HashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseTaskCommonProvider extends BaseItemProvider {

    private final zo.a f49188e;

    private final int f49189f;

    private boolean f49190g;

    public BaseTaskCommonProvider(zo.a config) {
        Intrinsics.h(config, "config");
        this.f49188e = config;
        this.f49189f = 1;
    }

    public static final void A(BaseTaskCommonProvider baseTaskCommonProvider, MemberTaskItem memberTaskItem, View view) {
        if (com.transsion.baseui.util.c.f42332a.a(R$id.member_item_task_button, 2000L)) {
            return;
        }
        if (baseTaskCommonProvider.F(memberTaskItem)) {
            baseTaskCommonProvider.J(memberTaskItem);
        } else {
            Intrinsics.f(view, "null cannot be cast to non-null type android.widget.TextView");
            baseTaskCommonProvider.K((TextView) view, memberTaskItem);
        }
        baseTaskCommonProvider.I(memberTaskItem);
    }

    private final int C() {
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1 ? GravityCompat.END : GravityCompat.START;
    }

    private final void H(MemberTaskItem memberTaskItem) {
        HashMap map = new HashMap();
        map.put("event_type", "task_browse");
        String taskId = memberTaskItem.getTaskId();
        if (taskId == null) {
            taskId = "";
        }
        map.put("taskId", taskId);
        map.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        map.put("showClaim", String.valueOf(this.f49190g));
        com.transsion.baselib.helper.a.f42121a.a("rewards_center", map);
    }

    private final void I(MemberTaskItem memberTaskItem) {
        HashMap map = new HashMap();
        map.put("event_type", "task_click");
        String taskId = memberTaskItem.getTaskId();
        if (taskId == null) {
            taskId = "";
        }
        map.put("taskId", taskId);
        map.put("taskSubType", String.valueOf(memberTaskItem.getTaskSubType()));
        map.put("rewardType", String.valueOf(memberTaskItem.getRewardType()));
        map.put("rewardAmount", String.valueOf(memberTaskItem.getRewardAmount()));
        map.put("showClaim", String.valueOf(this.f49190g));
        com.transsion.baselib.helper.a.f42121a.b("rewards_center", map);
    }

    private final void J(MemberTaskItem memberTaskItem) {
        RewardsCenterFragment rewardsCenterFragment = (RewardsCenterFragment) this.f49188e.a().get();
        if (rewardsCenterFragment != null) {
            rewardsCenterFragment.showLoading();
        }
        kotlinx.coroutines.k.d(this.f49188e.b(), null, null, new BaseTaskCommonProvider$startClaim$1(memberTaskItem, this, null), 3, null);
    }

    protected final zo.a B() {
        return this.f49188e;
    }

    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        String title = item.getTitle();
        return title == null ? "" : title;
    }

    public void E(TextView button, MemberTaskItem item) {
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        this.f49190g = F(item);
        Integer status = item.getStatus();
        if (status != null && status.intValue() == 3) {
            button.setText(k().getString(R$string.claimed));
            button.setEnabled(false);
            button.setAlpha(0.5f);
        } else if (this.f49190g) {
            button.setText(button.getContext().getString(R$string.claim));
            button.setEnabled(true);
            button.setAlpha(1.0f);
        } else {
            button.setText(item.getButtonName());
            button.setEnabled(true);
            button.setAlpha(1.0f);
        }
    }

    public boolean F(MemberTaskItem memberTaskItem) {
        return false;
    }

    public void G() {
    }

    public abstract void K(TextView textView, MemberTaskItem memberTaskItem);

    @Override
    public int m() {
        return R$layout.item_task_common;
    }

    @Override
    public void b(BaseViewHolder helper, final MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ImageView imageView = (ImageView) helper.getView(R$id.icon);
        ni.f.a aVar = ni.f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar.m(context).g(item.getIcon()).i(R$mipmap.ic_earn_points).d(imageView);
        int i10 = R$id.member_item_task_points_icon;
        Integer rewardType = item.getRewardType();
        helper.setImageResource(i10, (rewardType != null && rewardType.intValue() == this.f49189f) ? R$mipmap.ic_member_small : R$mipmap.ic_points);
        helper.setText(R$id.member_item_task_points_text, "+" + item.getRewardAmount() + " points");
        TextView textView = (TextView) helper.getView(R$id.member_item_task_title);
        textView.setText(D(item));
        textView.setGravity(C());
        TextView textView2 = (TextView) helper.getView(R$id.member_item_task_button);
        E(textView2, item);
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BaseTaskCommonProvider.A(this.f49193a, item, view);
            }
        });
        H(item);
    }
}

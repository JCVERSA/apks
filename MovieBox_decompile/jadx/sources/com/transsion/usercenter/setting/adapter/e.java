package com.transsion.usercenter.setting.adapter;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.text.GradientTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class e extends BaseItemProvider {
    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.user_item_setting;
    }

    @Override
    public void b(BaseViewHolder helper, jv.b item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TnTextView) helper.getView(R$id.tv_title)).setTextById(item.i());
        helper.setText(R$id.tv_content, item.b()).setGone(R$id.progress_bar, !item.c()).setGone(R$id.tv_content, item.c());
        View viewOrNull = helper.getViewOrNull(R$id.divider);
        if (viewOrNull != null) {
            uf.c.j(viewOrNull, item.d());
        }
        View viewOrNull2 = helper.getViewOrNull(R$id.bgView);
        if (viewOrNull2 != null) {
            Integer numA = item.a();
            viewOrNull2.setBackgroundResource(numA != null ? numA.intValue() : 0);
        }
        GradientTextView gradientTextView = (GradientTextView) helper.getView(R$id.tv_tips);
        gradientTextView.setEnableGradientColor(item.h());
        gradientTextView.setTextColor(k().getResources().getColor(R$color.white_60));
        String strG = item.g();
        if (strG == null) {
            strG = "";
        }
        gradientTextView.setText(strG);
        String strG2 = item.g();
        gradientTextView.setVisibility(strG2 != null && strG2.length() > 0 ? 0 : 8);
    }
}

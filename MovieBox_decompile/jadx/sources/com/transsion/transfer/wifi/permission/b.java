package com.transsion.transfer.wifi.permission;

import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class b extends BaseItemProvider {
    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.item_permission_layout;
    }

    @Override
    public void b(BaseViewHolder helper, PermissionsBean item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((ImageView) helper.itemView.findViewById(R$id.ivIcon)).setImageResource(item.getIcon());
        ((TextView) helper.itemView.findViewById(R$id.tvTitle)).setText(item.getTitle());
        ((TextView) helper.itemView.findViewById(R$id.tvContent)).setText(item.getContent());
        boolean zF = d.f53834a.f(item.getPermission());
        TextView textView = (TextView) helper.itemView.findViewById(R$id.tvAction);
        textView.setText(item.getBtnName());
        if (zF) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }
}

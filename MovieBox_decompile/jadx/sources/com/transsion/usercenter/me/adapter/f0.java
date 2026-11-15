package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$mipmap;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.bean.ButtonInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.ZeroInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f0 extends BaseItemProvider {

    private final o f54830e;

    /* JADX WARN: Multi-variable type inference failed */
    public f0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final Unit A(ButtonInfo buttonInfo, f0 f0Var, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        String link;
        Intrinsics.h(it, "it");
        if (buttonInfo != null && (link = buttonInfo.getLink()) != null) {
            ij.k.h(link, null, 1, null);
        }
        com.transsion.usercenter.me.k.f54876a.b("free_buy");
        o oVar = f0Var.f54830e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    @Override
    public int l() {
        return 3;
    }

    @Override
    public int m() {
        return R$layout.mine_item_vip_layout;
    }

    @Override
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        ZeroInfo zeroInfo = data instanceof ZeroInfo ? (ZeroInfo) data : null;
        if (zeroInfo == null) {
            return;
        }
        final ButtonInfo button = zeroInfo.getButton();
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f0.A(button, this, item, (View) obj);
            }
        }, 1, null);
        ((TextView) helper.getView(R$id.titleTv)).setText(zeroInfo.getTitle());
        TextView textView = (TextView) helper.getView(R$id.desTv);
        textView.setText(zeroInfo.getSubtitle());
        String subtitle = zeroInfo.getSubtitle();
        textView.setVisibility(!(subtitle == null || subtitle.length() == 0) ? 0 : 8);
        ni.f.f67269a.m(k()).g(zeroInfo.getIconUrl()).i(R$mipmap.ic_point_purchase).d((ImageView) helper.getView(R$id.icIV));
        TextView textView2 = (TextView) helper.getView(R$id.btnTv);
        View view = helper.getView(R$id.arrowIV);
        textView2.setVisibility(8);
        view.setVisibility(8);
        if (zeroInfo.getShowButton()) {
            String type = button != null ? button.getType() : null;
            if (Intrinsics.c(type, "TEXT")) {
                textView2.setText(button.getText());
                textView2.setVisibility(0);
            } else if (Intrinsics.c(type, "ARROW")) {
                view.setVisibility(0);
            }
        }
    }

    public f0(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public f0(o oVar) {
        this.f54830e = oVar;
    }
}

package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.v0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserMessageActivity;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

public final class n extends BaseItemProvider {

    private final o f54843e;

    private com.transsion.usercenter.profile.f f54844f;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54845a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54845a = function;
        }

        @Override
        public final Function a() {
            return this.f54845a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f54845a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final Unit B(TextView textView, Integer num) {
        textView.setVisibility(num.intValue() > 0 ? 0 : 8);
        textView.setText(num.toString());
        return Unit.f64096a;
    }

    public static final Unit C(n nVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.k.f54876a.b("notice");
        nVar.k().startActivity(new Intent(nVar.k(), (Class<?>) UserMessageActivity.class));
        com.transsion.usercenter.profile.f fVar = nVar.f54844f;
        if (fVar != null) {
            fVar.e();
        }
        o oVar = nVar.f54843e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    @Override
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        androidx.p009lifecycle.b0 b0VarH;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null) {
            final TextView textView = (TextView) helper.getView(R$id.desTv);
            com.transsion.usercenter.profile.f fVar = this.f54844f;
            if (fVar != null && (b0VarH = fVar.h()) != null) {
                b0VarH.j(baseActivity, new a(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return n.B(textView, (Integer) obj);
                    }
                }));
            }
        }
        ((TextView) helper.getView(R$id.titleTv)).setText(k().getString(R$string.messages_title_name));
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return n.C(this.f54841a, item, (View) obj);
            }
        }, 1, null);
    }

    @Override
    public int l() {
        return 6;
    }

    @Override
    public int m() {
        return R$layout.message_item_icon_layout;
    }

    @Override
    public void v(BaseViewHolder viewHolder, int i10) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.v(viewHolder, i10);
        TextView textView = (TextView) viewHolder.getView(R$id.desTv);
        textView.setTextSize(11.0f);
        textView.setPadding(lj.a.b(4), lj.a.b(1), lj.a.b(4), lj.a.b(1));
        textView.setTextColor(k().getResources().getColor(R$color.white));
        textView.setBackgroundResource(R$drawable.bg_red_r7);
        viewHolder.getView(R$id.bgView).setBackgroundResource(R$drawable.bg_radius_bottom_6_color_white_6p);
        ((ImageView) viewHolder.getView(R$id.icIV)).setImageResource(com.tn.lib.widget.R$drawable.ic_me_message);
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null) {
            this.f54844f = (com.transsion.usercenter.profile.f) new v0(baseActivity).a(com.transsion.usercenter.profile.f.class);
        }
    }

    public n(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public n(o oVar) {
        this.f54843e = oVar;
    }
}

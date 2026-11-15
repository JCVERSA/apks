package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$mipmap;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MembershipDetailType;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d0 extends BaseItemProvider {

    private final o f54822e;

    private TextView f54823f;

    private TextView f54824g;

    private TextView f54825h;

    public class a {

        public static final int[] f54826a;

        static {
            int[] iArr = new int[MembershipDetailType.values().length];
            try {
                iArr[MembershipDetailType.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MembershipDetailType.SUBSCRIPTION_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MembershipDetailType.FINANCIAL_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MembershipDetailType.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f54826a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final Unit B(BaseViewHolder baseViewHolder, d0 d0Var, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.k.f54876a.b("member");
        Navigator.x(TheRouter.c("/member/MemberActivity"), baseViewHolder.itemView.getContext(), null, 2, null);
        o oVar = d0Var.f54822e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    private final void z(MemberInfo memberInfo) {
        Integer daysLeft;
        int daysLeft2 = 0;
        wf.a.C0922a.g(wf.a.f74274a, "member detail is " + memberInfo, false, 2, null);
        int point = memberInfo != null ? memberInfo.getPoint() : 0;
        if (memberInfo != null) {
            try {
                daysLeft = memberInfo.getDaysLeft();
            } catch (Throwable unused) {
            }
        } else {
            daysLeft = null;
        }
        if (daysLeft != null) {
            daysLeft2 = memberInfo.getDaysLeft();
        }
        int i10 = a.f54826a[(memberInfo != null ? MembershipDetailType.INSTANCE.a(memberInfo) : MembershipDetailType.GUEST).ordinal()];
        if (i10 == 1) {
            TextView textView = this.f54823f;
            if (textView != null) {
                textView.setText(k().getString(R$string.user_premium_free_trial));
            }
            TextView textView2 = this.f54824g;
            if (textView2 != null) {
                textView2.setText(k().getString(R$string.user_days_left, daysLeft2));
            }
            C(point);
            return;
        }
        if (i10 == 2 || i10 == 3) {
            TextView textView3 = this.f54823f;
            if (textView3 != null) {
                textView3.setText(k().getString(R$string.user_premium));
            }
            TextView textView4 = this.f54824g;
            if (textView4 != null) {
                textView4.setText(k().getString(R$string.user_date_left, daysLeft2, memberInfo != null ? memberInfo.getExpiryDate() : null));
            }
            C(point);
            return;
        }
        if (i10 == 4) {
            TextView textView5 = this.f54823f;
            if (textView5 != null) {
                textView5.setText(k().getString(R$string.user_premium_get));
            }
            TextView textView6 = this.f54824g;
            if (textView6 != null) {
                textView6.setText(k().getString(R$string.user_premium_redeem_tips));
            }
            C(point);
            return;
        }
        TextView textView7 = this.f54823f;
        if (textView7 != null) {
            textView7.setText(k().getString(R$string.user_premium_get));
        }
        if (point > 0) {
            TextView textView8 = this.f54824g;
            if (textView8 != null) {
                textView8.setText(k().getString(R$string.user_premium_redeem_tips));
            }
            C(point);
            return;
        }
        TextView textView9 = this.f54824g;
        if (textView9 != null) {
            textView9.setText(k().getString(R$string.user_premium_purchase_tips));
        }
        C(-1);
    }

    @Override
    public void b(final BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        MemberInfo memberInfo = data instanceof MemberInfo ? (MemberInfo) data : null;
        if (memberInfo == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return d0.B(helper, this, item, (View) obj);
            }
        }, 1, null);
        ((ImageView) helper.getView(R$id.icIV)).setImageResource(R$mipmap.ic_vip_20);
        this.f54823f = (TextView) helper.getView(R$id.titleTv);
        this.f54824g = (TextView) helper.getView(R$id.desTv);
        this.f54825h = (TextView) helper.getView(R$id.btnTv);
        z(memberInfo);
    }

    public final void C(int i10) {
        TextView textView = this.f54825h;
        if (textView != null) {
            if (i10 > 0) {
                textView.setText(i10 > 999 ? "999+" : String.valueOf(i10));
                textView.setCompoundDrawablesWithIntrinsicBounds(R$mipmap.ic_poins_new, 0, 0, 0);
            }
            textView.setVisibility(i10 > 0 ? 0 : 8);
        }
    }

    @Override
    public int l() {
        return 2;
    }

    @Override
    public int m() {
        return R$layout.mine_item_vip_layout;
    }

    public d0(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public d0(o oVar) {
        this.f54822e = oVar;
    }
}

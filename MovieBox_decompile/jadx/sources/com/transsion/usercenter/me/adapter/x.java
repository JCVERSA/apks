package com.transsion.usercenter.me.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.p009lifecycle.LiveData;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

public final class x extends BaseItemProvider {

    private final o f54860e;

    private long f54861f;

    private LiveData f54862g;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54863a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54863a = function;
        }

        @Override
        public final Function a() {
            return this.f54863a;
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
            this.f54863a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final Unit B(TextView textView, TextView textView2, x xVar, Integer num) {
        if (num.intValue() > 0) {
            textView.setVisibility(0);
            textView.setText(num.toString());
            textView2.setText(xVar.k().getString(R$string.unclaimed_rewards, num));
        } else {
            textView.setVisibility(8);
            textView2.setText("Win big Prizes!");
        }
        return Unit.f64096a;
    }

    public static final Unit C(x xVar, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "PROFILE_DETAIL"), null, null, 3, null);
        o oVar = xVar.f54860e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    @Override
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        bp.a aVar;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context contextK = k();
        BaseActivity baseActivity = contextK instanceof BaseActivity ? (BaseActivity) contextK : null;
        if (baseActivity != null && (aVar = (bp.a) TheRouter.d(bp.a.class, new Object[0])) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f54862g == null || jCurrentTimeMillis - this.f54861f >= 30000) {
                this.f54861f = jCurrentTimeMillis;
                this.f54862g = aVar.b();
            }
            final TextView textView = (TextView) helper.getView(R$id.badgeTv);
            final TextView textView2 = (TextView) helper.getView(R$id.desTv);
            LiveData liveData = this.f54862g;
            if (liveData != null) {
                liveData.j(baseActivity, new a(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return x.B(textView, textView2, this, (Integer) obj);
                    }
                }));
            }
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return x.C(this.f54858a, item, (View) obj);
            }
        }, 1, null);
    }

    @Override
    public int l() {
        return 11;
    }

    @Override
    public int m() {
        return R$layout.mine_item_rewards_center_layout;
    }

    public x(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public x(o oVar) {
        this.f54860e = oVar;
    }
}

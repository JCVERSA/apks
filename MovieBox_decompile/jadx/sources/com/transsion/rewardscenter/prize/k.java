package com.transsion.rewardscenter.prize;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$mipmap;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.DrawResult;
import java.util.HashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class k extends BaseItemProvider {

    private final zo.a f49003e;

    public class a {

        public static final int[] f49004a;

        static {
            int[] iArr = new int[PrizeButtonState.values().length];
            try {
                iArr[PrizeButtonState.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrizeButtonState.CLAIMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrizeButtonState.CLAIMING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f49004a = iArr;
        }
    }

    public k(zo.a config) {
        Intrinsics.h(config, "config");
        this.f49003e = config;
    }

    public static final Unit A(PrizeButtonState prizeButtonState, Context context, k kVar, DrawResult drawResult, View it) {
        Intrinsics.h(it, "it");
        if (prizeButtonState == PrizeButtonState.ACTIVE) {
            if (l.f76264a.e()) {
                RewardsCenterFragment rewardsCenterFragment = (RewardsCenterFragment) kVar.f49003e.a().get();
                if (rewardsCenterFragment != null) {
                    rewardsCenterFragment.k1(drawResult);
                }
                kVar.C(drawResult);
            } else {
                String string = context.getString(R$string.no_network_toast);
                Intrinsics.g(string, "getString(...)");
                p.a(false, string);
            }
        }
        return Unit.f64096a;
    }

    private final PrizeButtonState B(DrawResult drawResult) {
        if (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_TOP_UP")) {
            return PrizeButtonState.CLAIMING;
        }
        if (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_UNCLAIM") && Intrinsics.c(drawResult.getNeedFill(), "LOTTERY_NEED_FILL_YES") && Intrinsics.c(drawResult.getFillStatus(), "FILL_STATUS_NO")) {
            return PrizeButtonState.ACTIVE;
        }
        return (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_UNCLAIM") && Intrinsics.c(drawResult.getNeedFill(), "LOTTERY_NEED_FILL_NO")) ? PrizeButtonState.ACTIVE : PrizeButtonState.CLAIMED;
    }

    private final void C(DrawResult drawResult) {
        HashMap map = new HashMap();
        String prizeType = drawResult.getPrizeType();
        if (prizeType == null) {
            prizeType = "";
        }
        map.put(EventConstants.KEY_SOURCE, prizeType);
        q.a("prize_list", map);
    }

    @Override
    public int l() {
        return PrizeItemType.ROW.getValue();
    }

    @Override
    public int m() {
        return R$layout.prize_row_item;
    }

    @Override
    public void b(BaseViewHolder helper, e item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.c) {
            final DrawResult drawResultA = ((e.c) item).a();
            final Context context = helper.itemView.getContext();
            ni.f.a aVar = ni.f.f67269a;
            Intrinsics.e(context);
            aVar.m(context).g(drawResultA.getImgUrl()).d((ImageView) helper.getView(R$id.icon));
            int i10 = R$id.tv_title;
            String title = drawResultA.getTitle();
            if (title == null) {
                title = "";
            }
            helper.setText(i10, title);
            helper.setText(R$id.tv_count, "x 1");
            TextView textView = (TextView) helper.getView(R$id.btn_action);
            final PrizeButtonState prizeButtonStateB = B(drawResultA);
            int i11 = a.f49004a[prizeButtonStateB.ordinal()];
            if (i11 == 1) {
                textView.setBackgroundResource(R$mipmap.btn_claim_normal);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_claim));
                textView.setTextColor(context.getColor(R$color.white));
                textView.setEnabled(true);
                textView.setAlpha(1.0f);
            } else if (i11 == 2) {
                textView.setBackgroundResource(R$mipmap.btn_claim_done);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_claimed));
                textView.setTextColor(context.getColor(com.transsion.rewardscenter.R$color.prize_btn_claimed_text));
                textView.setEnabled(false);
                textView.setAlpha(1.0f);
            } else {
                if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                textView.setBackgroundResource(R$mipmap.btn_claim_normal);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_Topping));
                textView.setTextColor(context.getColor(R$color.white));
                textView.setEnabled(false);
                textView.setAlpha(0.5f);
            }
            uf.c.c(textView, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return k.A(prizeButtonStateB, context, this, drawResultA, (View) obj);
                }
            }, 1, null);
        }
    }
}

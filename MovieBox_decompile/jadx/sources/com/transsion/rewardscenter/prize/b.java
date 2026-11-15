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
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.DrawChance;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class b extends BaseItemProvider {

    private final zo.a f48986e;

    public class a {

        public static final int[] f48987a;

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
            f48987a = iArr;
        }
    }

    public b(zo.a config) {
        Intrinsics.h(config, "config");
        this.f48986e = config;
    }

    public static final Unit A(boolean z10, Context context, b bVar, boolean z11, View it) {
        Intrinsics.h(it, "it");
        if (z10) {
            if (l.f76264a.e()) {
                RewardsCenterModel.h(bVar.f48986e.c(), null, true, 1, null);
                bVar.D();
            } else {
                String string = context.getString(R$string.no_network_toast);
                Intrinsics.g(string, "getString(...)");
                p.a(false, string);
            }
        } else if (z11) {
            String string2 = context.getString(com.transsion.rewardscenter.R$string.prize_limit_tips);
            Intrinsics.g(string2, "getString(...)");
            p.a(false, string2);
        }
        return Unit.f64096a;
    }

    private final void D() {
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, "draw_chance");
        q.a("prize_list", map);
    }

    public final boolean B(DrawChance drawChance) {
        Intrinsics.h(drawChance, "drawChance");
        return drawChance.getRemain() > 0 && drawChance.getTodayRemain() > 0;
    }

    public final boolean C(DrawChance drawChance) {
        Intrinsics.h(drawChance, "drawChance");
        return drawChance.getTodayRemain() <= 0;
    }

    @Override
    public int l() {
        return PrizeItemType.DRAW_CHANCE.getValue();
    }

    @Override
    public int m() {
        return R$layout.prize_row_item;
    }

    @Override
    public void b(BaseViewHolder helper, e item) {
        int i10;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.a) {
            DrawChance drawChanceA = ((e.a) item).a();
            final Context context = helper.itemView.getContext();
            ni.f.a aVar = ni.f.f67269a;
            Intrinsics.e(context);
            aVar.m(context).g(drawChanceA.getImgUrl()).d((ImageView) helper.getView(R$id.icon));
            int i11 = R$id.tv_title;
            String title = drawChanceA.getTitle();
            if (title == null) {
                title = "";
            }
            helper.setText(i11, title);
            helper.setText(R$id.tv_count, "x " + drawChanceA.getRemain());
            TextView textView = (TextView) helper.getView(R$id.btn_action);
            final boolean zB = B(drawChanceA);
            final boolean zC = C(drawChanceA);
            PrizeButtonState prizeButtonState = zB ? PrizeButtonState.ACTIVE : PrizeButtonState.CLAIMED;
            if (zB) {
                i10 = com.transsion.rewardscenter.R$string.prize_btn_claim;
            } else {
                i10 = zC ? com.transsion.rewardscenter.R$string.prize_btn_limit : com.transsion.rewardscenter.R$string.prize_btn_claimed;
            }
            textView.setText(context.getString(i10));
            int i12 = a.f48987a[prizeButtonState.ordinal()];
            if (i12 == 1) {
                textView.setBackgroundResource(R$mipmap.btn_claim_normal);
                textView.setTextColor(context.getColor(R$color.white));
                textView.setEnabled(true);
            } else if (i12 == 2) {
                textView.setBackgroundResource(R$mipmap.btn_claim_done);
                textView.setTextColor(context.getColor(com.transsion.rewardscenter.R$color.prize_btn_claimed_text));
                textView.setEnabled(false);
            }
            uf.c.c(textView, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return b.A(zB, context, this, zC, (View) obj);
                }
            }, 1, null);
        }
    }
}

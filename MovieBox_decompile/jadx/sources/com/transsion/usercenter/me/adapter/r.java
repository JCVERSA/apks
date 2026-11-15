package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.kids.CreateKidsProfileDialog;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNoticeConfig;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class r extends BaseItemProvider {

    private final String f54848e = "open_account";

    public static final Unit A(MineNoticeConfig mineNoticeConfig, r rVar, View it) {
        String lowerCase;
        Intrinsics.h(it, "it");
        String noticeDeepLink = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink == null || noticeDeepLink.length() == 0) {
            return Unit.f64096a;
        }
        com.transsion.usercenter.me.k.f54876a.b("notice");
        String noticeDeepLink2 = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink2 != null) {
            lowerCase = noticeDeepLink2.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (Intrinsics.c(lowerCase, rVar.f54848e)) {
            String strE = KidsAccountManager.f42144a.e();
            if (strE == null || strE.length() == 0) {
                CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 7, null).X(rVar.k(), "CreateKidsProfileDialog");
            } else {
                AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(rVar.k(), "AccountSwitchDialog");
            }
        } else {
            String noticeDeepLink3 = mineNoticeConfig.getNoticeDeepLink();
            if (noticeDeepLink3 != null) {
                ij.k.h(noticeDeepLink3, null, 1, null);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public int l() {
        return 8;
    }

    @Override
    public int m() {
        return R$layout.mine_item_notice_layout;
    }

    @Override
    public void b(BaseViewHolder helper, MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final MineNoticeConfig mineNoticeConfig = data instanceof MineNoticeConfig ? (MineNoticeConfig) data : null;
        if (mineNoticeConfig == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        itemView.setVisibility(mineNoticeConfig.getNoticeEnable() ? 0 : 8);
        ((TextView) helper.getView(R$id.titleTv)).setText(mineNoticeConfig.getNoticeContent());
        ImageView imageView = (ImageView) helper.getView(R$id.arrowIV);
        String noticeDeepLink = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink == null || noticeDeepLink.length() == 0) {
            uf.c.g(imageView);
        } else {
            uf.c.k(imageView);
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        uf.c.c(itemView2, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return r.A(mineNoticeConfig, this, (View) obj);
            }
        }, 1, null);
    }
}

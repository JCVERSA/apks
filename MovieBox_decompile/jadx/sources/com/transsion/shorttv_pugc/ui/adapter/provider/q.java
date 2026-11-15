package com.transsion.shorttv_pugc.ui.adapter.provider;

import android.view.View;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class q extends BaseItemProvider {

    public static final a f52082e = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final void C(BaseViewHolder baseViewHolder, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "ShortTVFilter", "click Latest", false, 4, null);
        Navigator.x(TheRouter.c("/home/playlist").K("label", "fresh-releases-list").K("category", "TVSHOW").K("recType", "OPT").K("topIds", null), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    public static final void D(BaseViewHolder baseViewHolder, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "ShortTVFilter", "click Hottest", false, 4, null);
        Navigator.x(TheRouter.c("/home/playlist").K("label", "must-watch-list").K("category", "TVSHOW").K("recType", "OPT").K("topIds", null), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    public static final void E(BaseViewHolder baseViewHolder, View view) {
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 7).K("tabCode", "ShortTV").z("showViewPager", false), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    @Override
    public void b(final BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.iv_latest)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                q.C(helper, view);
            }
        });
        ((TextView) helper.getView(R$id.iv_hottest)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                q.D(helper, view);
            }
        });
        ((TextView) helper.getView(R$id.iv_all)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                q.E(helper, view);
            }
        });
    }

    @Override
    public int l() {
        return ShortTvItemType.FILTER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.pugc_short_tv_layout_category;
    }
}

package com.transsion.commercialization.aha.adapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.GameLayoutType;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class f extends BaseItemProvider {

    private final rj.a f42577e;

    private final int f42578f;

    public f(rj.a gameDotHelper) {
        Intrinsics.h(gameDotHelper, "gameDotHelper");
        this.f42577e = gameDotHelper;
        this.f42578f = GameLayoutType.PEOPLE_PLAYING.ordinal();
    }

    public static final void A(d dVar, f fVar, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        String link = ((AhaGameAllGames) dVar.getItem(i10)).getLink();
        if (link != null) {
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", link).K(WebConstants.PAGE_FROM, "game_center"), view.getContext(), null, 2, null);
        }
        fVar.f42577e.b((AhaGameAllGames) dVar.getItem(i10), i10, GameLayoutType.PEOPLE_PLAYING);
    }

    @Override
    public int l() {
        return this.f42578f;
    }

    @Override
    public int m() {
        return R$layout.item_people_playing;
    }

    @Override
    public void b(BaseViewHolder helper, AhaGameAllGames item) {
        RecyclerView recyclerView;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        List<AhaGameAllGames> peoplePlaying = item.getPeoplePlaying();
        if (peoplePlaying == null || (recyclerView = (RecyclerView) helper.getViewOrNull(R$id.people_playing_recycler_view)) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 4));
        if (recyclerView.getItemDecorationCount() <= 0) {
            recyclerView.addItemDecoration(new tf.b(a0.a(4.0f), a0.a(4.0f), 0, 0));
        }
        if (peoplePlaying.size() >= 4) {
            peoplePlaying = peoplePlaying.subList(0, 4);
        }
        final d dVar = new d(peoplePlaying);
        dVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                f.A(dVar, this, baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(dVar);
    }
}

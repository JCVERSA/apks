package com.transsion.search.fragment.values.adapter;

import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SearchValuesRelatedCollectionEntity;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.values.SearchValuesFragment;
import kotlin.jvm.internal.Intrinsics;
import ni.f;

public final class e extends BaseItemProvider {

    private final int f50172e = a0.a(72.0f);

    private final int f50173f = a0.a(96.0f);

    private final String z() {
        String mKeyWord;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        b bVar = baseProviderMultiAdapterG instanceof b ? (b) baseProviderMultiAdapterG : null;
        return (bVar == null || (mKeyWord = bVar.getMKeyWord()) == null) ? "" : mKeyWord;
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.item_search_values_vertical_rank_layout;
    }

    @Override
    public void b(BaseViewHolder helper, SearchValuesRelatedCollectionEntity item) {
        String url;
        Cover cover;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i10 = R$id.tvTitle;
        com.transsion.search.fragment.suggest.d.Companion companion = com.transsion.search.fragment.suggest.d.INSTANCE;
        String strZ = z();
        VerticalRank verticalRank = item.getVerticalRank();
        helper.setText(i10, companion.a(strZ, verticalRank != null ? verticalRank.getTitle() : null));
        int i11 = R$id.tvSubTitle;
        VerticalRank verticalRank2 = item.getVerticalRank();
        helper.setText(i11, verticalRank2 != null ? verticalRank2.getDescription() : null);
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getView(R$id.ivCover);
        f.a aVar = f.f67269a;
        VerticalRank verticalRank3 = item.getVerticalRank();
        if (verticalRank3 == null || (cover = verticalRank3.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        aVar.m(k()).g(f.a.e(aVar, url, this.f50172e, false, false, 12, null)).d(shapeableImageView);
        SearchValuesFragment.Companion companion2 = SearchValuesFragment.INSTANCE;
        Staff staff = item.getStaff();
        companion2.d("", "", staff != null ? staff.getStaffId() : null, "", helper.getBindingAdapterPosition(), 1);
    }
}

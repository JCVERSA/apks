package zp;

import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$string;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseItemProvider {
    @Override
    public int l() {
        return ResultType.VERTICAL_RANK.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_rank;
    }

    @Override
    public void b(BaseViewHolder helper, ResultWrapData item) {
        String url;
        String thumbnail;
        String description;
        Integer count;
        Cover cover;
        Cover cover2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ni.f.b bVarM = ni.f.f67269a.m(k());
        VerticalRank verticalRank = item.getVerticalRank();
        String string = "";
        if (verticalRank == null || (cover2 = verticalRank.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarG = bVarM.g(url);
        VerticalRank verticalRank2 = item.getVerticalRank();
        if (verticalRank2 == null || (cover = verticalRank2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarG.l(thumbnail).m(a0.a(50.0f)).d((ImageView) helper.getView(R$id.search_result_provider_rank_cover));
        int i10 = R$id.search_result_provider_rank_title;
        VerticalRank verticalRank3 = item.getVerticalRank();
        helper.setText(i10, verticalRank3 != null ? verticalRank3.getTitle() : null);
        VerticalRank verticalRank4 = item.getVerticalRank();
        int iIntValue = (verticalRank4 == null || (count = verticalRank4.getCount()) == null) ? 0 : count.intValue();
        if (iIntValue > 0) {
            string = k().getString(R$string.sources, Integer.valueOf(iIntValue));
        } else {
            VerticalRank verticalRank5 = item.getVerticalRank();
            if (verticalRank5 != null && (description = verticalRank5.getDescription()) != null) {
                string = description;
            }
        }
        Intrinsics.e(string);
        helper.setText(R$id.search_result_provider_rank_subtitle, string);
    }
}

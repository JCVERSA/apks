package sp;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.VerticalRank;
import kotlin.jvm.internal.Intrinsics;
import ni.f;

public final class a extends BaseItemProvider {

    private final int f72380e = a0.a(72.0f);

    private final int f72381f = a0.a(96.0f);

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.item_associate_subject;
    }

    @Override
    public void b(BaseViewHolder helper, SearchSubject item) {
        String url;
        Cover cover;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.ivCover);
        if (shapeableImageView != null) {
            f.a aVar = f.f67269a;
            VerticalRank verticalRank = item.getVerticalRank();
            if (verticalRank == null || (cover = verticalRank.getCover()) == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String strE = f.a.e(aVar, url, this.f72380e, false, false, 12, null);
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(strE).d(shapeableImageView);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvTitle);
        if (appCompatTextView != null) {
            VerticalRank verticalRank2 = item.getVerticalRank();
            appCompatTextView.setText(verticalRank2 != null ? verticalRank2.getTitle() : null);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tvDes);
        if (appCompatTextView2 != null) {
            VerticalRank verticalRank3 = item.getVerticalRank();
            appCompatTextView2.setText(verticalRank3 != null ? verticalRank3.getDescription() : null);
        }
        View viewOrNull = helper.getViewOrNull(R$id.divider);
        if (viewOrNull != null) {
            if (item.getShowDivider()) {
                uf.c.k(viewOrNull);
            } else {
                uf.c.g(viewOrNull);
            }
        }
    }
}

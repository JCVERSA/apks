package fo;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.postdetail.ui.view.ShortTvImmVideoItemView;
import kotlin.jvm.internal.Intrinsics;

public final class y extends BaseItemProvider {

    private final Fragment f60276e;

    private final String f60277f;

    private final String f60278g;

    private final boolean f60279h;

    private final int f60280i;

    private final int f60281j;

    public y(Fragment fragment, String str, String str2, boolean z10) {
        Intrinsics.h(fragment, "fragment");
        this.f60276e = fragment;
        this.f60277f = str;
        this.f60278g = str2;
        this.f60279h = z10;
        this.f60280i = 1;
        this.f60281j = R$layout.item_short_tv_immersion_video;
    }

    @Override
    public int l() {
        return this.f60280i;
    }

    @Override
    public int m() {
        return this.f60281j;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        ShortTvImmVideoHelper.a aVar = ShortTvImmVideoHelper.f46849k;
        if (!aVar.a().l().isEmpty()) {
            View view = (View) aVar.a().l().remove(0);
            if (view.getParent() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                return new BaseViewHolder(view);
            }
        }
        return super.r(parent, i10);
    }

    @Override
    public void b(BaseViewHolder holder, Subject item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((ShortTvImmVideoItemView) holder.getView(R$id.video_item)).setData(item, this.f60276e, Integer.valueOf(holder.getAdapterPosition()), this.f60277f, this.f60278g, this.f60279h);
    }
}

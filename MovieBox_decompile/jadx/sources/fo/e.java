package fo;

import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.ImmVideoItemView;
import kotlin.jvm.internal.Intrinsics;

public final class e extends BaseItemProvider {

    private final Fragment f60253e;

    private boolean f60254f;

    private final String f60255g;

    private final String f60256h;

    private final boolean f60257i;

    private final String f60258j;

    private final String f60259k;

    private final boolean f60260l;

    private final int f60261m;

    private final int f60262n;

    public e(Fragment fragment, boolean z10, String str, String str2, boolean z11, String commentId, String pageFrom, boolean z12) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(pageFrom, "pageFrom");
        this.f60253e = fragment;
        this.f60254f = z10;
        this.f60255g = str;
        this.f60256h = str2;
        this.f60257i = z11;
        this.f60258j = commentId;
        this.f60259k = pageFrom;
        this.f60260l = z12;
        this.f60261m = 1;
        this.f60262n = R$layout.item_immersion_video;
    }

    @Override
    public int l() {
        return this.f60261m;
    }

    @Override
    public int m() {
        return this.f60262n;
    }

    @Override
    public void b(BaseViewHolder holder, PostSubjectItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((ImmVideoItemView) holder.getView(R$id.view_video_item)).setData(item, this.f60253e, Integer.valueOf(holder.getAdapterPosition()), this.f60254f, this.f60255g, this.f60256h, this.f60257i, this.f60258j, this.f60259k, this.f60260l);
    }
}

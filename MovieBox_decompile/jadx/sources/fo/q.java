package fo;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class q extends BaseItemProvider {
    @Override
    public int l() {
        return MediaType.ROOM_CACHE_LIST_START.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_provider_room_post_cache_start_layout;
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}

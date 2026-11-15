package fo;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.ui.view.PostBaseItemView;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class o extends BaseItemProvider {

    private final String f60266e;

    private final String f60267f;

    private final RecyclerView.s f60268g;

    public o(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        this.f60266e = str;
        this.f60267f = str2;
        this.f60268g = pool;
    }

    private final void A(PostBaseItemView postBaseItemView, PostSubjectItem postSubjectItem, boolean z10) {
        if (postBaseItemView != null) {
            postBaseItemView.refreshLike(z10, postSubjectItem);
        }
    }

    @Override
    public int l() {
        return MediaType.CONTENT_ALL.ordinal();
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        View view = helper.itemView;
        PostBaseItemView postBaseItemView = view instanceof PostBaseItemView ? (PostBaseItemView) view : null;
        if (postBaseItemView != null) {
            postBaseItemView.setPage(this.f60266e, this.f60267f);
            postBaseItemView.setData(item);
            postBaseItemView.setRecycledViewPool(this.f60268g);
        }
    }

    @Override
    public void f(BaseViewHolder helper, PostSubjectItem item, List payloads) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            try {
                Result.Companion companion = Result.INSTANCE;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
                    int adapterPosition = helper.getAdapterPosition();
                    BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(adapterPosition + (baseProviderMultiAdapterG2 != null ? baseProviderMultiAdapterG2.a0() : 0));
                    if (postSubjectItem != null) {
                        View view = helper.itemView;
                        A(view instanceof PostBaseItemView ? (PostBaseItemView) view : null, postSubjectItem, ((Boolean) objV0).booleanValue());
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }
}

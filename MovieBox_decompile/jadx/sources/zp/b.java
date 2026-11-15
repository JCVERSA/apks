package zp;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$layout;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import kotlin.jvm.internal.Intrinsics;

public final class b extends BaseItemProvider {
    @Override
    public int l() {
        return ResultType.MORE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_more;
    }

    @Override
    public void b(BaseViewHolder helper, ResultWrapData item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}

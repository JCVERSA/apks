package com.transsion.postdetail.ui.adapter;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.room.api.RoomsViewType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fo.p;
import fo.q;
import fo.r;
import fo.s;
import fo.t;
import fo.u;
import fo.v;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B5\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0013\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/postdetail/ui/adapter/f;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lt6/i;", "Landroid/content/Context;", "context", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "adapterFrom", "Lbj/b;", "exposureHelper", "", "pageName", "pageFrom", "<init>", "(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lbj/b;Ljava/lang/String;Ljava/lang/String;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lbj/b;", "Landroidx/recyclerview/widget/RecyclerView$s;", "H", "Landroidx/recyclerview/widget/RecyclerView$s;", "imageRecycledViewPool", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f extends BaseProviderMultiAdapter<PostSubjectItem> implements t6.i {

    private final bj.b exposureHelper;

    private final RecyclerView.s imageRecycledViewPool;

    public class a {

        public static final int[] f47339a;

        static {
            int[] iArr = new int[PostAdapterFrom.values().length];
            try {
                iArr[PostAdapterFrom.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PostAdapterFrom.NEARBY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PostAdapterFrom.DETAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PostAdapterFrom.STAGGERED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f47339a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, PostAdapterFrom adapterFrom, bj.b bVar, String str, String str2) {
        super(null, 1, null);
        Intrinsics.h(context, "context");
        Intrinsics.h(adapterFrom, "adapterFrom");
        this.exposureHelper = bVar;
        RecyclerView.s sVar = new RecyclerView.s();
        this.imageRecycledViewPool = sVar;
        int i10 = a.f47339a[adapterFrom.ordinal()];
        if (i10 == 1) {
            F1(new s(str, str2, sVar));
        } else if (i10 == 2) {
            F1(new t(str, str2, sVar));
        } else if (i10 == 3) {
            F1(new r(str, str2, sVar));
        } else {
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            F1(new v(str, str2, sVar));
        }
        if (adapterFrom == PostAdapterFrom.NEARBY) {
            ep.f fVar = (ep.f) TheRouter.d(ep.f.class, new Object[0]);
            ep.e eVarC = fVar != null ? fVar.c(context, RoomsViewType.TYPE_ROOM_HOME) : null;
            if (eVarC != null) {
                F1(new u(eVarC));
            }
        }
        if (adapterFrom == PostAdapterFrom.DEFAULT) {
            F1(new q());
            F1(new p());
        }
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int adapterPosition = holder.getAdapterPosition();
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutManager");
            bj.b.j(bVar, layoutManager, adapterPosition, true, false, 8, null);
        }
    }

    @Override
    protected int N1(List<? extends PostSubjectItem> data, int position) {
        Intrinsics.h(data, "data");
        PostSubjectItem postSubjectItem = data.get(position);
        if (postSubjectItem.getNonAdDelegate() != null) {
            return MediaType.POST_DETAIL_FOR_YOU_NATIVE_AD.ordinal();
        }
        if (postSubjectItem.isRoomList()) {
            return MediaType.ROOM_LIST.ordinal();
        }
        if (postSubjectItem.isRoomCacheListStart()) {
            return MediaType.ROOM_CACHE_LIST_START.ordinal();
        }
        return postSubjectItem.isRoomCacheListEnd() ? MediaType.ROOM_CACHE_LIST_END.ordinal() : MediaType.CONTENT_ALL.ordinal();
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return t6.h.a(this, baseQuickAdapter);
    }
}

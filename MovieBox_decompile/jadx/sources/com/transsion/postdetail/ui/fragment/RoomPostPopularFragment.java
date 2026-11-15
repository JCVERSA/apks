package com.transsion.postdetail.ui.fragment;

import android.os.Bundle;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\b\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0010J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u0019¨\u0006!"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "initViewData", "initViewModel", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class RoomPostPopularFragment extends RoomPostBaseFragment {

    public static final Companion INSTANCE = new Companion(null);
    private static final String GROUP_ID = "id";
    public static final String SUBPAGE_NAME = "room_detail_popular";

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostPopularFragment a(String str) {
            RoomPostPopularFragment roomPostPopularFragment = new RoomPostPopularFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            roomPostPopularFragment.setArguments(bundle);
            return roomPostPopularFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47536a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47536a = function;
        }

        @Override
        public final Function a() {
            return this.f47536a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f47536a.invoke(obj);
        }
    }

    public static final Unit initViewModel$lambda$1(RoomPostPopularFragment roomPostPopularFragment, PostSubjectBean postSubjectBean) {
        roomPostPopularFragment.updateData(postSubjectBean);
        return Unit.f64096a;
    }

    @Override
    public void initViewData() {
        qi.b logViewConfig;
        HashMap mapG;
        super.initViewData();
        Bundle arguments = getArguments();
        setMGroupId(arguments != null ? arguments.getString("id") : null);
        String mGroupId = getMGroupId();
        if (mGroupId == null || (logViewConfig = getLogViewConfig()) == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarC;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel == null || (b0VarC = mViewModel.C()) == null) {
            return;
        }
        b0VarC.j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostPopularFragment.initViewModel$lambda$1(this.f47761a, (PostSubjectBean) obj);
            }
        }));
    }

    @Override
    public boolean isNeedInsertPublishPost() {
        return false;
    }

    @Override
    public boolean isStaggeredPost() {
        return false;
    }

    @Override
    public boolean isSwipeRefreshEnable() {
        return true;
    }

    @Override
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        RoomPostViewModel mViewModel;
        String mGroupId = getMGroupId();
        if (mGroupId == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        mViewModel.H(isRefresh, mGroupId, getMPage(), 8, isRefresh);
    }

    @Override
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override
    public String onItemHeaderModuleName() {
        return "user_center";
    }

    @Override
    public String pageName() {
        return "room_detail";
    }

    @Override
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.DETAIL;
    }

    @Override
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override
    public int tabIndex() {
        return 0;
    }
}

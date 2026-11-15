package com.transsion.usercenter.profile.see;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.publish.bean.SubjectCollection;
import com.transsion.share.bean.PostType;
import com.transsion.usercenter.profile.see.bean.ProfileSeeMultiItemData;
import com.transsion.usercenter.profile.see.bean.ProfileSeeSubjectItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeTimeItem;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J%\u0010\u000b\u001a\u00020\u00052\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u0019\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u001b\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00160\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/transsion/usercenter/profile/see/ProfileSeeListFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lp6/a;", "<init>", "()V", "", "W0", "Lkotlin/Pair;", "", "Lcom/transsion/share/bean/PostType;", "data", "T0", "(Lkotlin/Pair;)V", "a1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "initListener", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "G0", "s0", "()Ljava/lang/String;", "loadMore", "getPageStateLayoutTitle", "retryLoadData", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/usercenter/profile/see/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "U0", "()Lcom/transsion/usercenter/profile/see/h;", "mProfileSeeViewModel", "c", "Ljava/lang/String;", "mUserId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mTitleTxt", "", "e", "I", "mType", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileSeeListFragment extends BaseListFragment<p6.a> {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy mProfileSeeViewModel;

    private String mUserId;

    private String mTitleTxt;

    private int mType;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ProfileSeeListFragment a(int i10, String str, String str2) {
            ProfileSeeListFragment profileSeeListFragment = new ProfileSeeListFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("load_type", i10);
            bundle.putString("load_user_id", str);
            bundle.putString("load_title_txt", str2);
            profileSeeListFragment.setArguments(bundle);
            return profileSeeListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f55130a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55130a = function;
        }

        @Override
        public final Function a() {
            return this.f55130a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f55130a.invoke(obj);
        }
    }

    public ProfileSeeListFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mProfileSeeViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(h.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mType = 1;
    }

    private final void T0(Pair data) {
        List<Object> data2;
        BaseQuickAdapter mBaseAdapter;
        BaseQuickAdapter mBaseAdapter2 = getMBaseAdapter();
        if (mBaseAdapter2 == null || (data2 = mBaseAdapter2.getData()) == null) {
            return;
        }
        Iterator<Object> it = data2.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            Object obj = (p6.a) it.next();
            if ((data.getSecond() == PostType.STAFF_TYPE && (obj instanceof Staff) && Intrinsics.c(((Staff) obj).getStaffId(), data.getFirst())) || ((obj instanceof ProfileSeeSubjectItem) && Intrinsics.c(((ProfileSeeSubjectItem) obj).getSubjectId(), data.getFirst()))) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 > 0) {
            if (data.getSecond() != PostType.STAFF_TYPE) {
                gx.b.f61207a.a().i(0, (String) data.getFirst());
            }
            BaseQuickAdapter mBaseAdapter3 = getMBaseAdapter();
            if (mBaseAdapter3 != null) {
                mBaseAdapter3.G0(i10);
            }
            int i11 = i10 - 1;
            if ((data2.get(i11) instanceof ProfileSeeTimeItem) && ((i10 >= data2.size() || (data2.get(i10) instanceof ProfileSeeTimeItem)) && (mBaseAdapter = getMBaseAdapter()) != null)) {
                mBaseAdapter.G0(i11);
            }
            BaseQuickAdapter mBaseAdapter4 = getMBaseAdapter();
            if ((mBaseAdapter4 != null ? mBaseAdapter4.getItemCount() : 0) <= 0) {
                BaseListFragment.K0(this, null, 1, null);
            }
        }
    }

    private final h U0() {
        return (h) this.mProfileSeeViewModel.getValue();
    }

    public static final Unit V0(ProfileSeeListFragment profileSeeListFragment, SubjectCollection value) {
        Intrinsics.h(value, "value");
        String subjectId = value.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        profileSeeListFragment.T0(new Pair(subjectId, null));
        return Unit.f64096a;
    }

    private final void W0() {
        U0().n().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileSeeListFragment.X0(this.f55144a, (ProfileSeeMultiItemData) obj);
            }
        }));
    }

    public static final Unit X0(ProfileSeeListFragment profileSeeListFragment, ProfileSeeMultiItemData profileSeeMultiItemData) {
        List<p6.a> items;
        Pager pager;
        if (profileSeeMultiItemData != null && (pager = profileSeeMultiItemData.getPager()) != null) {
            if (Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                profileSeeListFragment.B0();
            } else {
                BaseListFragment.D0(profileSeeListFragment, false, 1, null);
            }
        }
        if (profileSeeMultiItemData == null || (items = profileSeeMultiItemData.getItems()) == null) {
            profileSeeListFragment.N0();
        } else if (profileSeeListFragment.A0()) {
            profileSeeListFragment.I0(false);
            if (items.isEmpty()) {
                BaseListFragment.K0(profileSeeListFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = profileSeeListFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(items);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = profileSeeListFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(items);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit Y0(ProfileSeeListFragment profileSeeListFragment, Pair pair) {
        if (pair != null) {
            profileSeeListFragment.T0(pair);
        }
        return Unit.f64096a;
    }

    public static final Unit Z0(ProfileSeeListFragment profileSeeListFragment, Integer num) {
        FragmentActivity fragmentActivityRequireActivity = profileSeeListFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        if ((fragmentActivityRequireActivity instanceof ProfileSeeActivity) && profileSeeListFragment.mType == 1) {
            Intrinsics.e(num);
            ((ProfileSeeActivity) fragmentActivityRequireActivity).H0(num.intValue());
        }
        return Unit.f64096a;
    }

    private final void a1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileSeeListFragment.b1(this.f55143a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit b1(ProfileSeeListFragment profileSeeListFragment, AddToDownloadEvent value) {
        BaseQuickAdapter mBaseAdapter;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            BaseQuickAdapter mBaseAdapter2 = profileSeeListFragment.getMBaseAdapter();
            int i10 = -1;
            if (mBaseAdapter2 != null && (data = mBaseAdapter2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    p6.a aVar = (p6.a) it.next();
                    if ((aVar instanceof ProfileSeeSubjectItem) && Intrinsics.c(((ProfileSeeSubjectItem) aVar).getSubjectId(), value.getSubjectId())) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            if (i10 >= 0 && (mBaseAdapter = profileSeeListFragment.getMBaseAdapter()) != null) {
                mBaseAdapter.notifyItemChanged(i10);
            }
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public void G0() {
        h hVarU0 = U0();
        String str = this.mUserId;
        if (str == null) {
            str = "";
        }
        hVarU0.q(str, this.mType);
    }

    @Override
    public String getPageStateLayoutTitle() {
        String str = this.mTitleTxt;
        return str == null ? "" : str;
    }

    @Override
    public void initListener() {
        super.initListener();
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileSeeListFragment.V0(this.f55142a, (SubjectCollection) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = SubjectCollection.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    @Override
    public void initViewData() {
        t6.f fVarH0;
        super.initViewData();
        I0(true);
        BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
        if (mBaseAdapter == null || (fVarH0 = mBaseAdapter.h0()) == null) {
            return;
        }
        fVarH0.E(4);
    }

    @Override
    public void initViewModel() {
        W0();
        U0().l().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileSeeListFragment.Y0(this.f55140a, (Pair) obj);
            }
        }));
        U0().k().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileSeeListFragment.Z0(this.f55141a, (Integer) obj);
            }
        }));
        a1();
    }

    @Override
    public void lazyLoadData() {
        h hVarU0 = U0();
        String str = this.mUserId;
        if (str == null) {
            str = "";
        }
        hVarU0.o(str, this.mType);
    }

    @Override
    public void loadMore() {
        lazyLoadData();
    }

    @Override
    public BaseQuickAdapter m0() {
        return new com.transsion.usercenter.profile.see.adapter.a();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("movie_audio_archies", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.mUserId = arguments != null ? arguments.getString("load_user_id") : null;
        Bundle arguments2 = getArguments();
        this.mTitleTxt = arguments2 != null ? arguments2.getString("load_title_txt") : null;
        Bundle arguments3 = getArguments();
        this.mType = arguments3 != null ? arguments3.getInt("load_type", this.mType) : this.mType;
    }

    @Override
    public void retryLoadData() {
        F0();
    }

    @Override
    public String s0() {
        String str = this.mTitleTxt;
        return str == null ? "" : str;
    }
}

package com.transsion.postdetail.shorttv.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.HorizontalRecyclerview2;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.TnTextView;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.shorttv.adapter.ShortTVHeaderViewAdapter;
import com.transsion.postdetail.shorttv.viewmodel.ShortTVContentViewModel;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import wn.d0;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 D2\u00020\u0001:\u0001!B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fB)\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u0010B3\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0012¢\u0006\u0004\b \u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010$R\u001d\u0010C\u001a\u0004\u0018\u00010@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u00103\u001a\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;", "Landroid/widget/LinearLayout;", "Landroidx/fragment/app/Fragment;", "fragment", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/postdetail/shorttv/j;", "recReport", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;)V", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "e", "()V", "h", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "list", "l", "(Ljava/util/List;)V", "subject", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getItemOptType", "()Ljava/lang/String;", "clearExposureCache", "a", "Landroidx/fragment/app/Fragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Lcom/transsion/postdetail/shorttv/j;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isRTL", "I", "dp8", "Lwn/d0;", "f", "Lwn/d0;", "viewBinding", "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "g", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "viewModel", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVHeaderViewAdapter;", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVHeaderViewAdapter;", "headerAdapter", "Lbj/b;", "i", "Lbj/b;", "exposureHelper", "j", "nextPage", "Lqx/a;", "getLoginApi", "()Lqx/a;", "loginApi", "Companion", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVCollectionView extends LinearLayout {
    public static final String TYPE_COLLECTION = "collection";

    private final Fragment fragment;

    private final String type;

    private final com.transsion.postdetail.shorttv.j recReport;

    private final boolean isRTL;

    private final int dp8;

    private final d0 viewBinding;

    private final Lazy viewModel;

    private ShortTVHeaderViewAdapter headerAdapter;

    private bj.b exposureHelper;

    private String nextPage;

    private final Lazy loginApi;

    public static final class b implements bj.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTVCollectionView.this.headerAdapter;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i10) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTVCollectionView.this.headerAdapter;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i10);
            if (subject != null) {
                ShortTVCollectionView.this.recReport.a("minitv_explore", subject, i10, j10, ShortTVCollectionView.this.getItemOptType());
            }
        }
    }

    public static final class c extends RecyclerView.l {
        c() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (childAdapterPosition == 0) {
                    if (ShortTVCollectionView.this.isRTL) {
                        outRect.right = ShortTVCollectionView.this.dp8 * 2;
                        return;
                    } else {
                        outRect.left = ShortTVCollectionView.this.dp8 * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTVCollectionView.this.dp8;
                    outRect.left = ShortTVCollectionView.this.dp8;
                } else if (ShortTVCollectionView.this.isRTL) {
                    outRect.right = ShortTVCollectionView.this.dp8;
                } else {
                    outRect.left = ShortTVCollectionView.this.dp8;
                }
            }
        }
    }

    static final class d implements c0, FunctionAdapter {

        private final Function1 f47222a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47222a = function;
        }

        @Override
        public final Function a() {
            return this.f47222a;
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
            this.f47222a.invoke(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(final Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
        this.fragment = fragment;
        this.type = type;
        this.recReport = recReport;
        this.isRTL = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.dp8 = a0.a(8.0f);
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTVContentViewModel.class), new Function0<x0>() {
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
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.nextPage = "0";
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVCollectionView.j();
            }
        });
        View.inflate(context, R$layout.layout_short_tv_collection, this);
        d0 d0VarA = d0.a(this);
        Intrinsics.g(d0VarA, "bind(...)");
        this.viewBinding = d0VarA;
        setOrientation(1);
        e();
        h();
    }

    private final void e() {
        this.exposureHelper = new bj.b(0.6f, new b(), false, 4, null);
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(null, 1, null);
        shortTVHeaderViewAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTVCollectionView.f(this.f47254a, baseQuickAdapter, view, i10);
            }
        });
        this.headerAdapter = shortTVHeaderViewAdapter;
        HorizontalRecyclerview2 horizontalRecyclerview2 = this.viewBinding.f74341b;
        horizontalRecyclerview2.setLayoutManager(new NpaLinearLayoutManager(horizontalRecyclerview2.getContext(), 0, false));
        horizontalRecyclerview2.addItemDecoration(new c());
        horizontalRecyclerview2.setAdapter(this.headerAdapter);
        bj.b bVar = this.exposureHelper;
        Intrinsics.e(bVar);
        horizontalRecyclerview2.addOnScrollListener(bVar);
        this.viewBinding.f74344e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVCollectionView.g(this.f47255a, view);
            }
        });
    }

    public static final void f(ShortTVCollectionView shortTVCollectionView, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVCollectionView.recReport.b("minitv_explore", subject, i10, shortTVCollectionView.getItemOptType());
            shortTVCollectionView.k(subject);
        }
    }

    public static final void g(ShortTVCollectionView shortTVCollectionView, View view) {
        wf.a.C0922a.g(wf.a.f74274a, "Click view all", false, 2, null);
        Navigator.x(TheRouter.c("/shorts/favorite"), shortTVCollectionView.getContext(), null, 2, null);
    }

    public final String getItemOptType() {
        return Intrinsics.c(this.type, "collection") ? "collection" : "continue_watching";
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final ShortTVContentViewModel getViewModel() {
        return (ShortTVContentViewModel) this.viewModel.getValue();
    }

    private final void h() {
        if (Intrinsics.c(this.type, "collection")) {
            TnTextView tvTitleTrending = this.viewBinding.f74343d;
            Intrinsics.g(tvTitleTrending, "tvTitleTrending");
            tvTitleTrending.setVisibility(8);
            AppCompatTextView appCompatTextView = this.viewBinding.f74342c;
            Context context = getContext();
            appCompatTextView.setText(context != null ? context.getString(R$string.short_tv_my_list) : null);
            getViewModel().h().j(this.fragment, new d(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTVCollectionView.i(this.f47253a, (ShortTVRespData) obj);
                }
            }));
        }
    }

    public static final Unit i(ShortTVCollectionView shortTVCollectionView, ShortTVRespData shortTVRespData) {
        String nextPage;
        if (shortTVRespData == null) {
            return Unit.f64096a;
        }
        Pager pager = shortTVRespData.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "0";
        }
        shortTVCollectionView.nextPage = nextPage;
        shortTVCollectionView.l(shortTVRespData.getItems());
        return Unit.f64096a;
    }

    public static final qx.a j() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void k(Subject subject) {
        Context context = getContext();
        if (context == null || !Intrinsics.c(getItemOptType(), "collection")) {
            return;
        }
        DownloadManagerApi.f56187j.a().d0((FragmentActivity) context, "minitv_explore", (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
    }

    private final void l(List list) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        wf.a.C0922a.f(wf.a.f74274a, "ShortTVCollectionView", "updateList, type:" + this.type + "，size:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (shortTVHeaderViewAdapter = this.headerAdapter) == null) {
            return;
        }
        shortTVHeaderViewAdapter.n1(list2);
    }

    public final void clearExposureCache() {
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context) {
        this(fragment, type, recReport, context, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context, AttributeSet attributeSet) {
        this(fragment, type, recReport, context, attributeSet, 0);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
    }
}

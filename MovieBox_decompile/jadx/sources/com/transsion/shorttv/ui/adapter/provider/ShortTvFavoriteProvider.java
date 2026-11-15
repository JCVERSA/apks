package com.transsion.shorttv.ui.adapter.provider;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.ShortTVHeaderViewAdapter;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public final class ShortTvFavoriteProvider extends BaseItemProvider {

    public static final a f51146m = new a(null);

    private final Fragment f51147e;

    private final Lazy f51148f;

    private final Lazy f51149g;

    private String f51150h;

    private final boolean f51151i;

    private final int f51152j;

    private ShortTVHeaderViewAdapter f51153k;

    private br.b f51154l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements br.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTvFavoriteProvider.this.f51153k;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i10) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTvFavoriteProvider.this.f51153k;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i10);
            if (subject != null) {
                ShortTvFavoriteProvider.this.M().a("minitv_explore", subject, i10, Long.valueOf(j10), ShortTvFavoriteProvider.this.L());
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
                    if (ShortTvFavoriteProvider.this.f51151i) {
                        outRect.right = ShortTvFavoriteProvider.this.f51152j * 2;
                        return;
                    } else {
                        outRect.left = ShortTvFavoriteProvider.this.f51152j * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTvFavoriteProvider.this.f51152j;
                    outRect.left = ShortTvFavoriteProvider.this.f51152j;
                } else if (ShortTvFavoriteProvider.this.f51151i) {
                    outRect.right = ShortTvFavoriteProvider.this.f51152j;
                } else {
                    outRect.left = ShortTvFavoriteProvider.this.f51152j;
                }
            }
        }
    }

    static final class d implements c0, FunctionAdapter {

        private final Function1 f51157a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51157a = function;
        }

        @Override
        public final Function a() {
            return this.f51157a;
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
            this.f51157a.invoke(obj);
        }
    }

    public ShortTvFavoriteProvider(final Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f51147e = fragment;
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.f51148f = FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvViewModel.class), new Function0<x0>() {
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
        this.f51149g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvFavoriteProvider.P();
            }
        });
        this.f51150h = "0";
        this.f51151i = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.f51152j = a0.a(8.0f);
    }

    public static final Unit I(ShortTvFavoriteProvider shortTvFavoriteProvider, ShortTVRespData shortTVRespData) {
        String nextPage;
        if (shortTVRespData == null) {
            return Unit.f64096a;
        }
        Pager pager = shortTVRespData.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "0";
        }
        shortTvFavoriteProvider.f51150h = nextPage;
        shortTvFavoriteProvider.Q(shortTVRespData.getItems());
        return Unit.f64096a;
    }

    public static final void J(ShortTvFavoriteProvider shortTvFavoriteProvider, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTvFavoriteProvider.M().c("minitv_explore", subject, i10, shortTvFavoriteProvider.L());
            shortTvFavoriteProvider.O(subject);
        }
    }

    public static final void K(BaseViewHolder baseViewHolder, View view) {
        wf.a.C0922a.g(wf.a.f74274a, "Click view all", false, 2, null);
        Navigator.x(TheRouter.c(pr.a.f69252a.c()), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    public final String L() {
        return "collection";
    }

    public final wr.a M() {
        return (wr.a) this.f51149g.getValue();
    }

    private final ShortTvViewModel N() {
        return (ShortTvViewModel) this.f51148f.getValue();
    }

    private final void O(Subject subject) {
        rr.a aVar = rr.a.f71324a;
        Context contextK = k();
        Intrinsics.f(contextK, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        aVar.a((FragmentActivity) contextK, "minitv_explore", subject.getOps(), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : false, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : null);
    }

    public static final wr.a P() {
        return new wr.a();
    }

    private final void Q(List list) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvFavorite", "updateList, size:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (shortTVHeaderViewAdapter = this.f51153k) == null) {
            return;
        }
        shortTVHeaderViewAdapter.n1(list2);
    }

    @Override
    public void b(final BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.tv_title)).setText(Utils.a().getString(R$string.short_tv_my_list));
        N().c0().j(this.f51147e, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvFavoriteProvider.I(this.f51166a, (ShortTVRespData) obj);
            }
        }));
        this.f51154l = new br.b(0.6f, new b(), false, 4, null);
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(null, 1, null);
        shortTVHeaderViewAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvFavoriteProvider.J(this.f51167a, baseQuickAdapter, view, i10);
            }
        });
        this.f51153k = shortTVHeaderViewAdapter;
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.recycler_view);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new c());
        recyclerView.setAdapter(this.f51153k);
        br.b bVar = this.f51154l;
        Intrinsics.e(bVar);
        recyclerView.addOnScrollListener(bVar);
        ((TextView) helper.getView(R$id.tv_view_all)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTvFavoriteProvider.K(helper, view);
            }
        });
    }

    @Override
    public int l() {
        return ShortTvItemType.FAVORITE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.short_tv_layout_favorite;
    }
}

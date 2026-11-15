package com.transsion.subroom.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.b;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.mb.config.download.UserPreferOption;
import com.transsion.startup.StartupManager;
import com.transsion.subroom.R$drawable;
import com.transsion.subroom.R$id;
import com.transsion.subroom.R$string;
import com.transsion.subroom.fragment.UserPreferFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dt.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import r6.d;
import yg.l;

@Deprecated
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R3\u00102\u001a\u001f\u0012\u0013\u0012\u00110,¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(/\u0012\u0006\u0012\u0004\u0018\u00010\b0+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010>R\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010B¨\u0006L"}, d2 = {"Lcom/transsion/subroom/fragment/UserPreferFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Ldt/c;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "Landroid/view/ViewGroup;", "parent", "", "f0", "(Landroid/view/ViewGroup;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "e0", "(Landroid/view/View;)V", "i0", "Landroid/view/LayoutInflater;", "inflater", "d0", "(Landroid/view/LayoutInflater;)Ldt/c;", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "a", "Ljava/lang/String;", "TAG", "Lcom/transsion/subroom/adapter/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/subroom/adapter/a;", "mAdapter", "", "Lcom/transsion/mb/config/download/UserPreferOption;", "c", "Ljava/util/List;", "mCheckedList", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "removeFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function1;", "mCallback", "e", "Landroid/view/ViewGroup;", "parentView", "f", "Landroid/view/View;", "rootView", "g", "Z", "viewCreated", "Landroid/widget/TextView;", "h", "Landroid/widget/TextView;", "tvSkip", "Landroid/widget/ProgressBar;", "i", "Landroid/widget/ProgressBar;", "pbSkip", "Landroidx/recyclerview/widget/RecyclerView;", "j", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", CampaignEx.JSON_KEY_AD_K, "tvSubmit", "l", "loadView", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserPreferFragment extends BaseFragment<c> implements View.OnClickListener {

    private com.transsion.subroom.adapter.a mAdapter;

    private ViewGroup parentView;

    private View rootView;

    private boolean viewCreated;

    private TextView tvSkip;

    private ProgressBar pbSkip;

    private RecyclerView recyclerView;

    private TextView tvSubmit;

    private ProgressBar loadView;

    private final String TAG = "UserPrefer-tag";

    private List mCheckedList = new ArrayList();

    private Function1 mCallback = new Function1() {
        @Override
        public final Object invoke(Object obj) {
            return UserPreferFragment.h0(((Boolean) obj).booleanValue());
        }
    };

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override
        public boolean areContentsTheSame(UserPreferOption oldItem, UserPreferOption newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getId(), newItem.getId());
        }

        @Override
        public boolean areItemsTheSame(UserPreferOption oldItem, UserPreferOption newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getId(), newItem.getId());
        }
    }

    private final void e0(View view) {
    }

    private final void f0(ViewGroup parent) {
        this.tvSkip = parent != null ? (TextView) parent.findViewById(R$id.tv_skip) : null;
        this.pbSkip = parent != null ? (ProgressBar) parent.findViewById(R$id.pb_skip) : null;
        this.recyclerView = parent != null ? (RecyclerView) parent.findViewById(R$id.recycler_view) : null;
        this.tvSubmit = parent != null ? (TextView) parent.findViewById(R$id.tv_submit) : null;
        this.loadView = parent != null ? (ProgressBar) parent.findViewById(R$id.load_view) : null;
        TextView textView = this.tvSkip;
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        TextView textView2 = this.tvSubmit;
        if (textView2 != null) {
            textView2.setOnClickListener(this);
        }
        TextView textView3 = this.tvSubmit;
        if (textView3 != null) {
            textView3.setSelected(true);
        }
        com.transsion.subroom.adapter.a aVar = new com.transsion.subroom.adapter.a(new ArrayList());
        aVar.w1(new d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UserPreferFragment.g0(this.f59814a, baseQuickAdapter, view, i10);
            }
        });
        aVar.R0(new a());
        this.mAdapter = aVar;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
            flexboxLayoutManager.c0(0);
            flexboxLayoutManager.d0(1);
            flexboxLayoutManager.e0(0);
            recyclerView.setLayoutManager(flexboxLayoutManager);
            com.google.android.flexbox.d dVar = new com.google.android.flexbox.d(recyclerView.getContext());
            dVar.l(3);
            dVar.i(b.getDrawable(Utils.a(), R$drawable.space_user_perfer_decoration));
            recyclerView.addItemDecoration(dVar);
            recyclerView.setAdapter(this.mAdapter);
        }
        e0(parent);
    }

    public static final void g0(UserPreferFragment userPreferFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.mb.config.download.UserPreferOption");
        UserPreferOption userPreferOption = (UserPreferOption) item;
        boolean zIsSelected = view.isSelected();
        if (zIsSelected) {
            userPreferFragment.mCheckedList.remove(userPreferOption);
            view.setSelected(!zIsSelected);
        } else if (userPreferFragment.mCheckedList.size() >= 5) {
            fh.b.f60176a.d(R$string.choose_up_to_5);
        } else {
            userPreferFragment.mCheckedList.add(userPreferOption);
            view.setSelected(!zIsSelected);
        }
        TextView textView = userPreferFragment.tvSubmit;
        if (textView != null) {
            textView.setSelected(userPreferFragment.mCheckedList.isEmpty());
        }
    }

    public static final Unit h0(boolean z10) {
        return Unit.f64096a;
    }

    private final void i0() {
        TextView textView = this.tvSubmit;
        if (textView != null) {
            textView.setClickable(false);
        }
        TextView textView2 = this.tvSubmit;
        if (textView2 != null) {
            textView2.setText("");
        }
        ProgressBar progressBar = this.loadView;
        if (progressBar != null) {
            uf.c.k(progressBar);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.mCheckedList.iterator();
        while (it.hasNext()) {
            String id2 = ((UserPreferOption) it.next()).getId();
            if (id2 != null) {
                arrayList.add(id2);
            }
        }
        StartupManager.f52494g.a().p0(arrayList, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserPreferFragment.j0(this.f59813a, ((Boolean) obj).booleanValue());
            }
        });
        this.mCallback.invoke(Boolean.FALSE);
    }

    public static final Unit j0(UserPreferFragment userPreferFragment, boolean z10) {
        wf.a.C0922a.f(wf.a.f74274a, userPreferFragment.TAG, "submit success result = " + z10, false, 4, null);
        return Unit.f64096a;
    }

    @Override
    public c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        c cVarC = c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        this.parentView = (ViewGroup) view;
        if (this.rootView == null) {
            this.viewCreated = true;
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "userPrefer", "userprefer, xml inflate before viewCreated", false, 4, null);
        ViewGroup viewGroup = this.parentView;
        if (viewGroup != null) {
            viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
        }
        f0(this.parentView);
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("UserPrefer", false, 2, null);
    }

    @Override
    public void onClick(View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        int i10 = R$id.tv_skip;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            this.mCallback.invoke(Boolean.TRUE);
            ProgressBar progressBar = this.pbSkip;
            if (progressBar != null) {
                uf.c.k(progressBar);
            }
            TextView textView = this.tvSkip;
            if (textView != null) {
                uf.c.h(textView);
                return;
            }
            return;
        }
        int i11 = R$id.tv_submit;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            if (this.mCheckedList.isEmpty()) {
                fh.b.f60176a.d(R$string.choose_at_least_one);
            } else if (l.f76264a.e()) {
                i0();
            } else {
                fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
        }
    }
}

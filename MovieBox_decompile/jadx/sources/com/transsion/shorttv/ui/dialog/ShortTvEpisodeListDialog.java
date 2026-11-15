package com.transsion.shorttv.ui.dialog;

import android.R;
import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.R$id;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$style;
import com.transsion.shorttv.base.dialog.BaseDialog;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.r;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import qr.s;

@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001D\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u001d\u0010\u0010\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\tJ\u0015\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J\u0019\u0010\u001c\u001a\u00020\u001b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010$\u001a\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010?\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006H"}, d2 = {"Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;", "Lcom/transsion/shorttv/base/dialog/BaseDialog;", "<init>", "()V", "", "Lnr/e;", "list", "", "P0", "(Ljava/util/List;)V", "", "E0", "()I", "F0", "C0", "N0", "O0", WebConstants.FIELD_ITEM, "M0", "(Lnr/e;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Lqr/s;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lqr/s;", "dramaDialogEpisodeListBinding", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "c", "Lkotlin/Lazy;", "D0", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "shortTvPlayListViewModel", "Lcom/transsion/shorttv/bean/Subject;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/shorttv/bean/Subject;", "shortTvInfo", "Landroidx/recyclerview/widget/GridLayoutManager;", "e", "Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Lcom/transsion/shorttv/ui/adapter/r;", "f", "B0", "()Lcom/transsion/shorttv/ui/adapter/r;", "adapter", "", "g", "Z", "hasTrailer", "", "h", "J", "lastClickTime", "i", "I", "itemHeight", "Lr6/d;", "j", "Lr6/d;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "com/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;", "onTabSelectedListener", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvEpisodeListDialog extends BaseDialog {

    private s dramaDialogEpisodeListBinding;

    private final Lazy shortTvPlayListViewModel;

    private Subject shortTvInfo;

    private GridLayoutManager gridLayoutManager;

    private final Lazy adapter;

    private boolean hasTrailer;

    private long lastClickTime;

    private final int itemHeight;

    private final r6.d listener;

    private final a onTabSelectedListener;

    public static final class a implements TabLayout.OnTabSelectedListener {
        a() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            s sVar = ShortTvEpisodeListDialog.this.dramaDialogEpisodeListBinding;
            if (sVar != null) {
                ShortTvEpisodeListDialog shortTvEpisodeListDialog = ShortTvEpisodeListDialog.this;
                if (tab != null && tab.isSelected() && sVar.f70162d.getScrollState() == 0) {
                    int selectedTabPosition = sVar.f70163e.getSelectedTabPosition() * 25;
                    GridLayoutManager gridLayoutManager = shortTvEpisodeListDialog.gridLayoutManager;
                    if (gridLayoutManager != null) {
                        int iFindFirstCompletelyVisibleItemPosition = ((selectedTabPosition - gridLayoutManager.findFirstCompletelyVisibleItemPosition()) / 5) * shortTvEpisodeListDialog.itemHeight;
                        if (sVar.f70162d.canScrollVertically(iFindFirstCompletelyVisibleItemPosition)) {
                            sVar.f70162d.scrollBy(0, iFindFirstCompletelyVisibleItemPosition);
                        }
                    }
                }
            }
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f51223a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51223a = function;
        }

        @Override
        public final Function a() {
            return this.f51223a;
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
            this.f51223a.invoke(obj);
        }
    }

    public static final class c extends RecyclerView.r {

        private int f51224a;

        private int f51225b;

        final s f51227d;

        final String f51228e;

        c(s sVar, String str) {
            this.f51227d = sVar;
            this.f51228e = str;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            GridLayoutManager gridLayoutManager = ShortTvEpisodeListDialog.this.gridLayoutManager;
            if (gridLayoutManager != null) {
                s sVar = this.f51227d;
                ShortTvEpisodeListDialog shortTvEpisodeListDialog = ShortTvEpisodeListDialog.this;
                String str = this.f51228e;
                int iFindFirstCompletelyVisibleItemPosition = gridLayoutManager.findFirstCompletelyVisibleItemPosition();
                if (iFindFirstCompletelyVisibleItemPosition != this.f51224a) {
                    this.f51224a = iFindFirstCompletelyVisibleItemPosition;
                    int i11 = iFindFirstCompletelyVisibleItemPosition / 25;
                    if (i11 != this.f51225b) {
                        sVar.f70163e.removeOnTabSelectedListener((TabLayout.OnTabSelectedListener) shortTvEpisodeListDialog.onTabSelectedListener);
                        TabLayout.Tab tabAt = sVar.f70163e.getTabAt(i11);
                        if (tabAt != null) {
                            tabAt.select();
                        }
                        sVar.f70163e.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) shortTvEpisodeListDialog.onTabSelectedListener);
                        this.f51225b = i11;
                    }
                }
                if (i10 == 0) {
                    int iFindFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
                    int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
                    nr.e eVar = (nr.e) CollectionsKt.l0(shortTvEpisodeListDialog.B0().getData(), iFindFirstVisibleItemPosition);
                    if (eVar != null && eVar.c() > 0) {
                        shortTvEpisodeListDialog.D0().w0(str, eVar.c());
                    }
                    nr.e eVar2 = (nr.e) CollectionsKt.l0(shortTvEpisodeListDialog.B0().getData(), iFindLastVisibleItemPosition);
                    if (eVar2 == null || eVar2.c() <= 0) {
                        return;
                    }
                    shortTvEpisodeListDialog.D0().w0(str, eVar2.c());
                }
            }
        }
    }

    public ShortTvEpisodeListDialog() {
        super(R$layout.short_tv_dialog_episode_list);
        this.shortTvPlayListViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.adapter = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvEpisodeListDialog.A0();
            }
        });
        this.itemHeight = (y.e() - com.blankj.utilcode.util.i.e(24.0f)) / 5;
        this.listener = new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvEpisodeListDialog.G0(this.f51239a, baseQuickAdapter, view, i10);
            }
        };
        this.onTabSelectedListener = new a();
    }

    public static final r A0() {
        return new r();
    }

    public final r B0() {
        return (r) this.adapter.getValue();
    }

    private final int C0() {
        return !this.hasTrailer ? 1 : 0;
    }

    public final ShortTvViewModel D0() {
        return (ShortTvViewModel) this.shortTvPlayListViewModel.getValue();
    }

    private final int E0() {
        if (this.hasTrailer) {
            Subject subject = this.shortTvInfo;
            return (subject != null ? subject.getTotalEpisode() : 0) + 1;
        }
        Subject subject2 = this.shortTvInfo;
        if (subject2 != null) {
            return subject2.getTotalEpisode();
        }
        return 0;
    }

    public final int F0() {
        Subject subject = this.shortTvInfo;
        if (subject != null) {
            return subject.getTotalEpisode();
        }
        return 0;
    }

    public static final void G0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (shortTvEpisodeListDialog.lastClickTime == 0 || System.currentTimeMillis() - shortTvEpisodeListDialog.lastClickTime > 1000) {
            shortTvEpisodeListDialog.lastClickTime = System.currentTimeMillis();
            List<Object> data = shortTvEpisodeListDialog.B0().getData();
            if (i10 < data.size()) {
                shortTvEpisodeListDialog.M0((nr.e) data.get(i10));
            }
        }
    }

    public static final void H0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, View view) {
        shortTvEpisodeListDialog.dismiss();
    }

    public static final Unit I0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, Subject subject) {
        AppCompatTextView appCompatTextView;
        shortTvEpisodeListDialog.shortTvInfo = subject;
        shortTvEpisodeListDialog.B0().F1(subject);
        s sVar = shortTvEpisodeListDialog.dramaDialogEpisodeListBinding;
        if (sVar != null && (appCompatTextView = sVar.f70164f) != null) {
            Subject subject2 = shortTvEpisodeListDialog.shortTvInfo;
            appCompatTextView.setText(subject2 != null ? subject2.getTitle() : null);
        }
        return Unit.f64096a;
    }

    public static final Unit J0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, List list) {
        List listL;
        if (list != null) {
            listL = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof nr.e) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        shortTvEpisodeListDialog.P0(listL);
        return Unit.f64096a;
    }

    public static final Unit K0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, Integer num) {
        r rVarB0 = shortTvEpisodeListDialog.B0();
        Intrinsics.e(num);
        rVarB0.D1(num.intValue());
        return Unit.f64096a;
    }

    public static final Unit L0(ShortTvEpisodeListDialog shortTvEpisodeListDialog, ShortTvInfoEpisodeList shortTvInfoEpisodeList) {
        if (shortTvInfoEpisodeList != null) {
            shortTvEpisodeListDialog.B0().notifyDataSetChanged();
        }
        return Unit.f64096a;
    }

    private final void N0() {
        String subjectId;
        s sVar = this.dramaDialogEpisodeListBinding;
        if (sVar != null) {
            int iE0 = (E0() + 24) / 25;
            Subject subject = this.shortTvInfo;
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            Integer num = (Integer) D0().j0().f();
            int iIntValue = num != null ? num.intValue() : 1;
            for (int i10 = 0; i10 < iE0; i10++) {
                int iC0 = (i10 * 25) + C0();
                String str = iC0 + "-" + RangesKt.h(iC0 + 24, F0());
                sVar.f70163e.setTabTextColors(-1, Utils.a().getResources().getColor(R$color.short_tv_main));
                TabLayout tabLayout = sVar.f70163e;
                TabLayout.Tab text = tabLayout.newTab().setText(str);
                text.view.setLongClickable(false);
                if (Build.VERSION.SDK_INT >= 26) {
                    text.view.setTooltipText(null);
                }
                tabLayout.addTab(text);
            }
            if (iE0 <= 1) {
                sVar.f70163e.setVisibility(8);
                sVar.f70165g.setVisibility(8);
            } else {
                sVar.f70163e.setVisibility(0);
                sVar.f70165g.setVisibility(0);
            }
            RecyclerView rv2 = sVar.f70162d;
            Intrinsics.g(rv2, "rv");
            ViewGroup.LayoutParams layoutParams = rv2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = this.itemHeight * 5;
            rv2.setLayoutParams(bVar);
            sVar.f70163e.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) this.onTabSelectedListener);
            sVar.f70162d.addOnScrollListener(new c(sVar, subjectId));
            int iE = com.blankj.utilcode.util.i.e(12.0f);
            sVar.f70162d.setPadding(iE, 0, iE, 0);
            RecyclerView recyclerView = sVar.f70162d;
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 5, 1, false);
            this.gridLayoutManager = gridLayoutManager;
            recyclerView.setLayoutManager(gridLayoutManager);
            kotlinx.coroutines.k.d(v.a(this), null, null, new ShortTvEpisodeListDialog$showAllEpisodes$1$5(this, subjectId, iIntValue, null), 3, null);
        }
    }

    private final void O0(List list) {
        ProgressBar progressBar;
        RecyclerView recyclerView;
        s sVar = this.dramaDialogEpisodeListBinding;
        if (sVar != null) {
            Integer num = (Integer) D0().j0().f();
            int iIntValue = num != null ? num.intValue() : 1;
            TabLayout tab = sVar.f70163e;
            Intrinsics.g(tab, "tab");
            cr.b.b(tab);
            View viewLine = sVar.f70165g;
            Intrinsics.g(viewLine, "viewLine");
            cr.b.b(viewLine);
            RecyclerView rv2 = sVar.f70162d;
            Intrinsics.g(rv2, "rv");
            ViewGroup.LayoutParams layoutParams = rv2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = this.itemHeight * 5;
            rv2.setLayoutParams(bVar);
            int iE = com.blankj.utilcode.util.i.e(12.0f);
            sVar.f70162d.setPadding(iE, 0, iE, 0);
            RecyclerView recyclerView2 = sVar.f70162d;
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 5, 1, false);
            this.gridLayoutManager = gridLayoutManager;
            recyclerView2.setLayoutManager(gridLayoutManager);
            s sVar2 = this.dramaDialogEpisodeListBinding;
            if (sVar2 != null && (recyclerView = sVar2.f70162d) != null) {
                r rVarB0 = B0();
                rVarB0.q1(CollectionsKt.U0(list));
                rVarB0.w1(this.listener);
                rVarB0.D1(iIntValue);
                recyclerView.setAdapter(rVarB0);
            }
        }
        s sVar3 = this.dramaDialogEpisodeListBinding;
        if (sVar3 == null || (progressBar = sVar3.f70161c) == null) {
            return;
        }
        cr.b.b(progressBar);
    }

    private final void P0(List list) {
        if (list.size() == E0()) {
            N0();
        } else {
            O0(list);
        }
    }

    public final void M0(nr.e item) {
        Intrinsics.h(item, "item");
        D0().d1(item.c());
        dismissAllowingStateLoss();
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.ShortTvBottomDialogTheme);
            window.setGravity(80);
            window.setDimAmount(0.5f);
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = -1;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        return dialogOnCreateDialog;
    }

    @Override
    public void onResume() {
        Window window;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.getAttributes().gravity = 80;
        window.getAttributes().height = -2;
        View viewFindViewById = window.findViewById(R$id.design_bottom_sheet);
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundResource(R.color.transparent);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.hasTrailer = arguments != null ? arguments.getBoolean("hasTrailer") : this.hasTrailer;
        s sVarA = s.a(view);
        sVarA.f70160b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                ShortTvEpisodeListDialog.H0(this.f51240a, view2);
            }
        });
        ProgressBar pbLoading = sVarA.f70161c;
        Intrinsics.g(pbLoading, "pbLoading");
        cr.b.e(pbLoading);
        this.dramaDialogEpisodeListBinding = sVarA;
        this.shortTvInfo = (Subject) D0().H0().f();
        D0().H0().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvEpisodeListDialog.I0(this.f51241a, (Subject) obj);
            }
        }));
        D0().F0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvEpisodeListDialog.J0(this.f51242a, (List) obj);
            }
        }));
        D0().j0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvEpisodeListDialog.K0(this.f51243a, (Integer) obj);
            }
        }));
        D0().t0().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvEpisodeListDialog.L0(this.f51244a, (ShortTvInfoEpisodeList) obj);
            }
        }));
    }
}

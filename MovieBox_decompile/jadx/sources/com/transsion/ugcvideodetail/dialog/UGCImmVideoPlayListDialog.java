package com.transsion.ugcvideodetail.dialog;

import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.dialog.BaseViewBindingDialog;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsnet.downloader.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import iu.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001>B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u0019\u0010\u0013\u001a\u00020\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010'R\"\u00103\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010+\u001a\u0004\b3\u00104\"\u0004\b5\u00106R.\u0010<\u001a\u001c\u0012\u0004\u0012\u000208\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0002078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;¨\u0006?"}, d2 = {"Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoPlayListDialog;", "Lcom/transsion/baseui/dialog/BaseViewBindingDialog;", "Liu/k;", "<init>", "()V", "", "u0", "()I", "", "w0", "initViewData", "totalCount", "B0", "(I)V", "tabIndex", "z0", "v0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "t0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "detailViewModel", "Lcom/transsion/ugcvideodetail/adapter/h;", "e", "Lcom/transsion/ugcvideodetail/adapter/h;", "tabAdapter", "f", "I", "selectedTabIndex", "", "g", "Z", "isTabsInitialized", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "h", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "currentVideo", "i", "j", "isCollectionList", "()Z", "setCollectionList", "(Z)V", "Lkotlin/Function3;", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "n0", "()Lkotlin/jvm/functions/Function3;", "bindingInflater", CampaignEx.JSON_KEY_AD_K, "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoPlayListDialog extends BaseViewBindingDialog<k> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.ugcvideodetail.adapter.h tabAdapter;

    private int selectedTabIndex;

    private boolean isTabsInitialized;

    private UGCImmVideo currentVideo;

    private int totalCount;

    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<x0>() {
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

    private boolean isCollectionList = true;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoPlayListDialog a(boolean z10) {
            UGCImmVideoPlayListDialog uGCImmVideoPlayListDialog = new UGCImmVideoPlayListDialog();
            uGCImmVideoPlayListDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("ISC_COLLECTION_LIST", Boolean.valueOf(z10))));
            return uGCImmVideoPlayListDialog;
        }

        private Companion() {
        }
    }

    public static final class b extends RecyclerView.l {

        final int f53954a;

        final int f53955b;

        b(int i10, int i11) {
            this.f53954a = i10;
            this.f53955b = i11;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            int itemCount = (adapter != null ? adapter.getItemCount() : 0) - 1;
            if (childAdapterPosition == 0) {
                outRect.left = this.f53954a;
                outRect.right = this.f53955b;
            } else if (childAdapterPosition == itemCount) {
                outRect.left = this.f53955b;
                outRect.right = this.f53954a;
            } else {
                int i10 = this.f53955b;
                outRect.left = i10;
                outRect.right = i10;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void A0(Ref.ObjectRef objectRef) {
        ((UGCImmVideoDialogPlayListFragment) objectRef.element).r0();
        ((UGCImmVideoDialogPlayListFragment) objectRef.element).G0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v29, types: [T, com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment] */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, androidx.fragment.app.Fragment] */
    private final void B0(int totalCount) {
        int iS;
        UGCVideo ugcVideo;
        RecyclerView recyclerView;
        View view;
        RecyclerView recyclerView2;
        if (totalCount <= 0) {
            return;
        }
        if (totalCount <= 50) {
            k kVar = (k) getViewBinding();
            if (kVar != null && (recyclerView2 = kVar.f62713e) != null) {
                uf.c.g(recyclerView2);
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? K0 = getChildFragmentManager().k0("UGCImmPlayListTabFragment_0");
            objectRef.element = K0;
            if (K0 == 0) {
                objectRef.element = UGCImmVideoDialogPlayListFragment.INSTANCE.a(this.isCollectionList, 0, 1, totalCount);
            }
            if (((Fragment) objectRef.element).isAdded()) {
                getChildFragmentManager().p().y((Fragment) objectRef.element).l();
            } else {
                getChildFragmentManager().p().c(R$id.fragmentContainer, (Fragment) objectRef.element, "UGCImmPlayListTabFragment_0").l();
            }
            if (!(objectRef.element instanceof UGCImmVideoDialogPlayListFragment) || (view = getView()) == null) {
                return;
            }
            view.post(new Runnable() {
                @Override
                public final void run() {
                    UGCImmVideoPlayListDialog.C0(objectRef);
                }
            });
            return;
        }
        k kVar2 = (k) getViewBinding();
        if (kVar2 != null && (recyclerView = kVar2.f62713e) != null) {
            uf.c.k(recyclerView);
        }
        IntRange intRangeS = RangesKt.s(0, (totalCount + 49) / 50);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeS, 10));
        Iterator<Integer> it = intRangeS.iterator();
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            int i10 = (iA * 50) + 1;
            int iMin = Math.min((iA + 1) * 50, totalCount);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(Locale.US, "%d-%d", Arrays.copyOf(new Object[]{Integer.valueOf(i10), Integer.valueOf(iMin)}, 2));
            Intrinsics.g(str, "format(...)");
            arrayList.add(str);
        }
        com.transsion.ugcvideodetail.adapter.h hVar = this.tabAdapter;
        if (hVar != null) {
            hVar.n1(CollectionsKt.U0(arrayList));
        }
        if (this.isTabsInitialized) {
            int size = arrayList.size();
            int i11 = this.selectedTabIndex;
            if (i11 >= 0 && i11 < size) {
                com.transsion.ugcvideodetail.adapter.h hVar2 = this.tabAdapter;
                if (hVar2 != null) {
                    hVar2.D1(i11);
                    return;
                }
                return;
            }
        }
        UGCImmVideo uGCImmVideo = this.currentVideo;
        int iVideoUGCPosition = (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? -1 : ugcVideo.videoUGCPosition();
        if (iVideoUGCPosition > 0) {
            iS = t0().S(iVideoUGCPosition);
        } else {
            int size2 = arrayList.size();
            int i12 = this.selectedTabIndex;
            iS = (i12 < 0 || i12 >= size2) ? 0 : i12;
        }
        int iL = RangesKt.l(iS, 0, arrayList.size() - 1);
        this.selectedTabIndex = iL;
        com.transsion.ugcvideodetail.adapter.h hVar3 = this.tabAdapter;
        if (hVar3 != null) {
            hVar3.D1(iL);
        }
        this.isTabsInitialized = true;
        z0(this.selectedTabIndex);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void C0(Ref.ObjectRef objectRef) {
        ((UGCImmVideoDialogPlayListFragment) objectRef.element).r0();
        ((UGCImmVideoDialogPlayListFragment) objectRef.element).G0();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0044  */
    private final void initViewData() {
        int iIntValue;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        UGCVideoBelongToCollection belongToCollection;
        this.currentVideo = (UGCImmVideo) t0().L0().f();
        Map map = (Map) t0().N0().f();
        Integer numValueOf = null;
        if (map == null) {
            iIntValue = 0;
        } else {
            UGCImmVideo uGCImmVideo = this.currentVideo;
            Integer num = (Integer) map.get((uGCImmVideo == null || (ugcVideo2 = uGCImmVideo.getUgcVideo()) == null || (belongToCollection = ugcVideo2.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId());
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 0;
            }
        }
        this.totalCount = iIntValue;
        wf.a.C0922a c0922a = wf.a.f74274a;
        UGCImmVideo uGCImmVideo2 = this.currentVideo;
        if (uGCImmVideo2 != null && (ugcVideo = uGCImmVideo2.getUgcVideo()) != null) {
            numValueOf = Integer.valueOf(ugcVideo.videoUGCPosition());
        }
        wf.a.C0922a.f(c0922a, "UGCImmVideoPlayListDialog", "initViewData, " + numValueOf + ", totalCount:" + this.totalCount, false, 4, null);
        B0(this.totalCount);
    }

    private final UGCImmVideoDetailViewModel t0() {
        return (UGCImmVideoDetailViewModel) this.detailViewModel.getValue();
    }

    private final int u0() {
        return (y.c() * 7) / 10;
    }

    private final void v0() {
        List<Fragment> listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (Fragment fragment : listY0) {
            if (fragment instanceof UGCImmVideoDialogPlayListFragment) {
                getChildFragmentManager().p().p(fragment).l();
            }
        }
    }

    private final void w0() {
        RecyclerView recyclerView;
        com.transsion.ugcvideodetail.adapter.h hVar = new com.transsion.ugcvideodetail.adapter.h(null, 1, null);
        hVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCImmVideoPlayListDialog.x0(this.f53972a, baseQuickAdapter, view, i10);
            }
        });
        this.tabAdapter = hVar;
        k kVar = (k) getViewBinding();
        if (kVar == null || (recyclerView = kVar.f62713e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.setAdapter(this.tabAdapter);
        recyclerView.addItemDecoration(new b(lj.a.b(12), lj.a.b(8)));
    }

    public static final void x0(UGCImmVideoPlayListDialog uGCImmVideoPlayListDialog, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        uGCImmVideoPlayListDialog.selectedTabIndex = i10;
        com.transsion.ugcvideodetail.adapter.h hVar = uGCImmVideoPlayListDialog.tabAdapter;
        if (hVar != null) {
            hVar.D1(i10);
        }
        uGCImmVideoPlayListDialog.z0(i10);
    }

    public static final void y0(UGCImmVideoPlayListDialog uGCImmVideoPlayListDialog, View view) {
        uGCImmVideoPlayListDialog.dismissAllowingStateLoss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.fragment.app.Fragment] */
    /* JADX WARN: Type inference failed for: r7v13, types: [T, com.transsion.ugcvideodetail.fragment.UGCImmVideoDialogPlayListFragment] */
    private final void z0(int tabIndex) {
        View view;
        String str = "UGCImmPlayListTabFragment_" + tabIndex;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? K0 = getChildFragmentManager().k0(str);
        objectRef.element = K0;
        if (K0 == 0) {
            objectRef.element = UGCImmVideoDialogPlayListFragment.INSTANCE.a(this.isCollectionList, tabIndex, (tabIndex * 50) + 1, Math.min((tabIndex + 1) * 50, this.totalCount));
        }
        v0();
        if (((Fragment) objectRef.element).isAdded()) {
            getChildFragmentManager().p().y((Fragment) objectRef.element).l();
        } else {
            getChildFragmentManager().p().c(R$id.fragmentContainer, (Fragment) objectRef.element, str).l();
        }
        if (!(objectRef.element instanceof UGCImmVideoDialogPlayListFragment) || (view = getView()) == null) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                UGCImmVideoPlayListDialog.A0(objectRef);
            }
        });
    }

    @Override
    public Function3 n0() {
        return UGCImmVideoPlayListDialog$bindingInflater$1.INSTANCE;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.DownloadBottomDialogTheme);
        Bundle arguments = getArguments();
        this.isCollectionList = arguments != null ? arguments.getBoolean("ISC_COLLECTION_LIST", true) : true;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.g(dialogOnCreateDialog, "onCreateDialog(...)");
        Window window = dialogOnCreateDialog.getWindow();
        if (window != null) {
            window.setWindowAnimations(com.transsion.baseui.R$style.BaseBottomDialogAnimation);
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
    public void onViewCreated(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        ConstraintLayout constraintLayout;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        k kVar = (k) getViewBinding();
        if (kVar != null && (constraintLayout = kVar.f62710b) != null && (layoutParams = constraintLayout.getLayoutParams()) != null) {
            layoutParams.height = u0();
        }
        k kVar2 = (k) getViewBinding();
        if (kVar2 != null && (appCompatImageView = kVar2.f62712d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    UGCImmVideoPlayListDialog.y0(this.f53971a, view2);
                }
            });
        }
        w0();
        initViewData();
    }
}

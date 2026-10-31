package com.snaptube.premium.files.downloading;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.NavBackStackEntry;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.view.k;
import com.dayuwuxian.clean.util.AppUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.phoenix.download.card.model.TaskCardModel;
import com.snaptube.ads.mraid.SnapAdConstants;
import com.snaptube.base.BaseFragment;
import com.snaptube.ktx.FlowKt;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.files.downloaded.helper.ExistedFileAnimManager;
import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.reyclerbin.DeleteDownloadHelper;
import com.snaptube.premium.views.DownloadEmptyView;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ViewExtKt;
import com.trello.rxlifecycle.android.FragmentEvent;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.base.utils.RxBus;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.SourceDebugExtension;
import net.pubnative.mediation.adapter.network.SnaptubeNetworkAdapter;
import o.a58;
import o.al3;
import o.ax1;
import o.b05;
import o.b6;
import o.bh5;
import o.bx1;
import o.cx1;
import o.cy2;
import o.dp1;
import o.dt2;
import o.dx1;
import o.dx2;
import o.f20;
import o.f42;
import o.fv1;
import o.ih6;
import o.kf5;
import o.mg8;
import o.mt2;
import o.or3;
import o.ow1;
import o.pq2;
import o.qk2;
import o.qw1;
import o.rw1;
import o.sh;
import o.sr7;
import o.sw1;
import o.t14;
import o.tw1;
import o.ug5;
import o.up7;
import o.uw1;
import o.ux2;
import o.v88;
import o.vw1;
import o.wd0;
import o.ww1;
import o.x24;
import o.xw1;
import o.y05;
import o.y24;
import o.yw1;
import o.za3;
import o.zl1;
import o.zw1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rx.c;

@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u009c\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002\u009d\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\u0014\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0014\u0010\bJ\u000f\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\bJ\u0019\u0010\u0018\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u001e\u001a\u00020\t2\u0012\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b0\u001aH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0002¢\u0006\u0004\b \u0010\bJ\u001d\u0010\"\u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010(\u001a\u00020\t2\u0006\u0010%\u001a\u00020$2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020\t2\u0006\u0010%\u001a\u00020$2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b*\u0010)J+\u0010.\u001a\u00020\t2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\u001a2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020$0\u001aH\u0002¢\u0006\u0004\b.\u0010/J!\u00100\u001a\u00020\t2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0002¢\u0006\u0004\b0\u0010#J\u000f\u00101\u001a\u00020\tH\u0002¢\u0006\u0004\b1\u0010\bJ\u000f\u00102\u001a\u00020\tH\u0002¢\u0006\u0004\b2\u0010\bJ\u0017\u00104\u001a\u00020\t2\u0006\u00103\u001a\u00020&H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\tH\u0002¢\u0006\u0004\b6\u0010\bJ\u000f\u00107\u001a\u00020\tH\u0002¢\u0006\u0004\b7\u0010\bJ\u000f\u00109\u001a\u000208H\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\tH\u0002¢\u0006\u0004\b;\u0010\bJ\u000f\u0010<\u001a\u00020\tH\u0002¢\u0006\u0004\b<\u0010\bJ\u000f\u0010=\u001a\u00020\tH\u0002¢\u0006\u0004\b=\u0010\bJ\u000f\u0010>\u001a\u00020\tH\u0002¢\u0006\u0004\b>\u0010\bJ\u0017\u0010A\u001a\u00020\t2\u0006\u0010@\u001a\u00020?H\u0002¢\u0006\u0004\bA\u0010BJ\u0017\u0010D\u001a\u00020\t2\u0006\u0010C\u001a\u00020&H\u0002¢\u0006\u0004\bD\u00105J\u000f\u0010E\u001a\u00020\tH\u0002¢\u0006\u0004\bE\u0010\bJ\u000f\u0010F\u001a\u00020\tH\u0002¢\u0006\u0004\bF\u0010\bJ\u000f\u0010G\u001a\u00020\tH\u0002¢\u0006\u0004\bG\u0010\bJ\u000f\u0010H\u001a\u00020\tH\u0002¢\u0006\u0004\bH\u0010\bJ\u0015\u0010J\u001a\b\u0012\u0004\u0012\u00020I0\u001aH\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\tH\u0002¢\u0006\u0004\bL\u0010\bJ\u000f\u0010M\u001a\u00020\tH\u0002¢\u0006\u0004\bM\u0010\bJ+\u0010T\u001a\u00020S2\u0006\u0010O\u001a\u00020N2\b\u0010Q\u001a\u0004\u0018\u00010P2\b\u0010R\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\bT\u0010UJ!\u0010W\u001a\u00020\t2\u0006\u0010V\u001a\u00020S2\b\u0010R\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\tH\u0016¢\u0006\u0004\bY\u0010\bJ\u000f\u0010Z\u001a\u00020\tH\u0016¢\u0006\u0004\bZ\u0010\bJ\u0017\u0010\\\u001a\u00020\t2\u0006\u0010[\u001a\u00020&H\u0016¢\u0006\u0004\b\\\u00105J\u000f\u0010]\u001a\u00020&H\u0016¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\tH\u0016¢\u0006\u0004\b_\u0010\bJ\u000f\u0010`\u001a\u00020\tH\u0016¢\u0006\u0004\b`\u0010\bJ\u0019\u0010c\u001a\u00020&2\b\u0010b\u001a\u0004\u0018\u00010aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\tH\u0016¢\u0006\u0004\be\u0010\bJ!\u0010i\u001a\u00020\t2\u0006\u0010f\u001a\u00020&2\b\u0010h\u001a\u0004\u0018\u00010gH\u0016¢\u0006\u0004\bi\u0010jR\u001b\u0010p\u001a\u00020k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0018\u0010w\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0018\u0010z\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0014\u0010}\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010|R\u0014\u0010\u007f\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010|R \u0010\u0084\u0001\u001a\u00030\u0080\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0081\u0001\u0010m\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0018\u0010\u0088\u0001\u001a\u00030\u0085\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R&\u0010\u008c\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b0\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R \u0010\u0091\u0001\u001a\u00030\u008d\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008e\u0001\u0010m\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0017\u0010\u0092\u0001\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010|R\u0019\u0010\u0095\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0019\u0010\u0097\u0001\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0094\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001¨\u0006\u009e\u0001"}, d2 = {"Lcom/snaptube/premium/files/downloading/DownloadingTaskFragment;", "Lcom/snaptube/base/BaseFragment;", "Lo/up7$a;", "Lo/bh5;", "Landroidx/appcompat/widget/Toolbar$h;", "Lo/za3;", "Lo/ug5;", "<init>", "()V", "Lo/mg8;", "y3", "i4", "H3", "Landroidx/appcompat/widget/Toolbar;", "F3", "()Landroidx/appcompat/widget/Toolbar;", "Landroidx/recyclerview/widget/RecyclerView;", "E3", "()Landroidx/recyclerview/widget/RecyclerView;", "z3", "M3", "C3", "Landroid/os/Bundle;", "it", "j4", "(Landroid/os/Bundle;)V", "", "Lcom/snaptube/premium/files/pojo/DownloadData;", "Lcom/phoenix/download/card/model/TaskCardModel;", "downloadList", "S3", "(Ljava/util/List;)V", "r3", NativeAdPresenter.DOWNLOAD, "V3", "(Lcom/snaptube/premium/files/pojo/DownloadData;)V", "", "taskId", "", "removeByComplete", "T3", "(JZ)V", "q3", "", "pathList", "idList", "R3", "(Ljava/util/List;Ljava/util/List;)V", "P3", "W3", "J3", SnaptubeNetworkAdapter.MODE, "o3", "(Z)V", "m4", "k4", "", "f4", "()I", "n4", "X3", "b4", "K3", "Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;", "status", "L3", "(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V", "enable", "s3", "N3", "l4", "p3", "O3", "Lcom/snaptube/taskManager/datasets/TaskInfo;", "w3", "()Ljava/util/List;", "t3", "g4", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onDetach", SnapAdConstants.VALUE_CONTAINER_STATUS_HIDDEN, "onHiddenChanged", "onBackPressed", "()Z", "m1", CampaignEx.JSON_KEY_AD_Q, "Landroid/view/MenuItem;", "item", "onMenuItemClick", "(Landroid/view/MenuItem;)Z", "onDestroyView", "login", "Landroid/content/Intent;", "actionAfterLogin", "O", "(ZLandroid/content/Intent;)V", "Lo/dt2;", "g", "Lo/t14;", "u3", "()Lo/dt2;", "binding", "h", "Landroid/view/View;", "deleteContainer", "Landroid/widget/TextView;", "i", "Landroid/widget/TextView;", "deleteView", "j", "Landroid/view/MenuItem;", "deleteMenu", CampaignEx.JSON_KEY_AD_K, "I", "largeSize", "l", "normalSize", "Lcom/snaptube/premium/files/downloading/DownloadingViewModel;", "m", "x3", "()Lcom/snaptube/premium/files/downloading/DownloadingViewModel;", "viewModel", "Lo/ow1;", "n", "Lo/ow1;", "selector", "", "o", "Ljava/util/List;", "downloadDataList", "Lo/qw1;", TtmlNode.TAG_P, "v3", "()Lo/qw1;", "downloadingAdapter", "actionMode", CampaignEx.JSON_KEY_AD_R, "Z", SnapAdConstants.VALUE_CONTAINER_STATUS_LOADING, "s", "batchChange", "Lcom/snaptube/premium/files/downloaded/helper/ExistedFileAnimManager;", "t", "Lcom/snaptube/premium/files/downloaded/helper/ExistedFileAnimManager;", "existedFileAnimManager", "u", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadingTaskFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadingTaskFragment.kt\ncom/snaptube/premium/files/downloading/DownloadingTaskFragment\n+ 2 ViewBinding.kt\ncom/snaptube/ktx/ViewBindingKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,598:1\n25#2:599\n56#3,10:600\n262#4,2:610\n262#4,2:612\n262#4,2:614\n262#4,2:616\n262#4,2:618\n262#4,2:620\n262#4,2:622\n262#4,2:624\n1855#5,2:626\n1855#5,2:628\n*S KotlinDebug\n*F\n+ 1 DownloadingTaskFragment.kt\ncom/snaptube/premium/files/downloading/DownloadingTaskFragment\n*L\n82#1:599\n88#1:600,10\n158#1:610,2\n159#1:612,2\n160#1:614,2\n255#1:616,2\n256#1:618,2\n259#1:620,2\n260#1:622,2\n261#1:624,2\n509#1:626,2\n559#1:628,2\n*E\n"})
public final class DownloadingTaskFragment extends BaseFragment implements up7.a, bh5, Toolbar.h, za3, ug5 {

    public View deleteContainer;

    public TextView deleteView;

    public MenuItem deleteMenu;

    public final t14 viewModel;

    public final ow1 selector;

    public List downloadDataList;

    public final t14 downloadingAdapter;

    public int actionMode;

    public boolean loading;

    public boolean batchChange;

    public ExistedFileAnimManager existedFileAnimManager;

    public final t14 binding = kotlin.b.a(LazyThreadSafetyMode.NONE, new DownloadingTaskFragment$special$$inlined$viewBinding$1(this));

    public final int largeSize = zl1.b(PhoenixApplication.z(), 24);

    public final int normalSize = zl1.b(PhoenixApplication.z(), 20);

    public static final class b implements kf5, cy2 {
        public final dx2 a;

        public b(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public DownloadingTaskFragment() {
        DownloadingTaskFragment$special$$inlined$viewModels$default$1 downloadingTaskFragment$special$$inlined$viewModels$default$1 = new DownloadingTaskFragment$special$$inlined$viewModels$default$1(this);
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(DownloadingViewModel.class), new DownloadingTaskFragment$special$$inlined$viewModels$default$2(downloadingTaskFragment$special$$inlined$viewModels$default$1), new DownloadingTaskFragment$special$$inlined$viewModels$default$3(downloadingTaskFragment$special$$inlined$viewModels$default$1, this));
        this.selector = new ow1();
        this.downloadDataList = new ArrayList();
        this.downloadingAdapter = kotlin.b.b(new DownloadingTaskFragment$downloadingAdapter$2(this));
    }

    public static final void A3(DownloadingTaskFragment downloadingTaskFragment, View view) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.M3();
    }

    public static final void B3(DownloadingTaskFragment downloadingTaskFragment, View view) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.M3();
    }

    private final void C3() {
        k kVarI;
        y05 y05VarF;
        x3().V().i(getViewLifecycleOwner(), new b(new DownloadingTaskFragment$initObserver$1(this)));
        x3().U().i(getViewLifecycleOwner(), new b(new DownloadingTaskFragment$initObserver$2(this)));
        x3().T().i(getViewLifecycleOwner(), new b(new DownloadingTaskFragment$initObserver$3(this)));
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            NavBackStackEntry navBackStackEntryZ = mt2.a(this).z();
            if (navBackStackEntryZ != null && (kVarI = navBackStackEntryZ.i()) != null && (y05VarF = kVarI.f("extras")) != null) {
                y05VarF.i(x24VarK2, new b(new DownloadingTaskFragment$initObserver$4$1(this)));
            }
            u3().f.postDelayed(new zw1(this), 500L);
        }
    }

    public static final void D3(DownloadingTaskFragment downloadingTaskFragment) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.j4(downloadingTaskFragment.getArguments());
    }

    public static final void G3(DownloadingTaskFragment downloadingTaskFragment, View view) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.onBackPressed();
    }

    private final void H3() {
        ProgressBar progressBar = u3().e;
        or3.e(progressBar, "pbLoading");
        progressBar.setVisibility(0);
        FrameLayout frameLayout = u3().d;
        or3.e(frameLayout, "opPanel");
        frameLayout.setVisibility(8);
        RecyclerView recyclerView = u3().f;
        or3.e(recyclerView, "rvDownloading");
        recyclerView.setVisibility(8);
        b6 activity = getActivity();
        f20 f20Var = activity instanceof f20 ? (f20) activity : null;
        if (f20Var != null) {
            View viewA = f20Var.A();
            this.deleteContainer = viewA;
            if (viewA != null) {
                sr7.h(viewA, false, true, true, 1, null);
            }
            TextView actionView = f20Var.getActionView();
            this.deleteView = actionView;
            if (actionView != null) {
                actionView.setText(R.string.delete);
            }
            TextView textView = this.deleteView;
            if (textView != null) {
                textView.setOnClickListener(new xw1(this));
            }
        }
    }

    public static final void I3(DownloadingTaskFragment downloadingTaskFragment, View view) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.O3();
        qk2.d("click_myfiles_downloading_delete_button");
    }

    private final void J3() {
        if (this.loading) {
            return;
        }
        this.loading = true;
        pq2 pq2VarR = x3().R();
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        FlowKt.b(pq2VarR, viewLifecycleOwner, new DownloadingTaskFragment$loadData$1(this), new DownloadingTaskFragment$loadData$2(this));
    }

    public static Integer L2() {
        return c4();
    }

    public static void M2(dx2 dx2Var, Object obj) {
        e4(dx2Var, obj);
    }

    public static void N2(dx2 dx2Var, Object obj) {
        Z3(dx2Var, obj);
    }

    public static void O2(dx2 dx2Var, Object obj) {
        d4(dx2Var, obj);
    }

    public static void P2(dx2 dx2Var, Object obj) {
        a4(dx2Var, obj);
    }

    public static void Q2(DownloadingTaskFragment downloadingTaskFragment, View view) {
        I3(downloadingTaskFragment, view);
    }

    public static void Q3(DownloadingTaskFragment downloadingTaskFragment, DownloadData downloadData, int i, Object obj) {
        if ((i & 1) != 0) {
            downloadData = null;
        }
        downloadingTaskFragment.P3(downloadData);
    }

    public static void R2(DownloadingTaskFragment downloadingTaskFragment, View view) {
        B3(downloadingTaskFragment, view);
    }

    public static void S2(DownloadingTaskFragment downloadingTaskFragment) {
        D3(downloadingTaskFragment);
    }

    public static void T2(DownloadingTaskFragment downloadingTaskFragment, long j, boolean z) {
        U3(downloadingTaskFragment, j, z);
    }

    public static Integer U2() {
        return Y3();
    }

    public static final void U3(DownloadingTaskFragment downloadingTaskFragment, long j, boolean z) {
        or3.f(downloadingTaskFragment, "this$0");
        downloadingTaskFragment.q3(j, z);
    }

    public static void V2(DownloadingTaskFragment downloadingTaskFragment, View view) {
        G3(downloadingTaskFragment, view);
    }

    public static void W2(DownloadingTaskFragment downloadingTaskFragment, View view) {
        A3(downloadingTaskFragment, view);
    }

    private final void W3() {
        J3();
    }

    public static Integer X2() {
        return h4();
    }

    public static final void Y2(DownloadingTaskFragment downloadingTaskFragment, boolean z) {
        downloadingTaskFragment.s3(z);
    }

    public static final Integer Y3() {
        return Integer.valueOf(TaskInfoDBUtils.l0());
    }

    public static final int Z2(DownloadingTaskFragment downloadingTaskFragment) {
        return downloadingTaskFragment.actionMode;
    }

    public static final void Z3(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final dt2 a3(DownloadingTaskFragment downloadingTaskFragment) {
        return downloadingTaskFragment.u3();
    }

    public static final void a4(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final qw1 b3(DownloadingTaskFragment downloadingTaskFragment) {
        return downloadingTaskFragment.v3();
    }

    public static final ow1 c3(DownloadingTaskFragment downloadingTaskFragment) {
        return downloadingTaskFragment.selector;
    }

    public static final Integer c4() {
        return Integer.valueOf(TaskInfoDBUtils.m0());
    }

    public static final DownloadingViewModel d3(DownloadingTaskFragment downloadingTaskFragment) {
        return downloadingTaskFragment.x3();
    }

    public static final void d4(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void e3(DownloadingTaskFragment downloadingTaskFragment, TaskInfo.TaskStatus taskStatus) {
        downloadingTaskFragment.L3(taskStatus);
    }

    public static final void e4(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void f3(DownloadingTaskFragment downloadingTaskFragment, DownloadData downloadData) {
        downloadingTaskFragment.P3(downloadData);
    }

    public static final void g3(DownloadingTaskFragment downloadingTaskFragment, List list, List list2) {
        downloadingTaskFragment.R3(list, list2);
    }

    public static final void h3(DownloadingTaskFragment downloadingTaskFragment, List list) {
        downloadingTaskFragment.S3(list);
    }

    public static final Integer h4() {
        return Integer.valueOf(TaskInfoDBUtils.k0());
    }

    public static final void i3(DownloadingTaskFragment downloadingTaskFragment, long j, boolean z) {
        downloadingTaskFragment.T3(j, z);
    }

    public static final void j3(DownloadingTaskFragment downloadingTaskFragment, DownloadData downloadData) {
        downloadingTaskFragment.V3(downloadData);
    }

    public static final void k3(DownloadingTaskFragment downloadingTaskFragment) {
        downloadingTaskFragment.W3();
    }

    public static final void l3(DownloadingTaskFragment downloadingTaskFragment, boolean z) {
        downloadingTaskFragment.loading = z;
    }

    public static final void m3(DownloadingTaskFragment downloadingTaskFragment, Bundle bundle) {
        downloadingTaskFragment.j4(bundle);
    }

    public static final void n3(DownloadingTaskFragment downloadingTaskFragment) {
        downloadingTaskFragment.k4();
    }

    public final RecyclerView E3() {
        RecyclerView recyclerView = u3().f;
        recyclerView.setItemAnimator(new fv1());
        qw1 qw1VarV3 = v3();
        DownloadEmptyView.Companion companion = DownloadEmptyView.INSTANCE;
        Context context = recyclerView.getContext();
        or3.e(context, "getContext(...)");
        qw1VarV3.setEmptyView(DownloadEmptyView.Companion.b(companion, context, R.string.download_task_empty, false, 4, null));
        recyclerView.setAdapter(qw1VarV3);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        or3.e(recyclerView, "apply(...)");
        return recyclerView;
    }

    public final Toolbar F3() {
        Toolbar toolbar = u3().g;
        toolbar.setTitle(R.string.downloading);
        toolbar.setTitleTextAppearance(toolbar.getContext(), R.style.SecondaryTitleTextSize);
        toolbar.x(R.menu.delete);
        toolbar.setOnMenuItemClickListener(this);
        this.deleteMenu = toolbar.getMenu().findItem(R.id.menu_delete);
        toolbar.setNavigationOnClickListener(new yw1(this));
        or3.e(toolbar, "apply(...)");
        return toolbar;
    }

    public final void K3() {
        if (this.downloadDataList.size() > 2) {
            RxBus.d().f(1251);
        }
    }

    public final void L3(TaskInfo.TaskStatus status) {
        Iterator it2 = this.downloadDataList.iterator();
        while (it2.hasNext()) {
            ((TaskCardModel) ((DownloadData) it2.next()).d()).m().b().i = status;
        }
        v3().setList(this.downloadDataList);
    }

    public final void M3() {
        int i = this.actionMode;
        if (i == 1) {
            X3();
        } else if (i == 2) {
            b4();
        } else {
            if (i != 3) {
                return;
            }
            N3();
        }
    }

    public final void N3() {
        if (v3().u() >= v3().t()) {
            l4();
            qk2.d("click_myfiles_downloading_cancel_select_all");
        } else {
            p3();
            qk2.d("click_myfiles_downloading_select_all");
        }
    }

    @Override
    public void O(boolean login, Intent actionAfterLogin) {
        if (PhoenixApplication.C().b().q().d()) {
            if (isVisible()) {
                b4();
            } else {
                g4();
            }
        }
    }

    public final void O3() {
        Context context = getContext();
        if (context != null) {
            List listW3 = w3();
            List listEmptyList = Collections.emptyList();
            or3.e(listEmptyList, "emptyList(...)");
            DeleteDownloadHelper.j(new DeleteDownloadHelper(context, listEmptyList, listW3), 0L, 1, null);
            t3();
        }
    }

    public final void P3(DownloadData download) {
        Pair pairT;
        if (this.batchChange || this.actionMode == 3) {
            return;
        }
        if (download != null && (pairT = DownloadingHelper.a.t(this.downloadDataList, download, false)) != null) {
            v3().notifyItemChanged(((Number) pairT.getFirst()).intValue());
        }
        k4();
    }

    public final void R3(List pathList, List idList) {
        DownloadingHelper.a.n(this.downloadDataList, pathList, idList);
        v3().setList(this.downloadDataList);
        r3();
    }

    public final void S3(List downloadList) {
        List listG = DownloadingHelper.a.g(downloadList);
        this.downloadDataList.clear();
        this.downloadDataList.addAll(listG);
        r3();
        v3().setList(listG);
    }

    public final void T3(long taskId, boolean removeByComplete) {
        if (u3().f.isComputingLayout()) {
            u3().f.post(new rw1(this, taskId, removeByComplete));
        } else {
            q3(taskId, removeByComplete);
        }
    }

    public final void V3(DownloadData download) {
        mg8 mg8Var;
        Integer numC = DownloadingHelper.c(DownloadingHelper.a, this.downloadDataList, download, 0, 4, null);
        if (numC != null) {
            v3().addData(numC.intValue(), download);
            r3();
            mg8Var = mg8.a;
        } else {
            mg8Var = null;
        }
        if (mg8Var == null) {
            P3(download);
        }
    }

    public final void X3() {
        K3();
        s3(false);
        c.M(new ax1()).g(z2(FragmentEvent.DESTROY_VIEW)).Y(sh.c()).y(new bx1(new DownloadingTaskFragment$onPauseAll$2(this))).x(new cx1(new DownloadingTaskFragment$onPauseAll$3(this))).z0(a58.b).x0(new f42());
        qk2.d("click_myfiles_downloading_pause_all");
    }

    public final void b4() {
        K3();
        s3(false);
        c.M(new dx1()).g(z2(FragmentEvent.DESTROY_VIEW)).Y(sh.c()).y(new sw1(new DownloadingTaskFragment$onResumeAll$2(this))).x(new tw1(new DownloadingTaskFragment$onResumeAll$3(this))).z0(a58.b).x0(new f42());
        qk2.d("click_myfiles_downloading_continue_all");
    }

    public final int f4() {
        return DownloadingHelper.a.j(this.downloadDataList) ? 2 : 1;
    }

    public final void g4() {
        c.M(new uw1()).z0(a58.b).x0(new f42());
    }

    public final void i4() {
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("launch_from") : null;
        Bundle arguments2 = getArguments();
        Serializable serializable = arguments2 != null ? arguments2.getSerializable("extra.L.task_status") : null;
        TaskInfo.TaskStatus taskStatus = serializable instanceof TaskInfo.TaskStatus ? (TaskInfo.TaskStatus) serializable : null;
        if (or3.a("notification_download", string) && TaskInfo.TaskStatus.ERROR == taskStatus) {
            Bundle arguments3 = getArguments();
            Long lValueOf = arguments3 != null ? Long.valueOf(arguments3.getLong("extra.L.task_id", -1L)) : null;
            if (lValueOf == null || lValueOf.longValue() == -1) {
                return;
            }
            Bundle arguments4 = getArguments();
            if (arguments4 != null) {
                arguments4.remove("launch_from");
            }
            Bundle arguments5 = getArguments();
            if (arguments5 != null) {
                arguments5.remove("extra.L.task_status");
            }
            Bundle arguments6 = getArguments();
            if (arguments6 != null) {
                arguments6.remove("extra.L.task_id");
            }
            wd0.d(y24.a(this), dp1.b(), null, new DownloadingTaskFragment$retryTaskFromNotification$1(lValueOf, this, null), 2, null);
        }
    }

    public final void j4(Bundle it2) {
        if (it2 == null) {
            return;
        }
        ExistedFileAnimManager existedFileAnimManager = this.existedFileAnimManager;
        if (existedFileAnimManager != null) {
            ExistedFileAnimManager.n(existedFileAnimManager, it2.getString("key_file_url"), null, 2, null);
        }
        it2.remove("key_file_url");
    }

    public final void k4() {
        this.selector.clearSelections();
        this.actionMode = f4();
        MenuItem menuItem = this.deleteMenu;
        if (menuItem != null) {
            menuItem.setVisible(!v3().w());
        }
        Toolbar toolbar = u3().g;
        or3.e(toolbar, "toolbar");
        v88.a(toolbar, R.drawable.ic_left, R.color.content_main);
        u3().g.setTitle(R.string.downloading);
        ViewGroup.LayoutParams layoutParams = u3().b.getLayoutParams();
        int i = this.largeSize;
        layoutParams.width = i;
        layoutParams.height = i;
        if (DownloadingHelper.a.j(this.downloadDataList)) {
            ImageView imageView = u3().b;
            or3.e(imageView, "actionBtn");
            al3.b(imageView, R.drawable.ic_myfiles, R.color.content_main);
            u3().c.setText(getString(R.string.download_continue_all));
            return;
        }
        ImageView imageView2 = u3().b;
        or3.e(imageView2, "actionBtn");
        al3.b(imageView2, R.drawable.ic_pause, R.color.content_main);
        u3().c.setText(getString(R.string.download_pause_all));
    }

    public final void l4() {
        this.selector.clearSelections();
        q();
    }

    @Override
    public void m1() {
        o3(true);
    }

    public final void m4() {
        int iU = v3().u();
        this.actionMode = 3;
        MenuItem menuItem = this.deleteMenu;
        if (menuItem != null) {
            menuItem.setVisible(false);
        }
        TextView textView = this.deleteView;
        if (textView != null) {
            textView.setEnabled(iU > 0);
        }
        Toolbar toolbar = u3().g;
        or3.e(toolbar, "toolbar");
        v88.a(toolbar, R.drawable.ic_close, R.color.content_main);
        n4();
        ViewGroup.LayoutParams layoutParams = u3().b.getLayoutParams();
        int i = this.normalSize;
        layoutParams.width = i;
        layoutParams.height = i;
        if (iU == 0) {
            ImageView imageView = u3().b;
            or3.e(imageView, "actionBtn");
            al3.b(imageView, R.drawable.selector_check_selector, R.color.content_weak);
        } else if (iU < v3().t()) {
            ImageView imageView2 = u3().b;
            or3.e(imageView2, "actionBtn");
            al3.b(imageView2, R.drawable.ic_check_selected, R.color.brand_main);
        } else {
            u3().b.setImageResource(R.drawable.ic_check);
            u3().b.setImageTintList(null);
        }
        u3().c.setText(getString(R.string.actionmode_select_all));
    }

    public final void n4() {
        int iU = v3().u();
        u3().g.setTitle(AppUtil.F(R.plurals.selected_items_num, iU, Integer.valueOf(iU)));
    }

    public final void o3(boolean mode) {
        this.selector.setSelectable(mode);
        RecyclerView recyclerView = u3().f;
        or3.e(recyclerView, "rvDownloading");
        b05.a(recyclerView, mode);
        View view = this.deleteContainer;
        if (view != null) {
            ViewExtKt.g(view, mode);
        }
        if (mode) {
            m4();
        } else {
            k4();
        }
    }

    @Override
    public boolean onBackPressed() {
        if (this.actionMode == 3) {
            o3(false);
            return true;
        }
        mt2.a(this).P();
        return true;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        ConstraintLayout constraintLayoutB = u3().b();
        or3.e(constraintLayoutB, "getRoot(...)");
        return constraintLayoutB;
    }

    @Override
    public void onDestroyView() {
        this.deleteContainer = null;
        TextView textView = this.deleteView;
        if (textView != null) {
            textView.setOnClickListener(null);
        }
        this.deleteView = null;
        ExistedFileAnimManager existedFileAnimManager = this.existedFileAnimManager;
        if (existedFileAnimManager != null) {
            existedFileAnimManager.h();
        }
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        View view = this.deleteContainer;
        if (view != null) {
            ViewExtKt.g(view, false);
        }
        super.onDetach();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        if (hidden) {
            View view = this.deleteContainer;
            if (view != null) {
                ViewExtKt.g(view, false);
            }
        } else {
            View view2 = this.deleteContainer;
            if (view2 != null) {
                ViewExtKt.g(view2, this.actionMode == 3);
            }
        }
        super.onHiddenChanged(hidden);
    }

    @Override
    public boolean onMenuItemClick(MenuItem item) {
        Integer numValueOf = item != null ? Integer.valueOf(item.getItemId()) : null;
        if (numValueOf == null || numValueOf.intValue() != R.id.menu_delete) {
            return true;
        }
        m1();
        qk2.d("click_myfiles_downloading_delete_entrance");
        return true;
    }

    @Override
    public void onResume() {
        super.onResume();
        J3();
        qk2.e();
        i4();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        sr7.h(view, true, false, false, 2, null);
        H3();
        F3();
        E3();
        z3();
        y3();
        C3();
        J3();
    }

    public final void p3() {
        int itemCount = v3().getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (v3().x(i)) {
                this.selector.setSelected(i, v3().getItemId(i), true);
            }
        }
        q();
    }

    @Override
    public void q() {
        r3();
        m4();
    }

    public final void q3(long taskId, boolean removeByComplete) {
        DownloadingHelper downloadingHelper = DownloadingHelper.a;
        int iH = downloadingHelper.h(this.downloadDataList, taskId);
        if (iH < 0) {
            return;
        }
        this.downloadDataList.remove(iH);
        v3().remove(iH);
        this.selector.a(iH, taskId);
        this.selector.f(downloadingHelper.f(this.downloadDataList));
        r3();
        if (this.actionMode == 3) {
            this.selector.refreshAllHolders();
            m4();
        }
        if (removeByComplete && this.downloadDataList.isEmpty()) {
            onBackPressed();
        }
    }

    public final void r3() {
        ProgressBar progressBar = u3().e;
        or3.e(progressBar, "pbLoading");
        progressBar.setVisibility(8);
        RecyclerView recyclerView = u3().f;
        or3.e(recyclerView, "rvDownloading");
        recyclerView.setVisibility(0);
        boolean z = !this.downloadDataList.isEmpty();
        MenuItem menuItem = this.deleteMenu;
        if (menuItem != null) {
            menuItem.setVisible(z && this.actionMode != 3);
        }
        FrameLayout frameLayout = u3().d;
        or3.e(frameLayout, "opPanel");
        frameLayout.setVisibility(z ? 0 : 8);
        ImageView imageView = u3().b;
        or3.e(imageView, "actionBtn");
        imageView.setVisibility(z ? 0 : 8);
        TextView textView = u3().c;
        or3.e(textView, "actionText");
        textView.setVisibility(z ? 0 : 8);
        if (z) {
            return;
        }
        TextView textView2 = this.deleteView;
        if (textView2 != null) {
            textView2.setEnabled(false);
        }
        if (this.actionMode == 3) {
            o3(false);
        }
    }

    public final void s3(boolean enable) {
        this.batchChange = !enable;
        u3().b.setEnabled(enable);
        u3().c.setEnabled(enable);
        if (enable) {
            Q3(this, null, 1, null);
        } else {
            x3().e0();
        }
    }

    public final void t3() {
        o3(false);
        r3();
    }

    public final dt2 u3() {
        return (dt2) this.binding.getValue();
    }

    public final qw1 v3() {
        return (qw1) this.downloadingAdapter.getValue();
    }

    public final List w3() {
        ArrayList arrayList = new ArrayList();
        List<Integer> selectedPositions = this.selector.getSelectedPositions();
        or3.e(selectedPositions, "getSelectedPositions(...)");
        for (Integer num : selectedPositions) {
            or3.c(num);
            if (num.intValue() >= 0 && num.intValue() < this.downloadDataList.size()) {
                TaskInfo taskInfoB = ((TaskCardModel) ((DownloadData) this.downloadDataList.get(num.intValue())).d()).m().b();
                or3.e(taskInfoB, "getTaskInfo(...)");
                arrayList.add(taskInfoB);
            }
        }
        return arrayList;
    }

    public final DownloadingViewModel x3() {
        return (DownloadingViewModel) this.viewModel.getValue();
    }

    public final void y3() {
        RecyclerView recyclerView = u3().f;
        or3.e(recyclerView, "rvDownloading");
        DownloadingTaskFragment$initAnimManager$1 downloadingTaskFragment$initAnimManager$1 = new DownloadingTaskFragment$initAnimManager$1(this);
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.existedFileAnimManager = new ExistedFileAnimManager(this, recyclerView, downloadingTaskFragment$initAnimManager$1, viewLifecycleOwner);
    }

    public final void z3() {
        u3().b.setOnClickListener(new vw1(this));
        u3().c.setOnClickListener(new ww1(this));
    }
}

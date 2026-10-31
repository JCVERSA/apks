package com.snaptube.premium.files.downloaded;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.NavBackStackEntry;
import androidx.recyclerview.widget.RecyclerView;
import androidx.view.LiveData;
import androidx.view.k;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.google.firebase.remoteconfig.RemoteConfigConstants$ResponseFieldKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.base.BaseFragment;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.media.MediaFileScanner;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.files.FilesViewModel;
import com.snaptube.premium.files.binder.viewholder.DownloadedItemViewHolder;
import com.snaptube.premium.files.downloaded.adapter.DownloadedTaskAdapter;
import com.snaptube.premium.files.downloaded.helper.ExistedFileAnimManager;
import com.snaptube.premium.files.downloaded.select.DownloadedSelectFragment;
import com.snaptube.premium.files.downloading.DownloadingHelper;
import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.files.view.DownloadThumbView;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.snaptube.premium.view.rebacktop.FastScrollLinearLayoutManager;
import com.snaptube.premium.view.rebacktop.ReBackUpHelper;
import com.snaptube.premium.views.viewanimator.DestinationType;
import com.snaptube.premium.views.viewanimator.ViewAnimatorHelper;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.snaptube.util.ViewExtKt;
import com.wandoujia.base.utils.RxBus;
import java.io.Serializable;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.a;
import kotlin.jvm.internal.SourceDebugExtension;
import net.pubnative.mediation.insights.model.PubnativeInsightCrashModel;
import o.a58;
import o.b88;
import o.br2;
import o.ct2;
import o.cw4;
import o.cy2;
import o.dv1;
import o.dx2;
import o.dz7;
import o.f42;
import o.fv1;
import o.ih6;
import o.kf5;
import o.lv1;
import o.mt2;
import o.n01;
import o.or3;
import o.qk2;
import o.r61;
import o.t14;
import o.ug5;
import o.up7;
import o.ux2;
import o.wu7;
import o.wv1;
import o.x24;
import o.xp2;
import o.xu0;
import o.xv1;
import o.y05;
import o.y44;
import o.yv1;
import o.zv1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0007*\u0004\u0085\u0001\u0089\u0001\u0018\u0000 \u008d\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u008e\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u001d\u0010\u0017\u001a\u00020\t2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0019\u0010\u001d\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\tH\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\tH\u0002¢\u0006\u0004\b!\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"¢\u0006\u0004\b%\u0010&J+\u0010.\u001a\u00020-2\u0006\u0010(\u001a\u00020'2\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b.\u0010/J!\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020-2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\tH\u0016¢\u0006\u0004\b3\u0010\u0005J\u0019\u00104\u001a\u00020\t2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\t2\u0006\u00100\u001a\u00020-H\u0014¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\tH\u0016¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\tH\u0016¢\u0006\u0004\b9\u0010\u0005J\u000f\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\r\u0010>\u001a\u00020=¢\u0006\u0004\b>\u0010?J\u0015\u0010B\u001a\u00020A2\u0006\u0010@\u001a\u00020=¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\tH\u0016¢\u0006\u0004\bD\u0010\u0005J\u000f\u0010E\u001a\u00020\tH\u0016¢\u0006\u0004\bE\u0010\u0005J\u000f\u0010F\u001a\u00020\tH\u0016¢\u0006\u0004\bF\u0010\u0005J\u0015\u0010H\u001a\u00020\t2\u0006\u0010G\u001a\u00020=¢\u0006\u0004\bH\u0010IJ!\u0010M\u001a\u00020\t2\u0006\u0010J\u001a\u00020A2\b\u0010L\u001a\u0004\u0018\u00010KH\u0016¢\u0006\u0004\bM\u0010NR\u001b\u0010T\u001a\u00020O8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u001b\u0010Y\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010Q\u001a\u0004\bW\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010Z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bc\u0010Q\u001a\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010Q\u001a\u0004\bo\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010x\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR\u0014\u0010{\u001a\u00020y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010zR\u0016\u0010~\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0017\u0010\u0080\u0001\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010}R\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0018\u0010\u0088\u0001\u001a\u00030\u0085\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0018\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001¨\u0006\u008f\u0001"}, d2 = {"Lcom/snaptube/premium/files/downloaded/DownloadedTaskFragment;", "Lcom/snaptube/base/BaseFragment;", "Lo/up7$b;", "Lo/ug5;", "<init>", "()V", "Lcom/snaptube/premium/files/pojo/DownloadData;", "Lcom/snaptube/premium/model/VideoMyThingsCardModel;", "downloadData", "Lo/mg8;", "c3", "(Lcom/snaptube/premium/files/pojo/DownloadData;)V", "s3", "m3", "o3", "p3", "v3", "q3", "z3", "A3", "", "", "pathList", "C3", "(Ljava/util/List;)V", "B3", "l3", "Lo/wu7;", "subscription", "e3", "(Lo/wu7;)V", "n3", "u3", "x3", "Landroidx/lifecycle/LiveData;", "Lcom/snaptube/premium/files/FilesViewModel$a;", "emptyValue", "f3", "(Landroidx/lifecycle/LiveData;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "onCreate", "(Landroid/os/Bundle;)V", "H2", "(Landroid/view/View;)V", "m1", CampaignEx.JSON_KEY_AD_Q, "Lo/up7;", "U", "()Lo/up7;", "", "D3", "()I", "yOffset", "", "r3", "(I)Z", "onResume", "onPause", "onDestroy", "filterType", "g3", "(I)V", "login", "Landroid/content/Intent;", "actionAfterLogin", "O", "(ZLandroid/content/Intent;)V", "Lcom/snaptube/premium/files/downloaded/DownloadedTaskViewModel;", "g", "Lo/t14;", "k3", "()Lcom/snaptube/premium/files/downloaded/DownloadedTaskViewModel;", "viewModel", "Lo/ct2;", "h", "h3", "()Lo/ct2;", "binding", "Lcom/snaptube/premium/files/downloaded/adapter/DownloadedTaskAdapter;", "i", "Lcom/snaptube/premium/files/downloaded/adapter/DownloadedTaskAdapter;", PubnativeInsightCrashModel.ERROR_ADAPTER, "Lcom/snaptube/premium/view/rebacktop/FastScrollLinearLayoutManager;", "j", "Lcom/snaptube/premium/view/rebacktop/FastScrollLinearLayoutManager;", "smoothLinearLayoutManager", "Lo/n01;", CampaignEx.JSON_KEY_AD_K, "j3", "()Lo/n01;", "subscriptions", "Lo/dv1;", "l", "Lo/dv1;", "headMenuHelper", "m", "Landroidx/lifecycle/LiveData;", "Lo/fv1;", "n", "i3", "()Lo/fv1;", "itemAnimator", "Lo/cw4;", "o", "Lo/cw4;", "mixedListAdPreloadDelegate", TtmlNode.TAG_P, "Lo/up7;", "multiSelector", "Lo/r61;", "Lo/r61;", "exceptionHandler", CampaignEx.JSON_KEY_AD_R, "Z", "scrolling", "s", "needUpdateData", "Lcom/snaptube/premium/files/downloaded/helper/ExistedFileAnimManager;", "t", "Lcom/snaptube/premium/files/downloaded/helper/ExistedFileAnimManager;", "existedFileAnimManager", "com/snaptube/premium/files/downloaded/DownloadedTaskFragment$downloadingTaskListener$1", "u", "Lcom/snaptube/premium/files/downloaded/DownloadedTaskFragment$downloadingTaskListener$1;", "downloadingTaskListener", "com/snaptube/premium/files/downloaded/DownloadedTaskFragment$d", "v", "Lcom/snaptube/premium/files/downloaded/DownloadedTaskFragment$d;", "scrollListener", "w", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDownloadedTaskFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedTaskFragment.kt\ncom/snaptube/premium/files/downloaded/DownloadedTaskFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 ViewBinding.kt\ncom/snaptube/ktx/ViewBindingKt\n+ 4 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 5 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 6 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,564:1\n56#2,10:565\n25#3:575\n48#4,4:576\n55#5,2:580\n58#5:583\n55#5,2:584\n58#5:587\n260#6:582\n260#6:586\n*S KotlinDebug\n*F\n+ 1 DownloadedTaskFragment.kt\ncom/snaptube/premium/files/downloaded/DownloadedTaskFragment\n*L\n84#1:565,10\n85#1:575\n104#1:576,4\n473#1:580,2\n473#1:583\n490#1:584,2\n490#1:587\n474#1:582\n491#1:586\n*E\n"})
public final class DownloadedTaskFragment extends BaseFragment implements up7.b, ug5 {

    public final t14 viewModel;

    public final t14 binding;

    public DownloadedTaskAdapter adapter;

    public FastScrollLinearLayoutManager smoothLinearLayoutManager;

    public final t14 subscriptions;

    public dv1 headMenuHelper;

    public LiveData emptyValue;

    public final t14 itemAnimator;

    public final cw4 mixedListAdPreloadDelegate;

    public final up7 multiSelector;

    public final r61 exceptionHandler;

    public boolean scrolling;

    public boolean needUpdateData;

    public ExistedFileAnimManager existedFileAnimManager;

    public final DownloadedTaskFragment$downloadingTaskListener$1 downloadingTaskListener;

    public final d scrollListener;

    public static final class b extends RecyclerView.l {
        public b() {
        }

        @Override
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.x xVar) {
            or3.f(rect, "outRect");
            or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
            or3.f(recyclerView, "parent");
            or3.f(xVar, RemoteConfigConstants$ResponseFieldKey.STATE);
            super.getItemOffsets(rect, view, recyclerView, xVar);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter != null && childAdapterPosition + 1 == adapter.getItemCount() && DownloadedTaskFragment.this.r3(0)) {
                rect.bottom = xp2.a(96.0f);
            } else {
                rect.bottom = 0;
            }
        }
    }

    public static final class c implements kf5, cy2 {
        public final dx2 a;

        public c(dx2 dx2Var) {
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

    public static final class d extends RecyclerView.q {
        public d() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            or3.f(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i);
            ProductionEnv.debugLog("DownloadedTaskFragment", "onScrollStateChanged...newState = " + i);
            DownloadedTaskFragment.a3(DownloadedTaskFragment.this, i != 0);
            if (DownloadedTaskFragment.W2(DownloadedTaskFragment.this) || !DownloadedTaskFragment.V2(DownloadedTaskFragment.this)) {
                return;
            }
            ProductionEnv.debugLog("DownloadedTaskFragment", "onScrollStateChanged...updateDownloadPageList ");
            DownloadedTaskFragment.X2(DownloadedTaskFragment.this).Q0(false, false);
        }
    }

    public static final class e extends a implements r61 {
        public e(r61.a aVar) {
            super(aVar);
        }

        @Override
        public void handleException(CoroutineContext coroutineContext, Throwable th) {
            ProductionEnv.errorLog("DownloadedTaskFragment", "协程异常：" + th);
        }
    }

    public DownloadedTaskFragment() {
        DownloadedTaskFragment$special$$inlined$viewModels$default$1 downloadedTaskFragment$special$$inlined$viewModels$default$1 = new DownloadedTaskFragment$special$$inlined$viewModels$default$1(this);
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(DownloadedTaskViewModel.class), new DownloadedTaskFragment$special$$inlined$viewModels$default$2(downloadedTaskFragment$special$$inlined$viewModels$default$1), new DownloadedTaskFragment$special$$inlined$viewModels$default$3(downloadedTaskFragment$special$$inlined$viewModels$default$1, this));
        this.binding = kotlin.b.a(LazyThreadSafetyMode.NONE, new DownloadedTaskFragment$special$$inlined$viewBinding$1(this));
        this.subscriptions = kotlin.b.b(DownloadedTaskFragment$subscriptions$2.INSTANCE);
        this.itemAnimator = kotlin.b.b(DownloadedTaskFragment$itemAnimator$2.INSTANCE);
        this.mixedListAdPreloadDelegate = new cw4();
        this.multiSelector = new up7();
        this.exceptionHandler = new e(r61.t0);
        this.downloadingTaskListener = new DownloadedTaskFragment$downloadingTaskListener$1(this);
        this.scrollListener = new d();
    }

    private final void B3() {
        ProgressBar progressBar = h3().c;
        or3.e(progressBar, "downloadedPbLoading");
        ViewExtKt.g(progressBar, true);
    }

    public static Integer L2() {
        return y3();
    }

    public static void M2(lv1 lv1Var) {
        w3(lv1Var);
    }

    public static void N2(DownloadedTaskFragment downloadedTaskFragment) {
        t3(downloadedTaskFragment);
    }

    public static void O2(DownloadedTaskFragment downloadedTaskFragment, DownloadData downloadData) {
        d3(downloadedTaskFragment, downloadData);
    }

    public static final void P2(DownloadedTaskFragment downloadedTaskFragment, DownloadData downloadData) {
        downloadedTaskFragment.c3(downloadData);
    }

    public static final DownloadedTaskAdapter Q2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.adapter;
    }

    public static final ct2 R2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.h3();
    }

    public static final ExistedFileAnimManager S2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.existedFileAnimManager;
    }

    public static final dv1 T2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.headMenuHelper;
    }

    public static final fv1 U2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.i3();
    }

    public static final boolean V2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.needUpdateData;
    }

    public static final boolean W2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.scrolling;
    }

    public static final DownloadedTaskViewModel X2(DownloadedTaskFragment downloadedTaskFragment) {
        return downloadedTaskFragment.k3();
    }

    public static final void Y2(DownloadedTaskFragment downloadedTaskFragment) {
        downloadedTaskFragment.l3();
    }

    public static final void Z2(DownloadedTaskFragment downloadedTaskFragment, boolean z) {
        downloadedTaskFragment.needUpdateData = z;
    }

    public static final void a3(DownloadedTaskFragment downloadedTaskFragment, boolean z) {
        downloadedTaskFragment.scrolling = z;
    }

    public static final void b3(DownloadedTaskFragment downloadedTaskFragment, List list) {
        downloadedTaskFragment.C3(list);
    }

    private final void c3(DownloadData downloadData) {
        FilesViewModel.a aVar;
        LiveData liveData = this.emptyValue;
        if (liveData == null || (aVar = (FilesViewModel.a) liveData.f()) == null || aVar.e()) {
            h3().e.postDelayed(new wv1(this, downloadData), 300L);
        } else {
            k3().n0(downloadData);
        }
    }

    public static final void d3(DownloadedTaskFragment downloadedTaskFragment, DownloadData downloadData) {
        or3.f(downloadedTaskFragment, "this$0");
        or3.f(downloadData, "$downloadData");
        downloadedTaskFragment.k3().n0(downloadData);
    }

    private final void e3(wu7 subscription) {
        j3().a(subscription);
    }

    private final n01 j3() {
        return (n01) this.subscriptions.getValue();
    }

    private final void m3() {
        if (this.adapter == null) {
            RecyclerView recyclerView = h3().e;
            or3.e(recyclerView, "recyclerView");
            this.adapter = new DownloadedTaskAdapter(this, this, recyclerView, false, 8, null);
            this.smoothLinearLayoutManager = new FastScrollLinearLayoutManager(getContext());
            RecyclerView recyclerView2 = h3().e;
            AppCompatImageButton appCompatImageButtonB = h3().b.b();
            FastScrollLinearLayoutManager fastScrollLinearLayoutManager = this.smoothLinearLayoutManager;
            if (fastScrollLinearLayoutManager == null) {
                or3.w("smoothLinearLayoutManager");
                fastScrollLinearLayoutManager = null;
            }
            ReBackUpHelper.a(recyclerView2, appCompatImageButtonB, fastScrollLinearLayoutManager, getViewLifecycleOwner());
            h3().e.addItemDecoration(new b());
            h3().e.setHasFixedSize(true);
            h3().e.setItemAnimator(null);
            h3().e.setAdapter(this.adapter);
            DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
            BaseLoadMoreModule loadMoreModule = downloadedTaskAdapter != null ? downloadedTaskAdapter.getLoadMoreModule() : null;
            if (loadMoreModule != null) {
                loadMoreModule.setEnableLoadMore(false);
            }
            h3().e.addOnScrollListener(this.scrollListener);
        }
    }

    private final void p3() {
        k kVarI;
        k3().x0().i(getViewLifecycleOwner(), new c(new DownloadedTaskFragment$initObserver$1(this)));
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            NavBackStackEntry navBackStackEntryZ = mt2.a(this).z();
            y05 y05VarF = (navBackStackEntryZ == null || (kVarI = navBackStackEntryZ.i()) == null) ? null : kVarI.f("extras");
            if (y05VarF != null) {
                y05VarF.i(x24VarK2, new c(new DownloadedTaskFragment$initObserver$2$1(this)));
            }
            k3().C0().i(x24VarK2, new c(new DownloadedTaskFragment$initObserver$2$2(this)));
        }
    }

    private final void q3() {
        j3().b();
        z3();
        A3();
    }

    public static final void t3(DownloadedTaskFragment downloadedTaskFragment) {
        Context context;
        or3.f(downloadedTaskFragment, "this$0");
        if (FragmentKt.d(downloadedTaskFragment) && (context = downloadedTaskFragment.getContext()) != null) {
            STNavigator.a.a(context, "/files_downloading", downloadedTaskFragment.getArguments(), LaunchFlag.SINGLE_TASK);
            Bundle arguments = downloadedTaskFragment.getArguments();
            if (arguments != null) {
                arguments.remove("extra.L.task_status");
            }
        }
    }

    public static final void w3(lv1 lv1Var) {
        or3.f(lv1Var, "it");
        qk2.i(lv1Var.b());
    }

    private final void x3() {
        rx.c.M(new zv1()).z0(a58.b).x0(new f42());
    }

    public static final Integer y3() {
        return Integer.valueOf(TaskInfoDBUtils.k0());
    }

    public final void A3() {
        rx.c cVarG = RxBus.d().c(1125, 1256, 1257, 1021).g(RxBus.f);
        or3.e(cVarG, "compose(...)");
        e3(ObservableKt.i(cVarG, new DownloadedTaskFragment$setupRefreshListEvent$1(this)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C3(List pathList) {
        DownloadedTaskAdapter downloadedTaskAdapter;
        DownloadedItemViewHolder downloadedItemViewHolderJ;
        View viewF1;
        if (pathList.size() != 1 || (downloadedTaskAdapter = this.adapter) == null || (downloadedItemViewHolderJ = downloadedTaskAdapter.J((String) pathList.get(0))) == null) {
            return;
        }
        Activity activityA = dz7.a(requireContext());
        if (dz7.c(activityA) && (activityA instanceof br2) && (viewF1 = ((br2) activityA).f1(DestinationType.LOCK)) != null) {
            DownloadThumbView downloadThumbView = downloadedItemViewHolderJ.getBinding().d;
            or3.e(downloadThumbView, "iconLayout");
            ViewAnimatorHelper.t(activityA, downloadThumbView, viewF1, "", downloadedItemViewHolderJ.getBinding().d.getCoverBitmap(), null, 32, null);
        }
    }

    public final int D3() {
        RecyclerView recyclerView = h3().e;
        or3.e(recyclerView, "recyclerView");
        int childCount = recyclerView.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            or3.e(childAt, "getChildAt(index)");
            if (childAt.getVisibility() == 0 && childAt.getHeight() > 0) {
                i++;
            }
        }
        return i;
    }

    @Override
    public void H2(View view) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.H2(view);
        m3();
        o3();
        p3();
        q3();
        n3();
        B3();
        s3();
    }

    @Override
    public void O(boolean login, Intent actionAfterLogin) {
        if (PhoenixApplication.C().b().q().d()) {
            x3();
        }
    }

    @Override
    public up7 getMultiSelector() {
        return this.multiSelector;
    }

    public final void f3(LiveData emptyValue) {
        or3.f(emptyValue, "emptyValue");
        this.emptyValue = emptyValue;
    }

    public final void g3(int filterType) {
        DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
        if (downloadedTaskAdapter != null) {
            downloadedTaskAdapter.H(filterType);
        }
    }

    public final ct2 h3() {
        return (ct2) this.binding.getValue();
    }

    public final fv1 i3() {
        return (fv1) this.itemAnimator.getValue();
    }

    public final DownloadedTaskViewModel k3() {
        return (DownloadedTaskViewModel) this.viewModel.getValue();
    }

    public final void l3() {
        ProgressBar progressBar = h3().c;
        or3.e(progressBar, "downloadedPbLoading");
        ViewExtKt.g(progressBar, false);
    }

    @Override
    public void m1() {
        FragmentManager supportFragmentManager;
        List listH;
        List listH2;
        DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
        if ((downloadedTaskAdapter != null ? downloadedTaskAdapter.N() : 0) <= 0) {
            b88.l(getContext(), R.string.tip_download_files);
            return;
        }
        this.multiSelector.setSelectable(false);
        FragmentActivity activity = getActivity();
        if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
            DownloadedSelectFragment.Companion aVar = DownloadedSelectFragment.INSTANCE;
            DownloadedTaskAdapter downloadedTaskAdapter2 = this.adapter;
            if (downloadedTaskAdapter2 == null || (listH = downloadedTaskAdapter2.R()) == null) {
                listH = xu0.h();
            }
            DownloadedTaskAdapter downloadedTaskAdapter3 = this.adapter;
            if (downloadedTaskAdapter3 == null || (listH2 = downloadedTaskAdapter3.Q()) == null) {
                listH2 = xu0.h();
            }
            DownloadedTaskAdapter downloadedTaskAdapter4 = this.adapter;
            aVar.b(supportFragmentManager, listH, listH2, downloadedTaskAdapter4 != null ? downloadedTaskAdapter4.I() : 0);
        }
        this.multiSelector.clearSelections();
    }

    public final void n3() {
        PhoenixApplication.K().y(this.downloadingTaskListener);
        PhoenixApplication.K().x(this.downloadingTaskListener);
    }

    public final void o3() {
        if (this.headMenuHelper == null) {
            ConstraintLayout constraintLayout = h3().d;
            or3.e(constraintLayout, "downloadedTitleView");
            this.headMenuHelper = new dv1(this, constraintLayout);
        }
        RecyclerView recyclerView = h3().e;
        or3.e(recyclerView, "recyclerView");
        DownloadedTaskFragment$initHelper$1 downloadedTaskFragment$initHelper$1 = new DownloadedTaskFragment$initHelper$1(this);
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.existedFileAnimManager = new ExistedFileAnimManager(this, recyclerView, downloadedTaskFragment$initHelper$1, viewLifecycleOwner);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        k3().s0();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        FrameLayout frameLayoutB = h3().b();
        or3.e(frameLayoutB, "getRoot(...)");
        return frameLayoutB;
    }

    @Override
    public void onDestroy() {
        j3().b();
        u3();
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.mixedListAdPreloadDelegate.a(h3().e);
        ExistedFileAnimManager existedFileAnimManager = this.existedFileAnimManager;
        if (existedFileAnimManager != null) {
            existedFileAnimManager.h();
        }
        super.onDestroyView();
    }

    @Override
    public void onPause() {
        super.onPause();
        ProductionEnv.debugLog("DownloadedTaskFragment", "onPause...");
        k3().M0();
    }

    @Override
    public void onResume() {
        super.onResume();
        DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
        if (downloadedTaskAdapter != null && downloadedTaskAdapter.getItemCount() == 1) {
            h3().e.requestLayout();
        }
        ProductionEnv.debugLog("DownloadedTaskFragment", "onResume...");
        PhoenixApplication.E().B(MediaFileScanner.From.FILES_ACTIVITY_START);
        v3();
        RxBus.d().f(1268);
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        cw4 cw4Var = this.mixedListAdPreloadDelegate;
        RecyclerView recyclerView = h3().e;
        DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
        cw4Var.b(recyclerView, downloadedTaskAdapter != null ? downloadedTaskAdapter.O() : null);
    }

    @Override
    public void q() {
    }

    public final boolean r3(int yOffset) {
        List<Object> data;
        DownloadedTaskAdapter downloadedTaskAdapter = this.adapter;
        if (downloadedTaskAdapter != null && (data = downloadedTaskAdapter.getData()) != null && data.isEmpty()) {
            return false;
        }
        RecyclerView recyclerView = h3().e;
        or3.e(recyclerView, "recyclerView");
        int childCount = recyclerView.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            or3.e(childAt, "getChildAt(index)");
            if (childAt.getVisibility() == 0) {
                int height = childAt.getHeight();
                if (height == 0) {
                    height = xp2.a(96.0f);
                }
                i += height;
            }
        }
        if (i > h3().e.getHeight() - yOffset) {
            return true;
        }
        View childAt2 = h3().e.getChildAt(0);
        return (childAt2 != null ? childAt2.getTop() : 0) < 0;
    }

    public final void s3() {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("extra.L.task_status") : null;
        if (DownloadingHelper.a.k(serializable instanceof TaskInfo.TaskStatus ? (TaskInfo.TaskStatus) serializable : null)) {
            RxBus.d().f(1254);
            View view = getView();
            if (view != null) {
                view.postDelayed(new yv1(this), 500L);
            }
        }
    }

    public final void u3() {
        PhoenixApplication.K().y(this.downloadingTaskListener);
    }

    public final void v3() {
        y44.c(k3().x0(), this, new xv1());
    }

    public final void z3() {
        rx.c cVarG = RxBus.d().c(1137).g(RxBus.f);
        or3.e(cVarG, "compose(...)");
        e3(ObservableKt.i(cVarG, new DownloadedTaskFragment$setupAddRecordEvent$1(this)));
    }
}

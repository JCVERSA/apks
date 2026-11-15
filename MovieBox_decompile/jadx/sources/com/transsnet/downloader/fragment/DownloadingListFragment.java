package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.dialog.DownloadTaskControlManagerDialog;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001O\u0018\u0000 S2\u00020\u0001:\u0001TB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J'\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001b\u0010\u001aJ'\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001c\u0010\u0017J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010\u0003J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0003J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J'\u0010&\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b&\u0010'J'\u0010(\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b(\u0010'J'\u0010)\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b)\u0010'J\u0011\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\u0003R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u00107\u001a\u0004\b=\u0010>R\u001d\u0010D\u001a\u0004\u0018\u00010@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u00107\u001a\u0004\bB\u0010CR\u001d\u0010I\u001a\u0004\u0018\u00010E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u00107\u001a\u0004\bG\u0010HR\u001b\u0010N\u001a\u00020J8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u00107\u001a\u0004\bL\u0010MR\u0014\u0010R\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010Q¨\u0006U"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadingListFragment;", "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", "<init>", "()V", "", "Y0", "", "haveBatteryPermission", "isEnableMember", "e1", "(ZZ)V", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "data", "k1", "(Ljava/util/List;)V", "W0", WebConstants.FIELD_ITEM, "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "i1", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "downloadBean", "j1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "h1", "g1", "b1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Z", "initViewData", "initViewModel", "initListener", "Lcom/transsnet/downloader/adapter/k;", "adapter", "o0", "(Lcom/transsnet/downloader/adapter/k;)V", "B0", "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V", "A0", "C0", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "getPageName", "()Ljava/lang/String;", "onDestroy", "Lbx/b1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lbx/b1;", "titleBinding", "Landroid/os/Handler;", "e", "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "Lcom/transsnet/downloader/manager/g;", "f", "V0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lep/a;", "g", "getMAudioApi", "()Lep/a;", "mAudioApi", "Lep/b;", "h", "getMFloatApi", "()Lep/b;", "mFloatApi", "Lsi/a;", "i", "U0", "()Lsi/a;", "audioDao", "com/transsnet/downloader/fragment/DownloadingListFragment$b", "j", "Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;", "downloadListener", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadingListFragment extends DownloadListBaseFragment {

    private bx.b1 titleBinding;

    private final Lazy mHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadingListFragment.mHandler_delegate$lambda$0();
        }
    });

    private final Lazy downloadManager = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadingListFragment.T0();
        }
    });

    private final Lazy mAudioApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadingListFragment.c1();
        }
    });

    private final Lazy mFloatApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadingListFragment.d1();
        }
    });

    private final Lazy audioDao = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadingListFragment.S0();
        }
    });

    private final b downloadListener = new b();

    public static final class b extends zw.d {
        b() {
        }

        public static final void j(DownloadingListFragment downloadingListFragment) {
            downloadingListFragment.s0().H();
        }

        @Override
        public void h(DownloadBean bean, int i10) {
            List<Object> data;
            Intrinsics.h(bean, "bean");
            if (i10 == 5) {
                wf.a.f74274a.i(DownloadingListFragment.this.getTAG(), "onRefresh,getList status=" + i10 + ",bean=" + bean.getName() + " subjectId=" + bean.getSubjectId() + ",resourceId=" + bean.getResourceId(), true);
                Handler mHandler = DownloadingListFragment.this.getMHandler();
                final DownloadingListFragment downloadingListFragment = DownloadingListFragment.this;
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        DownloadingListFragment.b.j(downloadingListFragment);
                    }
                }, 500L);
                return;
            }
            com.transsnet.downloader.adapter.k mAdapter = DownloadingListFragment.this.getMAdapter();
            int i11 = -1;
            if (mAdapter != null && (data = mAdapter.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), bean.getResourceId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0) {
                com.transsnet.downloader.adapter.k mAdapter2 = DownloadingListFragment.this.getMAdapter();
                if (mAdapter2 != null) {
                    mAdapter2.notifyItemChanged(i11, bean);
                    return;
                }
                return;
            }
            wf.a.f74274a.i(DownloadingListFragment.this.getTAG(), "onRefresh position=" + i11 + ",status=" + i10 + ",bean=" + bean.getName() + " subjectId=" + bean.getSubjectId() + ",resourceId=" + bean.getResourceId(), true);
        }
    }

    public static final class c implements com.transsnet.downloader.adapter.u0.b {
        c() {
        }

        @Override
        public void a(int i10, int i11) {
        }

        @Override
        public void b(int i10, int i11, int i12, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i10, i11, i12, z10);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56839a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56839a = function;
        }

        @Override
        public final Function a() {
            return this.f56839a;
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
            this.f56839a.invoke(obj);
        }
    }

    public static final si.a S0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).n1();
    }

    public static final com.transsnet.downloader.manager.g T0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public final si.a U0() {
        return (si.a) this.audioDao.getValue();
    }

    public final com.transsnet.downloader.manager.g V0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final void W0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadingListFragment.X0(this.f57041a, (yw.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit X0(DownloadingListFragment downloadingListFragment, yw.a it) {
        Intrinsics.h(it, "it");
        try {
            downloadingListFragment.s0().P();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f64096a;
    }

    private final void Y0() {
        GradientTextView gradientTextView;
        GradientTextView gradientTextView2;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        com.transsnet.downloader.util.d dVar = com.transsnet.downloader.util.d.f57712a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final boolean zJ = dVar.j(contextRequireContext);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        final boolean z10 = bVar != null ? bVar.z() : false;
        bx.b1 b1Var = this.titleBinding;
        if (b1Var != null && (gradientTextView2 = b1Var.f15955c) != null) {
            gradientTextView2.setVisibility(z10 || !zJ ? 0 : 8);
        }
        bx.b1 b1Var2 = this.titleBinding;
        if (b1Var2 == null || (gradientTextView = b1Var2.f15955c) == null) {
            return;
        }
        gradientTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadingListFragment.Z0(this.f57063a, zJ, z10, view);
            }
        });
    }

    public static final void Z0(DownloadingListFragment downloadingListFragment, boolean z10, boolean z11, View view) {
        downloadingListFragment.e1(z10, z11);
    }

    public static final Unit a1(DownloadingListFragment downloadingListFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return Unit.f64096a;
        }
        downloadingListFragment.k1(list);
        downloadingListFragment.D0(list);
        return Unit.f64096a;
    }

    private final boolean b1(DownloadBean downloadBean) {
        long jA;
        String rootPath = downloadBean.getRootPath();
        if (rootPath == null || rootPath.length() <= 0) {
            jA = com.blankj.utilcode.util.w.a();
        } else {
            try {
                jA = com.blankj.utilcode.util.n.j(downloadBean.getRootPath());
            } catch (Throwable unused) {
                return false;
            }
        }
        Long size = downloadBean.getSize();
        if ((size != null ? size.longValue() : 0L) - downloadBean.getProgress() < jA) {
            return false;
        }
        fh.b.f60176a.d(R$string.insufficient_storage_available);
        return true;
    }

    public static final ep.a c1() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public static final ep.b d1() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    private final void e1(boolean haveBatteryPermission, boolean isEnableMember) {
        DownloadTaskControlManagerDialog downloadTaskControlManagerDialog = new DownloadTaskControlManagerDialog(haveBatteryPermission, isEnableMember);
        downloadTaskControlManagerDialog.s0(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadingListFragment.f1(this.f57113a);
            }
        });
        downloadTaskControlManagerDialog.k0(com.blankj.utilcode.util.a.b(), "DownloadTaskControlManagerDialog");
        wj.d dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0]);
        if (dVar != null) {
            dVar.b();
        }
    }

    public static final Unit f1(DownloadingListFragment downloadingListFragment) {
        downloadingListFragment.Y0();
        return Unit.f64096a;
    }

    private final void g1(DownloadBean item, View view, int position) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            item = downloadBeanQ;
        }
        PopupManager popupManager = new PopupManager(position, item);
        popupManager.I(view, 2);
        popupManager.A(new c());
    }

    public final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    public final ep.b getMFloatApi() {
        return (ep.b) this.mFloatApi.getValue();
    }

    public final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final void h1(DownloadBean item) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new DownloadingListFragment$openAudio$1(this, item, null), 3, null);
    }

    private final void i1(DownloadBean item, View view, int position) {
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            item = downloadBeanQ;
        }
        if (item.isVideo()) {
            j1(item);
        } else {
            h1(item);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    private final void j1(DownloadBean downloadBean) {
        Collection collectionL;
        String postId;
        if (downloadBean.isShotTV()) {
            Navigator.x(TheRouter.c(pr.a.f69252a.b()).K("id", downloadBean.getSubjectId()).F("ep", downloadBean.getEp()).K("ops", downloadBean.getOps()).G("ms", downloadBean.getReadProgress()), getContext(), null, 2, null);
            return;
        }
        if (!downloadBean.isShorts()) {
            V0().l(downloadBean);
            String strH = V0().h(downloadBean);
            com.danikula.videocache.q.a("proxyUrl = " + strH);
            View view = getView();
            Context context = view != null ? view.getContext() : null;
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null) {
                return;
            }
            Navigator.x(TheRouter.c("/video/detail").K("extra_local_path", downloadBean.getPath()).K("extra_url", downloadBean.getUrl()).K("extra_proxy_url", strH).K("extra_resource_id", downloadBean.getResourceId()).K("extra_subject_id", downloadBean.getSubjectId()).K("extra_name", downloadBean.getName()).K("extra_post_id", downloadBean.getPostId()).z("extra_completed", false).z("extra_is_series", downloadBean.isSeries()).K("extra_page_from", DownloadPageType.DOWNLOAD.getPageName()).F("extra_height", downloadBean.getVideoHeight()).F("extra_width", downloadBean.getVideoWidth()), appCompatActivity, null, 2, null);
            return;
        }
        View view2 = getView();
        Context context2 = view2 != null ? view2.getContext() : null;
        AppCompatActivity appCompatActivity2 = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
        if (appCompatActivity2 == null) {
            return;
        }
        List list = (List) s0().O().f();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                DownloadBean downloadBean2 = (DownloadBean) obj;
                if (downloadBean2.isShorts() && (postId = downloadBean2.getPostId()) != null && postId.length() != 0) {
                    arrayList.add(obj);
                }
            }
            List listI0 = CollectionsKt.I0(arrayList, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadBean) t11).getCreateAt()), Long.valueOf(((DownloadBean) t10).getCreateAt()));
                }
            });
            if (listI0 != null) {
                List list2 = listI0;
                collectionL = new ArrayList(CollectionsKt.v(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    collectionL.add(DownloadUtil.f57680a.l((DownloadBean) it.next()));
                }
            } else {
                collectionL = CollectionsKt.l();
            }
        } else {
            collectionL = CollectionsKt.l();
        }
        Navigator.x(TheRouter.c("/post/detailVideo").K("id", downloadBean.getPostId()).K(WebConstants.PAGE_FROM, "download_list").z("video_load_more", true).J("downloaded_shorts_list", new ArrayList(collectionL)).z("prioritize_downloaded", true), appCompatActivity2, null, 2, null);
    }

    private final void k1(List data) {
        AppCompatTextView appCompatTextView;
        bx.b1 b1Var = this.titleBinding;
        if (b1Var == null || (appCompatTextView = b1Var.f15954b) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(com.transsnet.downloader.R$string.downloading_title_count, Integer.valueOf(data.size())));
    }

    public static final Handler mHandler_delegate$lambda$0() {
        return new Handler(Looper.getMainLooper());
    }

    @Override
    public void A0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        int id2 = view.getId();
        if (id2 == R$id.iv_more) {
            g1(downloadBean, view, position);
        } else if (id2 == R$id.iv_cover) {
            i1(downloadBean, view, position);
        }
    }

    @Override
    public void B0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        int status = downloadBean.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            V0().F(downloadBean);
        } else {
            if (b1(downloadBean)) {
                return;
            }
            com.transsnet.downloader.manager.g.a.a(V0(), downloadBean, false, 2, null);
        }
    }

    @Override
    public void C0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        g1((DownloadBean) adapter.getItem(position), view, position);
    }

    @Override
    public String getPageName() {
        return "";
    }

    @Override
    public void initListener() {
        super.initListener();
        V0().g(this.downloadListener);
        W0();
    }

    @Override
    public void initViewData() {
        LinearLayout linearLayout;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.layout_downloading_title, (ViewGroup) null);
        this.titleBinding = bx.b1.a(viewInflate);
        bx.v mViewBinding = getMViewBinding();
        if (mViewBinding != null && (linearLayout = mViewBinding.f16269d) != null) {
            linearLayout.addView(viewInflate, 0);
        }
        super.initViewData();
        Y0();
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        s0().Q().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadingListFragment.a1(this.f57053a, (List) obj);
            }
        }));
    }

    @Override
    public qi.b newLogViewConfig() {
        return null;
    }

    @Override
    public void o0(com.transsnet.downloader.adapter.k adapter) {
        Intrinsics.h(adapter, "adapter");
        adapter.l(R$id.iv_more, R$id.iv_cover);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        getMHandler().removeCallbacksAndMessages(null);
        V0().k(this.downloadListener);
    }
}

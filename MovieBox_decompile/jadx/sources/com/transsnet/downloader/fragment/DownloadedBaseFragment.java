package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.bean.MovieRecBean;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.widget.DownloadPanelForYouFootView;
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
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\nJO\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\u0003J\u0017\u0010%\u001a\u00020\b2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J'\u0010)\u001a\u00020\b2\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010*J'\u0010+\u001a\u00020\b2\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010*J'\u0010,\u001a\u00020\b2\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010*J'\u0010-\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\b2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010/H\u0016¢\u0006\u0004\b1\u00102J\u0011\u00104\u001a\u0004\u0018\u000103H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u00107J\u000f\u00109\u001a\u00020\bH\u0016¢\u0006\u0004\b9\u0010\u0003R\u0016\u0010<\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R$\u0010F\u001a\u0004\u0018\u00010'8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u001d\u0010P\u001a\u0004\u0018\u00010K8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u001d\u0010U\u001a\u0004\u0018\u00010Q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010M\u001a\u0004\bS\u0010TR\u001d\u0010Z\u001a\u0004\u0018\u00010V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010M\u001a\u0004\bX\u0010Y¨\u0006["}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", "<init>", "()V", "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", "", RequestParameters.POSITION, "", "b1", "(Lcom/transsion/baselib/db/download/DownloadBean;I)V", WebConstants.FIELD_ITEM, "Z0", "", "path", "resourceId", "url", "name", "postId", "subjectId", "a1", "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "Lcom/transsnet/downloader/bean/MovieRecBean;", "movieRecBean", "g1", "(Lcom/transsnet/downloader/bean/MovieRecBean;)V", "V0", "c1", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "Lcom/transsnet/downloader/adapter/k;", "adapter", "o0", "(Lcom/transsnet/downloader/adapter/k;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "B0", "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V", "A0", "C0", "X0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "", "list", "D0", "(Ljava/util/List;)V", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "q0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "e1", "()I", "getScreenType", "h1", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "movieRecPage", "e", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "mForYouViewModel", "f", "Landroid/view/View;", "R0", "()Landroid/view/View;", "f1", "(Landroid/view/View;)V", "mEmptyView", "", "g", "J", "lastRecLoadTime", "Lep/a;", "h", "Lkotlin/Lazy;", "getMAudioApi", "()Lep/a;", "mAudioApi", "Lep/b;", "i", "getMFloatApi", "()Lep/b;", "mFloatApi", "Lsi/a;", "j", "Q0", "()Lsi/a;", "audioDao", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class DownloadedBaseFragment extends DownloadListBaseFragment {

    private DownloadViewModel mForYouViewModel;

    private View mEmptyView;

    private long lastRecLoadTime;

    private int movieRecPage = 1;

    private final Lazy mAudioApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadedBaseFragment.mAudioApi_delegate$lambda$0();
        }
    });

    private final Lazy mFloatApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadedBaseFragment.W0();
        }
    });

    private final Lazy audioDao = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadedBaseFragment.P0();
        }
    });

    public static final class a implements com.transsnet.downloader.adapter.u0.b {
        a() {
        }

        @Override
        public void a(int i10, int i11) {
            if (i11 == 4 || i11 == 5) {
                Fragment parentFragment = DownloadedBaseFragment.this.getParentFragment();
                FileManagerFragment fileManagerFragment = parentFragment instanceof FileManagerFragment ? (FileManagerFragment) parentFragment : null;
                if (fileManagerFragment != null) {
                    fileManagerFragment.b1();
                }
            }
        }

        @Override
        public void b(int i10, int i11, int i12, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i10, i11, i12, z10);
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56824a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56824a = function;
        }

        @Override
        public final Function a() {
            return this.f56824a;
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
            this.f56824a.invoke(obj);
        }
    }

    public static final si.a P0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).n1();
    }

    public final si.a Q0() {
        return (si.a) this.audioDao.getValue();
    }

    public static final Unit S0(DownloadedBaseFragment downloadedBaseFragment) {
        if (yg.l.f76264a.e()) {
            downloadedBaseFragment.V0();
            return Unit.f64096a;
        }
        fh.b.f60176a.d(R$string.no_network_toast);
        return Unit.f64096a;
    }

    public static final Unit T0(DownloadedBaseFragment downloadedBaseFragment, BaseDto baseDto) {
        downloadedBaseFragment.g1((MovieRecBean) baseDto.getData());
        return Unit.f64096a;
    }

    public static final Unit U0(DownloadedBaseFragment downloadedBaseFragment, String str) {
        if (str != null && str.length() != 0) {
            downloadedBaseFragment.c1(str);
        }
        return Unit.f64096a;
    }

    private final void V0() {
        DownloadViewModel downloadViewModel = this.mForYouViewModel;
        if (downloadViewModel != null) {
            downloadViewModel.S(this.movieRecPage, 6);
        }
    }

    public static final ep.b W0() {
        return (ep.b) TheRouter.d(ep.b.class, new Object[0]);
    }

    public static final Unit Y0(DownloadedBaseFragment downloadedBaseFragment) {
        Navigator.x(TheRouter.c("/download/transfer"), downloadedBaseFragment.getContext(), null, 2, null);
        return Unit.f64096a;
    }

    private final void Z0(DownloadBean item, int position) {
        String name;
        String subjectName;
        if (item.getType() == 1) {
            if (item.isFileExist()) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new DownloadedBaseFragment$openMedia$1(this, item, null), 3, null);
                return;
            }
            LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f57684a;
            View view = getView();
            Intrinsics.e(view);
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            localVideoNotExistUtil.v(context, item, position);
            return;
        }
        String path = item.getPath();
        String str = path == null ? "" : path;
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        String str2 = resourceId;
        String url = item.getUrl();
        String str3 = (!item.isSeries() || (subjectName = item.getSubjectName()) == null || subjectName.length() <= 0 ? (name = item.getName()) != null : (name = item.getSubjectName()) != null) ? name : "";
        String postId = item.getPostId();
        if (postId == null) {
            postId = item.getUrl();
        }
        String str4 = postId;
        String subjectId = item.getSubjectId();
        a1(item, str, str2, url, str3, str4, subjectId == null ? "" : subjectId, position);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d3  */
    private final void a1(DownloadBean item, String path, String resourceId, String url, String name, String postId, String subjectId, int position) {
        Collection collectionL;
        String postId2;
        if (item.isShotTV()) {
            Navigator.x(TheRouter.c(pr.a.f69252a.b()).K("id", item.getSubjectId()).F("ep", item.getEp()).K("ops", item.getOps()).G("ms", item.getReadProgress()), getContext(), null, 2, null);
            return;
        }
        if (!item.isShorts()) {
            View view = getView();
            Context context = view != null ? view.getContext() : null;
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null) {
                return;
            }
            Navigator.x(TheRouter.c("/video/detail").F("subject_type", item.getSubjectType()).K("id", subjectId).K("extra_local_path", path).K("extra_url", url).K("extra_resource_id", resourceId).K("extra_subject_id", subjectId).K("extra_name", name).K("extra_post_id", postId).z("extra_completed", true).z("extra_is_series", item.isSeries()).K("extra_page_from", getPageName()).F("extra_height", item.getVideoHeight()).F("extra_width", item.getVideoWidth()).F("extra_position", position).F("extra_parent_position", getParentPosition()).F("extra_series_position", item.isSeries() ? position : -1), appCompatActivity, null, 2, null);
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
                DownloadBean downloadBean = (DownloadBean) obj;
                if (downloadBean.isShorts() && (postId2 = downloadBean.getPostId()) != null && postId2.length() != 0) {
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
        Navigator.x(TheRouter.c("/post/detailVideo").K("id", item.getPostId()).K(WebConstants.PAGE_FROM, "download_list").z("video_load_more", true).J("downloaded_shorts_list", new ArrayList(collectionL)).z("prioritize_downloaded", true).z("is_from_downloaded", true).K("media_type", MediaType.VIDEO.getValue()).J("item_object", DownloadUtil.f57680a.l(item)), appCompatActivity2, null, 2, null);
    }

    private final void b1(DownloadBean bean, int position) {
        View view = getView();
        Context context = view != null ? view.getContext() : null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/download/series_list");
        String subjectName = bean.getSubjectName();
        if (subjectName == null) {
            subjectName = "Series";
        }
        Navigator.x(navigatorC.K("extra_name", subjectName).K("extra_subject_id", bean.getSubjectId()).F("extra_parent_position", position), appCompatActivity, null, 2, null);
    }

    private final void c1(String resourceId) {
        bx.v mViewBinding;
        RecyclerView recyclerView;
        com.transsnet.downloader.adapter.k mAdapter = getMAdapter();
        if (mAdapter == null) {
            return;
        }
        Iterator<Object> it = mAdapter.getData().iterator();
        final int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (Intrinsics.c(downloadBean.getResourceId(), resourceId) || Intrinsics.c(downloadBean.getPostId(), resourceId)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0 || (mViewBinding = getMViewBinding()) == null || (recyclerView = mViewBinding.f16270e) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                DownloadedBaseFragment.d1(this.f56985a, i10);
            }
        });
    }

    public static final void d1(DownloadedBaseFragment downloadedBaseFragment, int i10) {
        RecyclerView recyclerView;
        bx.v mViewBinding = downloadedBaseFragment.getMViewBinding();
        RecyclerView.m layoutManager = (mViewBinding == null || (recyclerView = mViewBinding.f16270e) == null) ? null : recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(i10, 0);
        }
        downloadedBaseFragment.s0().R().q(null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void g1(MovieRecBean movieRecBean) {
        Object objM453constructorimpl;
        com.transsnet.downloader.adapter.k mAdapter;
        List<Object> data;
        List<Object> data2;
        List<Object> data3;
        com.transsnet.downloader.adapter.k mAdapter2;
        List<Object> data4;
        List<Object> data5;
        NestedScrollView nestedScrollView;
        List<Subject> items;
        DownloadPanelForYouFootView downloadPanelForYouFootView;
        DownloadPanelForYouFootView downloadPanelForYouFootView2;
        DownloadPanelForYouFootView downloadPanelForYouFootView3;
        List<Subject> items2;
        Pager pager;
        String nextPage;
        Integer numV;
        boolean z10 = true;
        this.movieRecPage = (movieRecBean == null || (pager = movieRecBean.getPager()) == null || (nextPage = pager.getNextPage()) == null || (numV = StringsKt.v(nextPage)) == null) ? 1 : numV.intValue();
        wf.a.C0922a c0922a = wf.a.f74274a;
        Integer numValueOf = null;
        numValueOf = null;
        wf.a.C0922a.r(c0922a, getTAG(), new String[]{"----------showFootMovieRec,empty  movieRecPage:" + this.movieRecPage + ", size:" + ((movieRecBean == null || (items2 = movieRecBean.getItems()) == null) ? null : Integer.valueOf(items2.size()))}, false, 4, null);
        bx.v mViewBinding = getMViewBinding();
        int size = 0;
        if (mViewBinding != null && (nestedScrollView = mViewBinding.f16271f) != null && nestedScrollView.getVisibility() == 0) {
            wf.a.C0922a.r(c0922a, getTAG(), new String[]{"----------showFootMovieRec,empty  "}, false, 4, null);
            bx.v mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (downloadPanelForYouFootView3 = mViewBinding2.f16268c) != null) {
                List<Subject> items3 = movieRecBean != null ? movieRecBean.getItems() : null;
                if (items3 != null && !items3.isEmpty()) {
                    z10 = false;
                }
                downloadPanelForYouFootView3.setVisibility(z10 ? 8 : 0);
            }
            if (movieRecBean == null || (items = movieRecBean.getItems()) == null) {
                return;
            }
            bx.v mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (downloadPanelForYouFootView2 = mViewBinding3.f16268c) != null) {
                bx.v mViewBinding4 = getMViewBinding();
                downloadPanelForYouFootView2.initBrowseReport(mViewBinding4 != null ? mViewBinding4.f16270e : null);
            }
            bx.v mViewBinding5 = getMViewBinding();
            if (mViewBinding5 == null || (downloadPanelForYouFootView = mViewBinding5.f16268c) == null) {
                return;
            }
            downloadPanelForYouFootView.setData(items);
            return;
        }
        List<Subject> items4 = movieRecBean != null ? movieRecBean.getItems() : null;
        if (items4 == null || items4.isEmpty()) {
            return;
        }
        com.transsnet.downloader.adapter.k mAdapter3 = getMAdapter();
        DownloadBean downloadBean = (mAdapter3 == null || (data5 = mAdapter3.getData()) == null) ? null : (DownloadBean) CollectionsKt.v0(data5);
        if (downloadBean != null && downloadBean.getIsFroYouList()) {
            wf.a.C0922a.r(c0922a, getTAG(), new String[]{"----------2showFootMovieRec, data refresh  "}, false, 4, null);
            com.transsnet.downloader.adapter.k mAdapter4 = getMAdapter();
            int i10 = -1;
            if (mAdapter4 != null && (data4 = mAdapter4.getData()) != null) {
                Iterator<Object> it = data4.iterator();
                while (it.hasNext()) {
                    if (((DownloadBean) it.next()).getIsFroYouList()) {
                        i10 = size;
                        break;
                    }
                    size++;
                }
            }
            if (i10 < 0 || (mAdapter2 = getMAdapter()) == null) {
                return;
            }
            mAdapter2.notifyItemChanged(i10);
            return;
        }
        String tag = getTAG();
        com.transsnet.downloader.adapter.k mAdapter5 = getMAdapter();
        if (mAdapter5 != null && (data3 = mAdapter5.getData()) != null) {
            numValueOf = Integer.valueOf(data3.size());
        }
        wf.a.C0922a.r(c0922a, tag, new String[]{"----------3showFootMovieRec, data add  size:" + numValueOf}, false, 4, null);
        com.transsnet.downloader.adapter.k mAdapter6 = getMAdapter();
        if (mAdapter6 != null) {
            DownloadBean downloadBean2 = new DownloadBean("", "", "", "", 0L, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBean2.setFroYouList(true);
            mAdapter6.p(downloadBean2);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsnet.downloader.adapter.k mAdapter7 = getMAdapter();
            if (((mAdapter7 == null || (data2 = mAdapter7.getData()) == null) ? 0 : data2.size()) - 2 >= 0 && (mAdapter = getMAdapter()) != null) {
                com.transsnet.downloader.adapter.k mAdapter8 = getMAdapter();
                if (mAdapter8 != null && (data = mAdapter8.getData()) != null) {
                    size = data.size();
                }
                mAdapter.notifyItemChanged(size - 2);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    public final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    public final ep.b getMFloatApi() {
        return (ep.b) this.mFloatApi.getValue();
    }

    public static final ep.a mAudioApi_delegate$lambda$0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    @Override
    public void A0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        if (view.getId() == R$id.iv_more) {
            X0(downloadBean, view, position);
        }
    }

    @Override
    public void B0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        DownloadBean downloadBean = (DownloadBean) adapter.getItem(position);
        if (downloadBean.getIsFroYouList() || downloadBean.getStatus() == 14) {
            return;
        }
        if (downloadBean.getStatus() == 10) {
            b1(downloadBean, position);
        } else {
            Z0(downloadBean, position);
        }
    }

    @Override
    public void C0(com.transsnet.downloader.adapter.k adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        X0((DownloadBean) adapter.getItem(position), view, position);
    }

    @Override
    public void D0(List list) {
        androidx.p009lifecycle.b0 b0VarT;
        androidx.p009lifecycle.b0 b0VarT2;
        androidx.p009lifecycle.b0 b0VarT3;
        NestedScrollView nestedScrollView;
        RecyclerView recyclerView;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            h1();
        } else {
            bx.v mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f16270e) != null) {
                uf.c.k(recyclerView);
            }
            bx.v mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (nestedScrollView = mViewBinding2.f16271f) != null) {
                uf.c.g(nestedScrollView);
            }
            super.D0(list);
            String str = (String) s0().R().f();
            if (str != null && str.length() != 0) {
                c1(str);
            }
        }
        if (this instanceof DownloadEpisodesListFragment) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        DownloadViewModel downloadViewModel = this.mForYouViewModel;
        BaseDto baseDto = null;
        BaseDto baseDto2 = (downloadViewModel == null || (b0VarT3 = downloadViewModel.T()) == null) ? null : (BaseDto) b0VarT3.f();
        if (baseDto2 != null) {
            MovieRecBean movieRecBean = (MovieRecBean) baseDto2.getData();
            List<Subject> items = movieRecBean != null ? movieRecBean.getItems() : null;
            if (items != null && !items.isEmpty() && jCurrentTimeMillis - this.lastRecLoadTime < 180000) {
                DownloadViewModel downloadViewModel2 = this.mForYouViewModel;
                if (downloadViewModel2 == null || (b0VarT = downloadViewModel2.T()) == null) {
                    return;
                }
                DownloadViewModel downloadViewModel3 = this.mForYouViewModel;
                if (downloadViewModel3 != null && (b0VarT2 = downloadViewModel3.T()) != null) {
                    baseDto = (BaseDto) b0VarT2.f();
                }
                b0VarT.q(baseDto);
                return;
            }
        }
        this.lastRecLoadTime = jCurrentTimeMillis;
        V0();
    }

    protected final View getMEmptyView() {
        return this.mEmptyView;
    }

    public void X0(DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        PopupManager popupManager = new PopupManager(position, bean);
        popupManager.I(view, 1);
        popupManager.B(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadedBaseFragment.Y0(this.f56976a);
            }
        });
        popupManager.A(new a());
    }

    public int getParentPosition() {
        return -1;
    }

    protected final void f1(View view) {
        this.mEmptyView = view;
    }

    @Override
    public int getScreenType() {
        return 6;
    }

    public void h1() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        NestedScrollView nestedScrollView;
        RecyclerView recyclerView;
        com.transsnet.downloader.adapter.k mAdapter = getMAdapter();
        if (mAdapter != null) {
            mAdapter.n1(null);
        }
        bx.v mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f16270e) != null) {
            uf.c.g(recyclerView);
        }
        bx.v mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (nestedScrollView = mViewBinding2.f16271f) != null) {
            uf.c.k(nestedScrollView);
        }
        bx.v mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (frameLayout2 = mViewBinding3.f16267b) != null) {
            frameLayout2.removeAllViews();
        }
        bx.v mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (frameLayout = mViewBinding4.f16267b) == null) {
            return;
        }
        frameLayout.addView(getEmptyView(false));
    }

    @Override
    public void initViewData() {
        DownloadPanelForYouFootView downloadPanelForYouFootView;
        super.initViewData();
        bx.v mViewBinding = getMViewBinding();
        if (mViewBinding == null || (downloadPanelForYouFootView = mViewBinding.f16268c) == null) {
            return;
        }
        downloadPanelForYouFootView.setRefreshClickCallback(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadedBaseFragment.S0(this.f56964a);
            }
        });
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarT;
        super.initViewModel();
        DownloadViewModel downloadViewModel = this.mForYouViewModel;
        if (downloadViewModel != null && (b0VarT = downloadViewModel.T()) != null) {
            b0VarT.j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadedBaseFragment.T0(this.f57159a, (BaseDto) obj);
                }
            }));
        }
        s0().R().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadedBaseFragment.U0(this.f56914a, (String) obj);
            }
        }));
    }

    @Override
    public void o0(com.transsnet.downloader.adapter.k adapter) {
        Intrinsics.h(adapter, "adapter");
        adapter.l(R$id.iv_more);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mForYouViewModel = (DownloadViewModel) new androidx.p009lifecycle.v0(this).a(DownloadViewModel.class);
    }

    @Override
    public DownloadViewModel getMForYouViewModel() {
        return this.mForYouViewModel;
    }
}

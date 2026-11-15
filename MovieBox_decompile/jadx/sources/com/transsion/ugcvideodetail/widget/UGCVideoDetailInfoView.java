package com.transsion.ugcvideodetail.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.c;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.m;
import com.transsion.push.PushConstants;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.ugcvideodetail.R$drawable;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.adapter.i;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDialogInfoDialogFragment;
import com.transsion.ugcvideodetail.hepler.h;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.usercenterapi.ReportType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gu.d;
import ij.o;
import iu.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import ni.f;
import yg.l;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0016\u0010\u000eJ\u000f\u0010\u0017\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0017\u0010\u000eJ\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001e\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u0017\u0010!\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u0018H\u0002¢\u0006\u0004\b!\u0010\u001bJ\u0017\u0010#\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\u0018H\u0002¢\u0006\u0004\b#\u0010\u001bJ\u000f\u0010$\u001a\u00020\fH\u0002¢\u0006\u0004\b$\u0010\u000eJ\u000f\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\b%\u0010\u000eJ\u000f\u0010&\u001a\u00020\fH\u0002¢\u0006\u0004\b&\u0010\u000eJ\u000f\u0010'\u001a\u00020\fH\u0002¢\u0006\u0004\b'\u0010\u000eJ\u0015\u0010*\u001a\u00020\f2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\u0015\u0010.\u001a\u00020\f2\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u0015\u00100\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b0\u0010\u0014J\r\u00101\u001a\u00020\f¢\u0006\u0004\b1\u0010\u000eJ\r\u00102\u001a\u00020\u0018¢\u0006\u0004\b2\u00103R\u0014\u00106\u001a\u00020,8\u0002X\u0082D¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00105R\u001b\u0010K\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u001d\u0010P\u001a\u0004\u0018\u00010L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010H\u001a\u0004\bN\u0010O¨\u0006Q"}, d2 = {"Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailInfoView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "L", "()V", "O", "y", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "setupHashTags", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "S", "R", "U", "", "isLiked", "b0", "(Z)V", "c0", "isFavorited", "Z", "a0", PushConstants.PUSH_SERVICE_TYPE_SHOW, "Y", "isSubscribed", "d0", "T", "Q", "V", "W", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;", "fragment", "setParentFragment", "(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;)V", "", "pageName", "setPageName", "(Ljava/lang/String;)V", "setData", "removeAutoPlay", "isAutoPlayShowing", "()Z", "a", "Ljava/lang/String;", "TAG", "Liu/p;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Liu/p;", "viewBinding", "c", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;", "parentFragment", "Lcom/transsion/share/share/ShareDialogFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/share/share/ShareDialogFragment;", "shareDialog", "e", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "f", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "g", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "viewModel", "Lqx/a;", "h", "getLoginApi", "()Lqx/a;", "loginApi", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailInfoView extends ConstraintLayout {

    private final String TAG;

    private final p viewBinding;

    private UGCVideoDetailFragment parentFragment;

    private ShareDialogFragment shareDialog;

    private UGCVideo ugcVideo;

    private String pageName;

    private final Lazy viewModel;

    private final Lazy loginApi;

    public static final class a implements com.transsion.share.share.a {
        a() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void b(String str) {
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f54470a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54470a = function;
        }

        @Override
        public final Function a() {
            return this.f54470a;
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
            this.f54470a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailInfoView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    public static final void A(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "more_details", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.W();
    }

    public static final void B(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "like", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.S();
    }

    public static final void C(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "favorite", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.R();
    }

    public static final void D(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, PushConstants.TOPIC_SUBSCRIBE, uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.U();
    }

    public static final void E(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "share", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.T();
    }

    public static final void F(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "download", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.Q();
    }

    public static final void G(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        if (c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "download", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.Q();
    }

    public static final void H(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "user", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.V();
    }

    public static final void I(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "user", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.V();
    }

    public static final void J(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "autoplay_go", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        Navigator.x(TheRouter.c("/profile/setting"), uGCVideoDetailInfoView.getContext(), null, 2, null);
    }

    public static final void K(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "autoplay_close", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        Group groupAutoplay = uGCVideoDetailInfoView.viewBinding.f62746d;
        Intrinsics.g(groupAutoplay, "groupAutoplay");
        uf.c.g(groupAutoplay);
    }

    private final void L() {
        RecyclerView recyclerView = this.viewBinding.f62754l;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new tf.c(lj.a.b(12), lj.a.b(8)));
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false)) {
            Group groupAutoplay = this.viewBinding.f62746d;
            Intrinsics.g(groupAutoplay, "groupAutoplay");
            uf.c.k(groupAutoplay);
        }
        LiveData liveDataR = getViewModel().R();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        liveDataR.j((FragmentActivity) context, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoDetailInfoView.M(this.f65439a, (Pair) obj);
            }
        }));
        O();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    public static final Unit M(UGCVideoDetailInfoView uGCVideoDetailInfoView, Pair pair) {
        UGCVideo uGCVideo;
        UGCVideoCreator creator;
        Boolean hasSubscribe;
        Unit unit;
        UGCVideoCreator creator2;
        String uid;
        UGCVideoCreator creator3;
        uGCVideoDetailInfoView.Y(false);
        if (pair != null) {
            uGCVideoDetailInfoView.d0(((Boolean) pair.getSecond()).booleanValue());
            UGCVideo uGCVideo2 = uGCVideoDetailInfoView.ugcVideo;
            if (uGCVideo2 != null && (creator3 = uGCVideo2.getCreator()) != null) {
                creator3.setHasSubscribe((Boolean) pair.getSecond());
            }
            m.c(((Boolean) pair.getSecond()).booleanValue() ? R$string.ugc_video_detail_followed : R$string.ugc_video_detail_unfollowed);
            UGCVideo uGCVideo3 = uGCVideoDetailInfoView.ugcVideo;
            if (uGCVideo3 == null || (creator2 = uGCVideo3.getCreator()) == null || (uid = creator2.getUid()) == null) {
                unit = null;
            } else {
                d dVar = new d(uid, ((Boolean) pair.getSecond()).booleanValue());
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = d.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, dVar, 0L);
                unit = Unit.f64096a;
            }
            if (unit == null) {
                uGCVideo = uGCVideoDetailInfoView.ugcVideo;
                if (uGCVideo != null && (creator = uGCVideo.getCreator()) != null && (hasSubscribe = creator.getHasSubscribe()) != null) {
                    uGCVideoDetailInfoView.d0(hasSubscribe.booleanValue());
                }
            }
        } else {
            uGCVideo = uGCVideoDetailInfoView.ugcVideo;
            if (uGCVideo != null) {
                uGCVideoDetailInfoView.d0(hasSubscribe.booleanValue());
            }
        }
        return Unit.f64096a;
    }

    public static final qx.a N() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void O() {
        try {
            Context context = getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null) {
                return;
            }
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCVideoDetailInfoView.P(this.f65441a, (gu.d) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = d.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent(appCompatActivity, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, this.TAG, "observeSubscribeEvent init error: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    public static final Unit P(UGCVideoDetailInfoView uGCVideoDetailInfoView, d event) {
        UGCVideoCreator creator;
        UGCVideoCreator creator2;
        Intrinsics.h(event, "event");
        try {
            UGCVideo uGCVideo = uGCVideoDetailInfoView.ugcVideo;
            String uid = (uGCVideo == null || (creator2 = uGCVideo.getCreator()) == null) ? null : creator2.getUid();
            if (uid != null && Intrinsics.c(uid, event.a())) {
                uGCVideoDetailInfoView.d0(event.b());
                UGCVideo uGCVideo2 = uGCVideoDetailInfoView.ugcVideo;
                if (uGCVideo2 != null && (creator = uGCVideo2.getCreator()) != null) {
                    creator.setHasSubscribe(Boolean.valueOf(event.b()));
                }
            }
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, uGCVideoDetailInfoView.TAG, "observeSubscribeEvent error: " + e10.getMessage(), e10, false, 8, null);
        }
        return Unit.f64096a;
    }

    private final void Q() {
        Context context = getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
            return;
        }
        UGCVideoDetailFragment uGCVideoDetailFragment = this.parentFragment;
        if (!(uGCVideoDetailFragment instanceof UGCVideoDetailBaseFragment)) {
            uGCVideoDetailFragment = null;
        }
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        String ugcVideoId = uGCVideo.getUgcVideoId();
        UGCVideoBelongToCollection belongToCollection2 = uGCVideo.getBelongToCollection();
        downloadManagerApiA.f0(fragmentActivity, (7940 & 2) != 0 ? null : collectionId, (7940 & 4) != 0 ? null : ugcVideoId, (7940 & 8) != 0 ? null : belongToCollection2 != null ? belongToCollection2.getCollectionName() : null, (7940 & 16) != 0 ? null : uGCVideo.getCategory(), (7940 & 32) != 0 ? null : this.pageName, (7940 & 64) != 0 ? null : uGCVideo.getOps(), (7940 & 128) != 0 ? null : uGCVideo.getSubjectId(), (7940 & 256) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getTrackId() : null, (7940 & 512) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getPreviousTrackId() : null, (7940 & 1024) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getPreviousPageVideoId() : null, (7940 & 2048) != 0 ? false : false, (7940 & 4096) == 0 ? null : null);
    }

    private final void R() {
        String ugcVideoId;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = uGCVideo.getInteractiveInfo();
        boolean zC = interactiveInfo != null ? Intrinsics.c(interactiveInfo.getHasFavorite(), Boolean.TRUE) : false;
        boolean z10 = !zC;
        m.c(!zC ? com.transsion.ugcvideodetail.R$string.ugc_video_detail_added_to_list : com.transsion.ugcvideodetail.R$string.ugc_video_detail_removed_from_list);
        a0(z10);
        getViewModel().l0(ugcVideoId, z10);
    }

    private final void S() {
        String ugcVideoId;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = uGCVideo.getInteractiveInfo();
        boolean zC = interactiveInfo != null ? Intrinsics.c(interactiveInfo.getHasLike(), Boolean.TRUE) : false;
        boolean z10 = !zC;
        m.c(!zC ? com.transsion.ugcvideodetail.R$string.ugc_video_detail_liked : com.transsion.ugcvideodetail.R$string.ugc_video_detail_like_removed);
        c0(z10);
        getViewModel().m0(ugcVideoId, z10);
    }

    private final void T() {
        UGCVideoDetailFragment uGCVideoDetailFragment;
        FragmentManager childFragmentManager;
        ShareDialogFragment shareDialogFragment;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        if (this.shareDialog == null) {
            qx.a loginApi = getLoginApi();
            UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.UGC_VIDEO;
            UGCVideo uGCVideo = this.ugcVideo;
            String ugcVideoId = uGCVideo != null ? uGCVideo.getUgcVideoId() : null;
            String userId = userInfoI != null ? userInfoI.getUserId() : null;
            String value = ReportType.UFC_VIDEO.getValue();
            UGCVideo uGCVideo2 = this.ugcVideo;
            String title = uGCVideo2 != null ? uGCVideo2.getTitle() : null;
            UGCVideo uGCVideo3 = this.ugcVideo;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, ugcVideoId, userId, value, (3328 & 16) != 0 ? "" : title, (3328 & 32) != 0 ? "" : null, (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "UGCVideoDetail", (3328 & 1024) != 0 ? "" : uGCVideo3 != null ? uGCVideo3.getOps() : null, (3328 & 2048) != 0 ? "" : null);
            this.shareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new a());
            }
        }
        try {
            UGCVideoDetailFragment uGCVideoDetailFragment2 = this.parentFragment;
            if (uGCVideoDetailFragment2 == null || !uGCVideoDetailFragment2.isAdded() || (uGCVideoDetailFragment = this.parentFragment) == null || (childFragmentManager = uGCVideoDetailFragment.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            ShareDialogFragment shareDialogFragment2 = this.shareDialog;
            if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.shareDialog) != null) {
                shareDialogFragment.show(childFragmentManager, "share");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void U() {
        UGCVideoCreator creator;
        String uid;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
            return;
        }
        boolean z10 = !Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
        Y(true);
        getViewModel().n0(uid, z10);
    }

    private final void V() {
        UGCVideoCreator creator;
        String uid;
        Context context = getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed() || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
            return;
        }
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", uid), getContext(), null, 2, null);
    }

    private final void W() {
        UGCVideoDetailFragment uGCVideoDetailFragment = this.parentFragment;
        if (uGCVideoDetailFragment != null) {
            UGCVideoDialogInfoDialogFragment.INSTANCE.a().n0(uGCVideoDetailFragment, R$id.flBottomDialogContainer);
        }
    }

    public static final void X(UGCVideo uGCVideo, UGCVideoDetailInfoView uGCVideoDetailInfoView, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
        UGCVideoHashTag uGCVideoHashTag = filteredHashTags != null ? (UGCVideoHashTag) CollectionsKt.l0(filteredHashTags, i10) : null;
        UGCVideoDetailFragment uGCVideoDetailFragment = uGCVideoDetailInfoView.parentFragment;
        if (!(uGCVideoDetailFragment instanceof UGCVideoDetailBaseFragment)) {
            uGCVideoDetailFragment = null;
        }
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "hash_tag", uGCVideo, (384 & 8) != 0 ? null : uGCVideoHashTag != null ? uGCVideoHashTag.getTag() : null, (384 & 16) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailFragment != null ? uGCVideoDetailFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        List<UGCVideoHashTag> filteredHashTags2 = uGCVideo.getFilteredHashTags();
        if (filteredHashTags2 != null) {
            new ArrayList(filteredHashTags2);
        } else {
            new ArrayList();
        }
        Navigator.x(TheRouter.c("/home/hashtag").I("titleHashTag", uGCVideoHashTag).K("UGCVideoId", uGCVideo.getUgcVideoId()), uGCVideoDetailInfoView.getContext(), null, 2, null);
    }

    private final void Y(boolean show) {
        this.viewBinding.f62753k.setVisibility(show ? 0 : 4);
        BLTextView bLTextView = this.viewBinding.f62762t;
        if (show) {
            bLTextView.setText("");
            bLTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    private final void Z(boolean isFavorited) {
        this.viewBinding.f62755m.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, androidx.core.content.b.getDrawable(getContext(), isFavorited ? R$drawable.ugc_video_detail_ic_res_post_favorite_selected : R$drawable.ugc_video_detail_ic_res_post_favorite), (Drawable) null, (Drawable) null);
    }

    private final void a0(boolean isFavorited) {
        String favoriteNum;
        Integer numV;
        Z(isFavorited);
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = uGCVideo.getInteractiveInfo();
        int iIntValue = (interactiveInfo == null || (favoriteNum = interactiveInfo.getFavoriteNum()) == null || (numV = StringsKt.v(favoriteNum)) == null) ? 0 : numV.intValue();
        int iMax = isFavorited ? iIntValue + 1 : Math.max(0, iIntValue - 1);
        this.viewBinding.f62755m.setText(String.valueOf(iMax));
        UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo2 != null) {
            interactiveInfo2.setFavoriteNum(String.valueOf(iMax));
        }
        UGCVideoInteractiveInfo interactiveInfo3 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            interactiveInfo3.setHasFavorite(Boolean.valueOf(isFavorited));
        }
    }

    private final void b0(boolean isLiked) {
        this.viewBinding.f62763u.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, androidx.core.content.b.getDrawable(getContext(), isLiked ? R$drawable.ugc_video_detail_ic_res_post_like_selected : R$drawable.ugc_video_detail_ic_res_post_like), (Drawable) null, (Drawable) null);
    }

    private final void c0(boolean isLiked) {
        String likeNum;
        Integer numV;
        b0(isLiked);
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null) {
            return;
        }
        UGCVideoInteractiveInfo interactiveInfo = uGCVideo.getInteractiveInfo();
        int iIntValue = (interactiveInfo == null || (likeNum = interactiveInfo.getLikeNum()) == null || (numV = StringsKt.v(likeNum)) == null) ? 0 : numV.intValue();
        int iMax = isLiked ? iIntValue + 1 : Math.max(0, iIntValue - 1);
        this.viewBinding.f62763u.setText(String.valueOf(iMax));
        UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo2 != null) {
            interactiveInfo2.setLikeNum(String.valueOf(iMax));
        }
        UGCVideoInteractiveInfo interactiveInfo3 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            interactiveInfo3.setHasLike(Boolean.valueOf(isLiked));
        }
    }

    private final void d0(boolean isSubscribed) {
        BLTextView bLTextView = this.viewBinding.f62762t;
        if (isSubscribed) {
            bLTextView.setBackground(new DrawableCreator.Builder().setSolidColor(androidx.core.content.b.getColor(bLTextView.getContext(), R$color.white_10)).setCornersRadius(a0.a(4.0f)).build());
            bLTextView.setTextColor(androidx.core.content.b.getColor(bLTextView.getContext(), R$color.white));
            bLTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ugc_video_detail_ic_subscribed_hook, 0, 0, 0);
            bLTextView.setText(bLTextView.getContext().getString(R$string.str_Subscribed));
            return;
        }
        bLTextView.setBackground(new DrawableCreator.Builder().setSolidColor(androidx.core.content.b.getColor(bLTextView.getContext(), R$color.white)).setCornersRadius(a0.a(4.0f)).build());
        bLTextView.setTextColor(androidx.core.content.b.getColor(bLTextView.getContext(), R$color.gray_dark_00));
        bLTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.ugc_video_detail_ic_subscribe_add, 0, 0, 0);
        bLTextView.setText(bLTextView.getContext().getString(R$string.str_Subscribe));
    }

    public static final UGCVideoDetailViewModel e0(UGCVideoDetailInfoView uGCVideoDetailInfoView) {
        Context context = uGCVideoDetailInfoView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (UGCVideoDetailViewModel) new v0((FragmentActivity) context).a(UGCVideoDetailViewModel.class);
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final UGCVideoDetailViewModel getViewModel() {
        return (UGCVideoDetailViewModel) this.viewModel.getValue();
    }

    private final void setupHashTags(final UGCVideo video) {
        List<UGCVideoHashTag> filteredHashTags = video.getFilteredHashTags();
        if (filteredHashTags == null || filteredHashTags.isEmpty()) {
            this.viewBinding.f62754l.setVisibility(8);
            return;
        }
        this.viewBinding.f62754l.setVisibility(0);
        List<UGCVideoHashTag> filteredHashTags2 = video.getFilteredHashTags();
        Intrinsics.e(filteredHashTags2);
        i iVar = new i(filteredHashTags2, false, 2, null);
        this.viewBinding.f62754l.setAdapter(iVar);
        iVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCVideoDetailInfoView.X(video, this, baseQuickAdapter, view, i10);
            }
        });
    }

    private final void y() {
        final UGCVideoDetailFragment uGCVideoDetailFragment = this.parentFragment;
        if (!(uGCVideoDetailFragment instanceof UGCVideoDetailBaseFragment)) {
            uGCVideoDetailFragment = null;
        }
        this.viewBinding.f62758p.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.z(this.f65446a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62759q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.A(this.f65456a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62763u.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.B(this.f65459a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62755m.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.C(this.f65462a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62762t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.D(this.f65465a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62764v.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.E(this.f65422a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62760r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.F(this.f65426a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62761s.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.G(this.f65430a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62751i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.H(this.f65433a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62767y.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.I(this.f65436a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62756n.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.J(this.f65449a, uGCVideoDetailFragment, view);
            }
        });
        this.viewBinding.f62748f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCVideoDetailInfoView.K(this.f65452a, uGCVideoDetailFragment, view);
            }
        });
    }

    public static final void z(UGCVideoDetailInfoView uGCVideoDetailInfoView, UGCVideoDetailBaseFragment uGCVideoDetailBaseFragment, View view) {
        String str = uGCVideoDetailInfoView.pageName;
        if (str != null) {
            h.f54294a.a(str, "more_details", uGCVideoDetailInfoView.ugcVideo, (384 & 8) != 0 ? null : null, (384 & 16) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getTrackId() : null, (384 & 32) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousTrackId() : null, (384 & 64) != 0 ? null : uGCVideoDetailBaseFragment != null ? uGCVideoDetailBaseFragment.getPreviousPageVideoId() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null);
        }
        uGCVideoDetailInfoView.W();
    }

    public final boolean isAutoPlayShowing() {
        Group groupAutoplay = this.viewBinding.f62746d;
        Intrinsics.g(groupAutoplay, "groupAutoplay");
        return uf.c.i(groupAutoplay);
    }

    public final void removeAutoPlay() {
        Group groupAutoplay = this.viewBinding.f62746d;
        Intrinsics.g(groupAutoplay, "groupAutoplay");
        uf.c.g(groupAutoplay);
    }

    public final void setData(UGCVideo video) {
        Intrinsics.h(video, "video");
        this.ugcVideo = video;
        this.viewBinding.f62766x.setText(video.getTitle());
        AppCompatImageView ivPostType = this.viewBinding.f62750h;
        Intrinsics.g(ivPostType, "ivPostType");
        UGCVideoTypeKt.i(ivPostType, video, null, 4, null);
        AppCompatTextView appCompatTextView = this.viewBinding.f62768z;
        UGCVideo uGCVideo = this.ugcVideo;
        String watchNum = uGCVideo != null ? uGCVideo.getWatchNum() : null;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        appCompatTextView.setText(j.c(watchNum, context));
        AppCompatTextView appCompatTextView2 = this.viewBinding.f62765w;
        Long publishTime = video.getPublishTime();
        appCompatTextView2.setText(TimeUtilKt.j(publishTime != null ? publishTime.longValue() : 0L));
        UGCVideoCreator creator = video.getCreator();
        if (creator != null) {
            f.a aVar = f.f67269a;
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            f.b bVarM = aVar.m(context2);
            String avatar = creator.getAvatar();
            if (avatar == null) {
                avatar = "";
            }
            f.b bVarI = bVarM.g(avatar).i(com.transsion.wrapperad.R$color.white_20);
            ShapeableImageView ivUserCover = this.viewBinding.f62751i;
            Intrinsics.g(ivUserCover, "ivUserCover");
            bVarI.d(ivUserCover);
            this.viewBinding.f62767y.setText(creator.getNickname());
        }
        String description = video.getDescription();
        if (description == null || description.length() == 0) {
            this.viewBinding.f62758p.setVisibility(8);
            this.viewBinding.f62759q.setVisibility(8);
        } else {
            this.viewBinding.f62758p.setText(video.getDescription());
            this.viewBinding.f62758p.setVisibility(0);
            this.viewBinding.f62759q.setVisibility(0);
        }
        setupHashTags(video);
        UGCVideoInteractiveInfo interactiveInfo = video.getInteractiveInfo();
        if (interactiveInfo != null) {
            AppCompatTextView appCompatTextView3 = this.viewBinding.f62763u;
            String likeNum = interactiveInfo.getLikeNum();
            if (likeNum == null) {
                likeNum = "0";
            }
            appCompatTextView3.setText(likeNum);
            Boolean hasLike = interactiveInfo.getHasLike();
            Boolean bool = Boolean.TRUE;
            b0(Intrinsics.c(hasLike, bool));
            AppCompatTextView appCompatTextView4 = this.viewBinding.f62755m;
            String favoriteNum = interactiveInfo.getFavoriteNum();
            appCompatTextView4.setText(favoriteNum != null ? favoriteNum : "0");
            Z(Intrinsics.c(interactiveInfo.getHasFavorite(), bool));
        }
        UGCVideoCreator creator2 = video.getCreator();
        if (creator2 != null) {
            d0(Intrinsics.c(creator2.getHasSubscribe(), Boolean.TRUE));
        }
        if (!o.f62115a.i()) {
            Group groupStandardButtons = this.viewBinding.f62747e;
            Intrinsics.g(groupStandardButtons, "groupStandardButtons");
            uf.c.k(groupStandardButtons);
            LinearLayout llKidsModeButtons = this.viewBinding.f62752j;
            Intrinsics.g(llKidsModeButtons, "llKidsModeButtons");
            uf.c.g(llKidsModeButtons);
            return;
        }
        Group groupStandardButtons2 = this.viewBinding.f62747e;
        Intrinsics.g(groupStandardButtons2, "groupStandardButtons");
        uf.c.g(groupStandardButtons2);
        LinearLayout llKidsModeButtons2 = this.viewBinding.f62752j;
        Intrinsics.g(llKidsModeButtons2, "llKidsModeButtons");
        uf.c.k(llKidsModeButtons2);
        RecyclerView recyclerTag = this.viewBinding.f62754l;
        Intrinsics.g(recyclerTag, "recyclerTag");
        uf.c.g(recyclerTag);
        BLTextView tvFollow = this.viewBinding.f62762t;
        Intrinsics.g(tvFollow, "tvFollow");
        uf.c.g(tvFollow);
        ProgressBar pbSubscribeLoading = this.viewBinding.f62753k;
        Intrinsics.g(pbSubscribeLoading, "pbSubscribeLoading");
        uf.c.g(pbSubscribeLoading);
        Group groupAutoplay = this.viewBinding.f62746d;
        Intrinsics.g(groupAutoplay, "groupAutoplay");
        uf.c.g(groupAutoplay);
    }

    public final void setPageName(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
    }

    public final void setParentFragment(UGCVideoDetailFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.parentFragment = fragment;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailInfoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCVideoDetailInfoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "ResPostDetailInfoView";
        this.viewModel = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCVideoDetailInfoView.e0(this.f65443a);
            }
        });
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCVideoDetailInfoView.N();
            }
        });
        View.inflate(context, R$layout.layout_ugc_video_detail_info, this);
        p pVarA = p.a(this);
        Intrinsics.g(pVarA, "bind(...)");
        this.viewBinding = pVarA;
        L();
        y();
    }
}

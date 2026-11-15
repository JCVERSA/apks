package com.transsion.postdetail.ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.blankj.utilcode.util.Utils;
import com.google.android.material.appbar.AppBarLayout;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.ninegridview.helper.FileHelper;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.activity.PostDetailActivity;
import com.transsion.postdetail.ui.view.PostDetailItemView;
import com.transsion.postdetail.util.PostSaveHelper;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.postdetailapi.CommentTopicType;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 i2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001jB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0005J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0016H\u0016¢\u0006\u0004\b%\u0010\u0018J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020&H\u0016¢\u0006\u0004\b)\u0010(J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\u0005J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b2\u00101J1\u00109\u001a\u00020\u00062\u0006\u00104\u001a\u0002032\u0010\u00106\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0016052\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0005J\u0017\u0010A\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\bA\u0010\u0011J\u0017\u0010B\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\bB\u0010\u0011J\u0017\u0010C\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\bC\u0010\u0011R\u0018\u0010D\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER$\u0010F\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010E\u001a\u0004\bG\u0010\u0018\"\u0004\bH\u0010IR\u0016\u0010J\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR$\u0010L\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010E\u001a\u0004\bM\u0010\u0018\"\u0004\bN\u0010IR\u0018\u0010O\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010ER$\u0010P\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010\u0011R\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u001d\u0010b\u001a\u0004\u0018\u00010^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010Z\u001a\u0004\b`\u0010aR\u0018\u0010d\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010h¨\u0006k"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lwn/n;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initView", "", "commentCount", "updateCommentCount", "(J)V", "loadData", "updatePostDetail", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "postItem", "onDownloadClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "requestPermission", "showSettingDialog", WebConstants.FIELD_ITEM, "setPTParams", "", "getPageName", "()Ljava/lang/String;", "observeLike", "updateOperationViewState", "clickLike", "showCommentsDialog", "doShare", "clickDownload", "localLogPause", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lwn/n;", "getPageStateLayoutTitle", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "initViewData", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "initViewModel", "initListener", "retryLoadData", "onResume", "onPause", "onDestroy", "openSubjectDetail", "openRoomDetail", "openUserCenter", "tranOps", "Ljava/lang/String;", "postId", "getPostId", "setPostId", "(Ljava/lang/String;)V", "fromComment", "Z", "commentId", "getCommentId", "setCommentId", "pageFrom", "mPostDetailBean", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "getMPostDetailBean", "()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "setMPostDetailBean", "Lcom/transsion/postdetail/ui/fragment/CommentFragment;", "commentFragment", "Lcom/transsion/postdetail/ui/fragment/CommentFragment;", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "viewModel", "Lqx/a;", "mLoginApi$delegate", "getMLoginApi", "()Lqx/a;", "mLoginApi", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "onCommentCountChangedListener", "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;", "Lcom/transsion/ninegridview/a;", "mGifPlayerManager", "Lcom/transsion/ninegridview/a;", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostDetailFragment extends PageStatusFragment<wn.n> implements TRDialogListener {

    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "post_detail";
    private CommentFragment commentFragment;
    private String commentId;
    private boolean fromComment;
    private com.transsion.ninegridview.a mGifPlayerManager;

    private final Lazy mLoginApi;
    private PostSubjectItem mPostDetailBean;
    private CommentFragment.b onCommentCountChangedListener;
    private String pageFrom;
    private String postId;
    private String tranOps;

    private final Lazy viewModel;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PostDetailFragment a(String str, boolean z10, String str2, PostSubjectItem postSubjectItem, String str3, String str4) {
            PostDetailFragment postDetailFragment = new PostDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("comment_id", str3);
            bundle.putBoolean("from_comment", z10);
            bundle.putString("rec_ops", str2);
            bundle.putString(WebConstants.PAGE_FROM, str4);
            bundle.putSerializable("item_object", postSubjectItem);
            postDetailFragment.setArguments(bundle);
            return postDetailFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements com.transsion.share.share.a {
        b() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
            PostDetailFragment.this.getViewModel().r(id2);
        }

        @Override
        public void b(String str) {
            new Intent().putExtra("id", str);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB != null) {
                activityB.finish();
            }
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

    public static final class c implements CommentFragment.b {
        c() {
        }

        @Override
        public void a(long j10) {
            PostDetailFragment.this.updateCommentCount(j10);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47514a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47514a = function;
        }

        @Override
        public final Function a() {
            return this.f47514a;
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
            this.f47514a.invoke(obj);
        }
    }

    public PostDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mLoginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return PostDetailFragment.mLoginApi_delegate$lambda$0();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    private final void clickDownload() {
        String url;
        String str;
        Subject subject;
        ResourceDetectors resourceDetector;
        String resourceLink;
        Subject subject2;
        Subject subject3;
        Integer size;
        String url2;
        Subject subject4;
        ResourceDetectors resourceDetector2;
        PostSubjectItem postSubjectItem;
        Media media;
        Cover cover;
        Media media2;
        List<Audio> audio;
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        Audio audio2 = (postSubjectItem2 == null || (media2 = postSubjectItem2.getMedia()) == null || (audio = media2.getAudio()) == null) ? null : audio.get(0);
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        String title = postSubjectItem3 != null ? postSubjectItem3.getTitle() : null;
        if (TextUtils.isEmpty(title)) {
            PostSubjectItem postSubjectItem4 = this.mPostDetailBean;
            title = postSubjectItem4 != null ? postSubjectItem4.getContent() : null;
        }
        String str2 = title;
        PostSubjectItem postSubjectItem5 = this.mPostDetailBean;
        String coverUrl$default = postSubjectItem5 != null ? PostSubjectItem.getCoverUrl$default(postSubjectItem5, false, 1, null) : null;
        if (TextUtils.isEmpty(coverUrl$default) && ((postSubjectItem = this.mPostDetailBean) == null || (media = postSubjectItem.getMedia()) == null || (cover = media.getCover()) == null || (coverUrl$default = cover.getUrl()) == null)) {
            coverUrl$default = "";
        }
        String str3 = coverUrl$default;
        PostSubjectItem postSubjectItem6 = this.mPostDetailBean;
        if ((postSubjectItem6 != null ? postSubjectItem6.getSubject() : null) != null) {
            PostSubjectItem postSubjectItem7 = this.mPostDetailBean;
            if (postSubjectItem7 == null || (subject4 = postSubjectItem7.getSubject()) == null || (resourceDetector2 = subject4.getResourceDetector()) == null) {
                str = null;
            } else {
                url = resourceDetector2.getResourceId();
                str = url;
            }
        } else if (audio2 != null) {
            url = audio2.getUrl();
            str = url;
        } else {
            str = null;
        }
        DownloadBean downloadBean = new DownloadBean((audio2 == null || (url2 = audio2.getUrl()) == null) ? "" : url2, str, str2, str3, (audio2 == null || (size = audio2.getSize()) == null) ? null : Long.valueOf(size.intValue()), "", null, null, null, null, 0L, 0, 0, 1, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -8256, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        PostSubjectItem postSubjectItem8 = this.mPostDetailBean;
        downloadBean.setPostId(postSubjectItem8 != null ? postSubjectItem8.getPostId() : null);
        PostSubjectItem postSubjectItem9 = this.mPostDetailBean;
        downloadBean.setSubjectId((postSubjectItem9 == null || (subject3 = postSubjectItem9.getSubject()) == null) ? null : subject3.getSubjectId());
        PostSubjectItem postSubjectItem10 = this.mPostDetailBean;
        downloadBean.setSubjectName((postSubjectItem10 == null || (subject2 = postSubjectItem10.getSubject()) == null) ? null : subject2.getTitle());
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        PostSubjectItem postSubjectItem11 = this.mPostDetailBean;
        String ops = postSubjectItem11 != null ? postSubjectItem11.getOps() : null;
        PostSubjectItem postSubjectItem12 = this.mPostDetailBean;
        String str4 = (postSubjectItem12 == null || (subject = postSubjectItem12.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink;
        PostSubjectItem postSubjectItem13 = this.mPostDetailBean;
        downloadManagerApiA.O(fragmentActivity, downloadBean, "post_audio_detail", ops, str4, (64 & 32) != 0 ? null : postSubjectItem13 != null ? postSubjectItem13.getSubject() : null, (64 & 64) != 0 ? null : null);
        com.transsion.postdetail.helper.a.f46861a.i(this.mPostDetailBean, getPageName(), this.pageFrom);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.transsion.postdetail.viewmodel.PostDetailViewModel] */
    private final void clickLike() {
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_tips);
            return;
        }
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        ?? C = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : 0;
        ?? viewModel = getViewModel();
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        viewModel.G(postSubjectItem2 != null ? postSubjectItem2.getPostId() : null, C);
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f46861a;
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        aVar.o(postSubjectItem3, postSubjectItem3 != null ? Intrinsics.c(postSubjectItem3.getHasLike(), Boolean.TRUE) : false, getPageName(), this.pageFrom);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    private final void doShare() {
        boolean z10;
        User user;
        User user2;
        qx.a mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        if ((userInfoI != null ? userInfoI.getUserId() : null) != null) {
            String userId = userInfoI.getUserId();
            PostSubjectItem postSubjectItem = this.mPostDetailBean;
            if (Intrinsics.c(userId, (postSubjectItem == null || (user2 = postSubjectItem.getUser()) == null) ? null : user2.getUserId())) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
        PostType postType = PostType.POST_TYPE;
        PostSubjectItem postSubjectItem2 = this.mPostDetailBean;
        String postId = postSubjectItem2 != null ? postSubjectItem2.getPostId() : null;
        PostSubjectItem postSubjectItem3 = this.mPostDetailBean;
        String userId2 = (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getUserId();
        String value = ReportType.POST.getValue();
        PostSubjectItem postSubjectItem4 = this.mPostDetailBean;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId2, value, (3328 & 16) != 0 ? "" : postSubjectItem4 != null ? postSubjectItem4.getTitle() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : z11, (3328 & 256) != 0 ? false : false, "postdetail", (3328 & 1024) != 0 ? "" : this.tranOps, (3328 & 2048) != 0 ? "" : null);
        shareDialogFragmentA.G0(new b());
        shareDialogFragmentA.show(getChildFragmentManager(), "share");
        com.transsion.postdetail.helper.a.f46861a.z(this.mPostDetailBean, getPageName(), this.pageFrom);
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final String getPageName() {
        return PAGE_NAME;
    }

    public final PostDetailViewModel getViewModel() {
        return (PostDetailViewModel) this.viewModel.getValue();
    }

    private final void initView() {
        AppCompatTextView appCompatTextView;
        Stat stat;
        Long commentCount;
        TitleLayout titleLayout;
        this.onCommentCountChangedListener = new c();
        wn.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f74492f) != null) {
            titleLayout.setTitleText("");
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        CommentFragment.Companion companion = CommentFragment.INSTANCE;
        String str = this.postId;
        String value = CommentTopicType.POST.getValue();
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        long jLongValue = (postSubjectItem == null || (stat = postSubjectItem.getStat()) == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue();
        String str2 = this.commentId;
        CommentFragment commentFragmentA = companion.a(str, value, jLongValue, (8072 & 8) != 0, (8072 & 16) != 0 ? false : true, (8072 & 32) != 0 ? "" : str2 == null ? "" : str2, this.pageFrom, (8072 & 128) != 0 ? null : null, (8072 & 256) != 0 ? null : null, (8072 & 512) != 0 ? null : null, (8072 & 1024) != 0 ? null : null, (8072 & 2048) != 0 ? null : null, (8072 & 4096) != 0 ? null : null);
        wVarP.s(R$id.fl_comment_container, commentFragmentA);
        this.commentFragment = commentFragmentA;
        wVarP.i();
        CommentFragment commentFragment = this.commentFragment;
        if (commentFragment != null) {
            commentFragment.b1(this.onCommentCountChangedListener);
        }
        wn.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f74493g) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                PostDetailFragment.initView$lambda$5(this.f47694a, view);
            }
        });
    }

    public static final void initView$lambda$5(PostDetailFragment postDetailFragment, View view) {
        CommentFragment commentFragment = postDetailFragment.commentFragment;
        if (commentFragment != null) {
            commentFragment.d1(null);
        }
    }

    public static final Unit initViewModel$lambda$21$lambda$18(PostDetailFragment postDetailFragment, PostSubjectItem postSubjectItem) {
        if (postSubjectItem == null) {
            PageStatusFragment.showEmptyView$default(postDetailFragment, false, 1, null);
            return Unit.f64096a;
        }
        postDetailFragment.showContentView();
        postDetailFragment.mPostDetailBean = postSubjectItem;
        postSubjectItem.setTran_ops(postDetailFragment.tranOps);
        postDetailFragment.updatePostDetail();
        return Unit.f64096a;
    }

    public static final Unit initViewModel$lambda$21$lambda$20(PostDetailFragment postDetailFragment, String str) {
        if (TextUtils.equals("0", str)) {
            String str2 = postDetailFragment.postId;
            if (str2 != null) {
                gx.b.f61207a.a().e(str2);
            }
            FragmentActivity activity = postDetailFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            fh.b.a aVar = fh.b.f60176a;
            FragmentActivity activity2 = postDetailFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(com.transsion.postdetail.R$string.delete_post_failed) : null);
        }
        return Unit.f64096a;
    }

    private final void loadData() {
        PostDetailItemView postDetailItemView;
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        if (postSubjectItem != null) {
            if (postSubjectItem != null) {
                postSubjectItem.setTran_ops(this.tranOps);
            }
            updatePostDetail();
            FragmentActivity activity = getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.postdetail.ui.activity.PostDetailActivity");
            ((PostDetailActivity) activity).u0();
        } else {
            PostDetailViewModel viewModel = getViewModel();
            String str = this.postId;
            if (str == null) {
                str = "";
            }
            viewModel.x(str);
        }
        wn.n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (postDetailItemView = mViewBinding.f74491e) == null) {
            return;
        }
        postDetailItemView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                PostDetailFragment.loadData$lambda$8(this.f47770a);
            }
        }, 500L);
    }

    public static final void loadData$lambda$8(PostDetailFragment postDetailFragment) {
        wn.n mViewBinding;
        AppBarLayout appBarLayout;
        String str = postDetailFragment.commentId;
        if (str == null || str.length() == 0 || (mViewBinding = postDetailFragment.getMViewBinding()) == null || (appBarLayout = mViewBinding.f74488b) == null) {
            return;
        }
        appBarLayout.setExpanded(false, true);
    }

    private final void localLogPause() {
        HashMap mapG;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        qi.b logViewConfig = getLogViewConfig();
        long jH = jElapsedRealtime - (logViewConfig != null ? logViewConfig.h() : 0L);
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
    }

    public static final qx.a mLoginApi_delegate$lambda$0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    @JvmStatic
    public static final PostDetailFragment newInstance(String str, boolean z10, String str2, PostSubjectItem postSubjectItem, String str3, String str4) {
        return INSTANCE.a(str, z10, str2, postSubjectItem, str3, str4);
    }

    private final void observeLike() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailFragment.observeLike$lambda$23(this.f47641a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit observeLike$lambda$23(PostDetailFragment postDetailFragment, LikeEvent value) {
        Stat stat;
        Stat stat2;
        Long likeCount;
        Stat stat3;
        Stat stat4;
        Long likeCount2;
        Intrinsics.h(value, "value");
        try {
            Result.Companion companion = Result.INSTANCE;
            PostSubjectItem postSubjectItem = postDetailFragment.mPostDetailBean;
            Long lValueOf = null;
            if (!TextUtils.equals(postSubjectItem != null ? postSubjectItem.getPostId() : null, value.getSubjectId())) {
                return Unit.f64096a;
            }
            PostSubjectItem postSubjectItem2 = postDetailFragment.mPostDetailBean;
            if (postSubjectItem2 != null) {
                postSubjectItem2.setHasLike(Boolean.valueOf(value.getLike()));
            }
            if (value.getLike()) {
                PostSubjectItem postSubjectItem3 = postDetailFragment.mPostDetailBean;
                if (postSubjectItem3 != null && (stat3 = postSubjectItem3.getStat()) != null) {
                    PostSubjectItem postSubjectItem4 = postDetailFragment.mPostDetailBean;
                    if (postSubjectItem4 != null && (stat4 = postSubjectItem4.getStat()) != null && (likeCount2 = stat4.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount2.longValue() + 1);
                    }
                    stat3.setLikeCount(lValueOf);
                }
            } else {
                PostSubjectItem postSubjectItem5 = postDetailFragment.mPostDetailBean;
                if (postSubjectItem5 != null && (stat = postSubjectItem5.getStat()) != null) {
                    PostSubjectItem postSubjectItem6 = postDetailFragment.mPostDetailBean;
                    if (postSubjectItem6 != null && (stat2 = postSubjectItem6.getStat()) != null && (likeCount = stat2.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount.longValue() - 1);
                    }
                    stat.setLikeCount(lValueOf);
                }
            }
            postDetailFragment.updateOperationViewState();
            Result.m453constructorimpl(Unit.f64096a);
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void onDownloadClick(PostSubjectItem postItem) {
        com.transsion.postdetail.helper.a.f46861a.i(postItem, getPageName(), this.pageFrom);
        if (Build.VERSION.SDK_INT >= 29) {
            PostSaveHelper.f48054a.b(postItem);
            return;
        }
        Context context = getContext();
        if (context == null) {
            context = Utils.a();
        }
        if (androidx.core.content.b.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            Context context2 = getContext();
            if (context2 == null) {
                context2 = Utils.a();
            }
            if (androidx.core.content.b.checkSelfPermission(context2, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                PostSaveHelper.f48054a.b(postItem);
                return;
            }
        }
        requestPermission();
    }

    private final void requestPermission() {
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, FileHelper.f45804a.l());
    }

    private final void setPTParams(PostSubjectItem item) {
        HashMap mapG;
        HashMap mapG2;
        qi.b logViewConfig;
        HashMap mapG3;
        String mediaType;
        qi.b logViewConfig2;
        HashMap mapG4;
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            logViewConfig4.n(item.getRec_ops());
        }
        String str = "";
        if (!TextUtils.isEmpty(item.getPostId()) && (logViewConfig2 = getLogViewConfig()) != null && (mapG4 = logViewConfig2.g()) != null) {
            String postId = item.getPostId();
            if (postId == null) {
                postId = "";
            }
            mapG4.put("post_id", postId);
        }
        Media media = item.getMedia();
        if (!TextUtils.isEmpty(media != null ? media.getMediaType() : null) && (logViewConfig = getLogViewConfig()) != null && (mapG3 = logViewConfig.g()) != null) {
            Media media2 = item.getMedia();
            if (media2 != null && (mediaType = media2.getMediaType()) != null) {
                str = mediaType;
            }
            mapG3.put("post_media_type", str);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG2 = logViewConfig5.g()) != null) {
            Subject subject = item.getSubject();
            mapG2.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        qi.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 == null || (mapG = logViewConfig6.g()) == null) {
            return;
        }
        Subject subject2 = item.getSubject();
        mapG.put("has_resource", String.valueOf(subject2 != null ? subject2.getHasResource() : null));
    }

    private final void showCommentsDialog() {
        CommentFragment commentFragment = this.commentFragment;
        if (commentFragment != null) {
            commentFragment.d1(null);
        }
        com.transsion.postdetail.helper.a.f46861a.e(this.mPostDetailBean, getPageName(), this.pageFrom);
    }

    private final void showSettingDialog() {
        String string = Utils.a().getString(com.transsion.ninegridview.R$string.permission_deny_down_tip, "\"" + Utils.a().getString(com.transsion.baseui.R$string.base_app_name) + "\"", "\"" + Utils.a().getString(com.transsion.ninegridview.R$string.system_settings) + "\"");
        Intrinsics.g(string, "getString(...)");
        TRDialog.a aVarG = new TRDialog.a().g(string);
        String string2 = Utils.a().getString(com.transsion.ninegridview.R$string.cancel);
        Intrinsics.g(string2, "getString(...)");
        TRDialog.a aVarE = aVarG.e(string2);
        String string3 = Utils.a().getString(com.transsion.ninegridview.R$string.system_settings);
        Intrinsics.g(string3, "getString(...)");
        aVarE.j(string3).f(this).a().show(getChildFragmentManager(), "settings");
    }

    public final void updateCommentCount(long commentCount) {
        PostDetailItemView postDetailItemView;
        AppCompatTextView appCompatTextView;
        wn.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f74494h) != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string = getString(com.transsion.postdetail.R$string.comments);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{com.transsion.baseui.util.j.a(commentCount)}, 1));
            Intrinsics.g(str, "format(...)");
            appCompatTextView.setText(str);
        }
        wn.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (postDetailItemView = mViewBinding2.f74491e) == null) {
            return;
        }
        postDetailItemView.setCommentCount(commentCount);
    }

    private final void updateOperationViewState() {
        wn.n mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f74491e.setBottomBarClick(this.mPostDetailBean, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$24(this.f47701a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$25(this.f47723a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$26(this.f47731a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$27(this.f47738a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$28(this.f47744a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$29(this.f47749a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailFragment.updateOperationViewState$lambda$31$lambda$30(this.f47754a);
                }
            });
        }
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$24(PostDetailFragment postDetailFragment) {
        postDetailFragment.clickLike();
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$25(PostDetailFragment postDetailFragment) {
        postDetailFragment.showCommentsDialog();
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$26(PostDetailFragment postDetailFragment) {
        postDetailFragment.doShare();
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$27(PostDetailFragment postDetailFragment) {
        postDetailFragment.openSubjectDetail(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$28(PostDetailFragment postDetailFragment) {
        postDetailFragment.openRoomDetail(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$29(PostDetailFragment postDetailFragment) {
        postDetailFragment.onDownloadClick(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updateOperationViewState$lambda$31$lambda$30(PostDetailFragment postDetailFragment) {
        postDetailFragment.openUserCenter(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    private final void updatePostDetail() {
        PostDetailItemView postDetailItemView;
        Long commentCount;
        PostSubjectItem postSubjectItem = this.mPostDetailBean;
        if (postSubjectItem != null) {
            wn.n mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                CommentFragment commentFragment = this.commentFragment;
                if (commentFragment != null) {
                    Stat stat = postSubjectItem.getStat();
                    commentFragment.updateCommentCount((stat == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue());
                }
                mViewBinding.f74491e.setIsDetail(true);
                mViewBinding.f74491e.setPage(PAGE_NAME, this.pageFrom);
                mViewBinding.f74491e.setData(postSubjectItem);
                wn.n mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null && (postDetailItemView = mViewBinding2.f74491e) != null) {
                    postDetailItemView.setBottomBarClick(this.mPostDetailBean, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$9(this.f47687a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$10(this.f47777a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$11(this.f47783a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$12(this.f47574a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$13(this.f47582a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$14(this.f47591a);
                        }
                    }, new Function0() {
                        @Override
                        public final Object invoke() {
                            return PostDetailFragment.updatePostDetail$lambda$17$lambda$16$lambda$15(this.f47601a);
                        }
                    });
                }
            }
            setPTParams(postSubjectItem);
        }
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$10(PostDetailFragment postDetailFragment) {
        postDetailFragment.showCommentsDialog();
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$11(PostDetailFragment postDetailFragment) {
        postDetailFragment.doShare();
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$12(PostDetailFragment postDetailFragment) {
        postDetailFragment.openSubjectDetail(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$13(PostDetailFragment postDetailFragment) {
        postDetailFragment.openRoomDetail(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$14(PostDetailFragment postDetailFragment) {
        postDetailFragment.onDownloadClick(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$15(PostDetailFragment postDetailFragment) {
        postDetailFragment.openUserCenter(postDetailFragment.mPostDetailBean);
        return Unit.f64096a;
    }

    public static final Unit updatePostDetail$lambda$17$lambda$16$lambda$9(PostDetailFragment postDetailFragment) {
        postDetailFragment.clickLike();
        return Unit.f64096a;
    }

    public final String getCommentId() {
        return this.commentId;
    }

    public final PostSubjectItem getMPostDetailBean() {
        return this.mPostDetailBean;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final String getPostId() {
        return this.postId;
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        HashMap mapG;
        initView();
        loadData();
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
        PostDetailViewModel viewModel = getViewModel();
        viewModel.A().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailFragment.initViewModel$lambda$21$lambda$18(this.f47610a, (PostSubjectItem) obj);
            }
        }));
        viewModel.t().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailFragment.initViewModel$lambda$21$lambda$20(this.f47616a, (String) obj);
            }
        }));
        observeLike();
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(PAGE_NAME, false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onPause() {
        localLogPause();
        super.onPause();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == FileHelper.f45804a.l()) {
            if (grantResults.length > 1 && grantResults[0] == 0 && grantResults[1] == 0) {
                PostSaveHelper.f48054a.b(this.mPostDetailBean);
                return;
            }
            FragmentActivity activity = getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
            if (ActivityCompat.j(activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            showSettingDialog();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.ninegridview.a aVar = this.mGifPlayerManager;
        if (aVar != null) {
            aVar.l();
        }
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        com.transsion.ninegridview.helper.b bVar = com.transsion.ninegridview.helper.b.f45813a;
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type android.app.Activity");
        bVar.a(activity, 101);
    }

    public final void openRoomDetail(PostSubjectItem item) {
        Group group;
        String groupId;
        String strC = sg.b.f72060b.a().c();
        ep.f fVar = (ep.f) TheRouter.d(ep.f.class, new Object[0]);
        if (TextUtils.equals(strC, fVar != null ? fVar.d() : null)) {
            requireActivity().finish();
        } else if (item != null && (group = item.getGroup()) != null && (groupId = group.getGroupId()) != null) {
            Navigator.x(TheRouter.c("/room/detail").K("id", groupId), requireContext(), null, 2, null);
        }
        com.transsion.postdetail.helper.a.f46861a.l(this.mPostDetailBean, getPageName(), this.pageFrom);
    }

    public final void openSubjectDetail(PostSubjectItem item) {
        Subject subject;
        String strC = sg.b.f72060b.a().c();
        com.transsion.moviedetailapi.g gVar = (com.transsion.moviedetailapi.g) TheRouter.d(com.transsion.moviedetailapi.g.class, new Object[0]);
        if (TextUtils.equals(strC, gVar != null ? gVar.d() : null) || TextUtils.equals(strC, "StreamDetailActivity") || TextUtils.equals(strC, "MusicDetailActivity")) {
            requireActivity().finish();
        } else if (item != null && (subject = item.getSubject()) != null) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType = subject.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.MOVIE.getValue()).K("id", subject.getSubjectId()).K("ops", subject.getOps()), requireContext(), null, 2, null);
        }
        com.transsion.postdetail.helper.a.f46861a.B(this.mPostDetailBean, getPageName(), this.pageFrom);
    }

    public final void openUserCenter(PostSubjectItem item) {
        User user;
        if (item == null || (user = item.getUser()) == null) {
            return;
        }
        UserInfo userInfo = new UserInfo();
        userInfo.setUserId(user.getUserId());
        userInfo.setAvatar(user.getAvatar());
        userInfo.setUsername(user.getUsername());
        userInfo.setNickname(user.getNickname());
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), requireContext(), null, 2, null);
    }

    @Override
    public void receiveArguments() {
        Serializable serializable;
        super.receiveArguments();
        Bundle arguments = getArguments();
        PostSubjectItem postSubjectItem = null;
        this.postId = arguments != null ? arguments.getString("id") : null;
        Bundle arguments2 = getArguments();
        this.fromComment = arguments2 != null ? arguments2.getBoolean("from_comment") : false;
        Bundle arguments3 = getArguments();
        this.tranOps = arguments3 != null ? arguments3.getString("rec_ops") : null;
        Bundle arguments4 = getArguments();
        this.pageFrom = arguments4 != null ? arguments4.getString(WebConstants.PAGE_FROM) : null;
        Bundle arguments5 = getArguments();
        this.commentId = arguments5 != null ? arguments5.getString("comment_id") : null;
        Bundle arguments6 = getArguments();
        if (arguments6 != null && (serializable = arguments6.getSerializable("item_object")) != null) {
            postSubjectItem = (PostSubjectItem) serializable;
        }
        this.mPostDetailBean = postSubjectItem;
    }

    @Override
    public void retryLoadData() {
    }

    public final void setCommentId(String str) {
        this.commentId = str;
    }

    public final void setMPostDetailBean(PostSubjectItem postSubjectItem) {
        this.mPostDetailBean = postSubjectItem;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    @Override
    public wn.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.n nVarC = wn.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }
}

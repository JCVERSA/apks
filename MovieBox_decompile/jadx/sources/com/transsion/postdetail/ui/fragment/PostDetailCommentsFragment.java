package com.transsion.postdetail.ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Audio;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$mipmap;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.CommentLikeBean;
import com.transsion.postdetail.bean.CommentListBean;
import com.transsion.postdetail.ui.dialog.ImmVideoCommentDialog;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.postdetail.viewmodel.PostDetailCommentsFragmentViewModel;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u0000 [2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u00052\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0012H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0012H\u0016¢\u0006\u0004\b#\u0010\"J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\r\u0010)\u001a\u00020\u0005¢\u0006\u0004\b)\u0010\u0004J\u0017\u0010+\u001a\u00020\u00052\b\b\u0002\u0010*\u001a\u00020\u0012¢\u0006\u0004\b+\u0010\u0015J\r\u0010,\u001a\u00020\u0005¢\u0006\u0004\b,\u0010\u0004J\r\u0010-\u001a\u00020\u0005¢\u0006\u0004\b-\u0010\u0004R\u0018\u00100\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u001b\u0010C\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u001b\u0010H\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010@\u001a\u0004\bF\u0010GR\u001d\u0010M\u001a\u0004\u0018\u00010I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010@\u001a\u0004\bK\u0010LR\"\u0010Q\u001a\u000e\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\u00050N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010X\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0018\u0010Z\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u00106¨\u0006\\"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/PostDetailCommentsFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lwn/l;", "<init>", "()V", "", "observeLike", "V0", "updateOperationViewState", "", "code", "W0", "(Ljava/lang/String;)V", "", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "commentList", "b1", "(Ljava/util/List;)V", "", "likeState", "U0", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroyView", "Landroid/view/LayoutInflater;", "inflater", "G0", "(Landroid/view/LayoutInflater;)Lwn/l;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", "clickLike", "isOpenEdittext", "R0", "doShare", "clickDownload", "a", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "commentBean", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "mPostSubjectItem", "c", "Ljava/lang/String;", "tranOps", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "page", "e", "mPerPage", "Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;", "f", "Lkotlin/Lazy;", "E0", "()Lcom/transsion/postdetail/viewmodel/PostDetailCommentsFragmentViewModel;", "mViewModel", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "g", "F0", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "postDetailViewModel", "Lqx/a;", "h", "getMLoginApi", "()Lqx/a;", "mLoginApi", "Lkotlin/Function1;", "i", "Lkotlin/jvm/functions/Function1;", "operationViewVisibilityCallback", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "j", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", CampaignEx.JSON_KEY_AD_K, "Z", "isOpenMeasureViewVisibility", "l", "pageName", "m", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class PostDetailCommentsFragment extends PageStatusFragment<wn.l> {

    private CommentBean commentBean;

    private PostSubjectItem mPostSubjectItem;

    private String tranOps;

    private int page = 1;

    private int mPerPage = 1;

    private final Lazy mViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostDetailCommentsFragment.O0();
        }
    });

    private final Lazy postDetailViewModel;

    private final Lazy mLoginApi;

    private Function1 operationViewVisibilityCallback;

    private CommentViewModel mCommentViewModel;

    private boolean isOpenMeasureViewVisibility;

    private String pageName;

    public static final class b implements com.transsion.share.share.a {
        b() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
            PostDetailCommentsFragment.this.F0().r(id2);
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

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47497a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47497a = function;
        }

        @Override
        public final Function a() {
            return this.f47497a;
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
            this.f47497a.invoke(obj);
        }
    }

    public static final class d implements CommentFragment.b {
        d() {
        }

        @Override
        public void a(long j10) {
            Stat stat;
            Stat stat2;
            Long commentCount;
            PostSubjectItem postSubjectItem = PostDetailCommentsFragment.this.mPostSubjectItem;
            if (postSubjectItem == null || (stat2 = postSubjectItem.getStat()) == null || (commentCount = stat2.getCommentCount()) == null || commentCount.longValue() != j10) {
                PostSubjectItem postSubjectItem2 = PostDetailCommentsFragment.this.mPostSubjectItem;
                if (postSubjectItem2 != null && (stat = postSubjectItem2.getStat()) != null) {
                    stat.setCommentCount(Long.valueOf(j10));
                }
                if (j10 != 0) {
                    PostDetailCommentsFragment.this.loadDefaultData();
                } else {
                    PostDetailCommentsFragment.this.V0();
                    PostDetailCommentsFragment.this.updateOperationViewState();
                }
            }
        }
    }

    public PostDetailCommentsFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.postDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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
                return PostDetailCommentsFragment.mLoginApi_delegate$lambda$1();
            }
        });
        this.operationViewVisibilityCallback = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailCommentsFragment.Q0(((Integer) obj).intValue());
            }
        };
        this.isOpenMeasureViewVisibility = true;
    }

    private final PostDetailCommentsFragmentViewModel E0() {
        return (PostDetailCommentsFragmentViewModel) this.mViewModel.getValue();
    }

    public final PostDetailViewModel F0() {
        return (PostDetailViewModel) this.postDetailViewModel.getValue();
    }

    public static final void H0(PostDetailCommentsFragment postDetailCommentsFragment, View view) {
        postDetailCommentsFragment.R0(true);
    }

    public static final Unit I0(PostDetailCommentsFragment postDetailCommentsFragment) {
        S0(postDetailCommentsFragment, false, 1, null);
        return Unit.f64096a;
    }

    public static final void J0(PostDetailCommentsFragment postDetailCommentsFragment, View view) {
        Navigator navigatorC = TheRouter.c("/profile/user_profile");
        CommentBean commentBean = postDetailCommentsFragment.commentBean;
        Navigator.x(navigatorC.K("userId", commentBean != null ? commentBean.getUid() : null), postDetailCommentsFragment.requireContext(), null, 2, null);
    }

    public static final void K0(View view) {
    }

    public static final Unit L0(CommentLikeBean commentLikeBean) {
        return Unit.f64096a;
    }

    public static final Unit M0(PostDetailCommentsFragment postDetailCommentsFragment, CommentListBean commentListBean) {
        AppCompatTextView appCompatTextView;
        Group group;
        List<CommentBean> commentList;
        if ((commentListBean == null || (commentList = commentListBean.getCommentList()) == null) ? true : commentList.isEmpty()) {
            postDetailCommentsFragment.V0();
            postDetailCommentsFragment.updateOperationViewState();
        } else {
            wn.l mViewBinding = postDetailCommentsFragment.getMViewBinding();
            if (mViewBinding != null && (group = mViewBinding.f74439c) != null) {
                group.setVisibility(0);
            }
            wn.l mViewBinding2 = postDetailCommentsFragment.getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView = mViewBinding2.f74449m) != null) {
                appCompatTextView.setVisibility(8);
            }
            postDetailCommentsFragment.b1(commentListBean != null ? commentListBean.getCommentList() : null);
        }
        return Unit.f64096a;
    }

    public static final Unit N0(PostDetailCommentsFragment postDetailCommentsFragment, String str) {
        Intrinsics.e(str);
        postDetailCommentsFragment.W0(str);
        return Unit.f64096a;
    }

    public static final PostDetailCommentsFragmentViewModel O0() {
        return new PostDetailCommentsFragmentViewModel();
    }

    public static final Unit P0(PostDetailCommentsFragment postDetailCommentsFragment, LikeEvent value) {
        Stat stat;
        Stat stat2;
        Long likeCount;
        Stat stat3;
        Stat stat4;
        Long likeCount2;
        Intrinsics.h(value, "value");
        try {
            Result.Companion companion = Result.INSTANCE;
            PostSubjectItem postSubjectItem = postDetailCommentsFragment.mPostSubjectItem;
            Long lValueOf = null;
            if (!TextUtils.equals(postSubjectItem != null ? postSubjectItem.getPostId() : null, value.getSubjectId())) {
                return Unit.f64096a;
            }
            PostSubjectItem postSubjectItem2 = postDetailCommentsFragment.mPostSubjectItem;
            if (postSubjectItem2 != null) {
                postSubjectItem2.setHasLike(Boolean.valueOf(value.getLike()));
            }
            if (value.getLike()) {
                PostSubjectItem postSubjectItem3 = postDetailCommentsFragment.mPostSubjectItem;
                if (postSubjectItem3 != null && (stat3 = postSubjectItem3.getStat()) != null) {
                    PostSubjectItem postSubjectItem4 = postDetailCommentsFragment.mPostSubjectItem;
                    if (postSubjectItem4 != null && (stat4 = postSubjectItem4.getStat()) != null && (likeCount2 = stat4.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount2.longValue() + 1);
                    }
                    stat3.setLikeCount(lValueOf);
                }
            } else {
                PostSubjectItem postSubjectItem5 = postDetailCommentsFragment.mPostSubjectItem;
                if (postSubjectItem5 != null && (stat = postSubjectItem5.getStat()) != null) {
                    PostSubjectItem postSubjectItem6 = postDetailCommentsFragment.mPostSubjectItem;
                    if (postSubjectItem6 != null && (stat2 = postSubjectItem6.getStat()) != null && (likeCount = stat2.getLikeCount()) != null) {
                        lValueOf = Long.valueOf(likeCount.longValue() - 1);
                    }
                    stat.setLikeCount(lValueOf);
                }
            }
            postDetailCommentsFragment.updateOperationViewState();
            Result.m453constructorimpl(Unit.f64096a);
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final Unit Q0(int i10) {
        return Unit.f64096a;
    }

    public static void S0(PostDetailCommentsFragment postDetailCommentsFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        postDetailCommentsFragment.R0(z10);
    }

    public static final Unit T0(PostDetailCommentsFragment postDetailCommentsFragment, String str, Boolean bool) {
        CommentBean commentBean = postDetailCommentsFragment.commentBean;
        if (TextUtils.equals(str, commentBean != null ? commentBean.getCommentId() : null)) {
            CommentBean commentBean2 = postDetailCommentsFragment.commentBean;
            if (commentBean2 != null) {
                commentBean2.setLikeStatu(bool);
            }
            postDetailCommentsFragment.U0(bool != null ? bool.booleanValue() : false);
        }
        return Unit.f64096a;
    }

    private final void U0(boolean likeState) {
        AppCompatImageView appCompatImageView;
        int i10 = likeState ? R$mipmap.ic_comment_item_liked : R$drawable.ic_like_comment_normal;
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f74442f) == null) {
            return;
        }
        appCompatImageView.setImageResource(i10);
    }

    public final void V0() {
        AppCompatTextView appCompatTextView;
        Group group;
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f74439c) != null) {
            group.setVisibility(8);
        }
        wn.l mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f74449m) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
    }

    private final void W0(String code) {
        String postId;
        if (!TextUtils.equals("0", code)) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f40484a;
            FragmentActivity activity = getActivity();
            hVar.l(activity != null ? activity.getString(R$string.delete_post_failed) : null);
            return;
        }
        PostSubjectItem postSubjectItem = this.mPostSubjectItem;
        if (postSubjectItem != null && (postId = postSubjectItem.getPostId()) != null) {
            gx.b.f61207a.a().e(postId);
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    public static final Unit X0(PostDetailCommentsFragment postDetailCommentsFragment) {
        postDetailCommentsFragment.clickLike();
        return Unit.f64096a;
    }

    public static final Unit Y0(PostDetailCommentsFragment postDetailCommentsFragment) {
        S0(postDetailCommentsFragment, false, 1, null);
        return Unit.f64096a;
    }

    public static final Unit Z0(PostDetailCommentsFragment postDetailCommentsFragment) {
        postDetailCommentsFragment.doShare();
        return Unit.f64096a;
    }

    public static final Unit a1(PostDetailCommentsFragment postDetailCommentsFragment) {
        postDetailCommentsFragment.clickDownload();
        return Unit.f64096a;
    }

    private final void b1(List commentList) {
        String avatarUrl;
        Boolean likeStatu;
        Long createdAt;
        Subject subject;
        String subjectId;
        if (commentList == null || commentList.isEmpty()) {
            return;
        }
        final boolean z10 = false;
        this.commentBean = (CommentBean) commentList.get(0);
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            ShapeableImageView shapeableImageView = mViewBinding.f74444h;
            int iA = com.blankj.utilcode.util.a0.a(32.0f);
            ni.f.a aVar = ni.f.f67269a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            CommentBean commentBean = this.commentBean;
            if (commentBean == null || (avatarUrl = commentBean.getAvatarUrl()) == null) {
                avatarUrl = "";
            }
            ni.f.b bVarC = bVarM.g(avatarUrl).m(iA).c(iA);
            Intrinsics.e(shapeableImageView);
            bVarC.d(shapeableImageView);
            AppCompatTextView appCompatTextView = mViewBinding.f74445i;
            CommentBean commentBean2 = this.commentBean;
            appCompatTextView.setText(commentBean2 != null ? commentBean2.getNickName() : null);
            AppCompatTextView appCompatTextView2 = mViewBinding.f74440d;
            PostSubjectItem postSubjectItem = this.mPostSubjectItem;
            boolean zBooleanValue = true;
            if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null && (subjectId = subject.getSubjectId()) != null && subjectId.length() > 0) {
                z10 = true;
            }
            Intrinsics.e(appCompatTextView2);
            CommentBean commentBean3 = this.commentBean;
            com.transsion.baseui.util.l.f(appCompatTextView2, commentBean3 != null ? commentBean3.getContent() : null, !z10, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return PostDetailCommentsFragment.c1(z10, this, (View) obj, (String) obj2);
                }
            });
            AppCompatTextView appCompatTextView3 = mViewBinding.f74441e;
            com.transsion.postdetail.comment.t tVar = com.transsion.postdetail.comment.t.f46778a;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            CommentBean commentBean4 = this.commentBean;
            appCompatTextView3.setText(tVar.c(fragmentActivityRequireActivity, (commentBean4 == null || (createdAt = commentBean4.getCreatedAt()) == null) ? 0L : createdAt.longValue()));
            CommentBean commentBean5 = this.commentBean;
            if (commentBean5 != null && (likeStatu = commentBean5.getLikeStatu()) != null) {
                zBooleanValue = likeStatu.booleanValue();
            }
            U0(zBooleanValue);
            updateOperationViewState();
        }
    }

    public static final Unit c1(boolean z10, PostDetailCommentsFragment postDetailCommentsFragment, View view, String str) {
        String resourceLink;
        User user;
        Subject subject;
        ResourceDetectors resourceDetector;
        if (z10) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            FragmentActivity fragmentActivityRequireActivity = postDetailCommentsFragment.requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            PostSubjectItem postSubjectItem = postDetailCommentsFragment.mPostSubjectItem;
            Subject subject2 = postSubjectItem != null ? postSubjectItem.getSubject() : null;
            Intrinsics.e(str);
            PostSubjectItem postSubjectItem2 = postDetailCommentsFragment.mPostSubjectItem;
            String ops = postSubjectItem2 != null ? postSubjectItem2.getOps() : null;
            PostSubjectItem postSubjectItem3 = postDetailCommentsFragment.mPostSubjectItem;
            if (postSubjectItem3 == null || (subject = postSubjectItem3.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                resourceLink = "";
            }
            String str2 = resourceLink;
            PostSubjectItem postSubjectItem4 = postDetailCommentsFragment.mPostSubjectItem;
            downloadManagerApiA.U(fragmentActivityRequireActivity, subject2, str, "postdetail", ops, str2, (postSubjectItem4 == null || (user = postSubjectItem4.getUser()) == null) ? null : user.getNickname());
        }
        return Unit.f64096a;
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    public static final qx.a mLoginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void observeLike() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailCommentsFragment.P0(this.f47681a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public final void updateOperationViewState() {
        AppCompatTextView appCompatTextView;
        Stat stat;
        Long commentCount;
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            wn.l mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView = mViewBinding2.f74448l) != null) {
                PostSubjectItem postSubjectItem = this.mPostSubjectItem;
                appCompatTextView.setText(((postSubjectItem == null || (stat = postSubjectItem.getStat()) == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue()) + " Comments");
            }
            mViewBinding.f74447k.showData(this.mPostSubjectItem, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailCommentsFragment.X0(this.f47645a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailCommentsFragment.Y0(this.f47651a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailCommentsFragment.Z0(this.f47658a);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailCommentsFragment.a1(this.f47668a);
                }
            });
        }
    }

    @Override
    public wn.l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.l lVarC = wn.l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    public final void R0(boolean isOpenEdittext) {
        ImmVideoCommentDialog immVideoCommentDialogB = ImmVideoCommentDialog.Companion.b(ImmVideoCommentDialog.INSTANCE, this.mPostSubjectItem, null, null, null, 14, null);
        immVideoCommentDialogB.z0(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return PostDetailCommentsFragment.T0(this.f47674a, (String) obj, (Boolean) obj2);
            }
        });
        immVideoCommentDialogB.A0(new d());
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        immVideoCommentDialogB.show(childFragmentManager, "tag_post_detail_comments_fragment");
        if (isOpenEdittext) {
            immVideoCommentDialogB.B0();
            immVideoCommentDialogB.y0(this.commentBean);
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x008c  */
    public final void clickDownload() {
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
        PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
        Audio audio2 = (postSubjectItem2 == null || (media2 = postSubjectItem2.getMedia()) == null || (audio = media2.getAudio()) == null || audio.isEmpty()) ? null : audio.get(0);
        PostSubjectItem postSubjectItem3 = this.mPostSubjectItem;
        String title = postSubjectItem3 != null ? postSubjectItem3.getTitle() : null;
        if (TextUtils.isEmpty(title)) {
            PostSubjectItem postSubjectItem4 = this.mPostSubjectItem;
            title = postSubjectItem4 != null ? postSubjectItem4.getContent() : null;
        }
        String str2 = title;
        PostSubjectItem postSubjectItem5 = this.mPostSubjectItem;
        String coverUrl$default = postSubjectItem5 != null ? PostSubjectItem.getCoverUrl$default(postSubjectItem5, false, 1, null) : null;
        if (TextUtils.isEmpty(coverUrl$default) && ((postSubjectItem = this.mPostSubjectItem) == null || (media = postSubjectItem.getMedia()) == null || (cover = media.getCover()) == null || (coverUrl$default = cover.getUrl()) == null)) {
            coverUrl$default = "";
        }
        String str3 = coverUrl$default;
        PostSubjectItem postSubjectItem6 = this.mPostSubjectItem;
        if ((postSubjectItem6 != null ? postSubjectItem6.getSubject() : null) != null) {
            PostSubjectItem postSubjectItem7 = this.mPostSubjectItem;
            if (postSubjectItem7 == null || (subject4 = postSubjectItem7.getSubject()) == null || (resourceDetector2 = subject4.getResourceDetector()) == null) {
                str = null;
            } else {
                url = resourceDetector2.getResourceId();
                str = url;
            }
        } else {
            Audio audio3 = audio2;
            if (audio3 != null) {
                url = audio3.getUrl();
                str = url;
            } else {
                str = null;
            }
        }
        Audio audio4 = audio2;
        DownloadBean downloadBean = new DownloadBean((audio4 == null || (url2 = audio4.getUrl()) == null) ? "" : url2, str, str2, str3, (audio4 == null || (size = audio4.getSize()) == null) ? null : Long.valueOf(size.intValue()), "", null, null, null, null, 0L, 0, 0, 1, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -8256, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        PostSubjectItem postSubjectItem8 = this.mPostSubjectItem;
        downloadBean.setPostId(postSubjectItem8 != null ? postSubjectItem8.getPostId() : null);
        PostSubjectItem postSubjectItem9 = this.mPostSubjectItem;
        downloadBean.setSubjectId((postSubjectItem9 == null || (subject3 = postSubjectItem9.getSubject()) == null) ? null : subject3.getSubjectId());
        PostSubjectItem postSubjectItem10 = this.mPostSubjectItem;
        downloadBean.setSubjectName((postSubjectItem10 == null || (subject2 = postSubjectItem10.getSubject()) == null) ? null : subject2.getTitle());
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        PostSubjectItem postSubjectItem11 = this.mPostSubjectItem;
        String ops = postSubjectItem11 != null ? postSubjectItem11.getOps() : null;
        PostSubjectItem postSubjectItem12 = this.mPostSubjectItem;
        String str4 = (postSubjectItem12 == null || (subject = postSubjectItem12.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink;
        PostSubjectItem postSubjectItem13 = this.mPostSubjectItem;
        downloadManagerApiA.O(fragmentActivity, downloadBean, "post_audio_detail", ops, str4, (64 & 32) != 0 ? null : postSubjectItem13 != null ? postSubjectItem13.getSubject() : null, (64 & 64) != 0 ? null : null);
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f46861a;
        PostSubjectItem postSubjectItem14 = this.mPostSubjectItem;
        String str5 = this.pageName;
        com.transsion.postdetail.helper.a.j(aVar, postSubjectItem14, str5 == null ? "" : str5, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.transsion.postdetail.viewmodel.PostDetailViewModel] */
    public final void clickLike() {
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_tips);
            return;
        }
        PostSubjectItem postSubjectItem = this.mPostSubjectItem;
        ?? C = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : 0;
        ?? F0 = F0();
        PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
        F0.G(postSubjectItem2 != null ? postSubjectItem2.getPostId() : null, C);
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f46861a;
        PostSubjectItem postSubjectItem3 = this.mPostSubjectItem;
        boolean zC = postSubjectItem3 != null ? Intrinsics.c(postSubjectItem3.getHasLike(), Boolean.TRUE) : false;
        String str = this.pageName;
        if (str == null) {
            str = "";
        }
        com.transsion.postdetail.helper.a.p(aVar, postSubjectItem3, zC, str, null, 8, null);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    public final void doShare() {
        boolean z10;
        User user;
        User user2;
        qx.a mLoginApi = getMLoginApi();
        UserInfo userInfoI = mLoginApi != null ? mLoginApi.i() : null;
        if ((userInfoI != null ? userInfoI.getUserId() : null) != null) {
            String userId = userInfoI.getUserId();
            PostSubjectItem postSubjectItem = this.mPostSubjectItem;
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
        PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
        String postId = postSubjectItem2 != null ? postSubjectItem2.getPostId() : null;
        PostSubjectItem postSubjectItem3 = this.mPostSubjectItem;
        String userId2 = (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getUserId();
        String value = ReportType.POST.getValue();
        PostSubjectItem postSubjectItem4 = this.mPostSubjectItem;
        ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId2, value, (3328 & 16) != 0 ? "" : postSubjectItem4 != null ? postSubjectItem4.getTitle() : null, (3328 & 32) != 0 ? "" : "", (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : z11, (3328 & 256) != 0 ? false : false, "postdetail", (3328 & 1024) != 0 ? "" : this.tranOps, (3328 & 2048) != 0 ? "" : null);
        shareDialogFragmentA.G0(new b());
        shareDialogFragmentA.show(getChildFragmentManager(), "share");
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f46861a;
        PostSubjectItem postSubjectItem5 = this.mPostSubjectItem;
        String str = this.pageName;
        if (str == null) {
            str = "";
        }
        com.transsion.postdetail.helper.a.A(aVar, postSubjectItem5, str, null, 4, null);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        observeLike();
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f74443g.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PostDetailCommentsFragment.H0(this.f47700a, view);
                }
            });
            com.transsion.postdetail.util.e.f48072a.b(new View[]{mViewBinding.f74448l, mViewBinding.f74446j, mViewBinding.f74449m, mViewBinding.f74441e, mViewBinding.f74440d, mViewBinding.f74445i}, new Function0() {
                @Override
                public final Object invoke() {
                    return PostDetailCommentsFragment.I0(this.f47722a);
                }
            });
            mViewBinding.f74444h.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PostDetailCommentsFragment.J0(this.f47730a, view);
                }
            });
            mViewBinding.f74449m.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PostDetailCommentsFragment.K0(view);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        Stat stat;
        Long commentCount;
        wn.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f74448l) == null) {
            return;
        }
        PostSubjectItem postSubjectItem = this.mPostSubjectItem;
        appCompatTextView.setText(((postSubjectItem == null || (stat = postSubjectItem.getStat()) == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue()) + " Comments");
    }

    @Override
    public void initViewModel() {
        CommentViewModel commentViewModel = (CommentViewModel) new androidx.p009lifecycle.v0(this).a(CommentViewModel.class);
        commentViewModel.m().j(getViewLifecycleOwner(), new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailCommentsFragment.L0((CommentLikeBean) obj);
            }
        }));
        this.mCommentViewModel = commentViewModel;
        E0().g().j(getViewLifecycleOwner(), new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailCommentsFragment.M0(this.f47686a, (CommentListBean) obj);
            }
        }));
        F0().t().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailCommentsFragment.N0(this.f47693a, (String) obj);
            }
        }));
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
    public void loadDefaultData() {
        String postId;
        PostDetailCommentsFragmentViewModel postDetailCommentsFragmentViewModelE0 = E0();
        PostSubjectItem postSubjectItem = this.mPostSubjectItem;
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
            postId = "";
        }
        postDetailCommentsFragmentViewModelE0.e(postId, "0", String.valueOf(this.page), this.mPerPage);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Object objM453constructorimpl;
        HashMap mapG;
        Subject subject;
        HashMap mapG2;
        Subject subject2;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Serializable serializable = arguments.getSerializable("post_subject_item");
                Intrinsics.f(serializable, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem");
                this.mPostSubjectItem = (PostSubjectItem) serializable;
                this.tranOps = arguments.getString("rec_ops");
                this.pageName = arguments.getString("page_name");
                qi.b logViewConfig = getLogViewConfig();
                Object hasResource = null;
                if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
                    PostSubjectItem postSubjectItem = this.mPostSubjectItem;
                    mapG2.put("subject_id", (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId());
                }
                qi.b logViewConfig2 = getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    PostSubjectItem postSubjectItem2 = this.mPostSubjectItem;
                    if (postSubjectItem2 != null && (subject = postSubjectItem2.getSubject()) != null) {
                        hasResource = subject.getHasResource();
                    }
                    mapG.put("has_resource", String.valueOf(hasResource));
                    hasResource = Unit.f64096a;
                }
                objM453constructorimpl = Result.m453constructorimpl(hasResource);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    @Override
    public void onDestroyView() {
        this.isOpenMeasureViewVisibility = false;
        super.onDestroyView();
    }

    @Override
    public void retryLoadData() {
    }
}

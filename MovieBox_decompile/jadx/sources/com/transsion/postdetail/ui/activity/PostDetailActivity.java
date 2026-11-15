package com.transsion.postdetail.ui.activity;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.fragment.PostAudioDetailFragment;
import com.transsion.postdetail.ui.fragment.PostDetailFragment;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ep.k;
import ij.y;
import java.lang.reflect.InvocationTargetException;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import yg.l;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 R2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001SB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\tJ\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\tJ\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\tJ\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010\tJ\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u000bH\u0016¢\u0006\u0004\b)\u0010\u001cJ\u000f\u0010*\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010\u001cR\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010.\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b/\u0010,R\u0016\u00103\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b4\u0010,R\u0016\u00108\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b9\u00102R\u0018\u0010<\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b;\u0010,R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bA\u0010,R\u0016\u0010D\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bC\u00102R\u001b\u0010J\u001a\u00020E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u0018\u0010M\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010LR\u0016\u0010Q\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010,¨\u0006T"}, d2 = {"Lcom/transsion/postdetail/ui/activity/PostDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lwn/c;", "<init>", "()V", "", "J0", "", "I0", "()Z", "K0", "", "mediaType", "Landroidx/fragment/app/Fragment;", "N0", "(Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "L0", "M0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "onResume", "onStop", "E0", "()Lwn/c;", "f0", "()Ljava/lang/String;", "l0", "m0", "k0", "p0", "isTranslucent", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "o0", "retryLoadData", "getPageName", "a0", "i", "Ljava/lang/String;", "j", "postId", CampaignEx.JSON_KEY_AD_K, "itemType", "l", "Z", "fromComment", "m", "ops", "n", "I", "tabId", "o", "videoLoadMore", TtmlNode.TAG_P, "pageFrom", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "itemObject", CampaignEx.JSON_KEY_AD_R, "commentId", "s", "needBackToRoom", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "t", "Lkotlin/Lazy;", "F0", "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "viewModel", TmcStartParams.KEY_URL_SHORT, "Landroidx/fragment/app/Fragment;", "mFragment", "v", "target", "w", "emptyDesc", "x", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostDetailActivity extends BaseNewActivity<wn.c> {

    public String mediaType;

    public String postId;

    public String itemType;

    public boolean fromComment;

    public String ops;

    public int tabId;

    public String pageFrom;

    public PostSubjectItem itemObject;

    public String commentId;

    public boolean needBackToRoom;

    private final Lazy viewModel;

    private Fragment mFragment;

    private Fragment target;

    public boolean videoLoadMore = true;

    private String emptyDesc = "";

    static final class b implements c0, FunctionAdapter {

        private final Function1 f47316a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47316a = function;
        }

        @Override
        public final Function a() {
            return this.f47316a;
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
            this.f47316a.invoke(obj);
        }
    }

    public PostDetailActivity() {
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.b(PostDetailViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final PostDetailViewModel F0() {
        return (PostDetailViewModel) this.viewModel.getValue();
    }

    public static final Unit G0(PostDetailActivity postDetailActivity, PostSubjectItem postSubjectItem) {
        if (postSubjectItem == null) {
            postDetailActivity.v0();
        } else {
            Media media = postSubjectItem.getMedia();
            String mediaType = media != null ? media.getMediaType() : null;
            postDetailActivity.mediaType = mediaType;
            if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
                ImmVideoHelper.f46840h.a().s(postSubjectItem);
            }
            postDetailActivity.itemObject = postSubjectItem;
            postDetailActivity.t0();
            postDetailActivity.K0();
        }
        return Unit.f64096a;
    }

    public static final Unit H0(PostDetailActivity postDetailActivity, String str) {
        if (Intrinsics.c(str, "404")) {
            String string = postDetailActivity.getString(R$string.post_delete_tips);
            Intrinsics.g(string, "getString(...)");
            postDetailActivity.emptyDesc = string;
        }
        return Unit.f64096a;
    }

    private final boolean I0() {
        return Intrinsics.c(MediaType.VIDEO.getValue(), this.mediaType) || Intrinsics.c(MediaType.AUDIO.getValue(), this.mediaType) || y.f62128a.a();
    }

    private final void J0() {
        String str;
        w0();
        if (!l.f76264a.e()) {
            y0();
            return;
        }
        if (this.postId == null || !((str = this.mediaType) == null || str.length() == 0)) {
            K0();
            return;
        }
        PostDetailViewModel postDetailViewModelF0 = F0();
        String str2 = this.postId;
        if (str2 == null) {
            str2 = "";
        }
        postDetailViewModelF0.x(str2);
    }

    private final void K0() {
        M0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Fragment fragmentN0 = N0(this.mediaType);
        if (fragmentN0 != null) {
            wVarP.s(R$id.container, fragmentN0);
        } else {
            fragmentN0 = null;
        }
        this.target = fragmentN0;
        wVarP.j();
    }

    private final void L0() {
        ep.b bVar;
        if (!TextUtils.equals(MediaType.VIDEO.getValue(), this.mediaType) || (bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0])) == null) {
            return;
        }
        bVar.e();
    }

    private final void M0() {
        ep.b bVar;
        if (!TextUtils.equals(MediaType.VIDEO.getValue(), this.mediaType) || (bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0])) == null) {
            return;
        }
        bVar.c();
    }

    private final Fragment N0(String mediaType) {
        Fragment fragmentA;
        if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
            u0();
            PostSubjectItem postSubjectItem = this.itemObject;
            if (postSubjectItem != null) {
                ImmVideoHelper.f46840h.a().s(postSubjectItem);
            }
            fragmentA = VideoFragment.INSTANCE.a(this.postId, this.itemType, Integer.valueOf(this.tabId), this.videoLoadMore, (704 & 16) != 0 ? true : this.fromComment, (704 & 32) != 0 ? "" : this.ops, (704 & 64) != 0 ? false : false, (704 & 128) != 0 ? "" : this.commentId, (704 & 256) != 0 ? null : this.pageFrom, (704 & 512) != 0 ? false : this.needBackToRoom, (704 & 1024) != 0 ? null : null, (704 & 2048) != 0 ? false : false, (704 & 4096) != 0 ? false : false);
        } else {
            setRequestedOrientation(1);
            fragmentA = PostDetailFragment.INSTANCE.a(this.postId, this.fromComment, this.ops, this.itemObject, this.commentId, this.pageFrom);
        }
        this.mFragment = fragmentA;
        return fragmentA;
    }

    @Override
    public wn.c getViewBinding() {
        wn.c cVarC = wn.c.c(getLayoutInflater());
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    @Override
    public String getEmptyDesc() {
        return this.emptyDesc;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public String getPageName() {
        return "postdetail";
    }

    @Override
    public boolean isChangeStatusBar() {
        return I0();
    }

    @Override
    public boolean isStatusDark() {
        if (I0()) {
            return false;
        }
        return super.isStatusDark();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    @Override
    public void l0() {
    }

    @Override
    public void m0() {
        F0().A().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailActivity.G0(this.f47335a, (PostSubjectItem) obj);
            }
        }));
        F0().y().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PostDetailActivity.H0(this.f47336a, (String) obj);
            }
        }));
    }

    @Override
    public boolean o0() {
        if (Intrinsics.c(MediaType.VIDEO.getValue(), this.mediaType)) {
            return false;
        }
        return super.o0();
    }

    @Override
    public void onBackPressed() {
        if (this.needBackToRoom) {
            k.i(k.f59780a, null, null, null, false, 15, null);
            finish();
            return;
        }
        Fragment fragment = this.mFragment;
        if (fragment instanceof PostAudioDetailFragment) {
            Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.PostAudioDetailFragment");
            ((PostAudioDetailFragment) fragment).p1();
        }
        super.onBackPressed();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.k.f42210a.w(3, this);
    }

    @Override
    public void onResume() {
        super.onResume();
        M0();
    }

    @Override
    protected void onStop() {
        super.onStop();
        L0();
    }

    @Override
    public void p0() {
        J0();
    }

    @Override
    public void retryLoadData() {
        if (this.target == null) {
            J0();
        }
    }

    @Override
    public int statusColor() {
        return I0() ? R$color.gray_0_1 : super.statusColor();
    }
}

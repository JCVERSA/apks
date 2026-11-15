package com.transsion.ugcvideodetail.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.p009lifecycle.v;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetail.R$id;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment;
import com.transsion.videofloat.manager.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import cr.b;
import cw.e;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\nH\u0014¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\nH\u0016¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u001fJ\u000f\u0010'\u001a\u00020\u0010H\u0016¢\u0006\u0004\b'\u0010$J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010$J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010$J\u000f\u0010*\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010$J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\nH\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u0010\u0005R\u0018\u00107\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0018\u0010;\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u0018\u0010=\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b<\u00106R\u0018\u0010?\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b>\u00106R\u0018\u0010A\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b@\u00106R\u0018\u0010C\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bB\u00106R\u0018\u0010E\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bD\u00106R\u0018\u0010G\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bF\u00106R\u0016\u0010J\u001a\u00020+8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bN\u00106R\u0018\u0010R\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010T\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010LR\u001b\u0010Z\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y¨\u0006["}, d2 = {"Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Liu/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroidx/fragment/app/Fragment;", "fragment", "", "tag", "", "G0", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V", "K0", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "", "M0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "category", "L0", "(Ljava/lang/String;)V", "J0", "()Liu/a;", "q0", "retryLoadData", "getPageName", "()Ljava/lang/String;", "onPause", "onDestroy", "h", "isMusicFloatingAttach", "()Z", "isChangeStatusBar", "f0", "o0", "n0", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "Landroid/view/View;", "g0", "()Landroid/view/View;", "l0", "m0", "k0", "p0", "i", "Ljava/lang/String;", "videoId", "j", "collectionId", CampaignEx.JSON_KEY_AD_K, "subjectId", "l", NativeComponentConstants.KEY_COMPONENT_TYPE, "m", "ops", "n", "fromOptId", "o", "pageStyle", TtmlNode.TAG_P, "previousPageVideoId", CampaignEx.JSON_KEY_AD_Q, "previousPageTrackId", CampaignEx.JSON_KEY_AD_R, "I", "bottomFragmentSelected", "s", "Z", "withoutHistory", "t", "homeTabId", TmcStartParams.KEY_URL_SHORT, "Landroidx/fragment/app/Fragment;", "mFragment", "v", "hasHandledActivityLimit", "Lju/a;", "w", "Lkotlin/Lazy;", "I0", "()Lju/a;", "detailApi", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailActivity extends BaseNewActivity<iu.a> implements c {

    public String videoId;

    public String collectionId;

    public String subjectId;

    public String type;

    public String ops;

    public String fromOptId;

    public String pageStyle;

    public String previousPageVideoId;

    public String previousPageTrackId;

    public int bottomFragmentSelected;

    public boolean withoutHistory;

    public String homeTabId;

    private Fragment mFragment;

    private boolean hasHandledActivityLimit;

    private final Lazy detailApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoDetailActivity.H0();
        }
    });

    public final void G0(Fragment fragment, String tag) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wf.a.C0922a.l(wf.a.f74274a, "UGCVideoDetailActivity", "createFragment: homeTabId:" + this.homeTabId, false, 4, null);
        fragment.setArguments(d.b(TuplesKt.a("id", this.videoId), TuplesKt.a("ugcCategory", this.type), TuplesKt.a("subject_id", this.subjectId), TuplesKt.a("collection_id", this.collectionId), TuplesKt.a("ops", this.ops), TuplesKt.a("from_opt_id", this.fromOptId), TuplesKt.a("parent_video_id", this.previousPageVideoId), TuplesKt.a("parent_track_id", this.previousPageTrackId), TuplesKt.a("ugc_bottom_fragment_selected", Integer.valueOf(this.bottomFragmentSelected)), TuplesKt.a("ugc_without_history", Boolean.valueOf(this.withoutHistory)), TuplesKt.a("tab_id", this.homeTabId)));
        wVarP.t(R$id.container, fragment, tag);
        this.mFragment = fragment;
        wVarP.j();
    }

    public static final ju.a H0() {
        return (ju.a) kg.c.f63982e.a().h(ju.a.class);
    }

    public final ju.a I0() {
        return (ju.a) this.detailApi.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void K0() {
        ProgressBar ugcPbLoading = ((iu.a) getMViewBinding()).f62624c;
        Intrinsics.g(ugcPbLoading, "ugcPbLoading");
        uf.c.k(ugcPbLoading);
        k.d(v.a(this), null, null, new UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1(this, null), 3, null);
    }

    public final boolean M0(UGCVideo video) {
        return video.isVerticalImmStyle();
    }

    @Override
    public iu.a getViewBinding() {
        iu.a aVarC = iu.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    public final void L0(String category) {
        if (this.hasHandledActivityLimit) {
            return;
        }
        com.transsion.baselib.report.k.f42210a.w(Intrinsics.c(category, UGCVideoType.MUSIC.getValue()) ? 1 : 3, this);
        this.hasHandledActivityLimit = true;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public View g0() {
        View viewG0 = super.g0();
        b.a(viewG0);
        return viewG0;
    }

    @Override
    public String getPageName() {
        return "/ugc_video/detail";
    }

    @Override
    public void h() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof UGCVideoDetailFragment) {
            UGCVideoDetailFragment uGCVideoDetailFragment = fragment instanceof UGCVideoDetailFragment ? (UGCVideoDetailFragment) fragment : null;
            if (uGCVideoDetailFragment != null) {
                uGCVideoDetailFragment.L0();
                return;
            }
            return;
        }
        if (fragment instanceof UGCImmVideoDetailFragment) {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = fragment instanceof UGCImmVideoDetailFragment ? (UGCImmVideoDetailFragment) fragment : null;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.Y0();
            }
        }
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isMusicFloatingAttach() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return false;
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
    }

    @Override
    public boolean n0() {
        return false;
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        if (Intrinsics.c(this.type, UGCVideoType.SHORT_TV.getValue())) {
            this.pageStyle = UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue();
        }
        super.onCreate(savedInstanceState);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        h();
        e.f58665a.b().j(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            h();
        }
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        if (this.mFragment == null) {
            Fragment fragmentK0 = getSupportFragmentManager().k0("VideoDetailFragment");
            this.mFragment = fragmentK0;
            if (fragmentK0 == null) {
                String str = this.pageStyle;
                if (Intrinsics.c(str, UGCPageStyle.UGC_PAGE_STYLE_HORIZONTAL_VIDEO.getValue())) {
                    G0(UGCVideoDetailFragment.INSTANCE.a(), "UGCVideoDetailFragment");
                } else if (!Intrinsics.c(str, UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue())) {
                    K0();
                } else {
                    com.transsion.baselib.report.k.f42210a.w(2, this);
                    G0(UGCImmVideoDetailFragment.INSTANCE.a(), "UGCImmVideoDetailFragment");
                }
            }
        }
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public int statusColor() {
        return R$color.black;
    }
}

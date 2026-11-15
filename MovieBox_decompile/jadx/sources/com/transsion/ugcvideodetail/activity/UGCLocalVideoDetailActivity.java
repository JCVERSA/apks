package com.transsion.ugcvideodetail.activity;

import android.os.Bundle;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.report.k;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.fragment.UGCLocalVideoDetailFragment;
import com.transsion.videofloat.manager.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import cw.e;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import yg.l;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001e\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001f\u0010\u001aJ\u000f\u0010 \u001a\u00020\u0018H\u0016¢\u0006\u0004\b \u0010\u001aJ\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\bH\u0016¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\bH\u0016¢\u0006\u0004\b'\u0010\u0005R\u0018\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b/\u0010)R\u0018\u00102\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b1\u0010)R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00109\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Liu/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "category", "D0", "(Ljava/lang/String;)V", "C0", "()Liu/a;", "q0", "retryLoadData", "getPageName", "()Ljava/lang/String;", "onPause", "onDestroy", "h", "", "isMusicFloatingAttach", "()Z", "isChangeStatusBar", "f0", "o0", "n0", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "l0", "m0", "k0", "p0", "i", "Ljava/lang/String;", "videoId", "j", "resourceId", CampaignEx.JSON_KEY_AD_K, NativeComponentConstants.KEY_COMPONENT_TYPE, "l", "previousPageVideoId", "m", "previousPageTrackId", "Landroidx/fragment/app/Fragment;", "n", "Landroidx/fragment/app/Fragment;", "mFragment", "o", "Z", "hasHandledActivityLimit", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCLocalVideoDetailActivity extends BaseNewActivity<iu.a> implements c {

    public String videoId;

    public String resourceId;

    public String type;

    public String previousPageVideoId;

    public String previousPageTrackId;

    private Fragment mFragment;

    private boolean hasHandledActivityLimit;

    @Override
    public iu.a getViewBinding() {
        iu.a aVarC = iu.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    public final void D0(String category) {
        if (this.hasHandledActivityLimit) {
            return;
        }
        k.f42210a.w(Intrinsics.c(category, UGCVideoType.MUSIC.getValue()) ? 1 : 3, this);
        this.hasHandledActivityLimit = true;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public String getPageName() {
        return "/ugc_video/local_detail";
    }

    @Override
    public void h() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof UGCLocalVideoDetailFragment) {
            UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment = fragment instanceof UGCLocalVideoDetailFragment ? (UGCLocalVideoDetailFragment) fragment : null;
            if (uGCLocalVideoDetailFragment != null) {
                uGCLocalVideoDetailFragment.L0();
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
            Fragment fragment = this.mFragment;
            if (fragment instanceof UGCLocalVideoDetailFragment) {
                UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment = fragment instanceof UGCLocalVideoDetailFragment ? (UGCLocalVideoDetailFragment) fragment : null;
                if (uGCLocalVideoDetailFragment != null) {
                    uGCLocalVideoDetailFragment.L0();
                }
            }
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
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                w wVarP = supportFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                UGCLocalVideoDetailFragment uGCLocalVideoDetailFragmentA = UGCLocalVideoDetailFragment.INSTANCE.a();
                uGCLocalVideoDetailFragmentA.setArguments(d.b(TuplesKt.a("id", this.videoId), TuplesKt.a("resource_id", this.resourceId), TuplesKt.a("ugcCategory", this.type), TuplesKt.a("parent_video_id", this.previousPageVideoId), TuplesKt.a("parent_track_id", this.previousPageTrackId)));
                wVarP.t(R$id.container, uGCLocalVideoDetailFragmentA, "VideoDetailFragment");
                this.mFragment = uGCLocalVideoDetailFragmentA;
                wVarP.j();
            }
        }
    }

    @Override
    public void retryLoadData() {
        w0();
        if (!l.f76264a.e()) {
            y0();
        } else {
            u0();
            p0();
        }
    }

    @Override
    public int statusColor() {
        return R$color.black;
    }
}

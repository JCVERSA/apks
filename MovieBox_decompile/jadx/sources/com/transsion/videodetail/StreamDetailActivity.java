package com.transsion.videodetail;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0019B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/transsion/videodetail/StreamDetailActivity;", "Lcom/transsion/videodetail/BaseDetailActivity;", "Llm/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "p0", "retryLoadData", "G0", "()Llm/a;", "", "getPageName", "()Ljava/lang/String;", "onResume", "onPause", "h", "", "isChangeStatusBar", "()Z", TmcStartParams.KEY_URL_SHORT, "a", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StreamDetailActivity extends BaseDetailActivity<lm.a> implements com.transsion.videofloat.manager.c {
    @Override
    public lm.a getViewBinding() {
        lm.a aVarC = lm.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String getPageName() {
        return "subjectdetail";
    }

    @Override
    public void h() {
        Fragment mFragment = getMFragment();
        StreamDetailFragment streamDetailFragment = mFragment instanceof StreamDetailFragment ? (StreamDetailFragment) mFragment : null;
        if (streamDetailFragment != null) {
            streamDetailFragment.Y1();
        }
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.k.f42210a.w(3, this);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            Fragment mFragment = getMFragment();
            StreamDetailFragment streamDetailFragment = mFragment instanceof StreamDetailFragment ? (StreamDetailFragment) mFragment : null;
            if (streamDetailFragment != null) {
                streamDetailFragment.Y1();
            }
            cw.e.f58665a.b().j(this);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void p0() {
        if (getMFragment() == null) {
            E0(getSupportFragmentManager().k0("VideoDetailFragment"));
            if (getMFragment() == null) {
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                androidx.fragment.app.w wVarP = supportFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                StreamDetailFragment streamDetailFragmentA = StreamDetailFragment.INSTANCE.a();
                Bundle bundle = new Bundle();
                bundle.putString("id", this.id);
                bundle.putString("ops", this.ops);
                bundle.putBoolean("auto_download", this.autoDownload);
                bundle.putBoolean("auto_play", this.autoPlay);
                bundle.putString("auto_play_resource_id", this.autoPlayResourceId);
                bundle.putString("module_name", this.moduleName);
                bundle.putInt("yy_preload_id", this.preloadId);
                bundle.putInt("season", this.curSeason);
                bundle.putInt("episode", this.targetEp);
                streamDetailFragmentA.setArguments(bundle);
                wVarP.t(com.transsion.moviedetail.R$id.container, streamDetailFragmentA, "VideoDetailFragment");
                E0(streamDetailFragmentA);
                wVarP.j();
            }
        }
    }

    @Override
    public void retryLoadData() {
        w0();
        if (!yg.l.f76264a.e()) {
            y0();
        } else {
            u0();
            p0();
        }
    }
}

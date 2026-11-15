package com.transsion.moviedetail.activity;

import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.report.k;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.fragment.MovieDetailFragment;
import com.transsion.videofloat.manager.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import cw.e;
import im.b;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lm.a;
import yg.l;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001>B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u0010J\u000f\u0010\u001b\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\u0010J\u000f\u0010\u001c\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\u0010J\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010\rJ\u000f\u0010!\u001a\u00020\u000eH\u0016¢\u0006\u0004\b!\u0010\u0010J\u000f\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010\u0005R\u0018\u0010&\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010+\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010%R\u0018\u00101\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u0010%R\u0016\u00104\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u00103R\u0016\u00108\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b7\u00103R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006?"}, d2 = {"Lcom/transsion/moviedetail/activity/MovieDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Llm/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "f0", "()Ljava/lang/String;", "", "o0", "()Z", "n0", "isMonitorNetworkState", "l0", "m0", "k0", "p0", "retryLoadData", "D0", "()Llm/a;", "isTranslucent", "isStatusDark", "isChangeStatusBar", "", "statusColor", "()I", "getPageName", "isMusicFloatingAttach", "onPause", "h", "i", "Ljava/lang/String;", "id", "j", "ops", CampaignEx.JSON_KEY_AD_K, "Z", "autoDownload", "l", "autoPlay", "m", "autoPlayResourceId", "n", "moduleName", "o", "I", "preloadId", TtmlNode.TAG_P, "curSeason", CampaignEx.JSON_KEY_AD_Q, "subjectYpe", "Landroidx/fragment/app/Fragment;", CampaignEx.JSON_KEY_AD_R, "Landroidx/fragment/app/Fragment;", "mFragment", "s", "a", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MovieDetailActivity extends BaseNewActivity<a> implements c {

    public static final Companion INSTANCE = new Companion(null);

    public String id;

    public String ops;

    public boolean autoDownload;

    public boolean autoPlay;

    public String autoPlayResourceId;

    public String moduleName;

    public int preloadId;

    public int curSeason = 1;

    public int subjectYpe = -1;

    private Fragment mFragment;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(String msg) {
            Intrinsics.h(msg, "msg");
            Log.w("zxb_log_movie_detail", msg);
        }

        private Companion() {
        }
    }

    public static final void E0() {
        b bVar = (b) TheRouter.d(b.class, new Object[0]);
        if (bVar != null) {
            bVar.w(0.0f);
        }
    }

    @Override
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public String getPageName() {
        return "subjectdetail";
    }

    @Override
    public void h() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof MovieDetailFragment) {
            MovieDetailFragment movieDetailFragment = fragment instanceof MovieDetailFragment ? (MovieDetailFragment) fragment : null;
            if (movieDetailFragment != null) {
                movieDetailFragment.x1();
            }
        }
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        s0();
        ((a) getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                MovieDetailActivity.E0();
            }
        });
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean n0() {
        return true;
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        k.f42210a.w(3, this);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            Fragment fragment = this.mFragment;
            MovieDetailFragment movieDetailFragment = fragment instanceof MovieDetailFragment ? (MovieDetailFragment) fragment : null;
            if (movieDetailFragment != null) {
                movieDetailFragment.x1();
            }
            e.f58665a.b().j(this);
        }
    }

    @Override
    public void p0() {
        if (this.mFragment == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            w wVarP = supportFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            MovieDetailFragment movieDetailFragmentA = MovieDetailFragment.INSTANCE.a();
            Bundle bundle = new Bundle();
            bundle.putString("id", this.id);
            bundle.putString("ops", this.ops);
            bundle.putBoolean("auto_download", this.autoDownload);
            bundle.putBoolean("auto_play", this.autoPlay);
            bundle.putString("auto_play_resource_id", this.autoPlayResourceId);
            bundle.putString("module_name", this.moduleName);
            bundle.putInt("season", this.curSeason);
            bundle.putInt("subject_type", this.subjectYpe);
            bundle.putInt("yy_preload_id", this.preloadId);
            movieDetailFragmentA.setArguments(bundle);
            wVarP.s(R$id.container, movieDetailFragmentA);
            this.mFragment = movieDetailFragmentA;
            wVarP.j();
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

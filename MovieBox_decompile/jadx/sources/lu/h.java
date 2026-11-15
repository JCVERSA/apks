package lu;

import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import iu.r;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    private final a f66139a;

    public interface a {
        r a();

        UGCImmVideoDetailViewModel b();

        void c(boolean z10);

        void d();

        n e();

        com.transsion.ugcvideodetail.hepler.a f();

        UGCImmVideo getData();

        String getLogTag();

        com.transsion.player.orplayer.f getOrPlayer();

        void showLoading();
    }

    public h(a host) {
        Intrinsics.h(host, "host");
        this.f66139a = host;
    }

    public final void a(long j10, long j11) {
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66139a.b();
        if (uGCImmVideoDetailViewModelB != null) {
            uGCImmVideoDetailViewModelB.f1(this.f66139a.getData(), j11, j10);
        }
    }

    public final void b(long j10, boolean z10) {
        com.transsion.player.orplayer.f orPlayer;
        if (z10) {
            return;
        }
        long maxProgress = this.f66139a.a().f62797y.getMaxProgress();
        if (maxProgress <= 0 || maxProgress == 100 || (orPlayer = this.f66139a.getOrPlayer()) == null || maxProgress != orPlayer.getDuration()) {
            com.transsion.player.orplayer.f orPlayer2 = this.f66139a.getOrPlayer();
            long duration = orPlayer2 != null ? orPlayer2.getDuration() : 0L;
            if (duration <= 0) {
                wf.a.C0922a.f(wf.a.f74274a, this.f66139a.getLogTag(), "onProgress- duration <= 0, return", false, 4, null);
                return;
            }
            h(duration);
        }
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f66139a.f();
        if (aVarF != null) {
            aVarF.l(j10);
        }
        this.f66139a.e().q(j10);
        g(j10);
        f(false);
    }

    public final void c() {
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f66139a.f();
        if (aVarF != null) {
            aVarF.n();
        }
        AppCompatImageView ivUgcImmPlayStatus = this.f66139a.a().f62786n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        uf.c.k(ivUgcImmPlayStatus);
        this.f66139a.e().p(false);
        this.f66139a.c(false);
    }

    public final void d() {
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f66139a.f();
        if (aVarF != null) {
            aVarF.o();
        }
        this.f66139a.e().p(true);
        f(false);
        this.f66139a.c(true);
        AppCompatImageView ivUgcImmPlayStatus = this.f66139a.a().f62786n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        uf.c.g(ivUgcImmPlayStatus);
    }

    public final void e() {
        com.transsion.player.orplayer.f orPlayer;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f66139a.getLogTag(), "playVideo data:" + this.f66139a.getData() + " orPlayer:" + this.f66139a.getOrPlayer(), false, 4, null);
        UGCImmVideo data = this.f66139a.getData();
        if (data == null || (orPlayer = this.f66139a.getOrPlayer()) == null) {
            return;
        }
        if (!data.isFree()) {
            wf.a.C0922a.f(c0922a, this.f66139a.getLogTag(), "player- no free now, show pay dialog", false, 4, null);
            f(false);
        } else {
            if (orPlayer.isComplete()) {
                orPlayer.seekTo(0L);
            }
            orPlayer.play();
            wf.a.C0922a.f(c0922a, this.f66139a.getLogTag(), "player- startplay", false, 4, null);
        }
    }

    public final void f(boolean z10) {
        if (z10) {
            this.f66139a.showLoading();
        } else {
            this.f66139a.d();
        }
    }

    public final void g(long j10) {
        this.f66139a.a().f62797y.setProgress(j10);
        this.f66139a.a().f62794v.setProgress(j10);
    }

    public final void h(long j10) {
        this.f66139a.a().f62797y.setMax(j10);
        this.f66139a.a().f62794v.setMax(j10);
        wf.a.C0922a.f(wf.a.f74274a, this.f66139a.getLogTag(), "updateProgressMax: " + j10, false, 4, null);
    }
}

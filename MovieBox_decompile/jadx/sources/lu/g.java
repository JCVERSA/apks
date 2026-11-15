package lu;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.noober.background.view.BLTextView;
import com.tn.lib.pager.PagerLayoutManager;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import iu.r;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private final a f66126a;

    private final i f66127b;

    private GestureDetector f66128c;

    private boolean f66129d;

    private boolean f66130e;

    private float f66131f;

    public interface a {
        r a();

        UGCImmVideoDetailViewModel b();

        PagerLayoutManager c();

        void d();

        void e(boolean z10);

        void f(long j10);

        void g();

        UGCImmVideo getData();

        String getLogTag();

        com.transsion.player.orplayer.f getOrPlayer();

        void h(boolean z10);

        int i();

        boolean isLoading();
    }

    public static final class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            return super.onDoubleTap(e10);
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            super.onLongPress(e10);
            int i10 = g.this.f66126a.i() / 3;
            int x10 = (int) e10.getX();
            if ((x10 < 0 || x10 > i10) && x10 <= i10 * 2) {
                g.this.f66126a.d();
            } else {
                g.this.f66129d = true;
                g.this.n();
            }
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            g.this.l();
            return super.onSingleTapUp(e10);
        }
    }

    public static final class c implements com.transsion.baseui.widget.f.a {

        private long f66133a;

        private long f66134b;

        private int f66135c;

        private String f66136d = "";

        final Context f66138f;

        c(Context context) {
            this.f66138f = context;
        }

        @Override
        public void a() {
        }

        @Override
        public void b(float f10, float f11) {
            if (!g.this.f66130e) {
                PagerLayoutManager pagerLayoutManagerC = g.this.f66126a.c();
                if (pagerLayoutManagerC != null) {
                    pagerLayoutManagerC.X(false);
                }
                this.f66133a = g.this.f66126a.a().f62794v.getCurrentProgress();
                g.this.f66126a.e(false);
                TextView tvUgcImmProgressDes = g.this.f66126a.a().E;
                Intrinsics.g(tvUgcImmProgressDes, "tvUgcImmProgressDes");
                uf.c.k(tvUgcImmProgressDes);
                SecondariesSeekBar seekUgcImmBar = g.this.f66126a.a().f62797y;
                Intrinsics.g(seekUgcImmBar, "seekUgcImmBar");
                uf.c.k(seekUgcImmBar);
                SecondariesSeekBar progressUgcImmBar = g.this.f66126a.a().f62794v;
                Intrinsics.g(progressUgcImmBar, "progressUgcImmBar");
                uf.c.g(progressUgcImmBar);
                this.f66135c = g.this.f66126a.a().f62794v.getWidth();
                long maxProgress = g.this.f66126a.a().f62794v.getMaxProgress();
                this.f66134b = maxProgress;
                this.f66136d = TimeUtilKt.o(maxProgress);
            }
            g.this.f66130e = true;
            long j10 = this.f66134b;
            long j11 = (long) (this.f66133a + (((f11 - f10) * j10) / this.f66135c));
            if (j11 < 0) {
                j10 = 0;
            } else if (j11 <= j10) {
                j10 = j11;
            }
            g.this.f66126a.a().E.setText(ah.c.e().e(j10 <= 0 ? "00:00" : TimeUtilKt.o(j10)).c(androidx.core.content.b.getColor(this.f66138f, R$color.white)).e("  /  " + this.f66136d).c(androidx.core.content.b.getColor(this.f66138f, R$color.white_60)).b());
            g.this.f66126a.f(j10);
        }

        @Override
        public void c(float f10, float f11) {
        }

        @Override
        public void d(float f10, float f11) {
        }

        @Override
        public void e() {
            com.transsion.player.orplayer.f orPlayer;
            PagerLayoutManager pagerLayoutManagerC = g.this.f66126a.c();
            if (pagerLayoutManagerC != null) {
                pagerLayoutManagerC.X(true);
            }
            if (g.this.f66130e) {
                g.this.f66130e = false;
                g.this.f66126a.e(true);
                TextView tvUgcImmProgressDes = g.this.f66126a.a().E;
                Intrinsics.g(tvUgcImmProgressDes, "tvUgcImmProgressDes");
                uf.c.g(tvUgcImmProgressDes);
                SecondariesSeekBar seekUgcImmBar = g.this.f66126a.a().f62797y;
                Intrinsics.g(seekUgcImmBar, "seekUgcImmBar");
                uf.c.g(seekUgcImmBar);
                SecondariesSeekBar progressUgcImmBar = g.this.f66126a.a().f62794v;
                Intrinsics.g(progressUgcImmBar, "progressUgcImmBar");
                uf.c.k(progressUgcImmBar);
                long currentProgress = g.this.f66126a.a().f62794v.getCurrentProgress();
                UGCImmVideo data = g.this.f66126a.getData();
                if (data == null || !data.isDataComplete()) {
                    wf.a.C0922a.f(wf.a.f74274a, g.this.f66126a.getLogTag(), "数据还没有拉下来，不进行seek", false, 4, null);
                    return;
                }
                com.transsion.player.orplayer.f orPlayer2 = g.this.f66126a.getOrPlayer();
                if (orPlayer2 != null) {
                    orPlayer2.seekTo(currentProgress);
                }
                com.transsion.player.orplayer.f orPlayer3 = g.this.f66126a.getOrPlayer();
                if (orPlayer3 == null || orPlayer3.isPlaying() || (orPlayer = g.this.f66126a.getOrPlayer()) == null) {
                    return;
                }
                orPlayer.play();
            }
        }

        @Override
        public void onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
        }
    }

    public g(a host, i reportDelegate) {
        Intrinsics.h(host, "host");
        Intrinsics.h(reportDelegate, "reportDelegate");
        this.f66126a = host;
        this.f66127b = reportDelegate;
    }

    private final void h() {
        if (this.f66131f > 0.0f) {
            wf.a.C0922a.f(wf.a.f74274a, this.f66126a.getLogTag(), "endFastForward speed:" + this.f66131f, false, 4, null);
            com.transsion.player.orplayer.f orPlayer = this.f66126a.getOrPlayer();
            if (orPlayer != null) {
                orPlayer.setSpeed(this.f66131f);
            }
            BLTextView tvUgcImmTopSpeed = this.f66126a.a().F;
            Intrinsics.g(tvUgcImmTopSpeed, "tvUgcImmTopSpeed");
            uf.c.g(tvUgcImmTopSpeed);
            this.f66131f = 0.0f;
            this.f66126a.e(true);
        }
    }

    public static final boolean j(View view, MotionEvent motionEvent) {
        return true;
    }

    public final void l() {
        if (this.f66126a.isLoading()) {
            return;
        }
        this.f66126a.e(true);
        com.transsion.player.orplayer.f orPlayer = this.f66126a.getOrPlayer();
        if (orPlayer == null || !orPlayer.isPlaying()) {
            this.f66126a.g();
            this.f66126a.h(false);
            return;
        }
        this.f66126a.h(true);
        com.transsion.player.orplayer.f orPlayer2 = this.f66126a.getOrPlayer();
        if (orPlayer2 != null) {
            orPlayer2.pause();
        }
    }

    public final void n() {
        com.transsion.player.orplayer.f orPlayer = this.f66126a.getOrPlayer();
        if (orPlayer == null || orPlayer.isPlaying()) {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f66126a.b();
            this.f66131f = uGCImmVideoDetailViewModelB != null ? uGCImmVideoDetailViewModelB.X0() : 1.0f;
            com.transsion.player.orplayer.f orPlayer2 = this.f66126a.getOrPlayer();
            if (orPlayer2 != null) {
                orPlayer2.setSpeed(this.f66131f * 2.0f);
            }
            i iVar = this.f66127b;
            UGCImmVideo data = this.f66126a.getData();
            UGCVideo ugcVideo = data != null ? data.getUgcVideo() : null;
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f66126a.b();
            iVar.a("long_pressed", ugcVideo, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB2 != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB2.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            wf.a.C0922a.f(wf.a.f74274a, this.f66126a.getLogTag(), "startFastForward speed:" + (this.f66131f * 2.0f), false, 4, null);
            this.f66126a.a().F.setText((this.f66131f * 2.0f) + "x");
            BLTextView tvUgcImmTopSpeed = this.f66126a.a().F;
            Intrinsics.g(tvUgcImmTopSpeed, "tvUgcImmTopSpeed");
            uf.c.k(tvUgcImmTopSpeed);
            this.f66126a.e(false);
        }
    }

    public final void i() {
        Context context = this.f66126a.a().getRoot().getContext();
        this.f66128c = new GestureDetector(context, new b());
        new com.transsion.baseui.widget.f(context, this.f66126a.a().L).s(new c(context));
        this.f66126a.a().f62797y.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return g.j(view, motionEvent);
            }
        });
    }

    public final boolean k() {
        return this.f66130e;
    }

    public final boolean m(MotionEvent event) {
        Intrinsics.h(event, "event");
        int actionMasked = event.getActionMasked();
        if ((actionMasked == 1 || actionMasked == 3) && this.f66129d) {
            this.f66129d = false;
            h();
        }
        GestureDetector gestureDetector = this.f66128c;
        return gestureDetector != null && gestureDetector.onTouchEvent(event);
    }
}

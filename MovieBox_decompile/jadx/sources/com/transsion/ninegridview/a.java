package com.transsion.ninegridview;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.recyclerview.widget.RecyclerView;
import com.aliyun.player.bean.ErrorCode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.f;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import vm.d;
import yg.l;
import yg.m;

public final class a implements d {

    public static final C0612a f45792h = new C0612a(null);

    private static final hn.d f45793i = new hn.d(RenderType.TEXTURE_VIEW, false, 0, 1000, 1000, 200, 10, 0, 0, 0, 0, false, false, false, false, false, null, 130950, null);

    private f f45794a;

    private wm.a f45795b;

    private vm.c f45796c;

    private m f45797d;

    private boolean f45798e;

    private vm.a f45799f;

    private Context f45800g;

    public static final class C0612a {
        public C0612a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final hn.d a() {
            return a.f45793i;
        }

        private C0612a() {
        }
    }

    public static final class b implements m {
        b() {
        }

        @Override
        public void onConnected() {
            m.a.a(this);
        }

        @Override
        public void onDisconnected() {
            a.this.f45798e = true;
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            vm.a aVar = a.this.f45799f;
            if (aVar != null) {
                int iA = aVar.a();
                a aVar2 = a.this;
                if (aVar2.f45798e && iA == ErrorCode.ERROR_LOADING_TIMEOUT.getValue()) {
                    wm.a aVarG = aVar2.g();
                    if (aVarG != null) {
                        aVarG.w();
                    }
                    aVar2.f45798e = false;
                }
            }
        }
    }

    @Override
    public void a() {
        Context context = this.f45800g;
        if (context != null) {
            j(context);
        }
    }

    public final void f() {
        f fVar = this.f45794a;
        if (fVar != null) {
            fVar.release();
        }
        this.f45794a = null;
        wm.a aVar = this.f45795b;
        if (aVar != null) {
            aVar.a();
        }
        this.f45795b = null;
        vm.c cVar = this.f45796c;
        if (cVar != null) {
            cVar.e();
        }
        this.f45796c = null;
        l.f76264a.m(this.f45797d);
        this.f45797d = null;
    }

    public final wm.a g() {
        return this.f45795b;
    }

    public final void h() {
        if (this.f45796c == null) {
            this.f45796c = new vm.c();
        }
        vm.c cVar = this.f45796c;
        if (cVar != null) {
            cVar.e();
        }
    }

    public final void i() {
        if (this.f45797d == null) {
            b bVar = new b();
            this.f45797d = bVar;
            l.f76264a.l(bVar);
        }
    }

    public final void j(Context context) {
        Intrinsics.h(context, "context");
        if (this.f45794a == null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            ORPlayerView oRPlayerView = new ORPlayerView(applicationContext, RenderType.TEXTURE_VIEW);
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.g(applicationContext2, "getApplicationContext(...)");
            f fVarA = new f.a(applicationContext2).a();
            fVarA.setPlayerConfig(f45793i);
            fVarA.setTextureView(oRPlayerView.getTextureView());
            fVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
            fVarA.setMute(true);
            this.f45795b = new wm.a(fVarA, oRPlayerView);
            vm.a aVar = new vm.a();
            aVar.b(this.f45795b);
            fVarA.setPlayerListener(aVar);
            this.f45799f = aVar;
            this.f45794a = fVarA;
            vm.c cVar = this.f45796c;
            if (cVar != null) {
                cVar.k(this.f45795b);
            }
            i();
            wf.a.C0922a.f(wf.a.f74274a, "GifPlayerManager", "initPlayer", false, 4, null);
        }
    }

    public final void k() {
        f fVar = this.f45794a;
        if (fVar != null) {
            fVar.pause();
        }
    }

    public final void l() {
        f fVar = this.f45794a;
        if (fVar != null) {
            fVar.play();
        }
    }

    public final void m() {
        wm.a aVar = this.f45795b;
        if (aVar != null) {
            aVar.x(-1);
        }
    }

    public final void n(RecyclerView recyclerView, BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(recyclerView, "recyclerView");
        this.f45800g = recyclerView.getContext();
        h();
        vm.c cVar = this.f45796c;
        if (cVar != null) {
            cVar.j(baseQuickAdapter);
            recyclerView.addOnScrollListener(cVar);
        }
        vm.c cVar2 = this.f45796c;
        if (cVar2 != null) {
            cVar2.l(this);
        }
    }
}

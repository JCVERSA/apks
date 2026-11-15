package com.yandex.div.core;

import android.graphics.drawable.PictureDrawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div2.Div;
import com.yandex.div2.DivBackground;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import com.yandex.div2.DivVideoSource;
import defpackage.bh2;
import defpackage.cw2;
import defpackage.dq0;
import defpackage.jn5;
import defpackage.mo2;
import defpackage.oj3;
import defpackage.pfb;
import defpackage.rk2;
import defpackage.vi2;
import defpackage.y45;
import defpackage.yk2;
import defpackage.zfb;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class DivPreloader {
    public static final b f = new b(null);
    public static final a g = new a() {
        @Override
        public final void a(boolean z) {
            DivPreloader.b(z);
        }
    };
    public final yk2 a;
    public final com.yandex.div.core.a b;
    public final vi2 c;
    public final mo2 d;
    public final c e;

    public static final class DownloadCallback extends rk2 {
        public final a a;
        public int b;
        public int c;
        public boolean d;

        public DownloadCallback(a aVar) {
            y45.j(aVar, "callback");
            this.a = aVar;
        }

        @Override
        public void a() {
            if (!pfb.c()) {
                pfb.b().post(new Runnable() {
                    @Override
                    public final void run() {
                        this.this$0.c++;
                        this.this$0.l();
                    }
                });
            } else {
                this.c++;
                l();
            }
        }

        @Override
        public void b(dq0 dq0Var) {
            y45.j(dq0Var, "cachedBitmap");
            l();
        }

        @Override
        public void c(PictureDrawable pictureDrawable) {
            y45.j(pictureDrawable, "pictureDrawable");
            l();
        }

        public final void l() {
            if (!pfb.c()) {
                pfb.b().post(new Runnable() {
                    @Override
                    public final void run() {
                        this.this$0.b--;
                        if (this.this$0.b == 0 && this.this$0.d) {
                            this.this$0.a.a(this.this$0.c != 0);
                        }
                    }
                });
                return;
            }
            this.b--;
            if (this.b == 0 && this.d) {
                this.a.a(this.c != 0);
            }
        }

        public final void m() {
            if (!pfb.c()) {
                pfb.b().post(new Runnable() {
                    @Override
                    public final void run() {
                        this.this$0.d = true;
                        if (this.this$0.b == 0) {
                            this.this$0.a.a(this.this$0.c != 0);
                        }
                    }
                });
                return;
            }
            this.d = true;
            if (this.b == 0) {
                this.a.a(this.c != 0);
            }
        }

        public final void n() {
            if (pfb.c()) {
                this.b++;
            } else {
                pfb.b().post(new Runnable() {
                    @Override
                    public final void run() {
                        this.this$0.b++;
                    }
                });
            }
        }
    }

    public interface a {
        void a(boolean z);
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return DivPreloader.g;
        }

        public b() {
        }
    }

    public interface c {
        public static final C0278c a = C0278c.a;
        public static final c b = new a();
        public static final c c = new b();

        public static final class a implements c {
            @Override
            public boolean a(DivBackground divBackground, oj3 oj3Var) {
                y45.j(divBackground, "background");
                y45.j(oj3Var, "resolver");
                if (divBackground instanceof DivBackground.b) {
                    return ((Boolean) ((DivBackground.b) divBackground).c().f.b(oj3Var)).booleanValue();
                }
                return false;
            }

            @Override
            public boolean b(Div div, oj3 oj3Var) {
                y45.j(div, TtmlNode.TAG_DIV);
                y45.j(oj3Var, "resolver");
                if (div instanceof Div.r) {
                    return ((Boolean) ((Div.r) div).c().A.b(oj3Var)).booleanValue();
                }
                if (div instanceof Div.g) {
                    return ((Boolean) ((Div.g) div).c().H.b(oj3Var)).booleanValue();
                }
                if (div instanceof Div.e) {
                    return ((Boolean) ((Div.e) div).c().E.b(oj3Var)).booleanValue();
                }
                return false;
            }
        }

        public static final class b implements c {
            @Override
            public boolean a(DivBackground divBackground, oj3 oj3Var) {
                y45.j(divBackground, "background");
                y45.j(oj3Var, "resolver");
                return true;
            }

            @Override
            public boolean b(Div div, oj3 oj3Var) {
                y45.j(div, TtmlNode.TAG_DIV);
                y45.j(oj3Var, "resolver");
                return true;
            }
        }

        public static final class C0278c {
            public static final C0278c a = new C0278c();
        }

        boolean a(DivBackground divBackground, oj3 oj3Var);

        boolean b(Div div, oj3 oj3Var);
    }

    public interface d {
        public static final a a = a.a;

        public static final class a {
            public static final a a = new a();
            public static final d b = new d() {
                @Override
                public final void cancel() {
                    DivPreloader.d.a.b();
                }
            };

            public static final void b() {
            }

            public final d c() {
                return b;
            }
        }

        void cancel();
    }

    public final class e extends cw2 {
        public final DownloadCallback a;
        public final a b;
        public final oj3 c;
        public final c d;
        public final g e;
        public final DivPreloader f;

        public e(DivPreloader divPreloader, DownloadCallback downloadCallback, a aVar, oj3 oj3Var, c cVar) {
            y45.j(downloadCallback, "downloadCallback");
            y45.j(aVar, "callback");
            y45.j(oj3Var, "resolver");
            y45.j(cVar, "preloadFilter");
            this.f = divPreloader;
            this.a = downloadCallback;
            this.b = aVar;
            this.c = oj3Var;
            this.d = cVar;
            this.e = new g();
        }

        public void A(Div.n nVar, oj3 oj3Var) {
            y45.j(nVar, "data");
            y45.j(oj3Var, "resolver");
            Iterator it = nVar.c().y.iterator();
            while (it.hasNext()) {
                Div div = ((DivState.State) it.next()).c;
                if (div != null) {
                    s(div, oj3Var);
                }
            }
            t(nVar, oj3Var);
        }

        public void B(Div.p pVar, oj3 oj3Var) {
            y45.j(pVar, "data");
            y45.j(oj3Var, "resolver");
            Iterator it = pVar.c().q.iterator();
            while (it.hasNext()) {
                s(((DivTabs.Item) it.next()).a, oj3Var);
            }
            t(pVar, oj3Var);
        }

        public void C(Div.r rVar, oj3 oj3Var) {
            y45.j(rVar, "data");
            y45.j(oj3Var, "resolver");
            t(rVar, oj3Var);
            if (this.d.b(rVar, oj3Var)) {
                ArrayList arrayList = new ArrayList();
                Iterator it = rVar.c().Q.iterator();
                while (it.hasNext()) {
                    arrayList.add(((DivVideoSource) it.next()).d.b(oj3Var));
                }
                this.e.b(this.f.d.a(arrayList));
            }
        }

        @Override
        public Object a(Div div, oj3 oj3Var) {
            t(div, oj3Var);
            return zfb.a;
        }

        @Override
        public Object b(Div.b bVar, oj3 oj3Var) {
            v(bVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object c(Div.c cVar, oj3 oj3Var) {
            w(cVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object d(Div.d dVar, oj3 oj3Var) {
            x(dVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object f(Div.f fVar, oj3 oj3Var) {
            y(fVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object j(Div.j jVar, oj3 oj3Var) {
            z(jVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object n(Div.n nVar, oj3 oj3Var) {
            A(nVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object p(Div.p pVar, oj3 oj3Var) {
            B(pVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object r(Div.r rVar, oj3 oj3Var) {
            C(rVar, oj3Var);
            return zfb.a;
        }

        public void t(Div div, oj3 oj3Var) {
            List listC;
            y45.j(div, "data");
            y45.j(oj3Var, "resolver");
            yk2 yk2Var = this.f.a;
            if (yk2Var != null && (listC = yk2Var.c(div, oj3Var, this.d, this.a)) != null) {
                Iterator it = listC.iterator();
                while (it.hasNext()) {
                    this.e.a((jn5) it.next());
                }
            }
            this.f.c.d(div.b(), oj3Var);
        }

        public final f u(Div div) {
            y45.j(div, TtmlNode.TAG_DIV);
            s(div, this.c);
            return this.e;
        }

        public void v(Div.b bVar, oj3 oj3Var) {
            y45.j(bVar, "data");
            y45.j(oj3Var, "resolver");
            for (zl2 zl2Var : bh2.c(bVar.c(), oj3Var)) {
                s(zl2Var.a(), zl2Var.b());
            }
            t(bVar, oj3Var);
        }

        public void w(Div.c cVar, oj3 oj3Var) {
            y45.j(cVar, "data");
            y45.j(oj3Var, "resolver");
            List list = cVar.c().q;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    s((Div) it.next(), oj3Var);
                }
            }
            this.e.b(this.f.b.preload(cVar.c(), this.b));
            t(cVar, oj3Var);
        }

        public void x(Div.d dVar, oj3 oj3Var) {
            y45.j(dVar, "data");
            y45.j(oj3Var, "resolver");
            for (zl2 zl2Var : bh2.d(dVar.c(), oj3Var)) {
                s(zl2Var.a(), zl2Var.b());
            }
            t(dVar, oj3Var);
        }

        public void y(Div.f fVar, oj3 oj3Var) {
            y45.j(fVar, "data");
            y45.j(oj3Var, "resolver");
            Iterator it = bh2.n(fVar.c()).iterator();
            while (it.hasNext()) {
                s((Div) it.next(), oj3Var);
            }
            t(fVar, oj3Var);
        }

        public void z(Div.j jVar, oj3 oj3Var) {
            y45.j(jVar, "data");
            y45.j(oj3Var, "resolver");
            for (zl2 zl2Var : bh2.e(jVar.c(), oj3Var)) {
                s(zl2Var.a(), zl2Var.b());
            }
            t(jVar, oj3Var);
        }
    }

    public interface f {
        void cancel();
    }

    public static final class g implements f {
        public final List a = new ArrayList();

        public static final class a implements d {
            public final jn5 b;

            public a(jn5 jn5Var) {
                this.b = jn5Var;
            }

            @Override
            public void cancel() {
                this.b.cancel();
            }
        }

        public final void a(jn5 jn5Var) {
            y45.j(jn5Var, TypedValues.Custom.S_REFERENCE);
            this.a.add(c(jn5Var));
        }

        public final void b(d dVar) {
            y45.j(dVar, TypedValues.Custom.S_REFERENCE);
            this.a.add(dVar);
        }

        public final d c(jn5 jn5Var) {
            return new a(jn5Var);
        }

        @Override
        public void cancel() {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((d) it.next()).cancel();
            }
        }
    }

    public DivPreloader(yk2 yk2Var, com.yandex.div.core.a aVar, vi2 vi2Var, mo2 mo2Var, c cVar) {
        y45.j(aVar, "customContainerViewAdapter");
        y45.j(vi2Var, "extensionController");
        y45.j(mo2Var, "videoPreloader");
        y45.j(cVar, "preloadFilter");
        this.a = yk2Var;
        this.b = aVar;
        this.c = vi2Var;
        this.d = mo2Var;
        this.e = cVar;
    }

    public static final void b(boolean z) {
    }

    public f h(Div div, oj3 oj3Var, a aVar) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        y45.j(aVar, "callback");
        DownloadCallback downloadCallback = new DownloadCallback(aVar);
        f fVarU = new e(this, downloadCallback, aVar, oj3Var, this.e).u(div);
        downloadCallback.m();
        return fVarU;
    }
}

package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.DivPreloader;
import com.yandex.div2.Div;
import com.yandex.div2.DivBackground;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import com.yandex.div2.DivText;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class yk2 {
    public final wk2 a;

    public final class a extends cw2 {
        public final DivPreloader.DownloadCallback a;
        public final oj3 b;
        public final DivPreloader.c c;
        public final boolean d;
        public final ArrayList e;
        public final yk2 f;

        public a(yk2 yk2Var, DivPreloader.DownloadCallback downloadCallback, oj3 oj3Var, DivPreloader.c cVar, boolean z) {
            y45.j(downloadCallback, "callback");
            y45.j(oj3Var, "resolver");
            y45.j(cVar, "preloadFilter");
            this.f = yk2Var;
            this.a = downloadCallback;
            this.b = oj3Var;
            this.c = cVar;
            this.d = z;
            this.e = new ArrayList();
        }

        public void A(Div.j jVar, oj3 oj3Var) {
            y45.j(jVar, "data");
            y45.j(oj3Var, "resolver");
            t(jVar, oj3Var);
            if (this.d) {
                for (zl2 zl2Var : bh2.e(jVar.c(), oj3Var)) {
                    s(zl2Var.c(), zl2Var.d());
                }
            }
        }

        public void B(Div.n nVar, oj3 oj3Var) {
            y45.j(nVar, "data");
            y45.j(oj3Var, "resolver");
            t(nVar, oj3Var);
            if (this.d) {
                Iterator it = nVar.c().y.iterator();
                while (it.hasNext()) {
                    Div div = ((DivState.State) it.next()).c;
                    if (div != null) {
                        s(div, oj3Var);
                    }
                }
            }
        }

        public void C(Div.p pVar, oj3 oj3Var) {
            y45.j(pVar, "data");
            y45.j(oj3Var, "resolver");
            t(pVar, oj3Var);
            if (this.d) {
                Iterator it = pVar.c().q.iterator();
                while (it.hasNext()) {
                    s(((DivTabs.Item) it.next()).a, oj3Var);
                }
            }
        }

        public void D(Div.q qVar, oj3 oj3Var) {
            y45.j(qVar, "data");
            y45.j(oj3Var, "resolver");
            t(qVar, oj3Var);
            List list = qVar.c().F;
            if (list != null) {
                yk2 yk2Var = this.f;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String string = ((Uri) ((DivText.Image) it.next()).i.b(oj3Var)).toString();
                    y45.i(string, "it.url.evaluate(resolver).toString()");
                    yk2Var.d(string, this.a, this.e);
                }
            }
        }

        public final void E(Div div, oj3 oj3Var) {
            List<DivBackground> background = div.b().getBackground();
            if (background != null) {
                yk2 yk2Var = this.f;
                for (DivBackground divBackground : background) {
                    if ((divBackground instanceof DivBackground.b) && this.c.a(divBackground, oj3Var)) {
                        String string = ((Uri) ((DivBackground.b) divBackground).c().e.b(oj3Var)).toString();
                        y45.i(string, "background.value.imageUr…uate(resolver).toString()");
                        yk2Var.d(string, this.a, this.e);
                    }
                }
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
        public Object d(Div.d dVar, oj3 oj3Var) {
            w(dVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object e(Div.e eVar, oj3 oj3Var) {
            x(eVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object f(Div.f fVar, oj3 oj3Var) {
            y(fVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object g(Div.g gVar, oj3 oj3Var) {
            z(gVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object j(Div.j jVar, oj3 oj3Var) {
            A(jVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object n(Div.n nVar, oj3 oj3Var) {
            B(nVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object p(Div.p pVar, oj3 oj3Var) {
            C(pVar, oj3Var);
            return zfb.a;
        }

        @Override
        public Object q(Div.q qVar, oj3 oj3Var) {
            D(qVar, oj3Var);
            return zfb.a;
        }

        public void t(Div div, oj3 oj3Var) {
            y45.j(div, "data");
            y45.j(oj3Var, "resolver");
            E(div, oj3Var);
        }

        public final List u(Div div) {
            y45.j(div, TtmlNode.TAG_DIV);
            s(div, this.b);
            return this.e;
        }

        public void v(Div.b bVar, oj3 oj3Var) {
            y45.j(bVar, "data");
            y45.j(oj3Var, "resolver");
            t(bVar, oj3Var);
            if (this.d) {
                for (zl2 zl2Var : bh2.c(bVar.c(), oj3Var)) {
                    s(zl2Var.c(), zl2Var.d());
                }
            }
        }

        public void w(Div.d dVar, oj3 oj3Var) {
            y45.j(dVar, "data");
            y45.j(oj3Var, "resolver");
            t(dVar, oj3Var);
            if (this.d) {
                for (zl2 zl2Var : bh2.d(dVar.c(), oj3Var)) {
                    s(zl2Var.c(), zl2Var.d());
                }
            }
        }

        public void x(Div.e eVar, oj3 oj3Var) {
            y45.j(eVar, "data");
            y45.j(oj3Var, "resolver");
            t(eVar, oj3Var);
            if (this.c.b(eVar, oj3Var)) {
                yk2 yk2Var = this.f;
                String string = ((Uri) eVar.c().u.b(oj3Var)).toString();
                y45.i(string, "data.value.gifUrl.evaluate(resolver).toString()");
                yk2Var.e(string, this.a, this.e);
            }
        }

        public void y(Div.f fVar, oj3 oj3Var) {
            y45.j(fVar, "data");
            y45.j(oj3Var, "resolver");
            t(fVar, oj3Var);
            if (this.d) {
                Iterator it = bh2.n(fVar.c()).iterator();
                while (it.hasNext()) {
                    s((Div) it.next(), oj3Var);
                }
            }
        }

        public void z(Div.g gVar, oj3 oj3Var) {
            y45.j(gVar, "data");
            y45.j(oj3Var, "resolver");
            t(gVar, oj3Var);
            if (this.c.b(gVar, oj3Var)) {
                yk2 yk2Var = this.f;
                String string = ((Uri) gVar.c().B.b(oj3Var)).toString();
                y45.i(string, "data.value.imageUrl.evaluate(resolver).toString()");
                yk2Var.d(string, this.a, this.e);
            }
        }
    }

    public yk2(wk2 wk2Var) {
        y45.j(wk2Var, "imageLoader");
        this.a = wk2Var;
    }

    public List c(Div div, oj3 oj3Var, DivPreloader.c cVar, DivPreloader.DownloadCallback downloadCallback) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        y45.j(cVar, "preloadFilter");
        y45.j(downloadCallback, "callback");
        return new a(this, downloadCallback, oj3Var, cVar, false).u(div);
    }

    public final void d(String str, DivPreloader.DownloadCallback downloadCallback, ArrayList arrayList) {
        arrayList.add(this.a.loadImage(str, downloadCallback, -1));
        downloadCallback.n();
    }

    public final void e(String str, DivPreloader.DownloadCallback downloadCallback, ArrayList arrayList) {
        arrayList.add(this.a.loadImageBytes(str, downloadCallback, -1));
        downloadCallback.n();
    }
}

package com.yandex.div.core;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.internal.core.DivTreeVisitor;
import com.yandex.div2.Div;
import com.yandex.div2.DivVideoSource;
import defpackage.jn5;
import defpackage.mo2;
import defpackage.vi2;
import defpackage.y45;
import defpackage.yk2;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class d {
    public final yk2 a;
    public final com.yandex.div.core.a b;
    public final vi2 c;
    public final mo2 d;
    public final DivPreloader.c e;

    public final class a extends DivTreeVisitor {
        public final DivPreloader.DownloadCallback c;
        public final DivPreloader.a d;
        public final DivPreloader.c e;
        public final DivPreloader.g f;
        public final d g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(d dVar, DivPreloader.DownloadCallback downloadCallback, DivPreloader.a aVar, DivPreloader.c cVar) {
            super(null, 1, 0 == true ? 1 : 0);
            y45.j(downloadCallback, "downloadCallback");
            y45.j(aVar, "callback");
            y45.j(cVar, "preloadFilter");
            this.g = dVar;
            this.c = downloadCallback;
            this.d = aVar;
            this.e = cVar;
            this.f = new DivPreloader.g();
        }

        public void A(Div.c cVar, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y45.j(cVar, "data");
            y45.j(aVar, "context");
            y45.j(divStatePath, "path");
            super.h(cVar, aVar, divStatePath);
            this.f.b(this.g.b.preload(cVar.c(), this.d));
        }

        public void B(Div.r rVar, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y45.j(rVar, "data");
            y45.j(aVar, "context");
            y45.j(divStatePath, "path");
            y(rVar, aVar, divStatePath);
            if (this.e.b(rVar, aVar.b())) {
                ArrayList arrayList = new ArrayList();
                Iterator it = rVar.c().Q.iterator();
                while (it.hasNext()) {
                    arrayList.add(((DivVideoSource) it.next()).d.b(aVar.b()));
                }
                this.f.b(this.g.d.a(arrayList));
            }
        }

        @Override
        public Object c(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y(div, aVar, divStatePath);
            return zfb.a;
        }

        @Override
        public Object h(Div.c cVar, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            A(cVar, aVar, divStatePath);
            return zfb.a;
        }

        @Override
        public Object w(Div.r rVar, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            B(rVar, aVar, divStatePath);
            return zfb.a;
        }

        public void y(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            List listC;
            y45.j(div, "data");
            y45.j(aVar, "context");
            y45.j(divStatePath, "path");
            yk2 yk2Var = this.g.a;
            if (yk2Var != null && (listC = yk2Var.c(div, aVar.b(), this.e, this.c)) != null) {
                Iterator it = listC.iterator();
                while (it.hasNext()) {
                    this.f.a((jn5) it.next());
                }
            }
            this.g.c.d(div.b(), aVar.b());
        }

        public final DivPreloader.f z(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y45.j(div, TtmlNode.TAG_DIV);
            y45.j(aVar, "context");
            y45.j(divStatePath, "path");
            x(div, aVar, divStatePath);
            return this.f;
        }
    }

    public d(yk2 yk2Var, com.yandex.div.core.a aVar, vi2 vi2Var, mo2 mo2Var, DivPreloader.c cVar) {
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

    public static DivPreloader.f f(d dVar, Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath, DivPreloader.a aVar2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: preload");
        }
        if ((i & 8) != 0) {
            aVar2 = DivPreloader.f.a();
        }
        return dVar.e(div, aVar, divStatePath, aVar2);
    }

    public DivPreloader.f e(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath, DivPreloader.a aVar2) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(aVar, "context");
        y45.j(divStatePath, "path");
        y45.j(aVar2, "callback");
        DivPreloader.DownloadCallback downloadCallback = new DivPreloader.DownloadCallback(aVar2);
        DivPreloader.f fVarZ = new a(this, downloadCallback, aVar2, this.e).z(div, aVar, divStatePath);
        downloadCallback.m();
        return fVarZ;
    }
}

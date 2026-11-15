package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivContainerBinder;
import com.yandex.div.core.view2.divs.DivCustomBinder;
import com.yandex.div.core.view2.divs.DivGifImageBinder;
import com.yandex.div.core.view2.divs.DivGridBinder;
import com.yandex.div.core.view2.divs.DivImageBinder;
import com.yandex.div.core.view2.divs.DivIndicatorBinder;
import com.yandex.div.core.view2.divs.DivInputBinder;
import com.yandex.div.core.view2.divs.DivSelectBinder;
import com.yandex.div.core.view2.divs.DivSeparatorBinder;
import com.yandex.div.core.view2.divs.DivSliderBinder;
import com.yandex.div.core.view2.divs.DivStateBinder;
import com.yandex.div.core.view2.divs.DivSwitchBinder;
import com.yandex.div.core.view2.divs.DivTextBinder;
import com.yandex.div.core.view2.divs.DivVideoBinder;
import com.yandex.div.core.view2.divs.gallery.DivGalleryBinder;
import com.yandex.div.core.view2.divs.pager.DivPagerBinder;
import com.yandex.div.core.view2.divs.tabs.DivTabsBinder;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div.core.view2.divs.widgets.DivGifImageView;
import com.yandex.div.core.view2.divs.widgets.DivGridLayout;
import com.yandex.div.core.view2.divs.widgets.DivImageView;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.core.view2.divs.widgets.DivPagerIndicatorView;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivSelectView;
import com.yandex.div.core.view2.divs.widgets.DivSeparatorView;
import com.yandex.div.core.view2.divs.widgets.DivSliderView;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div.core.view2.divs.widgets.DivSwitchView;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div.core.view2.divs.widgets.DivVideoView;
import com.yandex.div.json.ParsingException;
import com.yandex.div2.Div;
import kotlin.NoWhenBranchMatchedException;

public class rg2 {
    public final fu2 a;
    public final DivTextBinder b;
    public final DivContainerBinder c;
    public final DivSeparatorBinder d;
    public final DivImageBinder e;
    public final DivGifImageBinder f;
    public final DivGridBinder g;
    public final DivGalleryBinder h;
    public final DivPagerBinder i;
    public final DivTabsBinder j;
    public final DivStateBinder k;
    public final DivCustomBinder l;
    public final DivIndicatorBinder m;
    public final DivSliderBinder n;
    public final DivInputBinder o;
    public final DivSelectBinder p;
    public final DivVideoBinder q;
    public final vi2 r;
    public final xv7 s;
    public final DivSwitchBinder t;

    public rg2(fu2 fu2Var, DivTextBinder divTextBinder, DivContainerBinder divContainerBinder, DivSeparatorBinder divSeparatorBinder, DivImageBinder divImageBinder, DivGifImageBinder divGifImageBinder, DivGridBinder divGridBinder, DivGalleryBinder divGalleryBinder, DivPagerBinder divPagerBinder, DivTabsBinder divTabsBinder, DivStateBinder divStateBinder, DivCustomBinder divCustomBinder, DivIndicatorBinder divIndicatorBinder, DivSliderBinder divSliderBinder, DivInputBinder divInputBinder, DivSelectBinder divSelectBinder, DivVideoBinder divVideoBinder, vi2 vi2Var, xv7 xv7Var, DivSwitchBinder divSwitchBinder) {
        y45.j(fu2Var, "validator");
        y45.j(divTextBinder, "textBinder");
        y45.j(divContainerBinder, "containerBinder");
        y45.j(divSeparatorBinder, "separatorBinder");
        y45.j(divImageBinder, "imageBinder");
        y45.j(divGifImageBinder, "gifImageBinder");
        y45.j(divGridBinder, "gridBinder");
        y45.j(divGalleryBinder, "galleryBinder");
        y45.j(divPagerBinder, "pagerBinder");
        y45.j(divTabsBinder, "tabsBinder");
        y45.j(divStateBinder, "stateBinder");
        y45.j(divCustomBinder, "customBinder");
        y45.j(divIndicatorBinder, "indicatorBinder");
        y45.j(divSliderBinder, "sliderBinder");
        y45.j(divInputBinder, "inputBinder");
        y45.j(divSelectBinder, "selectBinder");
        y45.j(divVideoBinder, "videoBinder");
        y45.j(vi2Var, "extensionController");
        y45.j(xv7Var, "pagerIndicatorConnector");
        y45.j(divSwitchBinder, "switchBinder");
        this.a = fu2Var;
        this.b = divTextBinder;
        this.c = divContainerBinder;
        this.d = divSeparatorBinder;
        this.e = divImageBinder;
        this.f = divGifImageBinder;
        this.g = divGridBinder;
        this.h = divGalleryBinder;
        this.i = divPagerBinder;
        this.j = divTabsBinder;
        this.k = divStateBinder;
        this.l = divCustomBinder;
        this.m = divIndicatorBinder;
        this.n = divSliderBinder;
        this.o = divInputBinder;
        this.p = divSelectBinder;
        this.q = divVideoBinder;
        this.r = vi2Var;
        this.s = xv7Var;
        this.t = divSwitchBinder;
    }

    public void a() {
        this.s.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(a aVar, View view, Div div, DivStatePath divStatePath) {
        Div div2;
        y45.j(aVar, "parentContext");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        try {
            a aVarA = xt2.a(aVar, div, divStatePath);
            Div2View div2ViewA = aVarA.a();
            oj3 oj3VarB = aVarA.b();
            xu8 currentRebindReusableList$div_release = div2ViewA.getCurrentRebindReusableList$div_release();
            if (currentRebindReusableList$div_release == null || currentRebindReusableList$div_release.f(div) == null) {
                if (!this.a.u(div, oj3VarB)) {
                    k(view, div.b(), oj3VarB);
                    return;
                }
                this.r.a(div2ViewA, oj3VarB, view, div.b());
                if (!(div instanceof Div.c) && (div2 = ((mk2) view).getDiv()) != null) {
                    this.r.e(div2ViewA, oj3VarB, view, div2.b());
                }
                if (div instanceof Div.q) {
                    s(aVarA, view, (Div.q) div);
                } else if (div instanceof Div.g) {
                    h(aVarA, view, (Div.g) div);
                } else if (div instanceof Div.e) {
                    f(aVarA, view, (Div.e) div);
                } else if (div instanceof Div.l) {
                    n(aVarA, view, (Div.l) div);
                } else if (div instanceof Div.b) {
                    c(aVarA, view, (Div.b) div, divStatePath);
                } else if (div instanceof Div.f) {
                    g(aVarA, view, (Div.f) div, divStatePath);
                } else if (div instanceof Div.d) {
                    e(aVarA, view, (Div.d) div, divStatePath);
                } else if (div instanceof Div.j) {
                    l(aVarA, view, (Div.j) div, divStatePath);
                } else if (div instanceof Div.p) {
                    r(aVarA, view, (Div.p) div, divStatePath);
                } else if (div instanceof Div.n) {
                    p(aVarA, view, (Div.n) div, divStatePath);
                } else if (div instanceof Div.c) {
                    d(aVarA, view, (Div.c) div, divStatePath);
                } else if (div instanceof Div.h) {
                    i(aVarA, view, (Div.h) div);
                } else if (div instanceof Div.m) {
                    o(aVarA, view, (Div.m) div, divStatePath);
                } else if (div instanceof Div.i) {
                    j(aVarA, view, (Div.i) div, divStatePath);
                } else if (div instanceof Div.k) {
                    m(aVarA, view, (Div.k) div, divStatePath);
                } else if (div instanceof Div.r) {
                    t(aVarA, view, (Div.r) div, divStatePath);
                } else {
                    if (!(div instanceof Div.o)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    q(aVarA, view, (Div.o) div, divStatePath);
                }
                zfb zfbVar = zfb.a;
                if (div instanceof Div.c) {
                    return;
                }
                this.r.b(div2ViewA, oj3VarB, view, div.b());
            }
        } catch (ParsingException e) {
            if (!lj3.b(e)) {
                throw e;
            }
        }
    }

    public final void c(a aVar, View view, Div.b bVar, DivStatePath divStatePath) {
        DivContainerBinder divContainerBinder = this.c;
        y45.h(view, "null cannot be cast to non-null type android.view.ViewGroup");
        divContainerBinder.z(aVar, (ViewGroup) view, bVar, divStatePath);
    }

    public final void d(a aVar, View view, Div.c cVar, DivStatePath divStatePath) {
        DivCustomBinder divCustomBinder = this.l;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCustomWrapper");
        divCustomBinder.h(aVar, (DivCustomWrapper) view, cVar, divStatePath);
    }

    public final void e(a aVar, View view, Div.d dVar, DivStatePath divStatePath) {
        DivGalleryBinder divGalleryBinder = this.h;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivRecyclerView");
        divGalleryBinder.i(aVar, (DivRecyclerView) view, dVar, divStatePath);
    }

    public final void f(a aVar, View view, Div.e eVar) {
        DivGifImageBinder divGifImageBinder = this.f;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivGifImageView");
        divGifImageBinder.c(aVar, (DivGifImageView) view, eVar);
    }

    public final void g(a aVar, View view, Div.f fVar, DivStatePath divStatePath) {
        DivGridBinder divGridBinder = this.g;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivGridLayout");
        divGridBinder.n(aVar, (DivGridLayout) view, fVar, divStatePath);
    }

    public final void h(a aVar, View view, Div.g gVar) {
        DivImageBinder divImageBinder = this.e;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivImageView");
        divImageBinder.c(aVar, (DivImageView) view, gVar);
    }

    public final void i(a aVar, View view, Div.h hVar) {
        DivIndicatorBinder divIndicatorBinder = this.m;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivPagerIndicatorView");
        divIndicatorBinder.i(aVar, (DivPagerIndicatorView) view, hVar);
    }

    public final void j(a aVar, View view, Div.i iVar, DivStatePath divStatePath) {
        DivInputBinder divInputBinder = this.o;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivInputView");
        divInputBinder.d(aVar, (DivInputView) view, iVar, divStatePath);
    }

    public final void k(View view, og2 og2Var, oj3 oj3Var) {
        BaseDivViewExtensionsKt.r(view, og2Var.d(), oj3Var);
    }

    public final void l(a aVar, View view, Div.j jVar, DivStatePath divStatePath) {
        DivPagerBinder divPagerBinder = this.i;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivPagerView");
        divPagerBinder.l(aVar, (DivPagerView) view, jVar, divStatePath);
    }

    public final void m(a aVar, View view, Div.k kVar, DivStatePath divStatePath) {
        DivSelectBinder divSelectBinder = this.p;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivSelectView");
        divSelectBinder.d(aVar, (DivSelectView) view, kVar, divStatePath);
    }

    public final void n(a aVar, View view, Div.l lVar) {
        DivSeparatorBinder divSeparatorBinder = this.d;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivSeparatorView");
        divSeparatorBinder.c(aVar, (DivSeparatorView) view, lVar);
    }

    public final void o(a aVar, View view, Div.m mVar, DivStatePath divStatePath) {
        DivSliderBinder divSliderBinder = this.n;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivSliderView");
        divSliderBinder.d(aVar, (DivSliderView) view, mVar, divStatePath);
    }

    public final void p(a aVar, View view, Div.n nVar, DivStatePath divStatePath) {
        DivStateBinder divStateBinder = this.k;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivStateLayout");
        divStateBinder.n(aVar, (DivStateLayout) view, nVar, divStatePath);
    }

    public final void q(a aVar, View view, Div.o oVar, DivStatePath divStatePath) {
        DivSwitchBinder divSwitchBinder = this.t;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivSwitchView");
        divSwitchBinder.d(aVar, (DivSwitchView) view, oVar, divStatePath);
    }

    public final void r(a aVar, View view, Div.p pVar, DivStatePath divStatePath) {
        DivTabsBinder divTabsBinder = this.j;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivTabsLayout");
        divTabsBinder.y(aVar, (DivTabsLayout) view, pVar, divStatePath);
    }

    public final void s(a aVar, View view, Div.q qVar) {
        DivTextBinder divTextBinder = this.b;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView");
        divTextBinder.c(aVar, (DivLineHeightTextView) view, qVar);
    }

    public final void t(a aVar, View view, Div.r rVar, DivStatePath divStatePath) {
        DivVideoBinder divVideoBinder = this.q;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivVideoView");
        divVideoBinder.d(aVar, (DivVideoView) view, rVar, divStatePath);
    }

    public final void u(a aVar, View view, Div.b bVar) {
        DivContainerBinder divContainerBinder = this.c;
        y45.h(view, "null cannot be cast to non-null type android.view.ViewGroup");
        divContainerBinder.I(aVar, (ViewGroup) view, bVar);
    }

    public final void v(mk2 mk2Var, a aVar, Div div) {
        mk2Var.setDiv(div);
        mk2Var.setBindingContext(aVar);
    }

    public void w(a aVar, View view, Div div) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        if (div instanceof Div.q) {
            v((DivLineHeightTextView) view, aVar, div);
            return;
        }
        if (div instanceof Div.g) {
            v((DivImageView) view, aVar, div);
            return;
        }
        if (div instanceof Div.e) {
            v((DivGifImageView) view, aVar, div);
            return;
        }
        if (div instanceof Div.l) {
            v((DivSeparatorView) view, aVar, div);
            return;
        }
        if (div instanceof Div.b) {
            u(aVar, view, (Div.b) div);
            return;
        }
        if (div instanceof Div.f) {
            x(aVar, view, (Div.f) div);
            return;
        }
        if (div instanceof Div.d) {
            v((DivRecyclerView) view, aVar, div);
            return;
        }
        if (div instanceof Div.j) {
            v((DivPagerView) view, aVar, div);
            return;
        }
        if (div instanceof Div.p) {
            v((DivTabsLayout) view, aVar, div);
            return;
        }
        if (div instanceof Div.n) {
            v((DivStateLayout) view, aVar, div);
            return;
        }
        if (div instanceof Div.c) {
            v((DivCustomWrapper) view, aVar, div);
            return;
        }
        if (div instanceof Div.h) {
            v((DivPagerIndicatorView) view, aVar, div);
            return;
        }
        if (div instanceof Div.m) {
            v((DivSliderView) view, aVar, div);
            return;
        }
        if (div instanceof Div.i) {
            v((DivInputView) view, aVar, div);
            return;
        }
        if (div instanceof Div.k) {
            v((DivSelectView) view, aVar, div);
        } else if (div instanceof Div.r) {
            v((DivVideoView) view, aVar, div);
        } else {
            if (!(div instanceof Div.o)) {
                throw new NoWhenBranchMatchedException();
            }
            v((DivSwitchView) view, aVar, div);
        }
    }

    public final void x(a aVar, View view, Div.f fVar) {
        DivGridBinder divGridBinder = this.g;
        y45.h(view, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivGridLayout");
        divGridBinder.q(aVar, (DivGridLayout) view, fVar);
    }
}

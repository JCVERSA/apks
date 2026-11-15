package com.yandex.div.core.view2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div.core.view2.divs.widgets.DivFrameLayout;
import com.yandex.div.core.view2.divs.widgets.DivGifImageView;
import com.yandex.div.core.view2.divs.widgets.DivGridLayout;
import com.yandex.div.core.view2.divs.widgets.DivImageView;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.core.view2.divs.widgets.DivLinearLayout;
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
import com.yandex.div.core.view2.divs.widgets.DivWrapLayout;
import com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository;
import com.yandex.div2.Div;
import com.yandex.div2.DivContainer;
import defpackage.ViewPreCreationProfile;
import defpackage.b17;
import defpackage.bh2;
import defpackage.cdc;
import defpackage.cw2;
import defpackage.dl0;
import defpackage.fu2;
import defpackage.hcc;
import defpackage.oj3;
import defpackage.y45;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public class DivViewCreator extends cw2 {
    public static final a e = new a(null);
    public static final String[] f = {"DIV2.TEXT_VIEW", "DIV2.IMAGE_VIEW", "DIV2.IMAGE_GIF_VIEW", "DIV2.OVERLAP_CONTAINER_VIEW", "DIV2.LINEAR_CONTAINER_VIEW", "DIV2.WRAP_CONTAINER_VIEW", "DIV2.GRID_VIEW", "DIV2.GALLERY_VIEW", "DIV2.PAGER_VIEW", "DIV2.TAB_VIEW", "DIV2.STATE", "DIV2.CUSTOM", "DIV2.INDICATOR", "DIV2.SLIDER", "DIV2.INPUT", "DIV2.SELECT", "DIV2.VIDEO", "DIV2.SWITCH"};
    public final Context a;
    public final cdc b;
    public final fu2 c;
    public ViewPreCreationProfile d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b(Div div, oj3 oj3Var) {
            if (div instanceof Div.b) {
                Div.b bVar = (Div.b) div;
                if (BaseDivViewExtensionsKt.l0(bVar.c(), oj3Var)) {
                    return "DIV2.WRAP_CONTAINER_VIEW";
                }
                return bVar.c().G.b(oj3Var) == DivContainer.Orientation.OVERLAP ? "DIV2.OVERLAP_CONTAINER_VIEW" : "DIV2.LINEAR_CONTAINER_VIEW";
            }
            if (div instanceof Div.c) {
                return "DIV2.CUSTOM";
            }
            if (div instanceof Div.d) {
                return "DIV2.GALLERY_VIEW";
            }
            if (div instanceof Div.e) {
                return "DIV2.IMAGE_GIF_VIEW";
            }
            if (div instanceof Div.f) {
                return "DIV2.GRID_VIEW";
            }
            if (div instanceof Div.g) {
                return "DIV2.IMAGE_VIEW";
            }
            if (div instanceof Div.h) {
                return "DIV2.INDICATOR";
            }
            if (div instanceof Div.i) {
                return "DIV2.INPUT";
            }
            if (div instanceof Div.j) {
                return "DIV2.PAGER_VIEW";
            }
            if (div instanceof Div.k) {
                return "DIV2.SELECT";
            }
            if (div instanceof Div.m) {
                return "DIV2.SLIDER";
            }
            if (div instanceof Div.o) {
                return "DIV2.SWITCH";
            }
            if (div instanceof Div.n) {
                return "DIV2.STATE";
            }
            if (div instanceof Div.p) {
                return "DIV2.TAB_VIEW";
            }
            if (div instanceof Div.q) {
                return "DIV2.TEXT_VIEW";
            }
            if (div instanceof Div.r) {
                return "DIV2.VIDEO";
            }
            if (div instanceof Div.l) {
                return "";
            }
            throw new NoWhenBranchMatchedException();
        }

        public a() {
        }
    }

    public DivViewCreator(Context context, cdc cdcVar, fu2 fu2Var, ViewPreCreationProfile ddcVar, ViewPreCreationProfileRepository viewPreCreationProfileRepository) {
        ViewPreCreationProfile ddcVar2;
        y45.j(context, "context");
        y45.j(cdcVar, "viewPool");
        y45.j(fu2Var, "validator");
        y45.j(ddcVar, "viewPreCreationProfile");
        y45.j(viewPreCreationProfileRepository, "repository");
        this.a = context;
        this.b = cdcVar;
        this.c = fu2Var;
        String strG = ddcVar.getId();
        if (strG != null && (ddcVar2 = (ViewPreCreationProfile) dl0.b(null, new DivViewCreator$viewPreCreationProfile$1$1(viewPreCreationProfileRepository, strG, null), 1, null)) != null) {
            ddcVar = ddcVar2;
        }
        this.d = ddcVar;
        ViewPreCreationProfile ddcVarN = N();
        cdcVar.c("DIV2.TEXT_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.Z(this.a);
            }
        }, ddcVarN.getText().getCapacity());
        cdcVar.c("DIV2.IMAGE_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.a0(this.a);
            }
        }, ddcVarN.getImage().getCapacity());
        cdcVar.c("DIV2.IMAGE_GIF_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.b0(this.a);
            }
        }, ddcVarN.getGifImage().getCapacity());
        cdcVar.c("DIV2.OVERLAP_CONTAINER_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.c0(this.a);
            }
        }, ddcVarN.getOverlapContainer().getCapacity());
        cdcVar.c("DIV2.LINEAR_CONTAINER_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.d0(this.a);
            }
        }, ddcVarN.getLinearContainer().getCapacity());
        cdcVar.c("DIV2.WRAP_CONTAINER_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.e0(this.a);
            }
        }, ddcVarN.getWrapContainer().getCapacity());
        cdcVar.c("DIV2.GRID_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.f0(this.a);
            }
        }, ddcVarN.getGrid().getCapacity());
        cdcVar.c("DIV2.GALLERY_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.O(this.a);
            }
        }, ddcVarN.getGallery().getCapacity());
        cdcVar.c("DIV2.PAGER_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.P(this.a);
            }
        }, ddcVarN.getPager().getCapacity());
        cdcVar.c("DIV2.TAB_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.Q(this.a);
            }
        }, ddcVarN.getTab().getCapacity());
        cdcVar.c("DIV2.STATE", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.R(this.a);
            }
        }, ddcVarN.getState().getCapacity());
        cdcVar.c("DIV2.CUSTOM", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.S(this.a);
            }
        }, ddcVarN.getCustom().getCapacity());
        cdcVar.c("DIV2.INDICATOR", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.T(this.a);
            }
        }, ddcVarN.getIndicator().getCapacity());
        cdcVar.c("DIV2.SLIDER", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.U(this.a);
            }
        }, ddcVarN.getSlider().getCapacity());
        cdcVar.c("DIV2.INPUT", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.V(this.a);
            }
        }, ddcVarN.getInput().getCapacity());
        cdcVar.c("DIV2.SELECT", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.W(this.a);
            }
        }, ddcVarN.getSelect().getCapacity());
        cdcVar.c("DIV2.VIDEO", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.X(this.a);
            }
        }, ddcVarN.getVideo().getCapacity());
        cdcVar.c("DIV2.SWITCH", new hcc() {
            @Override
            public final View a() {
                return DivViewCreator.Y(this.a);
            }
        }, ddcVarN.getCom.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt.SWITCH java.lang.String().getCapacity());
    }

    public static final DivRecyclerView O(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivRecyclerView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivPagerView P(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivPagerView(divViewCreator.a, null, 0, 6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final DivTabsLayout Q(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivTabsLayout(divViewCreator.a, null, 2, 0 == true ? 1 : 0);
    }

    public static final DivStateLayout R(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivStateLayout(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivCustomWrapper S(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivCustomWrapper(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivPagerIndicatorView T(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivPagerIndicatorView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivSliderView U(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivSliderView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivInputView V(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivInputView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivSelectView W(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivSelectView(divViewCreator.a);
    }

    public static final DivVideoView X(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivVideoView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivSwitchView Y(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivSwitchView(divViewCreator.a);
    }

    public static final DivLineHeightTextView Z(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivLineHeightTextView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivImageView a0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivImageView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivGifImageView b0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivGifImageView(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivFrameLayout c0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivFrameLayout(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivLinearLayout d0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivLinearLayout(divViewCreator.a, null, 0, 6, null);
    }

    public static final DivWrapLayout e0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivWrapLayout(divViewCreator.a);
    }

    public static final DivGridLayout f0(DivViewCreator divViewCreator) {
        y45.j(divViewCreator, "this$0");
        return new DivGridLayout(divViewCreator.a, null, 0, 6, null);
    }

    public View L(Div div, oj3 oj3Var) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        if (!this.c.u(div, oj3Var)) {
            return new Space(this.a);
        }
        View view = (View) s(div, oj3Var);
        view.setBackground(b17.a);
        return view;
    }

    @Override
    public View a(Div div, oj3 oj3Var) {
        y45.j(div, "data");
        y45.j(oj3Var, "resolver");
        return this.b.a(e.b(div, oj3Var));
    }

    public ViewPreCreationProfile N() {
        return this.d;
    }

    public void g0(ViewPreCreationProfile ddcVar) {
        y45.j(ddcVar, ES6Iterator.VALUE_PROPERTY);
        cdc cdcVar = this.b;
        cdcVar.b("DIV2.TEXT_VIEW", ddcVar.getText().getCapacity());
        cdcVar.b("DIV2.IMAGE_VIEW", ddcVar.getImage().getCapacity());
        cdcVar.b("DIV2.IMAGE_GIF_VIEW", ddcVar.getGifImage().getCapacity());
        cdcVar.b("DIV2.OVERLAP_CONTAINER_VIEW", ddcVar.getOverlapContainer().getCapacity());
        cdcVar.b("DIV2.LINEAR_CONTAINER_VIEW", ddcVar.getLinearContainer().getCapacity());
        cdcVar.b("DIV2.WRAP_CONTAINER_VIEW", ddcVar.getWrapContainer().getCapacity());
        cdcVar.b("DIV2.GRID_VIEW", ddcVar.getGrid().getCapacity());
        cdcVar.b("DIV2.GALLERY_VIEW", ddcVar.getGallery().getCapacity());
        cdcVar.b("DIV2.PAGER_VIEW", ddcVar.getPager().getCapacity());
        cdcVar.b("DIV2.TAB_VIEW", ddcVar.getTab().getCapacity());
        cdcVar.b("DIV2.STATE", ddcVar.getState().getCapacity());
        cdcVar.b("DIV2.CUSTOM", ddcVar.getCustom().getCapacity());
        cdcVar.b("DIV2.INDICATOR", ddcVar.getIndicator().getCapacity());
        cdcVar.b("DIV2.SLIDER", ddcVar.getSlider().getCapacity());
        cdcVar.b("DIV2.INPUT", ddcVar.getInput().getCapacity());
        cdcVar.b("DIV2.SELECT", ddcVar.getSelect().getCapacity());
        cdcVar.b("DIV2.VIDEO", ddcVar.getVideo().getCapacity());
        cdcVar.b("DIV2.SWITCH", ddcVar.getCom.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt.SWITCH java.lang.String().getCapacity());
        this.d = ddcVar;
    }

    @Override
    public View f(Div.f fVar, oj3 oj3Var) {
        y45.j(fVar, "data");
        y45.j(oj3Var, "resolver");
        View viewA = a(fVar, oj3Var);
        y45.h(viewA, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) viewA;
        Iterator it = bh2.n(fVar.c()).iterator();
        while (it.hasNext()) {
            viewGroup.addView(L((Div) it.next(), oj3Var));
        }
        return viewGroup;
    }

    @Override
    public View l(Div.l lVar, oj3 oj3Var) {
        y45.j(lVar, "data");
        y45.j(oj3Var, "resolver");
        return new DivSeparatorView(this.a, null, 0, 6, null);
    }
}

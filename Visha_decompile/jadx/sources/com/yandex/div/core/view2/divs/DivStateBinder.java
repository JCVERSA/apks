package com.yandex.div.core.view2.divs;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.animations.SceneRootWatcher;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div.core.view2.state.DivStateTransitionHolder;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivAnimation;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivContentAlignmentHorizontal;
import com.yandex.div2.DivContentAlignmentVertical;
import com.yandex.div2.DivState;
import defpackage.c74;
import defpackage.ce2;
import defpackage.co2;
import defpackage.e74;
import defpackage.eu2;
import defpackage.gd2;
import defpackage.hh2;
import defpackage.i81;
import defpackage.kq2;
import defpackage.lq2;
import defpackage.mx7;
import defpackage.ne5;
import defpackage.og2;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.pc9;
import defpackage.qnb;
import defpackage.rg2;
import defpackage.rga;
import defpackage.snb;
import defpackage.ut2;
import defpackage.vj3;
import defpackage.wt2;
import defpackage.wu2;
import defpackage.x71;
import defpackage.xc3;
import defpackage.xu8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yr8;
import defpackage.yt2;
import defpackage.zfb;
import defpackage.zl2;
import defpackage.zn2;
import defpackage.zt2;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.apache.commons.io.IOUtils;

public final class DivStateBinder extends wu2 {
    public static final a p = new a(null);
    public final DivBaseBinder b;
    public final DivViewCreator c;
    public final oj8 d;
    public final lq2 e;
    public final rga f;
    public final DivActionBinder g;
    public final ce2 h;
    public final co2 i;
    public final zn2 j;
    public final gd2 k;
    public final DivVisibilityActionTracker l;
    public final xc3 m;
    public final com.yandex.div.core.expression.variables.c n;
    public final DivRuntimeVisitor o;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final Div2View c;
        public final oj3 d;
        public final View e;
        public final Div f;

        public b(Div2View div2View, oj3 oj3Var, View view, Div div) {
            this.c = div2View;
            this.d = oj3Var;
            this.e = view;
            this.f = div;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            DivVisibilityActionTracker.x(DivStateBinder.this.l, this.c, this.d, this.e, this.f, null, null, 48, null);
        }
    }

    public static class c implements TwoWayVariableBinder.a {
        public final DivStateLayout a;
        public final DivStatePath b;
        public final DivState c;
        public final com.yandex.div.core.view2.a d;

        public c(DivStateLayout divStateLayout, DivStatePath divStatePath, DivState divState, com.yandex.div.core.view2.a aVar) {
            this.a = divStateLayout;
            this.b = divStatePath;
            this.c = divState;
            this.d = aVar;
        }

        @Override
        public void b(e74 e74Var) {
            y45.j(e74Var, "valueUpdater");
            this.a.setVariableUpdater(e74Var);
        }

        @Override
        public void a(String str) {
            if (str == null || this.a.getStateId() == null || y45.e(str, this.a.getStateId())) {
                return;
            }
            this.d.a().switchToState(this.b.b(DivPathUtils.i(DivPathUtils.a, this.c, null, 1, null), str), true);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivStateBinder(DivBaseBinder divBaseBinder, DivViewCreator divViewCreator, oj8 oj8Var, lq2 lq2Var, rga rgaVar, DivActionBinder divActionBinder, ce2 ce2Var, co2 co2Var, zn2 zn2Var, gd2 gd2Var, DivVisibilityActionTracker divVisibilityActionTracker, xc3 xc3Var, com.yandex.div.core.expression.variables.c cVar, DivRuntimeVisitor divRuntimeVisitor) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(oj8Var, "viewBinder");
        y45.j(lq2Var, "divStateCache");
        y45.j(rgaVar, "temporaryStateCache");
        y45.j(divActionBinder, "divActionBinder");
        y45.j(ce2Var, "divActionBeaconSender");
        y45.j(co2Var, "divPatchManager");
        y45.j(zn2Var, "divPatchCache");
        y45.j(gd2Var, "div2Logger");
        y45.j(divVisibilityActionTracker, "divVisibilityActionTracker");
        y45.j(xc3Var, "errorCollectors");
        y45.j(cVar, "variableBinder");
        y45.j(divRuntimeVisitor, "runtimeVisitor");
        this.b = divBaseBinder;
        this.c = divViewCreator;
        this.d = oj8Var;
        this.e = lq2Var;
        this.f = rgaVar;
        this.g = divActionBinder;
        this.h = ce2Var;
        this.i = co2Var;
        this.j = zn2Var;
        this.k = gd2Var;
        this.l = divVisibilityActionTracker;
        this.m = xc3Var;
        this.n = cVar;
        this.o = divRuntimeVisitor;
    }

    public final void l(final DivStateLayout divStateLayout, final com.yandex.div.core.view2.a aVar, DivState divState, DivState divState2, DivState.State state, DivStatePath divStatePath) {
        final oj3 oj3VarB = aVar.b();
        p(divStateLayout, divState, divState2, oj3VarB);
        t(divStateLayout, divState, aVar, divStatePath);
        BaseDivViewExtensionsKt.B(divStateLayout, divState.h, divState2 != null ? divState2.h : null, oj3VarB);
        final List list = state.e;
        divStateLayout.setSwipeOutCallback(list != null ? new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m225invoke();
                return zfb.a;
            }

            public final void m225invoke() {
                this.this$0.x(divStateLayout, aVar.a(), oj3VarB, list);
            }
        } : null);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:56:0x012b  */
    /* JADX WARN: Code duplicated, block: B:95:0x01fc  */
    public final void m(DivStateLayout divStateLayout, com.yandex.div.core.view2.a aVar, DivState divState, DivState.State state, DivState divState2, DivState.State state2, Div div, DivStatePath divStatePath, oj3 oj3Var, String str) {
        Div div2;
        DivStatePath divStatePath2;
        View view;
        oj3 oj3Var2;
        Div2View div2View;
        oj3 oj3Var3;
        DivStatePath divStatePath3;
        View view2;
        boolean z;
        View viewQ;
        DivStatePath divStatePath4;
        Div div3;
        DivState divState3;
        Div div4;
        DivStatePath divStatePath5;
        og2 og2VarB;
        String id;
        View view3;
        xu8 currentRebindReusableList$div_release;
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        DivStatePath divStatePathB = divStatePath.b(str, state.d);
        Div div5 = state.c;
        og2 og2VarB2 = div5 != null ? div5.b() : null;
        View childAt = divStateLayout.getChildCount() > 0 ? divStateLayout.getChildAt(0) : null;
        View viewC = (div5 == null || (currentRebindReusableList$div_release = div2ViewA.getCurrentRebindReusableList$div_release()) == null) ? null : currentRebindReusableList$div_release.c(div5);
        if (y45.e(divStateLayout.getStateId(), state.d)) {
            div2 = div5;
            divStatePath2 = divStatePathB;
            view = childAt;
            if (og2VarB2 != null) {
                if (view == null || oj3Var == null) {
                    oj3Var2 = oj3VarB;
                    div2View = div2ViewA;
                    oj3Var3 = oj3Var;
                    divStatePath3 = divStatePath;
                } else {
                    oj3Var2 = oj3VarB;
                    div2View = div2ViewA;
                    oj3Var3 = oj3Var;
                    divStatePath3 = divStatePath;
                    z = hh2.d(hh2.a, div, div2, oj3Var, oj3Var2, null, 16, null);
                    if (z) {
                        viewQ = view;
                    } else {
                        viewQ = q(viewC, div2, oj3Var2);
                    }
                    if (!z) {
                        yr8.a.a(divStateLayout, div2View);
                        divStateLayout.addView(viewQ);
                    }
                    if (viewQ != null) {
                        ((rg2) this.d.get()).b(aVar, viewQ, div2, divStatePath2);
                    }
                    view2 = viewQ;
                }
                if (z) {
                    viewQ = view;
                } else {
                    viewQ = q(viewC, div2, oj3Var2);
                }
                if (!z) {
                    yr8.a.a(divStateLayout, div2View);
                    divStateLayout.addView(viewQ);
                }
                if (viewQ != null) {
                    ((rg2) this.d.get()).b(aVar, viewQ, div2, divStatePath2);
                }
                view2 = viewQ;
            } else {
                oj3Var2 = oj3VarB;
                div2View = div2ViewA;
                oj3Var3 = oj3Var;
                divStatePath3 = divStatePath;
                yr8.a.a(divStateLayout, div2View);
                view2 = null;
            }
        } else {
            View viewQ2 = div5 != null ? q(viewC, div5, oj3VarB) : null;
            View view4 = childAt;
            div2 = div5;
            divStatePath2 = divStatePathB;
            Transition transitionU = u(aVar, divState, state, state2, viewQ2, view4);
            if (transitionU != null) {
                TransitionManager.endTransitions(divStateLayout);
                SceneRootWatcher.a.a(divStateLayout, transitionU);
                TransitionManager.beginDelayedTransition(divStateLayout, transitionU);
            }
            yr8.a.a(divStateLayout, div2ViewA);
            if (viewQ2 != null) {
                divStateLayout.addView(viewQ2);
                if (div2 != null) {
                    ((rg2) this.d.get()).b(aVar, viewQ2, div2, divStatePath2);
                }
            }
            view = view4;
            if (view != null) {
                div2ViewA.getDivTransitionHandler().j(divStateLayout, false);
            }
            view2 = viewQ2;
            oj3Var2 = oj3VarB;
            div2View = div2ViewA;
            oj3Var3 = oj3Var;
            divStatePath3 = divStatePath;
        }
        if (view != null) {
            view.startAnimation(new AnimationSet(false));
            DivStatePath divStatePath6 = divStatePath2;
            divState3 = divState;
            if (y45.e(divState2, divState3) && y45.e(state, state2)) {
                div3 = div2;
                divStatePath4 = divStatePath6;
            } else {
                div2View.unbindViewFromDiv$div_release(view);
                if (div == null || oj3Var3 == null) {
                    div3 = div2;
                    divStatePath4 = divStatePath6;
                } else {
                    div3 = div2;
                    divStatePath4 = divStatePath6;
                    DivVisibilityActionTracker.x(this.l, div2View, oj3Var, null, div, null, null, 48, null);
                    y(view, div2View, oj3Var3);
                }
            }
        } else {
            divStatePath4 = divStatePath2;
            div3 = div2;
            divState3 = divState;
        }
        if (view2 == null || og2VarB2 == null || (og2VarB2.x() == null && og2VarB2.a() == null)) {
            div4 = div3;
        } else {
            div2View.bindViewToDiv$div_release(view2, div3);
            div4 = div3;
            View view5 = view2;
            view5.addOnLayoutChangeListener(new b(div2View, oj3Var2, view5, div4));
        }
        if (div == null || (og2VarB = div.b()) == null || (id = og2VarB.getId()) == null) {
            divStatePath5 = divStatePath4;
        } else {
            List listA = this.i.a(aVar, id);
            if (listA == null) {
                view3 = null;
            } else if (listA.size() > 1) {
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.ERROR)) {
                    ne5Var.b(6, "DivStateBinder", "Unable to patch state because there is more than 1 div in the patch");
                }
                view3 = null;
            } else {
                view3 = (View) i81.q0(listA);
            }
            List listB = this.j.b(div2View.getDataTag(), id);
            Div div6 = listB != null ? (Div) i81.q0(listB) : null;
            if (view3 == null || div6 == null) {
                divStatePath5 = divStatePath4;
            } else {
                yr8.a.a(divStateLayout, div2View);
                divStateLayout.addView(view3);
                if (BaseDivViewExtensionsKt.b0(div6.b())) {
                    div2View.bindViewToDiv$div_release(view3, div6);
                }
                divStatePath5 = divStatePath4;
                ((rg2) this.d.get()).b(aVar, view3, div6, divStatePath5);
            }
        }
        divStateLayout.setActiveStateDiv$div_release(div4);
        divStateLayout.setPath(divStatePath5);
        if (view != null) {
            this.o.c(div2View, divState3, divStatePath3, oj3Var2);
        }
    }

    public void n(final com.yandex.div.core.view2.a aVar, DivStateLayout divStateLayout, Div.n nVar, final DivStatePath divStatePath) {
        y45.j(aVar, "context");
        y45.j(divStateLayout, "view");
        y45.j(nVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        DivState divStateC = nVar.c();
        Div.n div = divStateLayout.getDiv();
        com.yandex.div.core.view2.a bindingContext = divStateLayout.getBindingContext();
        oj3 oj3VarB = bindingContext != null ? bindingContext.b() : null;
        String strH = DivPathUtils.a.h(divStateC, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m226invoke();
                return zfb.a;
            }

            public final void m226invoke() {
                this.this$0.m.a(aVar.a().getDataTag(), aVar.a().getDivData()).e(mx7.l(TtmlNode.ATTR_ID, divStatePath.toString()));
            }
        });
        Pair pairR = r(divStateC, aVar, divStateLayout, divStatePath, strH);
        DivState.State state = (DivState.State) pairR.component1();
        DivState.State state2 = (DivState.State) pairR.component2();
        if (state == null || state2 == null) {
            return;
        }
        Div activeStateDiv = divStateLayout.getActiveStateDiv();
        if (div != nVar) {
            this.b.N(aVar, divStateLayout, nVar, activeStateDiv);
            l(divStateLayout, aVar, divStateC, div != null ? div.c() : null, state2, divStatePath);
        }
        m(divStateLayout, aVar, divStateC, state2, div != null ? div.c() : null, state, activeStateDiv, divStatePath, oj3VarB, strH);
    }

    public final void o(View view) {
        view.setLayoutParams(new DivLayoutParams(-1, -2));
    }

    public final void p(DivStateLayout divStateLayout, DivState divState, DivState divState2, oj3 oj3Var) {
        DivAlignmentHorizontal divAlignmentHorizontalV0;
        DivAlignmentVertical divAlignmentVertical;
        Expression expressionG = divState.g();
        Expression expressionO = divState.o();
        DivAlignmentVertical divAlignmentVerticalW0 = null;
        if (y45.e(expressionG, divState2 != null ? divState2.g() : null)) {
            if (y45.e(expressionO, divState2 != null ? divState2.o() : null)) {
                return;
            }
        }
        if (expressionG == null || (divAlignmentHorizontalV0 = (DivAlignmentHorizontal) expressionG.b(oj3Var)) == null) {
            DivContentAlignmentHorizontal divContentAlignmentHorizontalR = BaseDivViewExtensionsKt.R(divStateLayout, oj3Var);
            divAlignmentHorizontalV0 = divContentAlignmentHorizontalR != null ? BaseDivViewExtensionsKt.v0(divContentAlignmentHorizontalR) : null;
        }
        if (expressionO == null || (divAlignmentVertical = (DivAlignmentVertical) expressionO.b(oj3Var)) == null) {
            DivContentAlignmentVertical divContentAlignmentVerticalS = BaseDivViewExtensionsKt.S(divStateLayout, oj3Var);
            if (divContentAlignmentVerticalS != null) {
                divAlignmentVerticalW0 = BaseDivViewExtensionsKt.w0(divContentAlignmentVerticalS);
            }
        } else {
            divAlignmentVerticalW0 = divAlignmentVertical;
        }
        BaseDivViewExtensionsKt.d(divStateLayout, divAlignmentHorizontalV0, divAlignmentVerticalW0);
    }

    public final View q(View view, Div div, oj3 oj3Var) {
        if (view != null) {
            return view;
        }
        View viewL = this.c.L(div, oj3Var);
        o(viewL);
        return viewL;
    }

    public final Pair r(DivState divState, com.yandex.div.core.view2.a aVar, DivStateLayout divStateLayout, DivStatePath divStatePath, String str) {
        Object next;
        String strA = aVar.a().getDivTag().a();
        y45.i(strA, "context.divView.divTag.id");
        String str2 = divStatePath.j() + IOUtils.DIR_SEPARATOR_UNIX + str;
        String strB = this.f.b(strA, str2);
        if (strB == null) {
            strB = this.e.a(strA, str2);
        }
        Object obj = null;
        if (strB != null) {
            e74 variableUpdater = divStateLayout.getVariableUpdater();
            if (variableUpdater != null) {
                variableUpdater.invoke(strB);
            }
        } else {
            String str3 = divState.x;
            strB = str3 != null ? s(aVar, str3) : null;
        }
        Iterator it = divState.y.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((DivState.State) next).d, divStateLayout.getStateId()));
        DivState.State stateF = (DivState.State) next;
        if (stateF == null) {
            stateF = eu2.f(divState, aVar.b());
        }
        for (Object obj2 : divState.y) {
            if (y45.e(((DivState.State) obj2).d, strB)) {
                obj = obj2;
                break;
            }
        }
        DivState.State stateF2 = (DivState.State) obj;
        if (stateF2 == null) {
            stateF2 = eu2.f(divState, aVar.b());
        }
        return new Pair(stateF, stateF2);
    }

    public final String s(com.yandex.div.core.view2.a aVar, String str) {
        snb snbVarG;
        Object objC;
        vj3 vj3VarJ;
        RuntimeStore runtimeStoreE = aVar.e();
        if (runtimeStoreE == null || (vj3VarJ = runtimeStoreE.j(aVar.b())) == null || (snbVarG = vj3VarJ.g()) == null) {
            vj3 expressionsRuntime = aVar.a().getExpressionsRuntime();
            if (expressionsRuntime == null) {
                return null;
            }
            snbVarG = expressionsRuntime.g();
        }
        qnb qnbVarA = snbVarG.a(str);
        if (qnbVarA == null || (objC = qnbVarA.c()) == null) {
            return null;
        }
        return objC.toString();
    }

    public final void t(DivStateLayout divStateLayout, DivState divState, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        String str = divState.x;
        if (str == null) {
            return;
        }
        divStateLayout.addSubscription(this.n.a(aVar, str, new c(divStateLayout, divStatePath, divState, aVar), divStatePath));
    }

    public final Transition u(com.yandex.div.core.view2.a aVar, DivState divState, DivState.State state, DivState.State state2, View view, View view2) {
        com.yandex.div.core.view2.a aVarZ;
        oj3 oj3VarB;
        Div div;
        Div div2;
        if (view2 == null || (aVarZ = BaseDivViewExtensionsKt.Z(view2)) == null || (oj3VarB = aVarZ.b()) == null) {
            return v(aVar, state, state2, view, view2);
        }
        oj3 oj3VarB2 = aVar.b();
        return (!wt2.d(divState, oj3VarB2) || ((state2 == null || (div2 = state2.c) == null || !eu2.c(div2, oj3VarB)) && ((div = state.c) == null || !eu2.c(div, oj3VarB2)))) ? v(aVar, state, state2, view, view2) : w(aVar.a().getViewComponent().c(), aVar.a().getViewComponent().d(), state, state2, oj3VarB2, oj3VarB);
    }

    public final Transition v(com.yandex.div.core.view2.a aVar, DivState.State state, DivState.State state2, View view, View view2) {
        List<DivAnimation> listK;
        com.yandex.div.core.view2.a aVarZ;
        List<DivAnimation> listK2;
        oj3 oj3VarB = aVar.b();
        DivAnimation divAnimation = state.a;
        oj3 oj3VarB2 = null;
        DivAnimation divAnimation2 = state2 != null ? state2.b : null;
        if (divAnimation == null && divAnimation2 == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (divAnimation != null && view != null) {
            if (divAnimation.e.b(oj3VarB) != DivAnimation.Name.SET) {
                listK2 = x71.e(divAnimation);
            } else {
                listK2 = divAnimation.d;
                if (listK2 == null) {
                    listK2 = y71.k();
                }
            }
            for (DivAnimation divAnimation3 : listK2) {
                Transition transitionD = kq2.d(divAnimation3, true, oj3VarB);
                if (transitionD != null) {
                    transitionSet.addTransition(transitionD.addTarget(view).setDuration(((Number) divAnimation3.a.b(oj3VarB)).longValue()).setStartDelay(((Number) divAnimation3.g.b(oj3VarB)).longValue()).setInterpolator(eu2.d((DivAnimationInterpolator) divAnimation3.c.b(oj3VarB))));
                }
            }
        }
        if (view2 != null && (aVarZ = BaseDivViewExtensionsKt.Z(view2)) != null) {
            oj3VarB2 = aVarZ.b();
        }
        if (divAnimation2 != null && oj3VarB2 != null) {
            if (divAnimation2.e.b(oj3VarB2) != DivAnimation.Name.SET) {
                listK = x71.e(divAnimation2);
            } else {
                listK = divAnimation2.d;
                if (listK == null) {
                    listK = y71.k();
                }
            }
            for (DivAnimation divAnimation4 : listK) {
                Transition transitionD2 = kq2.d(divAnimation4, false, oj3VarB2);
                if (transitionD2 != null) {
                    transitionSet.addTransition(transitionD2.addTarget(view2).setDuration(((Number) divAnimation4.a.b(oj3VarB2)).longValue()).setStartDelay(((Number) divAnimation4.g.b(oj3VarB2)).longValue()).setInterpolator(eu2.d((DivAnimationInterpolator) divAnimation4.c.b(oj3VarB2))));
                }
            }
        }
        if (view2 != null) {
            view2.clearAnimation();
        }
        return transitionSet;
    }

    public final Transition w(ut2 ut2Var, DivStateTransitionHolder divStateTransitionHolder, DivState.State state, DivState.State state2, oj3 oj3Var, oj3 oj3Var2) {
        yt2 yt2VarC;
        yt2 yt2VarE;
        Div div;
        yt2 yt2VarC2;
        yt2 yt2VarE2;
        pc9 pc9VarF = null;
        if (y45.e(state, state2)) {
            return null;
        }
        pc9 pc9VarF2 = (state2 == null || (div = state2.c) == null || (yt2VarC2 = zt2.c(div, oj3Var2)) == null || (yt2VarE2 = yt2VarC2.e(new e74() {
            @Override
            public final Boolean invoke(Div div2) {
                y45.j(div2, TtmlNode.TAG_DIV);
                return Boolean.valueOf(!(div2 instanceof Div.n));
            }
        })) == null) ? null : SequencesKt___SequencesKt.F(yt2VarE2, new e74() {
            @Override
            public final Boolean invoke(zl2 zl2Var) {
                y45.j(zl2Var, "item");
                List listN = zl2Var.c().b().n();
                return Boolean.valueOf(listN != null ? wt2.f(listN) : true);
            }
        });
        Div div2 = state.c;
        if (div2 != null && (yt2VarC = zt2.c(div2, oj3Var)) != null && (yt2VarE = yt2VarC.e(new e74() {
            @Override
            public final Boolean invoke(Div div3) {
                y45.j(div3, TtmlNode.TAG_DIV);
                return Boolean.valueOf(!(div3 instanceof Div.n));
            }
        })) != null) {
            pc9VarF = SequencesKt___SequencesKt.F(yt2VarE, new e74() {
                @Override
                public final Boolean invoke(zl2 zl2Var) {
                    y45.j(zl2Var, "item");
                    List listN = zl2Var.c().b().n();
                    return Boolean.valueOf(listN != null ? wt2.f(listN) : true);
                }
            });
        }
        TransitionSet transitionSetD = ut2Var.d(pc9VarF2, pc9VarF, oj3Var2, oj3Var);
        divStateTransitionHolder.a(transitionSetD);
        return transitionSetD;
    }

    public final void x(final DivStateLayout divStateLayout, final Div2View div2View, final oj3 oj3Var, final List list) {
        div2View.bulkActions$div_release(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m227invoke();
                return zfb.a;
            }

            public final void m227invoke() {
                DivActionBinder divActionBinder = this.this$0.g;
                final Div2View div2View2 = div2View;
                final oj3 oj3Var2 = oj3Var;
                List<DivAction> list2 = list;
                final DivStateBinder divStateBinder = this.this$0;
                final DivStateLayout divStateLayout2 = divStateLayout;
                divActionBinder.H(div2View2, oj3Var2, list2, "state_swipe_out", new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((DivAction) obj);
                        return zfb.a;
                    }

                    public final void invoke(DivAction divAction) {
                        y45.j(divAction, "it");
                        divStateBinder.k.z(div2View2, oj3Var2, divStateLayout2, divAction);
                        divStateBinder.h.b(divAction, oj3Var2);
                    }
                });
            }
        });
    }

    public final void y(View view, Div2View div2View, oj3 oj3Var) {
        if (view instanceof ViewGroup) {
            for (View view2 : ViewGroupKt.getChildren((ViewGroup) view)) {
                Div divUnbindViewFromDiv$div_release = div2View.unbindViewFromDiv$div_release(view2);
                if (divUnbindViewFromDiv$div_release != null) {
                    DivVisibilityActionTracker.x(this.l, div2View, oj3Var, null, divUnbindViewFromDiv$div_release, null, null, 48, null);
                }
                y(view2, div2View, oj3Var);
            }
        }
    }
}

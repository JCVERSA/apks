package com.yandex.div.core.dagger;

import android.content.Context;
import android.renderscript.RenderScript;
import android.view.ContextThemeWrapper;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.a;
import com.yandex.div.core.actions.DivActionTypedArrayMutationHandler;
import com.yandex.div.core.actions.DivActionTypedDictSetValueHandler;
import com.yandex.div.core.actions.DivActionTypedSetVariableHandler;
import com.yandex.div.core.c;
import com.yandex.div.core.d;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.expression.storedvalues.StoredValuesController;
import com.yandex.div.core.expression.variables.DivVariableController;
import com.yandex.div.core.expression.variables.b;
import com.yandex.div.core.player.DivPlayerFactory;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivAccessibilityBinder;
import com.yandex.div.core.view2.DivPlaceholderLoader;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.DivVisibilityActionDispatcher;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.DivBackgroundBinder;
import com.yandex.div.core.view2.divs.DivBaseBinder;
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
import com.yandex.div.core.view2.errors.ErrorVisualMonitor;
import com.yandex.div.core.view2.spannable.SpannedTextBuilder;
import com.yandex.div.core.view2.state.DivStateTransitionHolder;
import com.yandex.div.histogram.DivParsingHistogramReporter;
import com.yandex.div.histogram.HistogramConfiguration;
import com.yandex.div.internal.viewpool.ViewCreator;
import com.yandex.div.internal.viewpool.ViewPoolProfiler;
import com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository;
import com.yandex.div.storage.DivStorageComponent;
import defpackage.ViewPreCreationProfile;
import defpackage.a15;
import defpackage.ac9;
import defpackage.ag2;
import defpackage.am2;
import defpackage.b5;
import defpackage.bg2;
import defpackage.bi2;
import defpackage.br2;
import defpackage.bu2;
import defpackage.cdc;
import defpackage.ce2;
import defpackage.cf2;
import defpackage.cg2;
import defpackage.co2;
import defpackage.ct2;
import defpackage.cu2;
import defpackage.dd2;
import defpackage.dg2;
import defpackage.dl6;
import defpackage.fd2;
import defpackage.fda;
import defpackage.fg2;
import defpackage.fm2;
import defpackage.fu2;
import defpackage.gd2;
import defpackage.hd2;
import defpackage.iu2;
import defpackage.jd2;
import defpackage.jh2;
import defpackage.jk3;
import defpackage.jq4;
import defpackage.kg2;
import defpackage.lg2;
import defpackage.lj2;
import defpackage.lk2;
import defpackage.lq2;
import defpackage.mdc;
import defpackage.mo2;
import defpackage.mq2;
import defpackage.oi2;
import defpackage.oq4;
import defpackage.qf2;
import defpackage.qm2;
import defpackage.qq4;
import defpackage.r08;
import defpackage.rda;
import defpackage.rf2;
import defpackage.rg2;
import defpackage.rga;
import defpackage.rq4;
import defpackage.rt2;
import defpackage.sh2;
import defpackage.sq2;
import defpackage.sq4;
import defpackage.st2;
import defpackage.tf2;
import defpackage.tv0;
import defpackage.tv2;
import defpackage.ubc;
import defpackage.ut2;
import defpackage.vbc;
import defpackage.vf2;
import defpackage.vi2;
import defpackage.vq2;
import defpackage.vu2;
import defpackage.wh2;
import defpackage.wk2;
import defpackage.xc3;
import defpackage.xf2;
import defpackage.xha;
import defpackage.xi5;
import defpackage.xr8;
import defpackage.xv7;
import defpackage.yf2;
import defpackage.yk2;
import defpackage.yo2;
import defpackage.ze0;
import defpackage.zf2;
import defpackage.zn2;
import defpackage.zr8;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public final class Yatagan$DivKitComponent implements DivKitComponent {
    public volatile Object a;
    public volatile Object b;
    public volatile Object c;
    public volatile Object d;
    public volatile Object e;
    public volatile Object f;
    public volatile Object g;
    public final Context h;
    public final c i;

    public static final class ComponentFactoryImpl implements DivKitComponent.Builder {
        public Context a;
        public c b;

        public ComponentFactoryImpl() {
        }

        @Override
        public DivKitComponent.Builder a(c cVar) {
            this.b = cVar;
            return this;
        }

        @Override
        public DivKitComponent.Builder b(Context context) {
            this.a = context;
            return this;
        }

        @Override
        public DivKitComponent build() {
            return new Yatagan$DivKitComponent(this.a, this.b);
        }
    }

    public static final class Div2ComponentImpl implements Div2Component {
        public Object A;
        public Object B;
        public Object C;
        public Object D;
        public Object E;
        public Object F;
        public Object G;
        public Object H;
        public Object I;
        public Object J;
        public Object K;
        public Object L;
        public Object M;
        public Object N;
        public Object O;
        public final ContextThemeWrapper P;
        public final Integer Q;
        public final sh2 R;
        public final DivVariableController S;
        public final jh2 T;
        public final Yatagan$DivKitComponent U;
        public Object a;
        public Object b;
        public Object c;
        public Object d;
        public Object e;
        public Object f;
        public Object g;
        public Object h;
        public Object i;
        public Object j;
        public Object k;
        public Object l;
        public Object m;
        public Object n;
        public Object o;
        public Object p;
        public Object q;
        public Object r;
        public Object s;
        public Object t;
        public Object u;
        public Object v;
        public Object w;
        public Object x;
        public Object y;
        public Object z;

        public static final class ComponentFactoryImpl implements Div2Component.Builder {
            public Yatagan$DivKitComponent a;
            public ContextThemeWrapper b;
            public jh2 c;
            public Integer d;
            public sh2 e;
            public DivVariableController f;

            public ComponentFactoryImpl(Yatagan$DivKitComponent yatagan$DivKitComponent) {
                this.a = yatagan$DivKitComponent;
            }

            @Override
            public Div2Component.Builder a(jh2 jh2Var) {
                this.c = jh2Var;
                return this;
            }

            @Override
            public Div2Component.Builder b(DivVariableController divVariableController) {
                this.f = divVariableController;
                return this;
            }

            @Override
            public Div2Component build() {
                return new Div2ComponentImpl(this.a, this.b, this.c, this.d, this.e, this.f);
            }

            @Override
            public Div2Component.Builder c(int i) {
                this.d = Integer.valueOf(i);
                return this;
            }

            @Override
            public Div2Component.Builder d(sh2 sh2Var) {
                this.e = sh2Var;
                return this;
            }

            @Override
            public Div2Component.Builder e(ContextThemeWrapper contextThemeWrapper) {
                this.b = contextThemeWrapper;
                return this;
            }
        }

        public static final class Div2ViewComponentImpl implements Div2ViewComponent {
            public Object a;
            public Object b;
            public Object c;
            public Object d;
            public Object e;
            public Object f;
            public Object g;
            public Object h;
            public Object i;
            public final Div2View j;
            public final Div2ComponentImpl k;

            public static final class CachingProviderImpl implements xi5 {
                public final Div2ViewComponentImpl a;
                public final int b;
                public Object c;

                public CachingProviderImpl(Div2ViewComponentImpl div2ViewComponentImpl, int i) {
                    this.a = div2ViewComponentImpl;
                    this.b = i;
                }

                @Override
                public Object get() {
                    Object obj = this.c;
                    if (obj != null) {
                        return obj;
                    }
                    xha.a();
                    Object objW = this.a.w(this.b);
                    this.c = objW;
                    return objW;
                }
            }

            public static final class ComponentFactoryImpl implements Div2ViewComponent.Builder {
                public Div2ComponentImpl a;
                public Div2View b;

                public ComponentFactoryImpl(Div2ComponentImpl div2ComponentImpl) {
                    this.a = div2ComponentImpl;
                }

                @Override
                public Div2ViewComponent.Builder a(Div2View div2View) {
                    this.b = div2View;
                    return this;
                }

                @Override
                public Div2ViewComponent build() {
                    return new Div2ViewComponentImpl(this.a, this.b);
                }
            }

            public Div2ViewComponentImpl(Div2ComponentImpl div2ComponentImpl, Div2View div2View) {
                this.k = div2ComponentImpl;
                this.j = (Div2View) tv0.a(div2View);
            }

            @Override
            public xc3 a() {
                return this.k.i0();
            }

            @Override
            public DivTooltipController b() {
                return this.k.Y();
            }

            @Override
            public ut2 c() {
                return q();
            }

            @Override
            public DivStateTransitionHolder d() {
                return p();
            }

            @Override
            public ErrorVisualMonitor e() {
                return r();
            }

            @Override
            public a15 f() {
                return s();
            }

            @Override
            public DivRuntimeVisitor g() {
                return this.k.V();
            }

            @Override
            public vq2 h() {
                return o();
            }

            @Override
            public tv2 i() {
                return this.k.f0();
            }

            @Override
            public kg2 j() {
                return n();
            }

            @Override
            public zr8 k() {
                return u();
            }

            @Override
            public vbc l() {
                return v();
            }

            @Override
            public dl6 m() {
                return t();
            }

            public kg2 n() {
                Object kg2Var = this.i;
                if (kg2Var == null) {
                    xha.a();
                    kg2Var = new kg2(this.j);
                    this.i = kg2Var;
                }
                return (kg2) kg2Var;
            }

            public vq2 o() {
                Object objB = this.d;
                if (objB == null) {
                    xha.a();
                    jd2 jd2Var = jd2.a;
                    objB = tv0.b(jd2.a(((Boolean) tv0.b(Boolean.valueOf(this.k.T.C()))).booleanValue(), new CachingProviderImpl(this, 0), new CachingProviderImpl(this, 1)));
                    this.d = objB;
                }
                return (vq2) objB;
            }

            public DivStateTransitionHolder p() {
                Object divStateTransitionHolder = this.e;
                if (divStateTransitionHolder == null) {
                    xha.a();
                    divStateTransitionHolder = new DivStateTransitionHolder(this.j);
                    this.e = divStateTransitionHolder;
                }
                return (DivStateTransitionHolder) divStateTransitionHolder;
            }

            public ut2 q() {
                Object ut2Var = this.a;
                if (ut2Var == null) {
                    xha.a();
                    Div2ComponentImpl div2ComponentImpl = this.k;
                    ut2Var = new ut2(div2ComponentImpl.P, div2ComponentImpl.f0());
                    this.a = ut2Var;
                }
                return (ut2) ut2Var;
            }

            public ErrorVisualMonitor r() {
                Object errorVisualMonitor = this.f;
                if (errorVisualMonitor == null) {
                    xha.a();
                    errorVisualMonitor = new ErrorVisualMonitor(this.k.i0(), this.j, ((Boolean) tv0.b(Boolean.valueOf(this.k.T.c()))).booleanValue(), ((Boolean) tv0.b(Boolean.valueOf(this.k.T.E()))).booleanValue(), v());
                    this.f = errorVisualMonitor;
                }
                return (ErrorVisualMonitor) errorVisualMonitor;
            }

            public a15 s() {
                Object a15Var = this.h;
                if (a15Var == null) {
                    xha.a();
                    a15Var = new a15(this.j, new mdc());
                    this.h = a15Var;
                }
                return (a15) a15Var;
            }

            public dl6 t() {
                Object dl6Var = this.c;
                if (dl6Var == null) {
                    xha.a();
                    dl6Var = new dl6();
                    this.c = dl6Var;
                }
                return (dl6) dl6Var;
            }

            public zr8 u() {
                Object zr8Var = this.b;
                if (zr8Var == null) {
                    xha.a();
                    zr8Var = new zr8(this.j, (a) tv0.b(this.k.T.f()), this.k.P());
                    this.b = zr8Var;
                }
                return (zr8) zr8Var;
            }

            public vbc v() {
                Object vbcVar = this.g;
                if (vbcVar == null) {
                    xha.a();
                    vbcVar = new vbc();
                    this.g = vbcVar;
                }
                return (vbc) vbcVar;
            }

            public Object w(int i) {
                if (i == 0) {
                    return new am2(this.j, this.k.O());
                }
                if (i == 1) {
                    return new qm2(this.j, this.k.O());
                }
                throw new AssertionError();
            }
        }

        public static final class ProviderImpl implements xi5 {
            public final Div2ComponentImpl a;
            public final int b;

            public ProviderImpl(Div2ComponentImpl div2ComponentImpl, int i) {
                this.a = div2ComponentImpl;
                this.b = i;
            }

            @Override
            public Object get() {
                return this.a.x0(this.b);
            }
        }

        public Div2ComponentImpl(Yatagan$DivKitComponent yatagan$DivKitComponent, ContextThemeWrapper contextThemeWrapper, jh2 jh2Var, Integer num, sh2 sh2Var, DivVariableController divVariableController) {
            this.U = yatagan$DivKitComponent;
            this.P = (ContextThemeWrapper) tv0.a(contextThemeWrapper);
            this.T = (jh2) tv0.a(jh2Var);
            this.Q = (Integer) tv0.a(num);
            this.R = (sh2) tv0.a(sh2Var);
            this.S = (DivVariableController) tv0.a(divVariableController);
        }

        @Override
        public sq2 A() {
            return W();
        }

        @Override
        public bi2 B() {
            return (bi2) tv0.b(this.T.g());
        }

        @Override
        public rga C() {
            return s0();
        }

        @Override
        public co2 D() {
            return S();
        }

        @Override
        public boolean E() {
            return ((Boolean) tv0.b(Boolean.valueOf(this.T.x()))).booleanValue();
        }

        @Override
        public rg2 F() {
            return O();
        }

        @Override
        public cf2 G() {
            return (cf2) tv0.b(this.T.a());
        }

        @Override
        public DivVisibilityActionTracker H() {
            return h0();
        }

        public b5 I() {
            Object b5Var = this.D;
            if (b5Var == null) {
                xha.a();
                b5Var = new b5(((Boolean) tv0.b(Boolean.valueOf(this.T.v()))).booleanValue());
                this.D = b5Var;
            }
            return (b5) b5Var;
        }

        public ze0 J() {
            Object ze0Var = this.B;
            if (ze0Var == null) {
                xha.a();
                ze0Var = new ze0(p0());
                this.B = ze0Var;
            }
            return (ze0) ze0Var;
        }

        public dd2 K() {
            Object dd2Var = this.g;
            if (dd2Var == null) {
                xha.a();
                dd2Var = new dd2(d0(), O(), V());
                this.g = dd2Var;
            }
            return (dd2) dd2Var;
        }

        public ce2 L() {
            Object ce2Var = this.I;
            if (ce2Var == null) {
                xha.a();
                ce2Var = new ce2(new ProviderImpl(this.U, 3), ((Boolean) tv0.b(Boolean.valueOf(this.T.H()))).booleanValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.K()))).booleanValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.G()))).booleanValue());
                this.I = ce2Var;
            }
            return (ce2) ce2Var;
        }

        public DivActionBinder M() {
            Object divActionBinder = this.m;
            if (divActionBinder == null) {
                xha.a();
                divActionBinder = new DivActionBinder((cf2) tv0.b(this.T.a()), (gd2) tv0.b(this.T.e()), L(), ((Boolean) tv0.b(Boolean.valueOf(this.T.B()))).booleanValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.y()))).booleanValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.v()))).booleanValue());
                this.m = divActionBinder;
            }
            return (DivActionBinder) divActionBinder;
        }

        public DivBaseBinder N() {
            Object divBaseBinder = this.K;
            if (divBaseBinder == null) {
                xha.a();
                divBaseBinder = new DivBaseBinder(new DivBackgroundBinder((wk2) tv0.b(this.T.p())), Y(), new lj2(M()), new DivAccessibilityBinder(((Boolean) tv0.b(Boolean.valueOf(this.T.v()))).booleanValue(), I()));
                this.K = divBaseBinder;
            }
            return (DivBaseBinder) divBaseBinder;
        }

        public rg2 O() {
            Object rg2Var = this.f;
            if (rg2Var == null) {
                xha.a();
                rg2Var = new rg2(a0(), new DivTextBinder(N(), Z(), new SpannedTextBuilder(Z(), (wk2) tv0.b(this.T.p())), ((Boolean) tv0.b(Boolean.valueOf(this.T.A()))).booleanValue()), new DivContainerBinder(N(), new ProviderImpl(this, 2), S(), new ProviderImpl(this, 0), i0()), new DivSeparatorBinder(N()), new DivImageBinder(N(), (wk2) tv0.b(this.T.p()), T(), i0()), new DivGifImageBinder(N(), (wk2) tv0.b(this.T.p()), T(), i0()), new DivGridBinder(N(), S(), new ProviderImpl(this, 0), new ProviderImpl(this, 2)), new DivGalleryBinder(N(), d0(), new ProviderImpl(this, 0), R(), ((Float) tv0.b(Float.valueOf(this.T.q()))).floatValue()), new DivPagerBinder(N(), d0(), new ProviderImpl(this, 0), R(), M(), m0(), I()), new DivTabsBinder(N(), d0(), new ProviderImpl(this, 0), v0(), (fda) tv0.b(hd2.d((bu2) tv0.b(this.T.s()))), M(), (gd2) tv0.b(this.T.e()), (wk2) tv0.b(this.T.p()), h0(), R(), l0(), V(), r0()), new DivStateBinder(N(), d0(), new ProviderImpl(this, 0), (lq2) tv0.b(this.T.k()), s0(), M(), L(), S(), R(), (gd2) tv0.b(this.T.e()), h0(), i0(), u0(), V()), new DivCustomBinder(N(), (a) tv0.b(this.T.f()), P(), new ProviderImpl(this, 0)), new DivIndicatorBinder(N(), m0()), new DivSliderBinder(N(), (gd2) tv0.b(this.T.e()), (bu2) tv0.b(this.T.s()), t0(), i0(), ((Float) tv0.b(Float.valueOf(this.T.q()))).floatValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.c()))).booleanValue()), new DivInputBinder(N(), Z(), u0(), M(), I(), i0()), new DivSelectBinder(N(), Z(), u0(), i0()), new DivVideoBinder(N(), t0(), M(), c0(), (ExecutorService) tv0.b(this.U.i.c()), (DivPlayerFactory) tv0.b(this.T.i())), P(), m0(), new DivSwitchBinder(N(), new com.yandex.div.core.expression.variables.a(i0(), j0())));
                this.f = rg2Var;
            }
            return (rg2) rg2Var;
        }

        public vi2 P() {
            Object vi2Var = this.e;
            if (vi2Var == null) {
                xha.a();
                vi2Var = new vi2((List) tv0.b(this.T.o()));
                this.e = vi2Var;
            }
            return (vi2) vi2Var;
        }

        public yk2 Q() {
            Object yk2Var = this.i;
            if (yk2Var == null) {
                xha.a();
                yk2Var = new yk2((wk2) tv0.b(this.T.p()));
                this.i = yk2Var;
            }
            return (yk2) yk2Var;
        }

        public zn2 R() {
            Object zn2Var = this.J;
            if (zn2Var == null) {
                xha.a();
                zn2Var = new zn2();
                this.J = zn2Var;
            }
            return (zn2) zn2Var;
        }

        public co2 S() {
            Object co2Var = this.u;
            if (co2Var == null) {
                xha.a();
                co2Var = new co2(R(), new ProviderImpl(this, 1));
                this.u = co2Var;
            }
            return (co2) co2Var;
        }

        public DivPlaceholderLoader T() {
            Object divPlaceholderLoader = this.M;
            if (divPlaceholderLoader == null) {
                xha.a();
                divPlaceholderLoader = new DivPlaceholderLoader((fd2) tv0.b(this.T.d()), (ExecutorService) tv0.b(this.U.i.c()));
                this.M = divPlaceholderLoader;
            }
            return (DivPlaceholderLoader) divPlaceholderLoader;
        }

        public DivPreloader U() {
            Object objB = this.j;
            if (objB == null) {
                xha.a();
                objB = tv0.b(hd2.a(Q(), (a) tv0.b(this.T.f()), (mo2) tv0.b(this.T.j()), P()));
                this.j = objB;
            }
            return (DivPreloader) objB;
        }

        public DivRuntimeVisitor V() {
            Object divRuntimeVisitor = this.d;
            if (divRuntimeVisitor == null) {
                xha.a();
                divRuntimeVisitor = new DivRuntimeVisitor((lq2) tv0.b(this.T.k()), s0(), r0());
                this.d = divRuntimeVisitor;
            }
            return (DivRuntimeVisitor) divRuntimeVisitor;
        }

        public sq2 W() {
            Object sq2Var = this.t;
            if (sq2Var == null) {
                xha.a();
                sq2Var = new sq2((lq2) tv0.b(this.T.k()), s0());
                this.t = sq2Var;
            }
            return (sq2) sq2Var;
        }

        public ct2 X() {
            Object ct2Var = this.q;
            if (ct2Var == null) {
                xha.a();
                ct2Var = new ct2(M(), i0());
                this.q = ct2Var;
            }
            return (ct2) ct2Var;
        }

        public DivTooltipController Y() {
            Object divTooltipController = this.c;
            if (divTooltipController == null) {
                xha.a();
                divTooltipController = new DivTooltipController((rt2) tv0.b(this.T.r()), h0(), U(), new st2(new ProviderImpl(this, 1)), I(), i0());
                this.c = divTooltipController;
            }
            return (DivTooltipController) divTooltipController;
        }

        public cu2 Z() {
            Object cu2Var = this.L;
            if (cu2Var == null) {
                xha.a();
                cu2Var = new cu2((Map) tv0.b(this.T.b()), (bu2) tv0.b(this.T.s()));
                this.L = cu2Var;
            }
            return (cu2) cu2Var;
        }

        @Override
        public xc3 a() {
            return i0();
        }

        public fu2 a0() {
            Object fu2Var = this.E;
            if (fu2Var == null) {
                xha.a();
                fu2Var = new fu2();
                this.E = fu2Var;
            }
            return (fu2) fu2Var;
        }

        @Override
        public iu2 b() {
            return b0();
        }

        public iu2 b0() {
            Object iu2Var = this.r;
            if (iu2Var == null) {
                xha.a();
                iu2Var = new iu2(c0());
                this.r = iu2Var;
            }
            return (iu2) iu2Var;
        }

        @Override
        public DivVisibilityActionDispatcher c() {
            return g0();
        }

        public vu2 c0() {
            Object vu2Var = this.s;
            if (vu2Var == null) {
                xha.a();
                vu2Var = new vu2();
                this.s = vu2Var;
            }
            return (vu2) vu2Var;
        }

        @Override
        public sh2 d() {
            return this.R;
        }

        public DivViewCreator d0() {
            Object divViewCreator = this.h;
            if (divViewCreator == null) {
                xha.a();
                divViewCreator = new DivViewCreator(l0(), v0(), a0(), (ViewPreCreationProfile) tv0.b(this.T.u()), w0());
                this.h = divViewCreator;
            }
            return (DivViewCreator) divViewCreator;
        }

        @Override
        public DivViewCreator e() {
            return d0();
        }

        public d e0() {
            Object objB = this.C;
            if (objB == null) {
                xha.a();
                objB = tv0.b(hd2.b(Q(), (a) tv0.b(this.T.f()), (mo2) tv0.b(this.T.j()), P()));
                this.C = objB;
            }
            return (d) objB;
        }

        @Override
        public mq2 f() {
            return (mq2) tv0.b(this.T.l());
        }

        public tv2 f0() {
            Object tv2Var = this.a;
            if (tv2Var == null) {
                xha.a();
                tv2Var = new tv2();
                this.a = tv2Var;
            }
            return (tv2) tv2Var;
        }

        @Override
        public gd2 g() {
            return (gd2) tv0.b(this.T.e());
        }

        public DivVisibilityActionDispatcher g0() {
            Object divVisibilityActionDispatcher = this.l;
            if (divVisibilityActionDispatcher == null) {
                xha.a();
                divVisibilityActionDispatcher = new DivVisibilityActionDispatcher((gd2) tv0.b(this.T.e()), (List) tv0.b(this.T.n()), (cf2) tv0.b(this.T.a()), L());
                this.l = divVisibilityActionDispatcher;
            }
            return (DivVisibilityActionDispatcher) divVisibilityActionDispatcher;
        }

        @Override
        public oi2 h() {
            return (oi2) tv0.b(this.T.h());
        }

        public DivVisibilityActionTracker h0() {
            Object divVisibilityActionTracker = this.k;
            if (divVisibilityActionTracker == null) {
                xha.a();
                divVisibilityActionTracker = new DivVisibilityActionTracker(new mdc(), g0());
                this.k = divVisibilityActionTracker;
            }
            return (DivVisibilityActionTracker) divVisibilityActionTracker;
        }

        @Override
        public wh2 i() {
            return new wh2();
        }

        public xc3 i0() {
            Object xc3Var = this.b;
            if (xc3Var == null) {
                xha.a();
                xc3Var = new xc3();
                this.b = xc3Var;
            }
            return (xc3) xc3Var;
        }

        @Override
        public StoredValuesController j() {
            return q0();
        }

        public com.yandex.div.core.expression.a j0() {
            Object aVar = this.p;
            if (aVar == null) {
                xha.a();
                aVar = new com.yandex.div.core.expression.a(this.S, M(), i0(), (gd2) tv0.b(this.T.e()), q0());
                this.p = aVar;
            }
            return (com.yandex.div.core.expression.a) aVar;
        }

        @Override
        public rq4 k() {
            return k0();
        }

        public rq4 k0() {
            Object objB = this.x;
            if (objB == null) {
                xha.a();
                objB = tv0.b(lk2.a.a(this.U.c()));
                this.x = objB;
            }
            return (rq4) objB;
        }

        @Override
        public ze0 l() {
            return J();
        }

        public Context l0() {
            Object objB = this.G;
            if (objB == null) {
                xha.a();
                objB = tv0.b(hd2.e(this.P, this.Q.intValue(), ((Boolean) tv0.b(Boolean.valueOf(this.T.F()))).booleanValue()));
                this.G = objB;
            }
            return (Context) objB;
        }

        @Override
        public vf2 m() {
            return this.U.d();
        }

        public xv7 m0() {
            Object xv7Var = this.F;
            if (xv7Var == null) {
                xha.a();
                xv7Var = new xv7();
                this.F = xv7Var;
            }
            return (xv7) xv7Var;
        }

        @Override
        public DivActionBinder n() {
            return M();
        }

        public r08 n0() {
            Object r08Var = this.v;
            if (r08Var == null) {
                xha.a();
                r08Var = new r08(((Boolean) tv0.b(Boolean.valueOf(this.T.z()))).booleanValue());
                this.v = r08Var;
            }
            return (r08) r08Var;
        }

        @Override
        public r08 o() {
            return n0();
        }

        public xr8 o0() {
            Object xr8Var = this.z;
            if (xr8Var == null) {
                xha.a();
                xr8Var = new xr8(j0());
                this.z = xr8Var;
            }
            return (xr8) xr8Var;
        }

        @Override
        public com.yandex.div.core.expression.a p() {
            return j0();
        }

        public RenderScript p0() {
            Object objB = this.y;
            if (objB == null) {
                xha.a();
                objB = tv0.b(hd2.c(this.P));
                this.y = objB;
            }
            return (RenderScript) objB;
        }

        @Override
        public d q() {
            return e0();
        }

        public StoredValuesController q0() {
            Object storedValuesController = this.A;
            if (storedValuesController == null) {
                xha.a();
                storedValuesController = new StoredValuesController(new ProviderImpl(this.U, 1));
                this.A = storedValuesController;
            }
            return (StoredValuesController) storedValuesController;
        }

        @Override
        public Div2ViewComponent.Builder r() {
            return new Div2ViewComponentImpl.ComponentFactoryImpl(this);
        }

        public rda r0() {
            Object rdaVar = this.o;
            if (rdaVar == null) {
                xha.a();
                rdaVar = new rda();
                this.o = rdaVar;
            }
            return (rda) rdaVar;
        }

        @Override
        public ViewPreCreationProfileRepository s() {
            return w0();
        }

        public rga s0() {
            Object rgaVar = this.n;
            if (rgaVar == null) {
                xha.a();
                rgaVar = new rga();
                this.n = rgaVar;
            }
            return (rga) rgaVar;
        }

        @Override
        public DivTooltipController t() {
            return Y();
        }

        public b t0() {
            Object bVar = this.O;
            if (bVar == null) {
                xha.a();
                bVar = new b(i0(), j0());
                this.O = bVar;
            }
            return (b) bVar;
        }

        @Override
        public boolean u() {
            return ((Boolean) tv0.b(Boolean.valueOf(this.T.w()))).booleanValue();
        }

        public com.yandex.div.core.expression.variables.c u0() {
            Object cVar = this.N;
            if (cVar == null) {
                xha.a();
                cVar = new com.yandex.div.core.expression.variables.c(i0(), j0());
                this.N = cVar;
            }
            return (com.yandex.div.core.expression.variables.c) cVar;
        }

        @Override
        public dd2 v() {
            return K();
        }

        public cdc v0() {
            Object objB = this.H;
            if (objB == null) {
                xha.a();
                objB = tv0.b(hd2.f(((Boolean) tv0.b(Boolean.valueOf(this.T.I()))).booleanValue(), (jk3) tv0.b(hd2.g(((Boolean) tv0.b(Boolean.valueOf(this.T.J()))).booleanValue(), (ViewPoolProfiler.a) tv0.b(this.T.t()))), n0(), this.U.j()));
                this.H = objB;
            }
            return (cdc) objB;
        }

        @Override
        public boolean w() {
            return ((Boolean) tv0.b(Boolean.valueOf(this.T.D()))).booleanValue();
        }

        public ViewPreCreationProfileRepository w0() {
            Object viewPreCreationProfileRepository = this.w;
            if (viewPreCreationProfileRepository == null) {
                xha.a();
                viewPreCreationProfileRepository = new ViewPreCreationProfileRepository(this.U.h, (ViewPreCreationProfile) tv0.b(this.T.u()));
                this.w = viewPreCreationProfileRepository;
            }
            return (ViewPreCreationProfileRepository) viewPreCreationProfileRepository;
        }

        @Override
        public ct2 x() {
            return X();
        }

        public Object x0(int i) {
            if (i == 0) {
                return O();
            }
            if (i == 1) {
                return K();
            }
            if (i == 2) {
                return d0();
            }
            throw new AssertionError();
        }

        @Override
        public DivVariableController y() {
            return this.S;
        }

        @Override
        public xr8 z() {
            return o0();
        }
    }

    public static final class ProviderImpl implements xi5 {
        public final Yatagan$DivKitComponent a;
        public final int b;

        public ProviderImpl(Yatagan$DivKitComponent yatagan$DivKitComponent, int i) {
            this.a = yatagan$DivKitComponent;
            this.b = i;
        }

        @Override
        public Object get() {
            return this.a.l(this.b);
        }
    }

    public static final class UninitializedLock {
        public UninitializedLock() {
        }
    }

    public Yatagan$DivKitComponent(Context context, c cVar) {
        this.a = new UninitializedLock();
        this.b = new UninitializedLock();
        this.c = new UninitializedLock();
        this.d = new UninitializedLock();
        this.e = new UninitializedLock();
        this.f = new UninitializedLock();
        this.g = new UninitializedLock();
        this.h = (Context) tv0.a(context);
        this.i = (c) tv0.a(cVar);
    }

    public static DivKitComponent.Builder builder() {
        return new ComponentFactoryImpl();
    }

    @Override
    public oq4 a() {
        return (oq4) tv0.b(this.i.f());
    }

    @Override
    public Div2Component.Builder b() {
        return new Div2ComponentImpl.ComponentFactoryImpl(this);
    }

    public sq4 c() {
        return (sq4) tv0.b(DivKitHistogramsModule.a.h((HistogramConfiguration) tv0.b(this.i.e()), new ProviderImpl(this, 4), new ProviderImpl(this, 5)));
    }

    public vf2 d() {
        Object vf2Var;
        Object obj = this.a;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    vf2Var = this.a;
                    if (vf2Var instanceof UninitializedLock) {
                        vf2Var = new vf2(k());
                        this.a = vf2Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = vf2Var;
        }
        return (vf2) obj;
    }

    public DivParsingHistogramReporter e() {
        Object objB;
        Object obj = this.f;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    objB = this.f;
                    if (objB instanceof UninitializedLock) {
                        objB = tv0.b(DivKitHistogramsModule.a.f((HistogramConfiguration) tv0.b(this.i.e()), new ProviderImpl(this, 0), new ProviderImpl(this, 2)));
                        this.f = objB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = objB;
        }
        return (DivParsingHistogramReporter) obj;
    }

    public DivStorageComponent f() {
        Object objB;
        Object obj = this.b;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    objB = this.b;
                    if (objB instanceof UninitializedLock) {
                        objB = tv0.b(br2.a.b((jk3) tv0.b(this.i.d()), this.h, c(), e()));
                        this.b = objB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = objB;
        }
        return (DivStorageComponent) obj;
    }

    public jq4 g() {
        Object jq4Var;
        Object obj = this.g;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    jq4Var = this.g;
                    if (jq4Var instanceof UninitializedLock) {
                        jq4Var = new jq4();
                        this.g = jq4Var;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = jq4Var;
        }
        return (jq4) obj;
    }

    public qq4 h() {
        Object objB;
        Object obj = this.e;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    objB = this.e;
                    if (objB instanceof UninitializedLock) {
                        objB = tv0.b(this.i.g());
                        this.e = objB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = objB;
        }
        return (qq4) obj;
    }

    public ac9 i() {
        Object objB;
        Object obj = this.d;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    objB = this.d;
                    if (objB instanceof UninitializedLock) {
                        fm2 fm2Var = fm2.a;
                        Context context = this.h;
                        this.i.h();
                        ubc.a(tv0.b(null));
                        objB = tv0.b(fm2.a(context, null));
                        this.d = objB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = objB;
        }
        return (ac9) obj;
    }

    public ViewCreator j() {
        Object objB;
        Object obj = this.c;
        if (obj instanceof UninitializedLock) {
            synchronized (obj) {
                try {
                    objB = this.c;
                    if (objB instanceof UninitializedLock) {
                        fm2 fm2Var = fm2.a;
                        objB = tv0.b(fm2.b((com.yandex.div.histogram.a) tv0.b(this.i.a())));
                        this.c = objB;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            obj = objB;
        }
        return (ViewCreator) obj;
    }

    public Set k() {
        HashSet hashSet = new HashSet(15);
        hashSet.add(new lg2());
        hashSet.add(new DivActionTypedArrayMutationHandler());
        hashSet.add(new qf2());
        hashSet.add(new rf2());
        hashSet.add(new DivActionTypedDictSetValueHandler());
        hashSet.add(new tf2());
        hashSet.add(new xf2());
        hashSet.add(new yf2());
        hashSet.add(new zf2());
        hashSet.add(new DivActionTypedSetVariableHandler());
        hashSet.add(new ag2());
        hashSet.add(new bg2());
        hashSet.add(new cg2((yo2) tv0.b(this.i.b())));
        hashSet.add(new dg2());
        hashSet.add(new fg2());
        return hashSet;
    }

    public Object l(int i) {
        if (i == 0) {
            return c();
        }
        if (i == 1) {
            return f();
        }
        if (i == 2) {
            return tv0.b(this.i.c());
        }
        if (i == 3) {
            return i();
        }
        if (i == 4) {
            return h();
        }
        if (i == 5) {
            return g();
        }
        throw new AssertionError();
    }
}

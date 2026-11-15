package defpackage;

import com.yandex.div.core.experiments.Experiment;
import com.yandex.div.core.expression.variables.DivVariableController;
import com.yandex.div.core.player.DivPlayerFactory;
import com.yandex.div.internal.viewpool.ViewPoolProfiler;
import com.yandex.div.state.InMemoryDivStateCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class jh2 {
    public final boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public float K;
    public final wk2 a;
    public final cf2 b;
    public final gd2 c;
    public final bi2 d;
    public final mq2 e;
    public final lq2 f;
    public final fd2 g;
    public final List h;
    public final com.yandex.div.core.a i;
    public final DivPlayerFactory j;
    public final mo2 k;
    public final rt2 l;
    public final List m;
    public final oi2 n;
    public final bu2 o;
    public final Map p;
    public final ViewPreCreationProfile q;
    public final ViewPoolProfiler.a r;
    public final DivVariableController s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    public static class b {
        public final wk2 a;
        public cf2 b;
        public gd2 c;
        public bi2 d;
        public mq2 e;
        public lq2 f;
        public fd2 g;
        public DivPlayerFactory i;
        public mo2 j;
        public com.yandex.div.core.a k;
        public rt2 l;
        public oi2 n;
        public bu2 o;
        public Map p;
        public ViewPreCreationProfile q;
        public ViewPoolProfiler.a r;
        public DivVariableController s;
        public final List h = new ArrayList();
        public final List m = new ArrayList();
        public boolean t = Experiment.TAP_BEACONS_ENABLED.getDefaultValue();
        public boolean u = Experiment.VISIBILITY_BEACONS_ENABLED.getDefaultValue();
        public boolean v = Experiment.SWIPE_OUT_BEACONS_ENABLED.getDefaultValue();
        public boolean w = Experiment.LONGTAP_ACTIONS_PASS_TO_CHILD_ENABLED.getDefaultValue();
        public boolean x = Experiment.IGNORE_ACTION_MENU_ITEMS_ENABLED.getDefaultValue();
        public boolean y = Experiment.HYPHENATION_SUPPORT_ENABLED.getDefaultValue();
        public boolean z = Experiment.VISUAL_ERRORS_ENABLED.getDefaultValue();
        public boolean A = Experiment.ACCESSIBILITY_ENABLED.getDefaultValue();
        public boolean B = Experiment.VIEW_POOL_ENABLED.getDefaultValue();
        public boolean C = Experiment.VIEW_POOL_PROFILING_ENABLED.getDefaultValue();
        public boolean D = Experiment.VIEW_POOL_OPTIMIZATION_DEBUG.getDefaultValue();
        public boolean E = Experiment.RESOURCE_CACHE_ENABLED.getDefaultValue();
        public boolean F = Experiment.MULTIPLE_STATE_CHANGE_ENABLED.getDefaultValue();
        public boolean G = false;
        public boolean H = Experiment.COMPLEX_REBIND_ENABLED.getDefaultValue();
        public boolean I = Experiment.PAGER_PAGE_CLIP_ENABLED.getDefaultValue();
        public boolean J = Experiment.PERMANENT_DEBUG_PANEL_ENABLED.getDefaultValue();
        public float K = 0.0f;

        public b(wk2 wk2Var) {
            this.a = wk2Var;
        }

        public b a(cf2 cf2Var) {
            this.b = cf2Var;
            return this;
        }

        public jh2 b() {
            bu2 bu2Var = this.o;
            if (bu2Var == null) {
                bu2Var = bu2.b;
            }
            bu2 bu2Var2 = bu2Var;
            DivPlayerFactory divPlayerFactory = this.i;
            if (divPlayerFactory == null) {
                divPlayerFactory = DivPlayerFactory.b;
            }
            DivPlayerFactory divPlayerFactory2 = divPlayerFactory;
            mo2 mo2VarA = this.j;
            if (mo2VarA == null) {
                mo2VarA = divPlayerFactory2.a();
            }
            mo2 mo2Var = mo2VarA;
            xk2 xk2Var = new xk2(this.a);
            cf2 cf2Var = this.b;
            if (cf2Var == null) {
                cf2Var = new cf2();
            }
            cf2 cf2Var2 = cf2Var;
            gd2 gd2Var = this.c;
            if (gd2Var == null) {
                gd2Var = gd2.a;
            }
            gd2 gd2Var2 = gd2Var;
            bi2 bi2Var = this.d;
            if (bi2Var == null) {
                bi2Var = bi2.b;
            }
            bi2 bi2Var2 = bi2Var;
            mq2 mq2Var = this.e;
            if (mq2Var == null) {
                mq2Var = mq2.b;
            }
            mq2 mq2Var2 = mq2Var;
            lq2 inMemoryDivStateCache = this.f;
            if (inMemoryDivStateCache == null) {
                inMemoryDivStateCache = new InMemoryDivStateCache();
            }
            lq2 lq2Var = inMemoryDivStateCache;
            fd2 fd2Var = this.g;
            if (fd2Var == null) {
                fd2Var = fd2.a;
            }
            fd2 fd2Var2 = fd2Var;
            List list = this.h;
            com.yandex.div.core.a aVar = this.k;
            if (aVar == null) {
                aVar = com.yandex.div.core.a.c;
            }
            com.yandex.div.core.a aVar2 = aVar;
            rt2 rt2Var = this.l;
            if (rt2Var == null) {
                rt2Var = rt2.a;
            }
            rt2 rt2Var2 = rt2Var;
            List list2 = this.m;
            oi2 oi2Var = this.n;
            if (oi2Var == null) {
                oi2Var = oi2.a;
            }
            oi2 oi2Var2 = oi2Var;
            Map map = this.p;
            if (map == null) {
                map = new HashMap();
            }
            Map map2 = map;
            ViewPreCreationProfile ddcVar = this.q;
            if (ddcVar == null) {
                ddcVar = new ViewPreCreationProfile();
            }
            ViewPreCreationProfile ddcVar2 = ddcVar;
            ViewPoolProfiler.a aVar3 = this.r;
            if (aVar3 == null) {
                aVar3 = ViewPoolProfiler.a.b;
            }
            ViewPoolProfiler.a aVar4 = aVar3;
            DivVariableController divVariableController = this.s;
            if (divVariableController == null) {
                divVariableController = new DivVariableController();
            }
            return new jh2(xk2Var, cf2Var2, gd2Var2, bi2Var2, mq2Var2, lq2Var, fd2Var2, list, aVar2, divPlayerFactory2, mo2Var, rt2Var2, list2, oi2Var2, bu2Var2, map2, ddcVar2, aVar4, divVariableController, this.t, this.u, this.v, this.w, this.x, this.z, this.y, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.I, this.J, this.K);
        }

        public b c(com.yandex.div.core.a aVar) {
            this.k = aVar;
            return this;
        }

        public b d(wi2 wi2Var) {
            this.m.add(wi2Var);
            return this;
        }

        public b e(bu2 bu2Var) {
            this.o = bu2Var;
            return this;
        }
    }

    public boolean A() {
        return this.z;
    }

    public boolean B() {
        return this.w;
    }

    public boolean C() {
        return this.F;
    }

    public boolean D() {
        return this.I;
    }

    public boolean E() {
        return this.J;
    }

    public boolean F() {
        return this.E;
    }

    public boolean G() {
        return this.v;
    }

    public boolean H() {
        return this.t;
    }

    public boolean I() {
        return this.B;
    }

    public boolean J() {
        return this.C;
    }

    public boolean K() {
        return this.u;
    }

    public cf2 a() {
        return this.b;
    }

    public Map b() {
        return this.p;
    }

    public boolean c() {
        return this.y;
    }

    public fd2 d() {
        return this.g;
    }

    public gd2 e() {
        return this.c;
    }

    public com.yandex.div.core.a f() {
        return this.i;
    }

    public bi2 g() {
        return this.d;
    }

    public oi2 h() {
        return this.n;
    }

    public DivPlayerFactory i() {
        return this.j;
    }

    public mo2 j() {
        return this.k;
    }

    public lq2 k() {
        return this.f;
    }

    public mq2 l() {
        return this.e;
    }

    public DivVariableController m() {
        return this.s;
    }

    public List n() {
        return this.h;
    }

    public List o() {
        return this.m;
    }

    public wk2 p() {
        return this.a;
    }

    public float q() {
        return this.K;
    }

    public rt2 r() {
        return this.l;
    }

    public bu2 s() {
        return this.o;
    }

    public ViewPoolProfiler.a t() {
        return this.r;
    }

    public ViewPreCreationProfile u() {
        return this.q;
    }

    public boolean v() {
        return this.A;
    }

    public boolean w() {
        return this.G;
    }

    public boolean x() {
        return this.H;
    }

    public boolean y() {
        return this.x;
    }

    public boolean z() {
        return this.D;
    }

    public jh2(wk2 wk2Var, cf2 cf2Var, gd2 gd2Var, bi2 bi2Var, mq2 mq2Var, lq2 lq2Var, fd2 fd2Var, List list, com.yandex.div.core.a aVar, DivPlayerFactory divPlayerFactory, mo2 mo2Var, rt2 rt2Var, List list2, oi2 oi2Var, bu2 bu2Var, Map map, ViewPreCreationProfile ddcVar, ViewPoolProfiler.a aVar2, DivVariableController divVariableController, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, float f) {
        this.a = wk2Var;
        this.b = cf2Var;
        this.c = gd2Var;
        this.d = bi2Var;
        this.e = mq2Var;
        this.f = lq2Var;
        this.g = fd2Var;
        this.h = list;
        this.i = aVar;
        this.j = divPlayerFactory;
        this.k = mo2Var;
        this.l = rt2Var;
        this.m = list2;
        this.n = oi2Var;
        this.o = bu2Var;
        this.p = map;
        this.r = aVar2;
        this.t = z;
        this.u = z2;
        this.v = z3;
        this.w = z4;
        this.x = z5;
        this.y = z6;
        this.z = z7;
        this.A = z8;
        this.B = z9;
        this.q = ddcVar;
        this.C = z10;
        this.D = z11;
        this.E = z12;
        this.F = z13;
        this.G = z14;
        this.H = z15;
        this.J = z17;
        this.s = divVariableController;
        this.K = f;
        this.I = z16;
    }
}

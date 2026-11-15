package com.yandex.div.core;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.view.LayoutInflaterCompat;
import androidx.p004lifecycle.LifecycleOwner;
import com.yandex.div.core.dagger.Div2Component;
import com.yandex.div.core.expression.variables.DivVariableController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository;
import defpackage.ViewPreCreationProfile;
import defpackage.c74;
import defpackage.ei2;
import defpackage.jh2;
import defpackage.r08;
import defpackage.sh2;
import defpackage.si4;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public class Div2Context extends ContextWrapper {
    public static final a Companion = new a(null);
    public static final int RESET_ERROR_COLLECTORS = 2;
    public static final int RESET_EXPRESSION_RUNTIMES = 1;
    private static final int RESET_NONE = 0;
    public static final int RESET_SELECTED_STATES = 4;
    public static final int RESET_VISIBILITY_COUNTERS = 8;
    private final ContextThemeWrapper baseContext;
    private final Div2Component div2Component;
    private final yi5 globalVariableController$delegate;
    private LayoutInflater inflater;
    private final LifecycleOwner lifecycleOwner;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements LayoutInflater.Factory2 {
        public static final a c = new a(null);
        public final Div2Context b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public b(Div2Context div2Context) {
            y45.j(div2Context, "div2Context");
            this.b = div2Context;
        }

        public final boolean a(String str) {
            return y45.e("com.yandex.div.core.view2.Div2View", str) || y45.e("Div2View", str);
        }

        @Override
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            y45.j(str, "name");
            y45.j(context, "context");
            y45.j(attributeSet, "attrs");
            return onCreateView(str, context, attributeSet);
        }

        @Override
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            y45.j(str, "name");
            y45.j(context, "context");
            y45.j(attributeSet, "attrs");
            if (!a(str)) {
                return null;
            }
            return new Div2View(this.b, attributeSet, 0, 4, null);
        }
    }

    public Div2Context(ContextThemeWrapper contextThemeWrapper, Div2Component div2Component, LifecycleOwner lifecycleOwner) {
        super(contextThemeWrapper);
        this.baseContext = contextThemeWrapper;
        this.div2Component = div2Component;
        this.lifecycleOwner = lifecycleOwner;
        this.globalVariableController$delegate = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final si4 invoke() {
                DivVariableController divVariableControllerY = this.this$0.getDiv2Component$div_release().y();
                y45.i(divVariableControllerY, "div2Component.divVariableController");
                return new si4(divVariableControllerY);
            }
        });
        getDiv2Component$div_release().d().b();
    }

    public static void getGlobalVariableController$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void reset$default(Div2Context div2Context, int i, List list, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reset");
        }
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            list = y71.k();
        }
        div2Context.reset(i, list);
    }

    public final LayoutInflater a() {
        LayoutInflater layoutInflaterCloneInContext;
        LayoutInflater layoutInflater = this.inflater;
        if (layoutInflater != null) {
            return layoutInflater;
        }
        synchronized (this) {
            layoutInflaterCloneInContext = this.inflater;
            if (layoutInflaterCloneInContext == null) {
                layoutInflaterCloneInContext = LayoutInflater.from(this.baseContext).cloneInContext(this);
                y45.h(layoutInflaterCloneInContext, "null cannot be cast to non-null type android.view.LayoutInflater");
                LayoutInflaterCompat.setFactory2(layoutInflaterCloneInContext, new b(this));
                this.inflater = layoutInflaterCloneInContext;
            }
        }
        return layoutInflaterCloneInContext;
    }

    public boolean cancelTooltips() {
        return getDiv2Component$div_release().t().g();
    }

    public Div2Context childContext(ContextThemeWrapper contextThemeWrapper) {
        y45.j(contextThemeWrapper, "baseContext");
        return new Div2Context(contextThemeWrapper, getDiv2Component$div_release(), getLifecycleOwner$div_release());
    }

    public Div2Component getDiv2Component$div_release() {
        return this.div2Component;
    }

    public DivVariableController getDivVariableController() {
        DivVariableController divVariableControllerY = getDiv2Component$div_release().y();
        y45.i(divVariableControllerY, "div2Component.divVariableController");
        return divVariableControllerY;
    }

    public si4 getGlobalVariableController() {
        return (si4) this.globalVariableController$delegate.getValue();
    }

    public LifecycleOwner getLifecycleOwner$div_release() {
        return this.lifecycleOwner;
    }

    public r08 getPerformanceDependentSessionProfiler() {
        r08 r08VarO = getDiv2Component$div_release().o();
        y45.i(r08VarO, "div2Component.performanceDependentSessionProfiler");
        return r08VarO;
    }

    @Override
    public Object getSystemService(String str) {
        y45.j(str, "name");
        return y45.e("layout_inflater", str) ? a() : this.baseContext.getSystemService(str);
    }

    public ViewPreCreationProfile getViewPreCreationProfile() {
        return getDiv2Component$div_release().e().N();
    }

    public ViewPreCreationProfileRepository getViewPreCreationProfileRepository() {
        ViewPreCreationProfileRepository viewPreCreationProfileRepositoryS = getDiv2Component$div_release().s();
        y45.i(viewPreCreationProfileRepositoryS, "div2Component.viewPreCreationProfileRepository");
        return viewPreCreationProfileRepositoryS;
    }

    public void reset(int i, List<? extends ei2> list) {
        y45.j(list, "tags");
        if ((i & 1) != 0) {
            getDiv2Component$div_release().p().i(list);
        }
        if ((i & 2) != 0) {
            getDiv2Component$div_release().a().c(list);
        }
        if ((i & 4) != 0) {
            getDiv2Component$div_release().A().b(list);
        }
        if ((i & 8) != 0) {
            getDiv2Component$div_release().c().g(list);
        }
    }

    public void setViewPreCreationProfile(ViewPreCreationProfile viewPreCreationProfile) {
        y45.j(viewPreCreationProfile, ES6Iterator.VALUE_PROPERTY);
        getDiv2Component$div_release().e().g0(viewPreCreationProfile);
    }

    public void warmUp() {
        getDiv2Component$div_release().v();
    }

    public Div2Context childContext(LifecycleOwner lifecycleOwner) {
        return new Div2Context(this.baseContext, getDiv2Component$div_release(), lifecycleOwner);
    }

    public Div2Context childContext(ContextThemeWrapper contextThemeWrapper, LifecycleOwner lifecycleOwner) {
        y45.j(contextThemeWrapper, "baseContext");
        return new Div2Context(contextThemeWrapper, getDiv2Component$div_release(), lifecycleOwner);
    }

    public Div2Context(ContextThemeWrapper contextThemeWrapper, jh2 jh2Var, int i, LifecycleOwner lifecycleOwner, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(contextThemeWrapper, jh2Var, (i2 & 4) != 0 ? com.yandex.div.R.style.Div_Theme : i, (i2 & 8) != 0 ? null : lifecycleOwner);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Div2Context(ContextThemeWrapper contextThemeWrapper, jh2 jh2Var, int i, LifecycleOwner lifecycleOwner) {
        y45.j(contextThemeWrapper, "baseContext");
        y45.j(jh2Var, "configuration");
        Div2Component div2ComponentBuild = com.yandex.div.core.b.b.a(contextThemeWrapper).e().b().e(contextThemeWrapper).a(jh2Var).c(i).d(new sh2(SystemClock.uptimeMillis())).b(jh2Var.m()).build();
        y45.i(div2ComponentBuild, "DivKit.getInstance(baseC…ler)\n            .build()");
        this(contextThemeWrapper, div2ComponentBuild, lifecycleOwner);
    }
}

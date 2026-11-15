package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.p009lifecycle.compose.LocalLifecycleOwnerKt;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public abstract class AndroidCompositionLocals_androidKt {

    private static final androidx.compose.runtime.s1 f5260a = CompositionLocalKt.d(null, new Function0<Configuration>() {
        @Override
        public final Configuration invoke() {
            AndroidCompositionLocals_androidKt.k("LocalConfiguration");
            throw new KotlinNothingValueException();
        }
    }, 1, null);

    private static final androidx.compose.runtime.s1 f5261b = CompositionLocalKt.f(new Function0<Context>() {
        @Override
        public final Context invoke() {
            AndroidCompositionLocals_androidKt.k("LocalContext");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5262c = CompositionLocalKt.f(new Function0<i0.d>() {
        @Override
        public final i0.d invoke() {
            AndroidCompositionLocals_androidKt.k("LocalImageVectorCache");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5263d = CompositionLocalKt.f(new Function0<i0.f>() {
        @Override
        public final i0.f invoke() {
            AndroidCompositionLocals_androidKt.k("LocalResourceIdCache");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5264e = CompositionLocalKt.f(new Function0<androidx.p010savedstate.e>() {
        @Override
        public final androidx.p010savedstate.e invoke() {
            AndroidCompositionLocals_androidKt.k("LocalSavedStateRegistryOwner");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5265f = CompositionLocalKt.f(new Function0<View>() {
        @Override
        public final View invoke() {
            AndroidCompositionLocals_androidKt.k("LocalView");
            throw new KotlinNothingValueException();
        }
    });

    public static final class a implements ComponentCallbacks2 {

        final Configuration f5267a;

        final i0.d f5268b;

        a(Configuration configuration, i0.d dVar) {
            this.f5267a = configuration;
            this.f5268b = dVar;
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
            this.f5268b.c(this.f5267a.updateFrom(configuration));
            this.f5267a.setTo(configuration);
        }

        @Override
        public void onLowMemory() {
            this.f5268b.a();
        }

        @Override
        public void onTrimMemory(int i10) {
            this.f5268b.a();
        }
    }

    public static final class b implements ComponentCallbacks2 {

        final i0.f f5269a;

        b(i0.f fVar) {
            this.f5269a = fVar;
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
            this.f5269a.a();
        }

        @Override
        public void onLowMemory() {
            this.f5269a.a();
        }

        @Override
        public void onTrimMemory(int i10) {
            this.f5269a.a();
        }
    }

    public static final void a(final AndroidComposeView androidComposeView, final Function2 function2, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVarG = iVar.g(1396852028);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(androidComposeView) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i11 & 19) == 18 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1396852028, i11, -1, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals (AndroidCompositionLocals.android.kt:91)");
            }
            Context context = androidComposeView.getContext();
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3427a;
            if (objY == aVar.a()) {
                objY = androidx.compose.runtime.u2.c(new Configuration(context.getResources().getConfiguration()), null, 2, null);
                iVarG.p(objY);
            }
            final androidx.compose.runtime.i1 i1Var = (androidx.compose.runtime.i1) objY;
            Object objY2 = iVarG.y();
            if (objY2 == aVar.a()) {
                objY2 = new Function1<Configuration, Unit>() {
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((Configuration) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(Configuration configuration) {
                        AndroidCompositionLocals_androidKt.c(i1Var, new Configuration(configuration));
                    }
                };
                iVarG.p(objY2);
            }
            androidComposeView.setConfigurationChangeObserver((Function1) objY2);
            Object objY3 = iVarG.y();
            if (objY3 == aVar.a()) {
                objY3 = new k0(context);
                iVarG.p(objY3);
            }
            final k0 k0Var = (k0) objY3;
            AndroidComposeView.b viewTreeOwners = androidComposeView.getViewTreeOwners();
            if (viewTreeOwners == null) {
                throw new IllegalStateException("Called when the ViewTreeOwnersAvailability is not yet in Available state");
            }
            Object objY4 = iVarG.y();
            if (objY4 == aVar.a()) {
                objY4 = DisposableSaveableStateRegistry_androidKt.b(androidComposeView, viewTreeOwners.b());
                iVarG.p(objY4);
            }
            final u0 u0Var = (u0) objY4;
            Unit unit = Unit.f64096a;
            boolean zA = iVarG.A(u0Var);
            Object objY5 = iVarG.y();
            if (zA || objY5 == aVar.a()) {
                objY5 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                    public static final class a implements androidx.compose.runtime.c0 {

                        final u0 f5266a;

                        public a(u0 u0Var) {
                            this.f5266a = u0Var;
                        }

                        @Override
                        public void dispose() {
                            this.f5266a.c();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        return new a(u0Var);
                    }
                };
                iVarG.p(objY5);
            }
            androidx.compose.runtime.g0.a(unit, (Function1) objY5, iVarG, 6);
            CompositionLocalKt.b(new androidx.compose.runtime.t1[]{f5260a.d(b(i1Var)), f5261b.d(context), LocalLifecycleOwnerKt.a().d(viewTreeOwners.a()), f5264e.d(viewTreeOwners.b()), SaveableStateRegistryKt.d().d(u0Var), f5265f.d(androidComposeView.getView()), f5262c.d(l(context, b(i1Var), iVarG, 0)), f5263d.d(m(context, iVarG, 0)), CompositionLocalsKt.h().d(Boolean.valueOf(((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui_release()))}, androidx.compose.runtime.internal.b.d(1471621628, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i12) {
                    if ((i12 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1471621628, i12, -1, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals.<anonymous> (AndroidCompositionLocals.android.kt:131)");
                    }
                    CompositionLocalsKt.a(androidComposeView, k0Var, function2, iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, androidx.compose.runtime.t1.f3732i | 48);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        androidx.compose.runtime.g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i12) {
                    AndroidCompositionLocals_androidKt.a(androidComposeView, function2, iVar2, androidx.compose.runtime.v1.a(i10 | 1));
                }
            });
        }
    }

    private static final Configuration b(androidx.compose.runtime.i1 i1Var) {
        return (Configuration) i1Var.getValue();
    }

    public static final void c(androidx.compose.runtime.i1 i1Var, Configuration configuration) {
        i1Var.setValue(configuration);
    }

    public static final androidx.compose.runtime.s1 f() {
        return f5260a;
    }

    public static final androidx.compose.runtime.s1 g() {
        return f5261b;
    }

    public static final androidx.compose.runtime.s1 h() {
        return f5262c;
    }

    public static final androidx.compose.runtime.s1 i() {
        return f5263d;
    }

    public static final androidx.compose.runtime.s1 j() {
        return f5265f;
    }

    public static final Void k(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }

    private static final i0.d l(final Context context, Configuration configuration, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-485908294, i10, -1, "androidx.compose.ui.platform.obtainImageVectorCache (AndroidCompositionLocals.android.kt:172)");
        }
        Object objY = iVar.y();
        androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3427a;
        if (objY == aVar.a()) {
            objY = new i0.d();
            iVar.p(objY);
        }
        i0.d dVar = (i0.d) objY;
        Object objY2 = iVar.y();
        Object obj = objY2;
        if (objY2 == aVar.a()) {
            Configuration configuration2 = new Configuration();
            if (configuration != null) {
                configuration2.setTo(configuration);
            }
            iVar.p(configuration2);
            obj = configuration2;
        }
        Configuration configuration3 = (Configuration) obj;
        Object objY3 = iVar.y();
        if (objY3 == aVar.a()) {
            objY3 = new a(configuration3, dVar);
            iVar.p(objY3);
        }
        final a aVar2 = (a) objY3;
        boolean zA = iVar.A(context);
        Object objY4 = iVar.y();
        if (zA || objY4 == aVar.a()) {
            objY4 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                public static final class a implements androidx.compose.runtime.c0 {

                    final Context f5270a;

                    final AndroidCompositionLocals_androidKt.a f5271b;

                    public a(Context context, AndroidCompositionLocals_androidKt.a aVar) {
                        this.f5270a = context;
                        this.f5271b = aVar;
                    }

                    @Override
                    public void dispose() {
                        this.f5270a.getApplicationContext().unregisterComponentCallbacks(this.f5271b);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                    context.getApplicationContext().registerComponentCallbacks(aVar2);
                    return new a(context, aVar2);
                }
            };
            iVar.p(objY4);
        }
        androidx.compose.runtime.g0.a(dVar, (Function1) objY4, iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return dVar;
    }

    private static final i0.f m(final Context context, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1348507246, i10, -1, "androidx.compose.ui.platform.obtainResourceIdCache (AndroidCompositionLocals.android.kt:141)");
        }
        Object objY = iVar.y();
        androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3427a;
        if (objY == aVar.a()) {
            objY = new i0.f();
            iVar.p(objY);
        }
        i0.f fVar = (i0.f) objY;
        Object objY2 = iVar.y();
        if (objY2 == aVar.a()) {
            objY2 = new b(fVar);
            iVar.p(objY2);
        }
        final b bVar = (b) objY2;
        boolean zA = iVar.A(context);
        Object objY3 = iVar.y();
        if (zA || objY3 == aVar.a()) {
            objY3 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                public static final class a implements androidx.compose.runtime.c0 {

                    final Context f5272a;

                    final AndroidCompositionLocals_androidKt.b f5273b;

                    public a(Context context, AndroidCompositionLocals_androidKt.b bVar) {
                        this.f5272a = context;
                        this.f5273b = bVar;
                    }

                    @Override
                    public void dispose() {
                        this.f5272a.getApplicationContext().unregisterComponentCallbacks(this.f5273b);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                    context.getApplicationContext().registerComponentCallbacks(bVar);
                    return new a(context, bVar);
                }
            };
            iVar.p(objY3);
        }
        androidx.compose.runtime.g0.a(fVar, (Function1) objY3, iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fVar;
    }
}

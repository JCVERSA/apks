package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.R$id;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineStart;

public abstract class WindowRecomposer_androidKt {

    private static final Map f5402a = new LinkedHashMap();

    public static final class b extends ContentObserver {

        final kotlinx.coroutines.channels.d f5405a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlinx.coroutines.channels.d dVar, Handler handler) {
            super(handler);
            this.f5405a = dVar;
        }

        @Override
        public void onChange(boolean z10, Uri uri) {
            this.f5405a.a(Unit.f64096a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.coroutines.CoroutineContext] */
    /* JADX WARN: Type inference failed for: r0v12, types: [T, androidx.compose.ui.platform.e1] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlin.coroutines.CoroutineContext] */
    public static final Recomposer b(final View view, CoroutineContext coroutineContext, Lifecycle lifecycle) {
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        CoroutineContext coroutineContext2;
        ?? e1Var;
        if (coroutineContext.get(ContinuationInterceptor.INSTANCE) == null || coroutineContext.get(androidx.compose.runtime.u0.Z0) == null) {
            coroutineContext = AndroidUiDispatcher.f5278k.a().plus(coroutineContext);
        }
        androidx.compose.runtime.u0 u0Var = (androidx.compose.runtime.u0) coroutineContext.get(androidx.compose.runtime.u0.Z0);
        if (u0Var != null) {
            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(u0Var);
            pausableMonotonicFrameClock2.a();
            pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
        } else {
            pausableMonotonicFrameClock = null;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        androidx.compose.ui.j jVar = (androidx.compose.ui.j) coroutineContext.get(androidx.compose.ui.j.f4783a1);
        ?? r10 = jVar;
        if (jVar == null) {
            e1Var = new e1();
            objectRef.element = e1Var;
        }
        if (pausableMonotonicFrameClock != null) {
            r10 = e1Var;
            coroutineContext2 = pausableMonotonicFrameClock;
        } else {
            r10 = e1Var;
            coroutineContext2 = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContextPlus = coroutineContext.plus(coroutineContext2).plus(r10);
        final Recomposer recomposer = new Recomposer(coroutineContextPlus);
        recomposer.l0();
        final kotlinx.coroutines.n0 n0VarA = kotlinx.coroutines.o0.a(coroutineContextPlus);
        if (lifecycle == null) {
            androidx.p009lifecycle.u uVarA = ViewTreeLifecycleOwner.a(view);
            lifecycle = uVarA != null ? uVarA.getLifecycle() : null;
        }
        if (lifecycle != null) {
            view.addOnAttachStateChangeListener(new a(view, recomposer));
            lifecycle.a(new androidx.p009lifecycle.r() {

                public class a {

                    public static final int[] f5411a;

                    static {
                        int[] iArr = new int[Lifecycle.Event.values().length];
                        try {
                            iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                        } catch (NoSuchFieldError unused5) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                        } catch (NoSuchFieldError unused6) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                        } catch (NoSuchFieldError unused7) {
                        }
                        f5411a = iArr;
                    }
                }

                @Override
                public void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
                    int i10 = a.f5411a[event.ordinal()];
                    if (i10 == 1) {
                        kotlinx.coroutines.k.d(n0VarA, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(objectRef, recomposer, uVar, this, view, null), 1, null);
                        return;
                    }
                    if (i10 == 2) {
                        PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                        if (pausableMonotonicFrameClock3 != null) {
                            pausableMonotonicFrameClock3.c();
                        }
                        recomposer.y0();
                        return;
                    }
                    if (i10 == 3) {
                        recomposer.l0();
                    } else {
                        if (i10 != 4) {
                            return;
                        }
                        recomposer.Y();
                    }
                }
            });
            return recomposer;
        }
        g0.a.c("ViewTreeLifecycleOwner not found from " + view);
        throw new KotlinNothingValueException();
    }

    public static Recomposer c(View view, CoroutineContext coroutineContext, Lifecycle lifecycle, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            lifecycle = null;
        }
        return b(view, coroutineContext, lifecycle);
    }

    public static final androidx.compose.runtime.m d(View view) {
        androidx.compose.runtime.m mVarF = f(view);
        if (mVarF != null) {
            return mVarF;
        }
        for (ViewParent parent = view.getParent(); mVarF == null && (parent instanceof View); parent = parent.getParent()) {
            mVarF = f((View) parent);
        }
        return mVarF;
    }

    public static final kotlinx.coroutines.flow.h1 e(Context context) {
        kotlinx.coroutines.flow.h1 h1Var;
        Map map = f5402a;
        synchronized (map) {
            try {
                Object objC = map.get(context);
                if (objC == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                    kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(-1, null, null, 6, null);
                    objC = kotlinx.coroutines.flow.c.C(kotlinx.coroutines.flow.c.r(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new b(dVarB, androidx.core.os.h.a(Looper.getMainLooper())), dVarB, context, null)), kotlinx.coroutines.o0.b(), kotlinx.coroutines.flow.f1.a.b(kotlinx.coroutines.flow.f1.f64813a, 0L, 0L, 3, null), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                    map.put(context, objC);
                }
                h1Var = (kotlinx.coroutines.flow.h1) objC;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return h1Var;
    }

    public static final androidx.compose.runtime.m f(View view) {
        Object tag = view.getTag(R$id.androidx_compose_ui_view_composition_context);
        if (tag instanceof androidx.compose.runtime.m) {
            return (androidx.compose.runtime.m) tag;
        }
        return null;
    }

    private static final View g(View view) {
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getId() == 16908290) {
                return view;
            }
            parent = view2.getParent();
            view = view2;
        }
        return view;
    }

    public static final Recomposer h(View view) {
        if (!view.isAttachedToWindow()) {
            g0.a.b("Cannot locate windowRecomposer; View " + view + " is not attached to a window");
        }
        View viewG = g(view);
        androidx.compose.runtime.m mVarF = f(viewG);
        if (mVarF == null) {
            return WindowRecomposerPolicy.f5398a.a(viewG);
        }
        if (mVarF instanceof Recomposer) {
            return (Recomposer) mVarF;
        }
        throw new IllegalStateException("root viewTreeParentCompositionContext is not a Recomposer");
    }

    public static final void i(View view, androidx.compose.runtime.m mVar) {
        view.setTag(R$id.androidx_compose_ui_view_composition_context, mVar);
    }

    public static final class a implements View.OnAttachStateChangeListener {

        final View f5403a;

        final Recomposer f5404b;

        a(View view, Recomposer recomposer) {
            this.f5403a = view;
            this.f5404b = recomposer;
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            this.f5403a.removeOnAttachStateChangeListener(this);
            this.f5404b.Y();
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }
    }
}

package com.transsion.widgetslib.util;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.view.Window;
import android.view.WindowInsets;
import androidx.core.util.Consumer;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.java.layout.WindowInfoTrackerCallbackAdapter;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import com.transsion.widgetslib.util.InputDialogFoldEngine;
import defpackage.bq5;
import defpackage.c74;
import defpackage.e74;
import defpackage.h5;
import defpackage.i81;
import defpackage.mi4;
import defpackage.olb;
import defpackage.s74;
import defpackage.ur1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class InputDialogFoldEngine extends h5 {
    public static final a k = new a(null);
    public final WeakReference b;
    public ValueAnimator c;
    public ValueAnimator d;
    public boolean e;
    public boolean f;
    public final Handler g;
    public final yi5 h;
    public final yi5 i;
    public final Consumer j;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public InputDialogFoldEngine(final Window window) {
        y45.j(window, "window");
        this.b = new WeakReference(window);
        this.g = new Handler(window.getContext().getMainLooper());
        this.h = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final InputDialogInputManager invoke() {
                Window windowB = this.this$0.B();
                return new InputDialogInputManager(windowB != null ? windowB.getDecorView() : null);
            }
        });
        this.i = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final WindowInfoTrackerCallbackAdapter invoke() {
                WindowInfoTracker.Companion companion = WindowInfoTracker.INSTANCE;
                Context context = window.getContext();
                y45.i(context, "window.context");
                return new WindowInfoTrackerCallbackAdapter(companion.getOrCreate(context));
            }
        });
        this.j = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InputDialogFoldEngine.G(this.b, (WindowLayoutInfo) obj);
            }
        };
        A().e(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(final boolean z) {
                final InputDialogFoldEngine inputDialogFoldEngine = InputDialogFoldEngine.this;
                inputDialogFoldEngine.y(new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((Window) obj);
                        return zfb.a;
                    }

                    public final void invoke(Window window2) {
                        y45.j(window2, "$this$flexWindow");
                        bq5.o("isPhoneHungOnStatus = " + inputDialogFoldEngine.F() + " mParentStopped = " + inputDialogFoldEngine.f);
                        if (!inputDialogFoldEngine.F() || olb.u0(window2.getContext()) || olb.U0(window2.getContext()).isInMultiWindowMode() || inputDialogFoldEngine.f) {
                            return;
                        }
                        if (z) {
                            inputDialogFoldEngine.v();
                        } else {
                            inputDialogFoldEngine.N();
                        }
                    }
                });
            }
        });
    }

    public static final void G(final InputDialogFoldEngine inputDialogFoldEngine, final WindowLayoutInfo windowLayoutInfo) {
        y45.j(inputDialogFoldEngine, "this$0");
        inputDialogFoldEngine.g.post(new Runnable() {
            @Override
            public final void run() {
                InputDialogFoldEngine.H(windowLayoutInfo, inputDialogFoldEngine);
            }
        });
    }

    public static final void H(WindowLayoutInfo windowLayoutInfo, final InputDialogFoldEngine inputDialogFoldEngine) {
        y45.j(inputDialogFoldEngine, "this$0");
        DisplayFeature displayFeature = (DisplayFeature) i81.q0(windowLayoutInfo.getDisplayFeatures());
        if (displayFeature == null || !(displayFeature instanceof FoldingFeature)) {
            return;
        }
        inputDialogFoldEngine.x((FoldingFeature) displayFeature);
        inputDialogFoldEngine.y(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(final Window window) {
                y45.j(window, "$this$flexWindow");
                final InputDialogFoldEngine inputDialogFoldEngine2 = this.this$0;
                inputDialogFoldEngine2.z(window, new s74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((WindowInsetsCompat) obj, (WindowInsetsCompat) obj2);
                        return zfb.a;
                    }

                    public final void invoke(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2) {
                        y45.j(windowInsetsCompat, "$this$flexWindowInsets");
                        y45.j(windowInsetsCompat2, "it");
                        boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
                        if (inputDialogFoldEngine2.E(window)) {
                            inputDialogFoldEngine2.w();
                            if ((window.getAttributes().getFitInsetsTypes() & WindowInsets.Type.ime()) == 0) {
                                window.getAttributes().setFitInsetsTypes(window.getAttributes().getFitInsetsTypes() | WindowInsets.Type.ime());
                                window.getAttributes().y = 0;
                                Window window2 = window;
                                window2.setAttributes(window2.getAttributes());
                            }
                        } else if ((window.getAttributes().getFitInsetsTypes() & WindowInsets.Type.ime()) > 0) {
                            window.getAttributes().setFitInsetsTypes(window.getAttributes().getFitInsetsTypes() & (~WindowInsets.Type.ime()));
                            if (zIsVisible) {
                                window.getAttributes().y = olb.D(window.getContext()) / 2;
                            }
                            Window window3 = window;
                            window3.setAttributes(window3.getAttributes());
                        }
                        bq5.o("WindowInsets.Type.ime().inv() = " + (~WindowInsets.Type.ime()) + " attributes.fitInsetsTypes = " + window.getAttributes().getFitInsetsTypes() + " attributesTemp.y = " + window.getAttributes().y + " visible = " + zIsVisible);
                        if (!inputDialogFoldEngine2.E(window) && inputDialogFoldEngine2.Q() && zIsVisible && !inputDialogFoldEngine2.R()) {
                            inputDialogFoldEngine2.v();
                        }
                    }
                });
            }
        });
    }

    public final InputDialogInputManager A() {
        return (InputDialogInputManager) this.h.getValue();
    }

    public final Window B() {
        return (Window) this.b.get();
    }

    public final WindowInfoTrackerCallbackAdapter C() {
        return (WindowInfoTrackerCallbackAdapter) this.i.getValue();
    }

    public final void D() {
        y(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(Window window) {
                y45.j(window, "$this$flexWindow");
                window.setSoftInputMode(48);
            }
        });
    }

    public final boolean E(Window window) {
        return !F() || olb.u0(window.getContext()) || olb.U0(window.getContext()).isInMultiWindowMode() || window.getContext().getResources().getConfiguration().orientation == 2;
    }

    public final boolean F() {
        return this.e;
    }

    public final void I(Configuration configuration) {
        y45.j(configuration, "newConfigure");
        D();
        A().d(configuration);
    }

    public final void J() {
        bq5.o("onShow: ");
        y(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(Window window) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
                y45.j(window, "$this$flexWindow");
                this.this$0.O(window);
                window.getAttributes().setFitInsetsTypes(window.getAttributes().getFitInsetsTypes() | (this.this$0.E(window) ? WindowInsets.Type.ime() : 0));
                bq5.o("fitInsetsTypes = " + window.getAttributes().getFitInsetsTypes());
                olb.U0(window.getContext()).registerActivityLifecycleCallbacks(this.this$0);
            }
        });
        K();
    }

    public final void K() {
        y(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(Window window) {
                InputDialogFoldEngine inputDialogFoldEngine;
                Consumer<WindowLayoutInfo> consumer;
                y45.j(window, "$this$flexWindow");
                Activity activityU0 = olb.U0(window.getContext());
                if (activityU0 == null || (consumer = (inputDialogFoldEngine = this.this$0).j) == null) {
                    return;
                }
                inputDialogFoldEngine.C().removeWindowLayoutInfoListener(consumer);
                inputDialogFoldEngine.C().addWindowLayoutInfoListener(activityU0, (Executor) new ur1(), consumer);
            }
        });
    }

    public final void L() {
        Consumer<WindowLayoutInfo> consumer;
        WindowInfoTrackerCallbackAdapter windowInfoTrackerCallbackAdapterC = C();
        if (windowInfoTrackerCallbackAdapterC == null || (consumer = this.j) == null) {
            return;
        }
        windowInfoTrackerCallbackAdapterC.removeWindowLayoutInfoListener(consumer);
    }

    public final void M() {
        w();
        L();
        y(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Window) obj);
                return zfb.a;
            }

            public final void invoke(Window window) {
                y45.j(window, "$this$flexWindow");
                olb.U0(window.getContext()).unregisterActivityLifecycleCallbacks(this.this$0);
            }
        });
    }

    public final void N() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            y(new InputDialogFoldEngine$revertBack$2(this));
        }
    }

    public final void O(Window window) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("com.transsion.flamboyant.FoldableDeviceManager");
            Method method = cls.getMethod("get", Context.class);
            Method method2 = cls.getMethod("getCurrentFoldState", null);
            Field field = cls.getField("STATE_HALF_OPEN");
            field.setAccessible(true);
            Object obj = field.get(null);
            method2.setAccessible(true);
            Object objInvoke = method2.invoke(method.invoke(null, olb.U0(window.getContext())), null);
            bq5.o("stateHalfOpenFinalValue = " + obj + " currentState = " + objInvoke);
            P(y45.e(objInvoke, obj));
        } catch (ClassNotFoundException unused) {
            P(false);
        } catch (NoSuchMethodError unused2) {
            P(false);
        }
    }

    public final void P(boolean z) {
        this.e = z;
    }

    public final boolean Q() {
        return A().getMOffset() > 0;
    }

    public final boolean R() {
        return A().getMIsSoftInputStatusInChanging();
    }

    @Override
    public void onActivityStarted(Activity activity) {
        y45.j(activity, "activity");
        bq5.o("onActivityStarted");
        this.f = false;
        K();
    }

    @Override
    public void onActivityStopped(Activity activity) {
        y45.j(activity, "activity");
        bq5.o("onActivityStopped:");
        this.f = true;
        L();
    }

    public final void v() {
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            y(new InputDialogFoldEngine$adaptPosition$2(this));
        }
    }

    public final void w() {
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.d;
        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
            return;
        }
        valueAnimator2.cancel();
    }

    public final void x(FoldingFeature foldingFeature) {
        bq5.o(" FoldingFeature = isTableTopPosture state = " + foldingFeature.getState() + " orientation = " + foldingFeature.getOrientation());
        if (mi4.a(foldingFeature)) {
            P(true);
            bq5.o(" FoldingFeature = isTableTopPosture");
        } else {
            P(false);
            bq5.o("FoldingFeature = else");
        }
    }

    public final zfb y(e74 e74Var) {
        Window windowB = B();
        if (windowB == null) {
            return null;
        }
        e74Var.invoke(windowB);
        return zfb.a;
    }

    public final void z(Window window, s74 s74Var) {
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(window.getDecorView());
        if (rootWindowInsets != null) {
            s74Var.invoke(rootWindowInsets, rootWindowInsets);
        }
    }
}

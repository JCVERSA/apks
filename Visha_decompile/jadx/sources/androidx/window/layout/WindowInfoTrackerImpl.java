package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.c74;
import defpackage.gh8;
import defpackage.mc2;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.ur1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/window/layout/WindowInfoTrackerImpl;", "Landroidx/window/layout/WindowInfoTracker;", "Landroidx/window/layout/WindowMetricsCalculator;", "windowMetricsCalculator", "Landroidx/window/layout/adapter/WindowBackend;", "windowBackend", MethodDecl.initName, "(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/adapter/WindowBackend;)V", "Landroid/content/Context;", "context", "Lnz3;", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "(Landroid/content/Context;)Lnz3;", "Landroid/app/Activity;", "activity", "(Landroid/app/Activity;)Lnz3;", "Landroidx/window/layout/WindowMetricsCalculator;", "Landroidx/window/layout/adapter/WindowBackend;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WindowInfoTrackerImpl implements WindowInfoTracker {
    private final WindowBackend windowBackend;
    private final WindowMetricsCalculator windowMetricsCalculator;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lgh8;", "Landroidx/window/layout/WindowLayoutInfo;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", l = {50}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Context $context;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$context = context;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = WindowInfoTrackerImpl.this.new AnonymousClass1(this.$context, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                final gh8 gh8Var = (gh8) this.L$0;
                final Consumer<WindowLayoutInfo> consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        gh8Var.f((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$context, new ur1(), consumer);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                c74 c74Var = new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m59invoke();
                        return zfb.a;
                    }

                    public final void m59invoke() {
                        windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lgh8;", "Landroidx/window/layout/WindowLayoutInfo;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2", f = "WindowInfoTrackerImpl.kt", l = {63}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final Activity $activity;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Activity activity, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = WindowInfoTrackerImpl.this.new AnonymousClass2(this.$activity, wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                final gh8 gh8Var = (gh8) this.L$0;
                final Consumer<WindowLayoutInfo> consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        gh8Var.f((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$activity, new ur1(), consumer);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                c74 c74Var = new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m60invoke();
                        return zfb.a;
                    }

                    public final void m60invoke() {
                        windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public WindowInfoTrackerImpl(WindowMetricsCalculator windowMetricsCalculator, WindowBackend windowBackend) {
        y45.j(windowMetricsCalculator, "windowMetricsCalculator");
        y45.j(windowBackend, "windowBackend");
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
    }

    @Override
    public nz3 windowLayoutInfo(Context context) {
        y45.j(context, "context");
        return sz3.u(sz3.d(new AnonymousClass1(context, null)), mc2.c());
    }

    @Override
    public nz3 windowLayoutInfo(Activity activity) {
        y45.j(activity, "activity");
        return sz3.u(sz3.d(new AnonymousClass2(activity, null)), mc2.c());
    }
}

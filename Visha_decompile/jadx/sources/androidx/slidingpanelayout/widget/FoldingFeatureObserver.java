package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.ef3;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001d¨\u0006\u001f"}, d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;", "", "Landroidx/window/layout/WindowInfoTracker;", "windowInfoTracker", "Ljava/util/concurrent/Executor;", "executor", MethodDecl.initName, "(Landroidx/window/layout/WindowInfoTracker;Ljava/util/concurrent/Executor;)V", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "Landroidx/window/layout/FoldingFeature;", "getFoldingFeature", "(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "onFoldingFeatureChangeListener", "Lzfb;", "setOnFoldingFeatureChangeListener", "(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;)V", "Landroid/app/Activity;", "activity", "registerLayoutStateChangeCallback", "(Landroid/app/Activity;)V", "unregisterLayoutStateChangeCallback", "()V", "Landroidx/window/layout/WindowInfoTracker;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/j;", "job", "Lkotlinx/coroutines/j;", "Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "OnFoldingFeatureChangeListener", "slidingpanelayout_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class FoldingFeatureObserver {
    private final Executor executor;
    private j job;
    private OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;
    private final WindowInfoTracker windowInfoTracker;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;", "", "Landroidx/window/layout/FoldingFeature;", "foldingFeature", "Lzfb;", "onFoldingFeatureChange", "(Landroidx/window/layout/FoldingFeature;)V", "slidingpanelayout_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public interface OnFoldingFeatureChangeListener {
        void onFoldingFeatureChange(FoldingFeature foldingFeature);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", f = "FoldingFeatureObserver.kt", l = {97}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Activity $activity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return FoldingFeatureObserver.this.new AnonymousClass1(this.$activity, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                final nz3 nz3VarWindowLayoutInfo = FoldingFeatureObserver.this.windowInfoTracker.windowLayoutInfo(this.$activity);
                final FoldingFeatureObserver foldingFeatureObserver = FoldingFeatureObserver.this;
                nz3 nz3VarI = sz3.i(new nz3() {

                    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0006"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Loz3;", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "emit", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "i14", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
                    public static final class AnonymousClass2 implements oz3 {
                        final oz3 $this_unsafeFlow$inlined;
                        final FoldingFeatureObserver this$0;

                        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                        @nt1(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "FoldingFeatureObserver.kt", l = {138}, m = "emit")
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            Object result;

                            public AnonymousClass1(wh1 wh1Var) {
                                super(wh1Var);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(oz3 oz3Var, FoldingFeatureObserver foldingFeatureObserver) {
                            this.$this_unsafeFlow$inlined = oz3Var;
                            this.this$0 = foldingFeatureObserver;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override
                        public Object emit(Object obj, wh1 wh1Var) {
                            AnonymousClass1 anonymousClass1;
                            if (wh1Var instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) wh1Var;
                                int i = anonymousClass1.label;
                                if ((i & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(wh1Var);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(wh1Var);
                            }
                            Object obj2 = anonymousClass1.result;
                            Object objF = z45.f();
                            int i2 = anonymousClass1.label;
                            if (i2 == 0) {
                                c.b(obj2);
                                oz3 oz3Var = this.$this_unsafeFlow$inlined;
                                FoldingFeature foldingFeature = this.this$0.getFoldingFeature((WindowLayoutInfo) obj);
                                if (foldingFeature != null) {
                                    anonymousClass1.label = 1;
                                    if (oz3Var.emit(foldingFeature, anonymousClass1) == objF) {
                                        return objF;
                                    }
                                }
                            } else {
                                if (i2 != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                c.b(obj2);
                            }
                            return zfb.a;
                        }
                    }

                    @Override
                    public Object collect(oz3 oz3Var, wh1 wh1Var) {
                        Object objCollect = nz3VarWindowLayoutInfo.collect(new AnonymousClass2(oz3Var, foldingFeatureObserver), wh1Var);
                        return objCollect == z45.f() ? objCollect : zfb.a;
                    }
                });
                final FoldingFeatureObserver foldingFeatureObserver2 = FoldingFeatureObserver.this;
                oz3 oz3Var = new oz3() {
                    @Override
                    public Object emit(FoldingFeature foldingFeature, wh1<? super zfb> wh1Var) {
                        zfb zfbVar;
                        FoldingFeature foldingFeature2 = foldingFeature;
                        FoldingFeatureObserver.OnFoldingFeatureChangeListener onFoldingFeatureChangeListener = foldingFeatureObserver2.onFoldingFeatureChangeListener;
                        if (onFoldingFeatureChangeListener == null) {
                            zfbVar = null;
                        } else {
                            onFoldingFeatureChangeListener.onFoldingFeatureChange(foldingFeature2);
                            zfbVar = zfb.a;
                        }
                        return zfbVar == z45.f() ? zfbVar : zfb.a;
                    }
                };
                this.label = 1;
                if (nz3VarI.collect(oz3Var, this) == objF) {
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

    public FoldingFeatureObserver(WindowInfoTracker windowInfoTracker, Executor executor) {
        y45.j(windowInfoTracker, "windowInfoTracker");
        y45.j(executor, "executor");
        this.windowInfoTracker = windowInfoTracker;
        this.executor = executor;
    }

    public final FoldingFeature getFoldingFeature(WindowLayoutInfo windowLayoutInfo) {
        Object next;
        Iterator<T> it = windowLayoutInfo.getDisplayFeatures().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((DisplayFeature) next) instanceof FoldingFeature));
        if (next instanceof FoldingFeature) {
            return (FoldingFeature) next;
        }
        return null;
    }

    public final void registerLayoutStateChangeCallback(Activity activity) {
        y45.j(activity, "activity");
        j jVar = this.job;
        if (jVar != null) {
            j.a.b(jVar, null, 1, null);
        }
        this.job = el0.d(d.a(ef3.a(this.executor)), null, null, new AnonymousClass1(activity, null), 3, null);
    }

    public final void setOnFoldingFeatureChangeListener(OnFoldingFeatureChangeListener onFoldingFeatureChangeListener) {
        y45.j(onFoldingFeatureChangeListener, "onFoldingFeatureChangeListener");
        this.onFoldingFeatureChangeListener = onFoldingFeatureChangeListener;
    }

    public final void unregisterLayoutStateChangeCallback() {
        j jVar = this.job;
        if (jVar == null) {
            return;
        }
        j.a.b(jVar, null, 1, null);
    }
}

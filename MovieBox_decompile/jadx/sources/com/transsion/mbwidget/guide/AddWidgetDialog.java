package com.transsion.mbwidget.guide;

import android.app.Dialog;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.Utils;
import com.transsion.baseui.dialog.BaseDialogFragment;
import com.transsion.baseui.widget.text.GradientTextView;
import com.transsion.mbwidget.HotSubjectWidgetProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/mbwidget/guide/AddWidgetDialog;", "Lcom/transsion/baseui/dialog/BaseDialogFragment;", "Ldm/b;", "<init>", "()V", "", "p0", "n0", "o0", "initView", "onDestroyView", "Landroid/view/Window;", "window", "d0", "(Landroid/view/Window;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "c0", "Lkotlinx/coroutines/t1;", "e", "Lkotlinx/coroutines/t1;", "addWidgetJob", "Lkotlin/Function0;", "f", "Lkotlin/jvm/functions/Function0;", "getOnDismissListener", "()Lkotlin/jvm/functions/Function0;", "t0", "(Lkotlin/jvm/functions/Function0;)V", "onDismissListener", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AddWidgetDialog extends BaseDialogFragment<dm.b> {

    private t1 addWidgetJob;

    private Function0 onDismissListener;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, dm.b> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(3, dm.b.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/mbwidget/databinding/DialogWidgetAddBinding;", 0);
        }

        public final dm.b invoke(LayoutInflater p10, ViewGroup viewGroup, boolean z10) {
            Intrinsics.h(p10, "p0");
            return dm.b.c(p10, viewGroup, z10);
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.guide.AddWidgetDialog$initView$4", f = "AddWidgetDialog.kt", l = {61}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.mbwidget.guide.AddWidgetDialog$initView$4$1", f = "AddWidgetDialog.kt", l = {62}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;
            final AddWidgetDialog this$0;

            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            @DebugMetadata(c = "com.transsion.mbwidget.guide.AddWidgetDialog$initView$4$1$1", f = "AddWidgetDialog.kt", l = {}, m = "invokeSuspend")
            static final class C06081 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
                boolean Z$0;
                int label;
                final AddWidgetDialog this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C06081(AddWidgetDialog addWidgetDialog, Continuation<? super C06081> continuation) {
                    super(2, continuation);
                    this.this$0 = addWidgetDialog;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C06081 c06081 = new C06081(this.this$0, continuation);
                    c06081.Z$0 = ((Boolean) obj).booleanValue();
                    return c06081;
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Unit>) obj2);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    if (this.Z$0) {
                        com.transsion.mbwidget.utils.a.f44916a.k("hot_desk_widget", true, "dialog_add");
                        t1 t1Var = this.this$0.addWidgetJob;
                        if (t1Var != null) {
                            t1.a.b(t1Var, null, 1, null);
                        }
                        this.this$0.dismiss();
                    }
                    return Unit.f64096a;
                }

                public final Object invoke(boolean z10, Continuation<? super Unit> continuation) {
                    return ((C06081) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AddWidgetDialog addWidgetDialog, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = addWidgetDialog;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.b(obj);
                    w0 w0VarA = WidgetCallbackReceiver.INSTANCE.a();
                    C06081 c06081 = new C06081(this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.c.h(w0VarA, c06081, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AddWidgetDialog.this.new AnonymousClass4(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                Lifecycle lifecycle = AddWidgetDialog.this.getLifecycle();
                Intrinsics.g(lifecycle, "<get-lifecycle>(...)");
                Lifecycle.State state = Lifecycle.State.STARTED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(AddWidgetDialog.this, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public AddWidgetDialog() {
        super(AnonymousClass1.INSTANCE);
    }

    private final void n0() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(Utils.a());
            ComponentName componentName = new ComponentName(Utils.a(), (Class<?>) HotSubjectWidgetProvider.class);
            if (appWidgetManager.isRequestPinAppWidgetSupported()) {
                appWidgetManager.requestPinAppWidget(componentName, null, PendingIntent.getBroadcast(Utils.a(), 0, new Intent(Utils.a(), (Class<?>) WidgetCallbackReceiver.class), 201326592));
                a aVarJ = com.transsion.mbwidget.d.f44872a.j();
                if (aVarJ != null) {
                    aVarJ.a();
                }
                o0();
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "DeskWidget_", "add-error:" + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    private final void o0() {
        if (com.transsion.mbwidget.d.f44872a.n()) {
            this.addWidgetJob = k.d(v.a(this), null, null, new AddWidgetDialog$checkMiUI$1(this, null), 3, null);
        }
    }

    public final void p0() {
        requireContext().startActivity(new Intent(requireContext(), (Class<?>) WidgetGuideActivity.class));
    }

    public static final Unit q0(AddWidgetDialog addWidgetDialog, View it) {
        Intrinsics.h(it, "it");
        addWidgetDialog.dismiss();
        return Unit.f64096a;
    }

    public static final Unit r0(AddWidgetDialog addWidgetDialog, View it) {
        Intrinsics.h(it, "it");
        addWidgetDialog.p0();
        return Unit.f64096a;
    }

    public static final Unit s0(AddWidgetDialog addWidgetDialog, View it) {
        Intrinsics.h(it, "it");
        com.transsion.mbwidget.utils.a.f44916a.b();
        if (Build.VERSION.SDK_INT >= 26) {
            addWidgetDialog.n0();
        } else {
            addWidgetDialog.p0();
        }
        return Unit.f64096a;
    }

    @Override
    public void c0() {
        if (com.transsion.baselib.report.k.f42210a.q()) {
            a0();
            return;
        }
        com.transsion.mbwidget.d dVar = com.transsion.mbwidget.d.f44872a;
        dVar.k().putLong("desk_widget_guide_show_time", System.currentTimeMillis());
        dVar.k().putLong("desk_widget_guide_show_first", 1L);
    }

    @Override
    protected void d0(Window window) {
        Intrinsics.h(window, "window");
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = -2;
        attributes.width = -1;
        window.setGravity(80);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(Z());
        }
        window.setAttributes(attributes);
    }

    @Override
    public void initView() {
        ImageView closeIV = ((dm.b) getMViewBinding()).f59049c;
        Intrinsics.g(closeIV, "closeIV");
        uf.c.c(closeIV, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return AddWidgetDialog.q0(this.f44912a, (View) obj);
            }
        }, 1, null);
        GradientTextView tipsTv = ((dm.b) getMViewBinding()).f59050d;
        Intrinsics.g(tipsTv, "tipsTv");
        uf.c.c(tipsTv, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return AddWidgetDialog.r0(this.f44913a, (View) obj);
            }
        }, 1, null);
        TextView addTv = ((dm.b) getMViewBinding()).f59048b;
        Intrinsics.g(addTv, "addTv");
        uf.c.c(addTv, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return AddWidgetDialog.s0(this.f44914a, (View) obj);
            }
        }, 1, null);
        k.d(v.a(this), null, null, new AnonymousClass4(null), 3, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.transsion.mbwidget.utils.a.f44916a.a();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        a aVarJ = com.transsion.mbwidget.d.f44872a.j();
        if (aVarJ != null) {
            aVarJ.onDismiss();
        }
        Function0 function0 = this.onDismissListener;
        if (function0 != null) {
            function0.invoke();
        }
        this.onDismissListener = null;
    }

    public final void t0(Function0 function0) {
        this.onDismissListener = function0;
    }
}

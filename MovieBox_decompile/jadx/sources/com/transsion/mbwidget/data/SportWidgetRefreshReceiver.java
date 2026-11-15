package com.transsion.mbwidget.data;

import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.transsion.mbwidget.SportSchedulePreviewWidgetProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SportWidgetRefreshReceiver extends BroadcastReceiver {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1", f = "SportWidgetRefreshReceiver.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Context $ctx;
        final BroadcastReceiver.PendingResult $pendingResult;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1$1", f = "SportWidgetRefreshReceiver.kt", l = {33}, m = "invokeSuspend")
        static final class C06061 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;

            C06061(Continuation<? super C06061> continuation) {
                super(2, continuation);
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06061(continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.b(obj);
                    SportWidgetDataManager sportWidgetDataManager = SportWidgetDataManager.f44879a;
                    this.label = 1;
                    if (sportWidgetDataManager.g(this) == objF) {
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
                return ((C06061) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, BroadcastReceiver.PendingResult pendingResult, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$ctx = context;
            this.$pendingResult = pendingResult;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$ctx, this.$pendingResult, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                try {
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    c0922a.c("SportWidget", "SportWidgetRefreshReceiver: alarm fired at " + System.currentTimeMillis(), true);
                    kotlinx.coroutines.j.b(null, new C06061(null), 1, null);
                    AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.$ctx);
                    int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(this.$ctx, (Class<?>) SportSchedulePreviewWidgetProvider.class));
                    Intrinsics.e(appWidgetIds);
                    if (appWidgetIds.length == 0) {
                        c0922a.c("SportWidget", "SportWidgetRefreshReceiver: no sport widget instance, skip", true);
                    } else {
                        Context context = this.$ctx;
                        for (int i10 : appWidgetIds) {
                            SportSchedulePreviewWidgetProvider.Companion companion = SportSchedulePreviewWidgetProvider.INSTANCE;
                            Intrinsics.e(context);
                            Intrinsics.e(appWidgetManager);
                            companion.q(context, appWidgetManager, i10, true);
                        }
                        wf.a.f74274a.c("SportWidget", "SportWidgetRefreshReceiver: refreshed " + appWidgetIds.length + " sport widget(s)", true);
                    }
                } catch (Exception e10) {
                    wf.a.C0922a c0922a2 = wf.a.f74274a;
                    wf.a.C0922a.k(c0922a2, "SportWidget", "SportWidgetRefreshReceiver error: " + e10.getMessage(), e10, false, 8, null);
                    c0922a2.c("SportWidget", "SportWidgetRefreshReceiver FAILED: " + e10.getMessage(), true);
                }
                return Unit.f64096a;
            } finally {
                this.$pendingResult.finish();
            }
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        if (Intrinsics.c("com.transsion.mbwidget.ACTION_MATCH_REFRESH", intent.getAction())) {
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            kotlinx.coroutines.k.d(o0.a(y0.b().plus(l2.b(null, 1, null))), null, null, new AnonymousClass1(context.getApplicationContext(), pendingResultGoAsync, null), 3, null);
        }
    }
}

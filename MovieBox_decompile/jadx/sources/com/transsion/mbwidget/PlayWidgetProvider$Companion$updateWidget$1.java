package com.transsion.mbwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.widget.RemoteViews;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1", f = "PlayWidgetProvider.kt", l = {77, 78}, m = "invokeSuspend")
final class PlayWidgetProvider$Companion$updateWidget$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $appWidgetId;
    final AppWidgetManager $appWidgetManager;
    final Context $context;
    Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.mbwidget.PlayWidgetProvider$Companion$updateWidget$1$1", f = "PlayWidgetProvider.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final int $appWidgetId;
        final AppWidgetManager $appWidgetManager;
        final RemoteViews $views;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AppWidgetManager appWidgetManager, int i10, RemoteViews remoteViews, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$appWidgetManager = appWidgetManager;
            this.$appWidgetId = i10;
            this.$views = remoteViews;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, this.$views, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$appWidgetManager.updateAppWidget(this.$appWidgetId, this.$views);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlayWidgetProvider$Companion$updateWidget$1(int i10, Context context, AppWidgetManager appWidgetManager, Continuation<? super PlayWidgetProvider$Companion$updateWidget$1> continuation) {
        super(2, continuation);
        this.$appWidgetId = i10;
        this.$context = context;
        this.$appWidgetManager = appWidgetManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlayWidgetProvider$Companion$updateWidget$1(this.$appWidgetId, this.$context, this.$appWidgetManager, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        RemoteViews remoteViews;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                remoteViews = (RemoteViews) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        int i11 = this.$appWidgetId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("updateWidget: ");
        sb2.append(i11);
        remoteViews = new RemoteViews(this.$context.getPackageName(), R$layout.widget_subject_play_small);
        PlayWidgetProvider.Companion companion = PlayWidgetProvider.INSTANCE;
        Context context = this.$context;
        int i12 = this.$appWidgetId;
        this.L$0 = remoteViews;
        this.label = 1;
        if (companion.b(context, remoteViews, i12, this) == objF) {
            return objF;
        }
        a2 a2VarC = y0.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$appWidgetManager, this.$appWidgetId, remoteViews, null);
        this.L$0 = null;
        this.label = 2;
        if (i.g(a2VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlayWidgetProvider$Companion$updateWidget$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

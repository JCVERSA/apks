package com.transsion.baseui.music;

import android.text.TextUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baseui.music.MusicReport$saveLocal$1", f = "MusicReport.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class MusicReport$saveLocal$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final n $musicPlayDurationBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicReport$saveLocal$1(n nVar, Continuation<? super MusicReport$saveLocal$1> continuation) {
        super(2, continuation);
        this.$musicPlayDurationBean = nVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicReport$saveLocal$1(this.$musicPlayDurationBean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        n nVar = this.$musicPlayDurationBean;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<n> listB = MusicReport.f42301a.b();
            for (n nVar2 : listB) {
                if (TextUtils.equals(nVar2.d(), nVar.d())) {
                    nVar2.m(nVar2.c() + nVar.c());
                    nVar2.l(nVar2.b() + nVar.b());
                    nVar2.o(nVar2.f() + nVar.f());
                }
            }
            if (listB.isEmpty()) {
                listB.add(nVar);
            }
            com.transsion.baselib.report.launch.b.f42221a.b().putString("music_play_duration", com.blankj.utilcode.util.o.j(listB));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            com.transsion.player.mediasession.i.f46432a.b("MusicReport --> saveLocal() --> it = " + thM456exceptionOrNullimpl);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicReport$saveLocal$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

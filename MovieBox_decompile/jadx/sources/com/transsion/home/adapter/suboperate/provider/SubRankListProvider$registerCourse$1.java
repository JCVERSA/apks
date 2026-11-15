package com.transsion.home.adapter.suboperate.provider;

import com.transsion.edcation.CourseManager;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.w0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.provider.SubRankListProvider$registerCourse$1", f = "SubRankListProvider.kt", l = {147}, m = "invokeSuspend")
final class SubRankListProvider$registerCourse$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final SubRankListProvider this$0;

    static final class AnonymousClass1 implements kotlinx.coroutines.flow.b {

        final SubRankListProvider f43379a;

        AnonymousClass1(SubRankListProvider subRankListProvider) {
            this.f43379a = subRankListProvider;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x006b  */
        /* JADX WARN: Code duplicated, block: B:25:0x0073  */
        /* JADX WARN: Code duplicated, block: B:37:0x00d4 A[LOOP:1: B:21:0x0065->B:37:0x00d4, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:48:0x007e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x007e -> B:29:0x008b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object emit(com.transsion.edcation.bean.CourseBean r13, kotlin.coroutines.Continuation r14) {
            /*
                Method dump skipped, instruction units count: 217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.transsion.home.adapter.suboperate.provider.SubRankListProvider$registerCourse$1.AnonymousClass1.emit(com.transsion.edcation.bean.CourseBean, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubRankListProvider$registerCourse$1(SubRankListProvider subRankListProvider, Continuation<? super SubRankListProvider$registerCourse$1> continuation) {
        super(2, continuation);
        this.this$0 = subRankListProvider;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubRankListProvider$registerCourse$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            w0 w0VarJ = CourseManager.f42905a.j();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0);
            this.label = 1;
            if (w0VarJ.a(anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubRankListProvider$registerCourse$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

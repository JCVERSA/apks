package com.transsion.usercenter.profile.report;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.report.ReportViewModel$unBlock$1", f = "ReportViewModel.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
final class ReportViewModel$unBlock$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final JsonObject $json;
    int label;
    final ReportViewModel this$0;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/tn/lib/net/bean/BaseDto;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.profile.report.ReportViewModel$unBlock$1$1", f = "ReportViewModel.kt", l = {77, 78}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final JsonObject $json;
        private Object L$0;
        Object L$1;
        int label;
        final ReportViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JsonObject jsonObject, ReportViewModel reportViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$json = jsonObject;
            this.this$0 = reportViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$json, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x006f A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            RequestBody requestBodyA;
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                mg.b.a aVar = mg.b.f66404a;
                String string = this.$json.toString();
                Intrinsics.g(string, "toString(...)");
                requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    b bVarK = this.this$0.k();
                    String strA = gg.a.f61067a.a();
                    this.L$0 = bVar2;
                    this.L$1 = requestBodyA;
                    this.label = 1;
                    Object objC = bVarK.c(strA, requestBodyA, this);
                    if (objC == objF) {
                        return objF;
                    }
                    bVar = bVar2;
                    obj = objC;
                    this.L$0 = requestBodyA;
                    this.L$1 = null;
                    this.label = 2;
                    if (bVar.emit((BaseDto) obj, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 1) {
                requestBodyA = (RequestBody) this.L$1;
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 2;
                if (bVar.emit((BaseDto) obj, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/tn/lib/net/bean/BaseDto;", "", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.profile.report.ReportViewModel$unBlock$1$2", f = "ReportViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;
        final ReportViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ReportViewModel reportViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = reportViewModel;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.i().q(null);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(this.this$0, continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final ReportViewModel f55111a;

        a(ReportViewModel reportViewModel) {
            this.f55111a = reportViewModel;
        }

        @Override
        public final Object emit(BaseDto baseDto, Continuation continuation) {
            this.f55111a.i().q(baseDto);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportViewModel$unBlock$1(JsonObject jsonObject, ReportViewModel reportViewModel, Continuation<? super ReportViewModel$unBlock$1> continuation) {
        super(2, continuation);
        this.$json = jsonObject;
        this.this$0 = reportViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportViewModel$unBlock$1(this.$json, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$json, this.this$0, null)), y0.b()), new AnonymousClass2(this.this$0, null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
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
        return ((ReportViewModel$unBlock$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

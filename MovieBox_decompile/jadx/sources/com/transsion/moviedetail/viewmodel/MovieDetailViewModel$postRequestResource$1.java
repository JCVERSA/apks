package com.transsion.moviedetail.viewmodel;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.publish.model.PostEntity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$postRequestResource$1", f = "MovieDetailViewModel.kt", l = {259}, m = "invokeSuspend")
final class MovieDetailViewModel$postRequestResource$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $before;
    final String $subjectId;
    int label;
    final MovieDetailViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/publish/model/PostEntity;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$postRequestResource$1$1", f = "MovieDetailViewModel.kt", l = {251, 253, 255}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final boolean $before;
        final String $subjectId;
        private Object L$0;
        int label;
        final MovieDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, boolean z10, MovieDetailViewModel movieDetailViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$subjectId = str;
            this.$before = z10;
            this.this$0 = movieDetailViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$subjectId, this.$before, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0075  */
        /* JADX WARN: Code duplicated, block: B:21:0x007a  */
        /* JADX WARN: Code duplicated, block: B:24:0x0083  */
        /* JADX WARN: Code duplicated, block: B:26:0x008d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:27:0x008e  */
        /* JADX WARN: Code duplicated, block: B:29:0x009c A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            BaseDto baseDto;
            String code;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("subjectId", this.$subjectId);
            jsonObject.addProperty("before", Boxing.a(this.$before));
            mg.b.a aVar = mg.b.f66404a;
            String string = jsonObject.toString();
            Intrinsics.g(string, "toString(...)");
            RequestBody requestBodyA = aVar.a(string);
            if (requestBodyA != null) {
                om.a aVarN = this.this$0.N();
                String strA = gg.a.f61067a.a();
                this.L$0 = bVar;
                this.label = 1;
                obj = aVarN.f(strA, requestBodyA, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                baseDto = null;
            }
            if (baseDto != null) {
                code = baseDto.getCode();
            } else {
                code = null;
            }
            if (Intrinsics.c(code, "0")) {
                data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
            baseDto = (BaseDto) obj;
            if (baseDto != null) {
                code = baseDto.getCode();
            } else {
                code = null;
            }
            if (Intrinsics.c(code, "0")) {
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/publish/model/PostEntity;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$postRequestResource$1$2", f = "MovieDetailViewModel.kt", l = {258}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = bVar;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final MovieDetailViewModel f45722a;

        a(MovieDetailViewModel movieDetailViewModel) {
            this.f45722a = movieDetailViewModel;
        }

        @Override
        public final Object emit(PostEntity postEntity, Continuation continuation) {
            this.f45722a.H().n(postEntity);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MovieDetailViewModel$postRequestResource$1(String str, boolean z10, MovieDetailViewModel movieDetailViewModel, Continuation<? super MovieDetailViewModel$postRequestResource$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$before = z10;
        this.this$0 = movieDetailViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MovieDetailViewModel$postRequestResource$1(this.$subjectId, this.$before, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$subjectId, this.$before, this.this$0, null)), new AnonymousClass2(null));
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
        return ((MovieDetailViewModel$postRequestResource$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

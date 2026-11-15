package com.transsion.postdetail.ui.fragment.preload;

import com.blankj.utilcode.util.o;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
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
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader$loadDataFromService$1", f = "VideoImmersiveDataLoader.kt", l = {40}, m = "invokeSuspend")
final class VideoImmersiveDataLoader$loadDataFromService$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final VideoImmersiveDataLoader this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader$loadDataFromService$1$1", f = "VideoImmersiveDataLoader.kt", l = {28, 30, 32, 34}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;
        final VideoImmersiveDataLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(VideoImmersiveDataLoader videoImmersiveDataLoader, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = videoImmersiveDataLoader;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0072  */
        /* JADX WARN: Code duplicated, block: B:23:0x007c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:24:0x007d  */
        /* JADX WARN: Code duplicated, block: B:26:0x008b A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            BaseDto baseDto;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                mg.b.a aVar = mg.b.f66404a;
                String strJ = o.j(this.this$0.m());
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    ao.b bVarN = this.this$0.n();
                    String strA = gg.a.f61067a.a();
                    this.L$0 = bVar;
                    this.label = 1;
                    obj = bVarN.d(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) obj;
                    if (Intrinsics.c(baseDto.getCode(), "0")) {
                        data = baseDto.getData();
                        this.L$0 = bVar;
                        this.label = 3;
                        if (bVar.emit(data, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = bVar;
                        this.label = 2;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    this.L$0 = null;
                    this.label = 4;
                    if (bVar.emit(null, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 != 1) {
                if (i10 == 2 || i10 == 3) {
                } else if (i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            } else {
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    this.L$0 = bVar;
                    this.label = 2;
                    if (bVar.emit(null, this) == objF) {
                        return objF;
                    }
                } else {
                    data = baseDto.getData();
                    this.L$0 = bVar;
                    this.label = 3;
                    if (bVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader$loadDataFromService$1$2", f = "VideoImmersiveDataLoader.kt", l = {36}, m = "invokeSuspend")
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader$loadDataFromService$1$3", f = "VideoImmersiveDataLoader.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final VideoImmersiveDataLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(VideoImmersiveDataLoader videoImmersiveDataLoader, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.this$0 = videoImmersiveDataLoader;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Throwable th2 = (Throwable) this.L$0;
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strB = this.this$0.b();
            Intrinsics.g(strB, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, strB, String.valueOf(th2.getMessage()), false, 4, null);
            this.this$0.c(null);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, continuation);
            anonymousClass3.L$0 = th2;
            return anonymousClass3.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final VideoImmersiveDataLoader f47713a;

        a(VideoImmersiveDataLoader videoImmersiveDataLoader) {
            this.f47713a = videoImmersiveDataLoader;
        }

        @Override
        public final Object emit(PostSubjectBean postSubjectBean, Continuation continuation) {
            this.f47713a.d(postSubjectBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoImmersiveDataLoader$loadDataFromService$1(VideoImmersiveDataLoader videoImmersiveDataLoader, Continuation<? super VideoImmersiveDataLoader$loadDataFromService$1> continuation) {
        super(2, continuation);
        this.this$0 = videoImmersiveDataLoader;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoImmersiveDataLoader$loadDataFromService$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, null)), y0.b()), new AnonymousClass2(null)), new AnonymousClass3(this.this$0, null));
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
        return ((VideoImmersiveDataLoader$loadDataFromService$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

package com.transsion.postdetail.viewmodel;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.LikeBean;
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
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$like$1", f = "RoomPostViewModel.kt", l = {399}, m = "invokeSuspend")
final class RoomPostViewModel$like$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $postId;
    final int $reqType;
    int label;
    final RoomPostViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/LikeBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$like$1$1", f = "RoomPostViewModel.kt", l = {392, 394}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $postId;
        final int $reqType;
        private Object L$0;
        Object L$1;
        int label;
        final RoomPostViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, int i10, RoomPostViewModel roomPostViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$postId = str;
            this.$reqType = i10;
            this.this$0 = roomPostViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$postId, this.$reqType, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x008f  */
        /* JADX WARN: Code duplicated, block: B:24:0x00a3 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            String str;
            LikeBean likeBean;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("postId", this.$postId);
                jsonObject.addProperty("reqType", Boxing.d(this.$reqType));
                if (this.$postId != null) {
                    gx.b.f61207a.a().g(this.$reqType, this.$postId);
                }
                mg.b.a aVar = mg.b.f66404a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    RoomPostViewModel roomPostViewModel = this.this$0;
                    String str2 = this.$postId;
                    tm.a aVarW = roomPostViewModel.w();
                    String strA = gg.a.f61067a.a();
                    this.L$0 = bVar2;
                    this.L$1 = str2;
                    this.label = 1;
                    Object objA = aVarW.a(strA, requestBodyA, this);
                    if (objA == objF) {
                        return objF;
                    }
                    bVar = bVar2;
                    obj = objA;
                    str = str2;
                    BaseDto baseDto = (BaseDto) obj;
                    likeBean = (LikeBean) baseDto.getData();
                    if (likeBean != null) {
                        likeBean.setPostId(str);
                    }
                    data = baseDto.getData();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 2;
                    if (bVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 1) {
                str = (String) this.L$1;
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                BaseDto baseDto2 = (BaseDto) obj;
                likeBean = (LikeBean) baseDto2.getData();
                if (likeBean != null) {
                    likeBean.setPostId(str);
                }
                data = baseDto2.getData();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (bVar.emit(data, this) == objF) {
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/LikeBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$like$1$2", f = "RoomPostViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            wf.a.C0922a.g(wf.a.f74274a, "like error", false, 2, null);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        public static final a f48170a = new a();

        a() {
        }

        @Override
        public final Object emit(LikeBean likeBean, Continuation continuation) {
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$like$1(String str, int i10, RoomPostViewModel roomPostViewModel, Continuation<? super RoomPostViewModel$like$1> continuation) {
        super(2, continuation);
        this.$postId = str;
        this.$reqType = i10;
        this.this$0 = roomPostViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomPostViewModel$like$1(this.$postId, this.$reqType, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$postId, this.$reqType, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = a.f48170a;
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
        return ((RoomPostViewModel$like$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

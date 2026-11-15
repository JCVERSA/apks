package com.transsion.room.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1", f = "RoomHotViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE}, m = "invokeSuspend")
final class RoomHotViewModel$getPostSubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $page;
    final int $perPage;
    final String $sortType;
    final String $subjectId;
    final boolean $with;
    int label;
    final RoomHotViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$1", f = "RoomHotViewModel.kt", l = {102, 110}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $page;
        final int $perPage;
        final String $sortType;
        final String $subjectId;
        final boolean $with;
        private Object L$0;
        int label;
        final RoomHotViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomHotViewModel roomHotViewModel, String str, String str2, int i10, String str3, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = roomHotViewModel;
            this.$subjectId = str;
            this.$page = str2;
            this.$perPage = i10;
            this.$sortType = str3;
            this.$with = z10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
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
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            ip.a aVarZ = this.this$0.Z();
            String strA = gg.a.f61067a.a();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            String str2 = this.$page;
            int i11 = this.$perPage;
            String str3 = this.$sortType;
            boolean z10 = this.$with;
            this.L$0 = bVar;
            this.label = 1;
            obj = aVarZ.j(strA, str, str2, i11, str3, z10, this);
            if (obj == objF) {
                return objF;
            }
            Object data = ((BaseDto) obj).getData();
            this.L$0 = null;
            this.label = 2;
            if (bVar.emit(data, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomHotViewModel$getPostSubject$1$2", f = "RoomHotViewModel.kt", l = {113}, m = "invokeSuspend")
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

        final RoomHotViewModel f49826a;

        a(RoomHotViewModel roomHotViewModel) {
            this.f49826a = roomHotViewModel;
        }

        @Override
        public final Object emit(PostSubjectBean postSubjectBean, Continuation continuation) {
            String nextPage;
            Integer perPage;
            if (postSubjectBean != null) {
                RoomHotViewModel roomHotViewModel = this.f49826a;
                Pager pager = postSubjectBean.getPager();
                roomHotViewModel.e0((pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue());
                Pager pager2 = postSubjectBean.getPager();
                if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
                    nextPage = "0";
                }
                roomHotViewModel.f49824n = nextPage;
            }
            this.f49826a.y().q(postSubjectBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomHotViewModel$getPostSubject$1(RoomHotViewModel roomHotViewModel, String str, String str2, int i10, String str3, boolean z10, Continuation<? super RoomHotViewModel$getPostSubject$1> continuation) {
        super(2, continuation);
        this.this$0 = roomHotViewModel;
        this.$subjectId = str;
        this.$page = str2;
        this.$perPage = i10;
        this.$sortType = str3;
        this.$with = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomHotViewModel$getPostSubject$1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$subjectId, this.$page, this.$perPage, this.$sortType, this.$with, null)), y0.b()), new AnonymousClass2(null));
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
        return ((RoomHotViewModel$getPostSubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

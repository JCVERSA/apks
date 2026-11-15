package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.List;
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
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostExplore$1", f = "RoomPostViewModel.kt", l = {161}, m = "invokeSuspend")
final class RoomPostViewModel$getPostExplore$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $insertPostId;
    final boolean $isFirstLoad;
    final boolean $isRefresh;
    final String $page;
    final int $perPage;
    int label;
    final RoomPostViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostExplore$1$1", f = "RoomPostViewModel.kt", l = {152, 154, 156}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $insertPostId;
        final String $page;
        final int $perPage;
        private Object L$0;
        int label;
        final RoomPostViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomPostViewModel roomPostViewModel, String str, int i10, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = roomPostViewModel;
            this.$page = str;
            this.$perPage = i10;
            this.$insertPostId = str2;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$page, this.$perPage, this.$insertPostId, continuation);
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
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            ao.c cVarM = this.this$0.M();
            String strA = gg.a.f61067a.a();
            String str = this.$page;
            int i11 = this.$perPage;
            String str2 = this.$insertPostId;
            this.L$0 = bVar;
            this.label = 1;
            obj = cVarM.c(strA, str, i11, 0.0f, 0.0f, str2, this);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Object data = baseDto.getData();
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
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getPostExplore$1$2", f = "RoomPostViewModel.kt", l = {160}, m = "invokeSuspend")
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

        final boolean f48152a;

        final Ref.BooleanRef f48153b;

        final RoomPostViewModel f48154c;

        a(boolean z10, Ref.BooleanRef booleanRef, RoomPostViewModel roomPostViewModel) {
            this.f48152a = z10;
            this.f48153b = booleanRef;
            this.f48154c = roomPostViewModel;
        }

        @Override
        public final Object emit(PostSubjectBean postSubjectBean, Continuation continuation) {
            List<PostSubjectItem> items;
            List<PostSubjectItem> items2;
            if (this.f48152a && this.f48153b.element && this.f48154c.f48150n > 0) {
                boolean z10 = System.currentTimeMillis() - this.f48154c.f48150n <= 2000;
                this.f48154c.f48150n = 0L;
                wf.a.C0922a.f(wf.a.f74274a, "RoomPostVM", "getPostExplore success--needRefreshBuiltIn:" + z10, false, 4, null);
                this.f48153b.element = z10;
            }
            wf.a.C0922a.f(wf.a.f74274a, "RoomPostVM", "getPostExplore success--isRefreshNew:" + this.f48153b.element + ", size：" + ((postSubjectBean == null || (items2 = postSubjectBean.getItems()) == null) ? null : Boxing.d(items2.size())), false, 4, null);
            if (postSubjectBean != null) {
                postSubjectBean.setRefresh(this.f48153b.element);
            }
            this.f48154c.f48140d.n(postSubjectBean);
            if (postSubjectBean != null && (items = postSubjectBean.getItems()) != null) {
                com.transsion.postdetail.util.g.f48074a.b(items);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostViewModel$getPostExplore$1(boolean z10, boolean z11, RoomPostViewModel roomPostViewModel, String str, int i10, String str2, Continuation<? super RoomPostViewModel$getPostExplore$1> continuation) {
        super(2, continuation);
        this.$isFirstLoad = z10;
        this.$isRefresh = z11;
        this.this$0 = roomPostViewModel;
        this.$page = str;
        this.$perPage = i10;
        this.$insertPostId = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomPostViewModel$getPostExplore$1(this.$isFirstLoad, this.$isRefresh, this.this$0, this.$page, this.$perPage, this.$insertPostId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            if (this.$isFirstLoad) {
                com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
                String string = bVar.b().getString("room_cache_data", "");
                String string2 = bVar.b().getString("post_explore_net_cache", "");
                wf.a.C0922a c0922a = wf.a.f74274a;
                z10 = false;
                boolean z11 = !(string == null || string.length() == 0);
                boolean z12 = string2 == null || string2.length() == 0;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("getPostExplore  手动缓存：");
                sb2.append(z11);
                sb2.append(",网络缓存：");
                sb2.append(!z12);
                wf.a.C0922a.f(c0922a, "RoomPostVM", sb2.toString(), false, 4, null);
                if ((string == null || string.length() == 0) && (string2 == null || string2.length() == 0)) {
                    z10 = this.$isRefresh;
                }
            } else {
                z10 = this.$isRefresh;
            }
            booleanRef.element = z10;
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$page, this.$perPage, this.$insertPostId, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isFirstLoad, booleanRef, this.this$0);
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
        return ((RoomPostViewModel$getPostExplore$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

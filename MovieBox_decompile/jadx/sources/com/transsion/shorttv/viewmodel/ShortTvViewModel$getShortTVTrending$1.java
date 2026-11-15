package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ImmVideoRequestEntity;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.Subject;
import java.util.List;
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
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1", f = "ShortTvViewModel.kt", l = {1028}, m = "invokeSuspend")
final class ShortTvViewModel$getShortTVTrending$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefresh;
    final ImmVideoRequestEntity $requestEntity;
    int label;
    final ShortTvViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$1", f = "ShortTvViewModel.kt", l = {1023, 1024}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final ImmVideoRequestEntity $requestEntity;
        private Object L$0;
        int label;
        final ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ImmVideoRequestEntity immVideoRequestEntity, ShortTvViewModel shortTvViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestEntity = immVideoRequestEntity;
            this.this$0 = shortTvViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$requestEntity, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x008a A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                mg.b.a aVar = mg.b.f66404a;
                String strJ = com.blankj.utilcode.util.o.j(this.$requestEntity);
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    ShortTvViewModel shortTvViewModel = this.this$0;
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    gg.a.C0738a c0738a = gg.a.f61067a;
                    wf.a.C0922a.f(c0922a, "ShortTvViewModel", "Trending  host:" + c0738a.a() + "/wefeed-mobile-bff/shorts/most-trending", false, 4, null);
                    sr.a aVar2 = shortTvViewModel.f51667a;
                    String strA = c0738a.a();
                    this.L$0 = bVar;
                    this.label = 1;
                    obj = aVar2.g(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    data = ((BaseDto) obj).getData();
                    this.L$0 = null;
                    this.label = 2;
                    if (bVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 1) {
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                data = ((BaseDto) obj).getData();
                this.L$0 = null;
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVTrending$1$2", f = "ShortTvViewModel.kt", l = {1027}, m = "invokeSuspend")
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

        final ShortTvViewModel f51701a;

        final boolean f51702b;

        a(ShortTvViewModel shortTvViewModel, boolean z10) {
            this.f51701a = shortTvViewModel;
            this.f51702b = z10;
        }

        @Override
        public final Object emit(ShortTVRespData shortTVRespData, Continuation continuation) {
            List<Subject> items;
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "ShortTvViewModel", "Trending 接口返回 " + shortTVRespData, false, 4, null);
            if (shortTVRespData != null && (items = shortTVRespData.getItems()) != null && !items.isEmpty()) {
                this.f51701a.f51671c.set(true);
            }
            if (shortTVRespData != null) {
                shortTVRespData.setRefresh(this.f51702b);
            }
            wf.a.C0922a.f(c0922a, "ShortTvViewModel", "设置 TrendingLiveData, " + this.f51701a.K0(), false, 4, null);
            this.f51701a.K0().q(shortTVRespData);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTVTrending$1(ImmVideoRequestEntity immVideoRequestEntity, ShortTvViewModel shortTvViewModel, boolean z10, Continuation<? super ShortTvViewModel$getShortTVTrending$1> continuation) {
        super(2, continuation);
        this.$requestEntity = immVideoRequestEntity;
        this.this$0 = shortTvViewModel;
        this.$isRefresh = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getShortTVTrending$1(this.$requestEntity, this.this$0, this.$isRefresh, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$requestEntity, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, this.$isRefresh);
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
        return ((ShortTvViewModel$getShortTVTrending$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

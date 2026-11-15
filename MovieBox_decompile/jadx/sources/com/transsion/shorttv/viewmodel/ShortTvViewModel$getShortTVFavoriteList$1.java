package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.OperatingResp;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.Subject;
import java.util.Iterator;
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
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVFavoriteList$1", f = "ShortTvViewModel.kt", l = {951}, m = "invokeSuspend")
final class ShortTvViewModel$getShortTVFavoriteList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isRefresh;
    final String $nextPage;
    final String $ops;
    final int $perPage;
    int label;
    final ShortTvViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVFavoriteList$1$1", f = "ShortTvViewModel.kt", l = {947, 948}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $nextPage;
        final int $perPage;
        private Object L$0;
        int label;
        final ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortTvViewModel shortTvViewModel, String str, int i10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = shortTvViewModel;
            this.$nextPage = str;
            this.$perPage = i10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$nextPage, this.$perPage, continuation);
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
            sr.a aVar = this.this$0.f51667a;
            String strA = gg.a.f61067a.a();
            String str = this.$nextPage;
            int i11 = this.$perPage;
            this.L$0 = bVar;
            this.label = 1;
            obj = aVar.c(strA, str, i11, this);
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/ShortTVRespData;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTVFavoriteList$1$2", f = "ShortTvViewModel.kt", l = {950}, m = "invokeSuspend")
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

        final boolean f51698a;

        final ShortTvViewModel f51699b;

        final String f51700c;

        a(boolean z10, ShortTvViewModel shortTvViewModel, String str) {
            this.f51698a = z10;
            this.f51699b = shortTvViewModel;
            this.f51700c = str;
        }

        @Override
        public final Object emit(ShortTVRespData shortTVRespData, Continuation continuation) {
            List<Subject> items;
            List<Subject> items2;
            if (shortTVRespData != null) {
                shortTVRespData.setRefresh(this.f51698a);
            }
            if (this.f51699b.i0().f() == null) {
                String str = this.f51700c;
                if (str != null && str.length() != 0 && shortTVRespData != null && (items = shortTVRespData.getItems()) != null) {
                    String str2 = this.f51700c;
                    Iterator<T> it = items.iterator();
                    while (it.hasNext()) {
                        ((Subject) it.next()).setOps(str2);
                    }
                }
            } else if (shortTVRespData != null && (items2 = shortTVRespData.getItems()) != null) {
                ShortTvViewModel shortTvViewModel = this.f51699b;
                for (Subject subject : items2) {
                    OperatingResp operatingResp = (OperatingResp) shortTvViewModel.i0().f();
                    subject.setOps(operatingResp != null ? operatingResp.getOps() : null);
                }
            }
            this.f51699b.c0().q(shortTVRespData);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTVFavoriteList$1(ShortTvViewModel shortTvViewModel, String str, int i10, boolean z10, String str2, Continuation<? super ShortTvViewModel$getShortTVFavoriteList$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$nextPage = str;
        this.$perPage = i10;
        this.$isRefresh = z10;
        this.$ops = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getShortTVFavoriteList$1(this.this$0, this.$nextPage, this.$perPage, this.$isRefresh, this.$ops, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$nextPage, this.$perPage, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isRefresh, this.this$0, this.$ops);
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
        return ((ShortTvViewModel$getShortTVFavoriteList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.OperateItem;
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
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getOperatingList$1", f = "ShortTvViewModel.kt", l = {992}, m = "invokeSuspend")
final class ShortTvViewModel$getOperatingList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $tabId;
    int label;
    final ShortTvViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/OperatingResp;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getOperatingList$1$1", f = "ShortTvViewModel.kt", l = {981, 989}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final int $tabId;
        private Object L$0;
        int label;
        final ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortTvViewModel shortTvViewModel, int i10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = shortTvViewModel;
            this.$tabId = i10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$tabId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            OperatingResp operatingResp;
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
            int i11 = this.$tabId;
            this.L$0 = bVar;
            this.label = 1;
            obj = aVar.h(strA, i11, "", this);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0") && baseDto.getData() != null && (operatingResp = (OperatingResp) baseDto.getData()) != null) {
                ShortTvViewModel shortTvViewModel = this.this$0;
                operatingResp.setSourceFrom("from_net");
                shortTvViewModel.c1(operatingResp);
            }
            Object data = baseDto.getData();
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/OperatingResp;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getOperatingList$1$2", f = "ShortTvViewModel.kt", l = {991}, m = "invokeSuspend")
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

        final ShortTvViewModel f51696a;

        a(ShortTvViewModel shortTvViewModel) {
            this.f51696a = shortTvViewModel;
        }

        @Override
        public final Object emit(OperatingResp operatingResp, Continuation continuation) {
            ShortTVRespData shortTVRespData;
            List<Subject> items;
            List<BannerData> banners;
            List<OperateItem> items2;
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "1---Operating 接口返回 opsSize:" + ((operatingResp == null || (items2 = operatingResp.getItems()) == null) ? null : Boxing.d(items2.size())) + "，version：" + (operatingResp != null ? operatingResp.getVersion() : null) + " ", false, 4, null);
            if (operatingResp != null && (banners = operatingResp.getBanners()) != null && !banners.isEmpty()) {
                this.f51696a.f51669b.set(true);
            }
            String version = operatingResp != null ? operatingResp.getVersion() : null;
            if (version != null && version.length() != 0) {
                com.transsion.shorttv.utils.h.f51644a.d().putString("key_short_tv_operation_version", operatingResp != null ? operatingResp.getVersion() : null);
            }
            this.f51696a.M0(operatingResp);
            if (this.f51696a.c0().f() != null && (shortTVRespData = (ShortTVRespData) this.f51696a.c0().f()) != null && (items = shortTVRespData.getItems()) != null) {
                Iterator<T> it = items.iterator();
                while (it.hasNext()) {
                    ((Subject) it.next()).setOps(operatingResp != null ? operatingResp.getOps() : null);
                }
            }
            this.f51696a.i0().n(operatingResp);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getOperatingList$1(ShortTvViewModel shortTvViewModel, int i10, Continuation<? super ShortTvViewModel$getOperatingList$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$tabId = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getOperatingList$1(this.this$0, this.$tabId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$tabId, null)), y0.b()), new AnonymousClass2(null));
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
        return ((ShortTvViewModel$getOperatingList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

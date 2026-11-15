package com.transsion.room.viewmodel;

import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.RoomTabBean;
import com.transsion.moviedetailapi.bean.RoomTabItem;
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

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomTabs$1", f = "RoomViewModel.kt", l = {296}, m = "invokeSuspend")
final class RoomViewModel$getRoomTabs$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final RoomViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/RoomTabBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomTabs$1$1", f = "RoomViewModel.kt", l = {MBSupportMuteAdType.INTERSTITIAL_VIDEO, 289, 291}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $savedVersion;
        private Object L$0;
        int label;
        final RoomViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoomViewModel roomViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = roomViewModel;
            this.$savedVersion = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$savedVersion, continuation);
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
            ip.a aVarK = this.this$0.K();
            String str = this.$savedVersion;
            this.L$0 = bVar;
            this.label = 1;
            obj = ip.a.C0766a.c(aVarK, null, str, this, 1, null);
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/RoomTabBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomTabs$1$2", f = "RoomViewModel.kt", l = {295}, m = "invokeSuspend")
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

        final RoomViewModel f49847a;

        final String f49848b;

        a(RoomViewModel roomViewModel, String str) {
            this.f49847a = roomViewModel;
            this.f49848b = str;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0074  */
        /* JADX WARN: Code duplicated, block: B:29:0x0078  */
        @Override
        public final Object emit(RoomTabBean roomTabBean, Continuation continuation) {
            String version;
            List<RoomTabItem> items;
            if (roomTabBean != null && (items = roomTabBean.getItems()) != null && !items.isEmpty()) {
                this.f49847a.P(roomTabBean);
            }
            String version2 = roomTabBean != null ? roomTabBean.getVersion() : null;
            if (version2 == null || version2.length() == 0) {
                wf.a.f74274a.c("RoomViewModel", "getRoomTabs version same, version:" + (roomTabBean != null ? roomTabBean.getVersion() : null), true);
            } else {
                if (roomTabBean == null || (version = roomTabBean.getVersion()) == null) {
                    version = "1";
                }
                if (Intrinsics.c(version, this.f49848b)) {
                    if (roomTabBean != null) {
                    }
                    wf.a.f74274a.c("RoomViewModel", "getRoomTabs version same, version:" + (roomTabBean != null ? roomTabBean.getVersion() : null), true);
                } else {
                    wf.a.C0922a.f(wf.a.f74274a, "RoomViewModel", "getRoomTabs update tab， savedVersion:" + this.f49848b + ", newVersion:" + (roomTabBean != null ? roomTabBean.getVersion() : null) + " ", false, 4, null);
                    this.f49847a.f49830d.n(roomTabBean);
                }
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomViewModel$getRoomTabs$1(RoomViewModel roomViewModel, Continuation<? super RoomViewModel$getRoomTabs$1> continuation) {
        super(2, continuation);
        this.this$0 = roomViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomViewModel$getRoomTabs$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_room_tab_cache_version", "2493811379");
            String str = string != null ? string : "2493811379";
            wf.a.C0922a.f(wf.a.f74274a, "RoomViewModel", "getRoomTabs savedVersion：" + str, false, 4, null);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, str, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0, str);
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
        return ((RoomViewModel$getRoomTabs$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

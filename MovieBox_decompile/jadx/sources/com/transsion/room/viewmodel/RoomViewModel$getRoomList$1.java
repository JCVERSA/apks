package com.transsion.room.viewmodel;

import android.location.Address;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.room.api.bean.RoomGeo;
import com.transsion.room.api.bean.RoomRequestEntity;
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
import okhttp3.MediaType;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1", f = "RoomViewModel.kt", l = {270}, m = "invokeSuspend")
final class RoomViewModel$getRoomList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Address $address;
    final int $cid;
    final boolean $isRefresh;
    final Double $lat;
    final Double $lon;
    final String $page;
    final int $perPage;
    int label;
    final RoomViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$1", f = "RoomViewModel.kt", l = {261, 263, 265}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final Address $address;
        final int $cid;
        final Double $lat;
        final Double $lon;
        final String $page;
        final int $perPage;
        private Object L$0;
        int label;
        final RoomViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Double d10, Double d11, Address address, String str, int i10, int i11, RoomViewModel roomViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$lon = d10;
            this.$lat = d11;
            this.$address = address;
            this.$page = str;
            this.$perPage = i10;
            this.$cid = i11;
            this.this$0 = roomViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            RoomGeo roomGeo;
            Object objL;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    objL = obj;
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
            if (this.$lon == null || this.$lat == null) {
                roomGeo = null;
            } else {
                double dDoubleValue = this.$lon.doubleValue();
                double dDoubleValue2 = this.$lat.doubleValue();
                Address address = this.$address;
                String countryCode = address != null ? address.getCountryCode() : null;
                Address address2 = this.$address;
                String adminArea = address2 != null ? address2.getAdminArea() : null;
                Address address3 = this.$address;
                roomGeo = new RoomGeo(dDoubleValue, dDoubleValue2, countryCode, adminArea, address3 != null ? address3.getLocality() : null, null, null, 96, null);
            }
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String strJ = com.blankj.utilcode.util.o.j(new RoomRequestEntity(this.$page, this.$perPage, 0, Boxing.d(this.$cid), roomGeo, null, 32, null));
            Intrinsics.g(strJ, "toJson(...)");
            RequestBody requestBodyCreate = companion.create(strJ, MediaType.INSTANCE.parse("application/json"));
            ip.a aVarK = this.this$0.K();
            String strA = gg.a.f61067a.a();
            this.L$0 = bVar;
            this.label = 1;
            objL = aVarK.l(strA, requestBodyCreate, this);
            if (objL == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objL;
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.viewmodel.RoomViewModel$getRoomList$1$2", f = "RoomViewModel.kt", l = {269}, m = "invokeSuspend")
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

        final boolean f49845a;

        final RoomViewModel f49846b;

        a(boolean z10, RoomViewModel roomViewModel) {
            this.f49845a = z10;
            this.f49846b = roomViewModel;
        }

        @Override
        public final Object emit(RoomBean roomBean, Continuation continuation) {
            if (roomBean != null) {
                roomBean.setRefresh(this.f49845a);
            }
            this.f49846b.f49835i.n(roomBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomViewModel$getRoomList$1(Double d10, Double d11, Address address, String str, int i10, int i11, RoomViewModel roomViewModel, boolean z10, Continuation<? super RoomViewModel$getRoomList$1> continuation) {
        super(2, continuation);
        this.$lon = d10;
        this.$lat = d11;
        this.$address = address;
        this.$page = str;
        this.$perPage = i10;
        this.$cid = i11;
        this.this$0 = roomViewModel;
        this.$isRefresh = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomViewModel$getRoomList$1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, this.$isRefresh, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$lon, this.$lat, this.$address, this.$page, this.$perPage, this.$cid, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$isRefresh, this.this$0);
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
        return ((RoomViewModel$getRoomList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

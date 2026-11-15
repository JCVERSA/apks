package com.transsion.publish.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.publish.api.bean.LocationPlaceBean;
import com.transsion.room.api.bean.LocationPlace;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.s;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1", f = "LocationPlaceViewModel.kt", l = {67}, m = "invokeSuspend")
final class LocationPlaceViewModel$getLocationPlaceList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Double $lat;
    final Double $lon;
    int label;
    final LocationPlaceViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/publish/api/bean/LocationPlaceBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$1", f = "LocationPlaceViewModel.kt", l = {50, Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, 62}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final Double $lat;
        final Double $lon;
        private Object L$0;
        int label;
        final LocationPlaceViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LocationPlaceViewModel locationPlaceViewModel, Double d10, Double d11, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = locationPlaceViewModel;
            this.$lat = d10;
            this.$lon = d11;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$lat, this.$lon, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objA;
            LocationPlaceBean locationPlaceBean;
            List<LocationPlace> items;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    objA = obj;
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
            po.a aVarN = this.this$0.n();
            String strA = gg.a.f61067a.a();
            Double d10 = this.$lat;
            Double d11 = this.$lon;
            this.L$0 = bVar;
            this.label = 1;
            objA = aVarN.a(strA, d10, d11, this);
            if (objA == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) objA;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                if (this.$lat != null && this.$lon != null && (locationPlaceBean = (LocationPlaceBean) baseDto.getData()) != null && (items = locationPlaceBean.getItems()) != null) {
                    Double d12 = this.$lat;
                    Double d13 = this.$lon;
                    for (LocationPlace locationPlace : items) {
                        if (locationPlace.getLat() != null && locationPlace.getLon() != null) {
                            s sVar = s.f62120a;
                            double dDoubleValue = d12.doubleValue();
                            double dDoubleValue2 = d13.doubleValue();
                            Double lat = locationPlace.getLat();
                            Intrinsics.e(lat);
                            double dDoubleValue3 = lat.doubleValue();
                            Double lon = locationPlace.getLon();
                            Intrinsics.e(lon);
                            locationPlace.setDistance(sVar.a(dDoubleValue, dDoubleValue2, dDoubleValue3, lon.doubleValue()));
                        }
                    }
                }
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/publish/api/bean/LocationPlaceBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.publish.viewmodel.LocationPlaceViewModel$getLocationPlaceList$1$2", f = "LocationPlaceViewModel.kt", l = {66}, m = "invokeSuspend")
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

        final LocationPlaceViewModel f48680a;

        a(LocationPlaceViewModel locationPlaceViewModel) {
            this.f48680a = locationPlaceViewModel;
        }

        @Override
        public final Object emit(LocationPlaceBean locationPlaceBean, Continuation continuation) {
            this.f48680a.f48677c.n(locationPlaceBean != null ? locationPlaceBean.getItems() : null);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocationPlaceViewModel$getLocationPlaceList$1(LocationPlaceViewModel locationPlaceViewModel, Double d10, Double d11, Continuation<? super LocationPlaceViewModel$getLocationPlaceList$1> continuation) {
        super(2, continuation);
        this.this$0 = locationPlaceViewModel;
        this.$lat = d10;
        this.$lon = d11;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceViewModel$getLocationPlaceList$1(this.this$0, this.$lat, this.$lon, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$lat, this.$lon, null)), y0.b()), new AnonymousClass2(null));
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
        return ((LocationPlaceViewModel$getLocationPlaceList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

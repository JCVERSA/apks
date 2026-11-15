package com.transsion.room.helper;

import android.location.Address;
import com.transsion.room.api.bean.LocationPlace;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1", f = "LocationPlaceHelper.kt", l = {Sdk$SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE}, m = "invokeSuspend")
final class LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<LocationPlace, Unit> $callback;
    final double $latitude;
    final double $longitude;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1$1", f = "LocationPlaceHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Function1<LocationPlace, Unit> $callback;
        final LocationPlace $data;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super LocationPlace, Unit> function1, LocationPlace locationPlace, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$data = locationPlace;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, this.$data, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.$callback.invoke(this.$data);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1(double d10, double d11, Function1<? super LocationPlace, Unit> function1, Continuation<? super LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1> continuation) {
        super(2, continuation);
        this.$latitude = d10;
        this.$longitude = d11;
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1(this.$latitude, this.$longitude, this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            LocationPlaceHelper locationPlaceHelper = LocationPlaceHelper.f49603a;
            Address addressM = locationPlaceHelper.m(this.$latitude, this.$longitude);
            wf.a.f74274a.c("LocationP", "Location--update--------------2 success " + this.$longitude + ", :" + this.$latitude + ", address:" + addressM, true);
            LocationPlace locationPlaceL = locationPlaceHelper.l(this.$latitude, this.$longitude, addressM);
            a2 a2VarC = y0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, locationPlaceL, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
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
        return ((LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

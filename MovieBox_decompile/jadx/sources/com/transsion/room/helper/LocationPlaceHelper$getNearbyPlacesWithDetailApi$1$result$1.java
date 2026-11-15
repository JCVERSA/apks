package com.transsion.room.helper;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.google.android.libraries.places.api.net.FindCurrentPlaceResponse;
import com.google.android.libraries.places.api.net.PlacesClient;
import com.transsion.room.api.bean.LocationPlace;
import ij.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/transsion/room/api/bean/LocationPlace;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.helper.LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1", f = "LocationPlaceHelper.kt", l = {TTAdConstant.IMAGE_CODE}, m = "invokeSuspend")
final class LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1 extends SuspendLambda implements Function2<n0, Continuation<? super List<LocationPlace>>, Object> {
    final LatLng $currentLatLng;
    final FindCurrentPlaceRequest $request;
    Object L$0;
    Object L$1;
    int label;

    static final class a implements OnCompleteListener {

        final Continuation f49607a;

        final LatLng f49608b;

        a(Continuation continuation, LatLng latLng) {
            this.f49607a = continuation;
            this.f49608b = latLng;
        }

        @Override
        public final void onComplete(Task task) {
            Iterator<PlaceLikelihood> it;
            String strA;
            Intrinsics.h(task, "task");
            if (!task.isSuccessful()) {
                Exception exception = task.getException();
                if (exception != null) {
                    Continuation continuation = this.f49607a;
                    wf.a.C0922a.f(wf.a.f74274a, "LocationP", "place fail: " + exception.getMessage(), false, 4, null);
                    continuation.resumeWith(Result.m453constructorimpl(null));
                    return;
                }
                return;
            }
            FindCurrentPlaceResponse findCurrentPlaceResponse = (FindCurrentPlaceResponse) task.getResult();
            if (findCurrentPlaceResponse == null) {
                wf.a.C0922a.f(wf.a.f74274a, "LocationP", "place fail:response null", false, 4, null);
                this.f49607a.resumeWith(Result.m453constructorimpl(null));
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                wf.a.C0922a.f(wf.a.f74274a, "LocationP", "getNearbyPlaces --size:" + findCurrentPlaceResponse.getPlaceLikelihoods().size(), false, 4, null);
                Iterator<PlaceLikelihood> it2 = findCurrentPlaceResponse.getPlaceLikelihoods().iterator();
                while (it2.hasNext()) {
                    try {
                        Place place = it2.next().getPlace();
                        LatLng latLng = place.getLatLng();
                        String name = place.getName();
                        String address = place.getAddress();
                        if (latLng != null) {
                            s sVar = s.f62120a;
                            LatLng latLng2 = this.f49608b;
                            it = it2;
                            try {
                                strA = sVar.a(latLng2.latitude, latLng2.longitude, latLng.latitude, latLng.longitude);
                            } catch (Throwable th2) {
                                th = th2;
                                wf.a.C0922a.l(wf.a.f74274a, "LocationP", "place error2 :" + th, false, 4, null);
                                th.printStackTrace();
                            }
                        } else {
                            it = it2;
                            strA = "<0.1m";
                        }
                        wf.a.C0922a.f(wf.a.f74274a, "LocationP", "place list 名称: " + name + ", 距离: " + strA + ", 地址: " + address + ",lat:" + (latLng != null ? Double.valueOf(latLng.latitude) : null), false, 4, null);
                        LocationPlace locationPlace = new LocationPlace(null, null, null, null, 15, null);
                        locationPlace.setName(name);
                        locationPlace.setAddress(address);
                        locationPlace.setDistance(strA);
                        locationPlace.setLat(latLng != null ? Double.valueOf(latLng.latitude) : null);
                        locationPlace.setLon(latLng != null ? Double.valueOf(latLng.longitude) : null);
                        arrayList.add(locationPlace);
                    } catch (Throwable th3) {
                        th = th3;
                        it = it2;
                    }
                    it2 = it;
                }
                this.f49607a.resumeWith(Result.m453constructorimpl(arrayList));
            } catch (Throwable th4) {
                wf.a.C0922a.l(wf.a.f74274a, "LocationP", "place error1 :" + th4, false, 4, null);
                this.f49607a.resumeWith(Result.m453constructorimpl(null));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1(FindCurrentPlaceRequest findCurrentPlaceRequest, LatLng latLng, Continuation<? super LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1> continuation) {
        super(2, continuation);
        this.$request = findCurrentPlaceRequest;
        this.$currentLatLng = latLng;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1(this.$request, this.$currentLatLng, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            FindCurrentPlaceRequest findCurrentPlaceRequest = this.$request;
            LatLng latLng = this.$currentLatLng;
            this.L$0 = findCurrentPlaceRequest;
            this.L$1 = latLng;
            this.label = 1;
            SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(this));
            PlacesClient placesClient = LocationPlaceHelper.f49604b;
            Task<FindCurrentPlaceResponse> taskFindCurrentPlace = placesClient != null ? placesClient.findCurrentPlace(findCurrentPlaceRequest) : null;
            wf.a.C0922a.f(wf.a.f74274a, "LocationP", "getNearbyPlaces --findCurrentPlace", false, 4, null);
            if (taskFindCurrentPlace != null) {
                taskFindCurrentPlace.addOnCompleteListener(new a(safeContinuation, latLng));
            }
            obj = safeContinuation.a();
            if (obj == IntrinsicsKt.f()) {
                DebugProbesKt.c(this);
            }
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super List<LocationPlace>> continuation) {
        return ((LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}

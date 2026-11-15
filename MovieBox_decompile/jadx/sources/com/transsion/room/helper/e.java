package com.transsion.room.helper;

import android.app.Activity;
import android.app.PendingIntent;
import android.location.LocationManager;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class e implements ep.c {

    private final Fragment f49615a;

    private Function1 f49616b;

    private final androidx.activity.result.b f49617c;

    public e(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f49615a = fragment;
        androidx.activity.result.b bVarRegisterForActivityResult = fragment.registerForActivityResult(new f.k(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                e.g(this.f49611a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.f49617c = bVarRegisterForActivityResult;
    }

    public static final void g(e eVar, ActivityResult result) {
        Intrinsics.h(result, "result");
        Function1 function1 = eVar.f49616b;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(result.getResultCode() == -1));
        }
        eVar.f49616b = null;
    }

    public static final Unit h(Function1 function1, LocationSettingsResponse locationSettingsResponse) {
        function1.invoke(Boolean.TRUE);
        return Unit.f64096a;
    }

    public static final void i(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    public static final void j(e eVar, Exception exception) {
        Intrinsics.h(exception, "exception");
        if (exception instanceof ResolvableApiException) {
            try {
                PendingIntent resolution = ((ResolvableApiException) exception).getResolution();
                Intrinsics.g(resolution, "getResolution(...)");
                eVar.f49617c.a(new IntentSenderRequest.a(resolution).a());
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void a(final Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f49616b = callback;
        LocationRequest locationRequestCreate = LocationRequest.create();
        locationRequestCreate.setPriority(100);
        Intrinsics.g(locationRequestCreate, "apply(...)");
        LocationSettingsRequest.Builder builderAddLocationRequest = new LocationSettingsRequest.Builder().addLocationRequest(locationRequestCreate);
        Intrinsics.g(builderAddLocationRequest, "addLocationRequest(...)");
        FragmentActivity activity = this.f49615a.getActivity();
        if (activity == null) {
            callback.invoke(Boolean.FALSE);
            return;
        }
        SettingsClient settingsClient = LocationServices.getSettingsClient((Activity) activity);
        Intrinsics.g(settingsClient, "getSettingsClient(...)");
        Task<LocationSettingsResponse> taskCheckLocationSettings = settingsClient.checkLocationSettings(builderAddLocationRequest.build());
        Intrinsics.g(taskCheckLocationSettings, "checkLocationSettings(...)");
        final Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.h(callback, (LocationSettingsResponse) obj);
            }
        };
        taskCheckLocationSettings.addOnSuccessListener(new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                e.i(function1, obj);
            }
        });
        taskCheckLocationSettings.addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                e.j(this.f49614a, exc);
            }
        });
    }

    @Override
    public boolean b() {
        LocationManager locationManager = (LocationManager) Utils.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        Intrinsics.e(locationManager);
        return locationManager.isProviderEnabled("gps");
    }
}

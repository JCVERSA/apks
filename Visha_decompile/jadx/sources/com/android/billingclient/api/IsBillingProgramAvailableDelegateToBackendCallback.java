package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import defpackage.q3h;
import defpackage.wog;
import java.util.concurrent.ExecutorService;

@zzf
final class IsBillingProgramAvailableDelegateToBackendCallback extends com.google.android.gms.internal.play_billing.zzab {
    private static final String DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY = "RESPONSE_DATA";
    private static final String TAG = "IsBillingProgramAvailableDelegateToBackendCallback";
    final int billingApiVersion;
    final zzdd billingLogger;
    final int billingProgram;
    final ExecutorService executorService;
    final Handler handler;
    final BillingProgramAvailabilityListener listener;

    public IsBillingProgramAvailableDelegateToBackendCallback(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i, zzdd zzddVar, int i2, Handler handler, ExecutorService executorService) {
        billingProgramAvailabilityListener.getClass();
        this.listener = billingProgramAvailabilityListener;
        this.billingProgram = i;
        this.billingLogger = zzddVar;
        this.billingApiVersion = i2;
        this.handler = handler;
        this.executorService = executorService;
    }

    private void logErrorAndReturnDefaultAvailabilityDetails(int i, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzdj.zzb(zzjsVar, billingResult, this.billingLogger, zzdk.IS_BILLING_PROGRAM_AVAILABLE_ASYNC.zzb(), this.billingApiVersion, exc == null ? null : zzdc.zza(exc));
        this.listener.onBillingProgramAvailabilityResponse(billingResult, new BillingProgramAvailabilityDetails(i));
    }

    private BillingProgramAvailabilityDetails.BillingChoiceAvailabilityDetails parseBillingChoiceAvailabilityDetails(q3h q3hVar) {
        wog wogVarY = q3hVar.y();
        int iB = wogVarY.B() - 2;
        int i = 1;
        if (iB != 1) {
            i = 2;
            if (iB != 2) {
                i = 0;
            }
        }
        return new BillingProgramAvailabilityDetails.BillingChoiceAvailabilityDetails(i, wogVarY.A());
    }

    private void returnListenerResponseOnSuccess(int i, BillingResult billingResult, Bundle bundle) {
        Exception e;
        BillingProgramAvailabilityDetails billingProgramAvailabilityDetails;
        if (i == 5) {
            try {
                byte[] byteArray = bundle.getByteArray(DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY);
                if (byteArray == null) {
                    logErrorAndReturnDefaultAvailabilityDetails(5, zzdh.zzh, zzjs.ERROR_DECODING_DELEGATE_TO_BACKEND_RESPONSE_DATA, null);
                    return;
                }
                q3h q3hVarA = q3h.A(byteArray);
                if (!q3hVarA.B()) {
                    logErrorAndReturnDefaultAvailabilityDetails(5, zzdh.zzh, zzjs.ERROR_DECODING_DELEGATE_TO_BACKEND_RESPONSE_DATA, null);
                    return;
                }
                billingProgramAvailabilityDetails = new BillingProgramAvailabilityDetails(5, parseBillingChoiceAvailabilityDetails(q3hVarA));
            } catch (Exception e2) {
                e = e2;
                i = 5;
                a.n(TAG, "Got a JSON exception trying to decode billing program availability details.");
                logErrorAndReturnDefaultAvailabilityDetails(i, zzdh.zzh, zzjs.ERROR_DECODING_DELEGATE_TO_BACKEND_RESPONSE_DATA, e);
                return;
            }
        } else {
            try {
                billingProgramAvailabilityDetails = new BillingProgramAvailabilityDetails(i);
            } catch (Exception e3) {
                e = e3;
                a.n(TAG, "Got a JSON exception trying to decode billing program availability details.");
                logErrorAndReturnDefaultAvailabilityDetails(i, zzdh.zzh, zzjs.ERROR_DECODING_DELEGATE_TO_BACKEND_RESPONSE_DATA, e);
                return;
            }
        }
        this.listener.onBillingProgramAvailabilityResponse(billingResult, billingProgramAvailabilityDetails);
    }

    @Override
    @zzf
    public void onDelegateToBackendResponse(Bundle bundle) {
        if (bundle == null) {
            zzdd zzddVar = this.billingLogger;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_FROM_DELEGATE_TO_BACKEND_SERVICE_CALL;
            BillingResult billingResult = zzdh.zzh;
            zzdj.zza(zzjsVar, billingResult, zzddVar, zzdk.IS_BILLING_PROGRAM_AVAILABLE_ASYNC.zzb(), this.billingApiVersion);
            this.listener.onBillingProgramAvailabilityResponse(billingResult, new BillingProgramAvailabilityDetails(this.billingProgram));
            return;
        }
        zzdk zzdkVar = zzdk.IS_BILLING_PROGRAM_AVAILABLE_ASYNC;
        BillingResult billingResultZza = zzdm.zza(bundle, TAG, zzdkVar.zzb(), this.billingLogger, this.billingApiVersion);
        if (this.listener != null) {
            returnListenerResponseOnSuccess(this.billingProgram, billingResultZza, bundle);
        } else {
            zzdj.zza(zzjs.NULL_LISTENER_IN_DELEGATE_TO_BACKEND_CALLBACK, billingResultZza, this.billingLogger, zzdkVar.zzb(), this.billingApiVersion);
        }
    }
}

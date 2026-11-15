package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.google.android.gms.internal.play_billing.a;
import defpackage.s8f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;

public abstract class BillingClient {

    @Retention(RetentionPolicy.SOURCE)
    public @interface BillingProgram {

        @zze
        public static final int BILLING_CHOICE = 5;

        @zzh
        public static final int EXTERNAL_CONTENT_LINK = 1;

        @zzj
        public static final int EXTERNAL_OFFER = 3;

        @zzk
        public static final int EXTERNAL_PAYMENTS = 4;

        @zzf
        public static final int UNSPECIFIED_BILLING_PROGRAM = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BillingResponseCode {
        public static final int BILLING_UNAVAILABLE = 3;
        public static final int DEVELOPER_ERROR = 5;
        public static final int ERROR = 6;
        public static final int FEATURE_NOT_SUPPORTED = -2;
        public static final int ITEM_ALREADY_OWNED = 7;
        public static final int ITEM_NOT_OWNED = 8;
        public static final int ITEM_UNAVAILABLE = 4;
        public static final int NETWORK_ERROR = 12;
        public static final int OK = 0;
        public static final int SERVICE_DISCONNECTED = -1;

        @Deprecated
        public static final int SERVICE_TIMEOUT = -3;
        public static final int SERVICE_UNAVAILABLE = 2;
        public static final int USER_CANCELED = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FeatureType {

        @NonNull
        @zzc
        public static final String ALTERNATIVE_BILLING_ONLY = "jjj";

        @NonNull
        @zzl
        public static final String BILLING_CONFIG = "ggg";

        @NonNull
        @zzi
        public static final String EXTERNAL_OFFER = "kkk";

        @NonNull
        public static final String INCLUDE_SUSPENDED_SUBSCRIPTIONS = "nnn";

        @NonNull
        public static final String IN_APP_MESSAGING = "bbb";

        @NonNull
        public static final String PRICE_CHANGE_CONFIRMATION = "priceChangeConfirmation";

        @NonNull
        public static final String PRODUCT_DETAILS = "fff";

        @NonNull
        public static final String SUBSCRIPTIONS = "subscriptions";

        @NonNull
        public static final String SUBSCRIPTIONS_UPDATE = "subscriptionsUpdate";
    }

    @Retention(RetentionPolicy.SOURCE)
    @zzp
    public @interface OnPurchasesUpdatedSubResponseCode {
        public static final int NO_APPLICABLE_SUB_RESPONSE_CODE = 0;
        public static final int PAYMENT_DECLINED_DUE_TO_INSUFFICIENT_FUNDS = 1;
        public static final int USER_INELIGIBLE = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProductType {

        @NonNull
        public static final String INAPP = "inapp";

        @NonNull
        public static final String SUBS = "subs";
    }

    @NonNull
    @AnyThread
    public static Builder newBuilder(@NonNull Context context) {
        return new Builder(context, null);
    }

    @AnyThread
    public abstract void acknowledgePurchase(@NonNull AcknowledgePurchaseParams acknowledgePurchaseParams, @NonNull AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener);

    @AnyThread
    public abstract void consumeAsync(@NonNull ConsumeParams consumeParams, @NonNull ConsumeResponseListener consumeResponseListener);

    @zzc
    @AnyThread
    public abstract void createAlternativeBillingOnlyReportingDetailsAsync(@NonNull AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener);

    @AnyThread
    @zzf
    public abstract void createBillingProgramReportingDetailsAsync(@NonNull BillingProgramReportingDetailsParams billingProgramReportingDetailsParams, @NonNull BillingProgramReportingDetailsListener billingProgramReportingDetailsListener);

    @AnyThread
    @zzi
    @Deprecated
    public abstract void createExternalOfferReportingDetailsAsync(@NonNull ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener);

    @AnyThread
    public abstract void endConnection();

    @AnyThread
    @zze
    public abstract void getBillingChoiceInfoAsync(@NonNull GetBillingChoiceInfoParams getBillingChoiceInfoParams, @NonNull BillingChoiceInfoResponseListener billingChoiceInfoResponseListener);

    @AnyThread
    @zzl
    public abstract void getBillingConfigAsync(@NonNull GetBillingConfigParams getBillingConfigParams, @NonNull BillingConfigResponseListener billingConfigResponseListener);

    @AnyThread
    public abstract int getConnectionState();

    @zzc
    @AnyThread
    public abstract void isAlternativeBillingOnlyAvailableAsync(@NonNull AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener);

    @AnyThread
    @zzf
    public abstract void isBillingProgramAvailableAsync(int i, @NonNull BillingProgramAvailabilityListener billingProgramAvailabilityListener);

    @AnyThread
    @zzi
    @Deprecated
    public abstract void isExternalOfferAvailableAsync(@NonNull ExternalOfferAvailabilityListener externalOfferAvailabilityListener);

    @NonNull
    @AnyThread
    public abstract BillingResult isFeatureSupported(@NonNull String str);

    @AnyThread
    public abstract boolean isReady();

    @NonNull
    @UiThread
    public abstract BillingResult launchBillingFlow(@NonNull Activity activity, @NonNull BillingFlowParams billingFlowParams);

    @zzn
    @UiThread
    public abstract void launchExternalLink(@NonNull Activity activity, @NonNull LaunchExternalLinkParams launchExternalLinkParams, @NonNull LaunchExternalLinkResponseListener launchExternalLinkResponseListener);

    @AnyThread
    public abstract void queryProductDetailsAsync(@NonNull QueryProductDetailsParams queryProductDetailsParams, @NonNull ProductDetailsResponseListener productDetailsResponseListener);

    @AnyThread
    public abstract void queryPurchasesAsync(@NonNull QueryPurchasesParams queryPurchasesParams, @NonNull PurchasesResponseListener purchasesResponseListener);

    @NonNull
    @zzc
    @UiThread
    public abstract BillingResult showAlternativeBillingOnlyInformationDialog(@NonNull Activity activity, @NonNull AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener);

    @zze
    @UiThread
    public abstract void showBillingProgramInformationDialog(@NonNull Activity activity, @NonNull BillingProgramInformationDialogParams billingProgramInformationDialogParams, @NonNull BillingProgramInformationDialogListener billingProgramInformationDialogListener);

    @NonNull
    @Deprecated
    @zzi
    @UiThread
    public abstract BillingResult showExternalOfferInformationDialog(@NonNull Activity activity, @NonNull ExternalOfferInformationDialogListener externalOfferInformationDialogListener);

    @NonNull
    @UiThread
    public abstract BillingResult showInAppMessages(@NonNull Activity activity, @NonNull InAppMessageParams inAppMessageParams, @NonNull InAppMessageResponseListener inAppMessageResponseListener);

    @AnyThread
    public abstract void startConnection(@NonNull BillingClientStateListener billingClientStateListener);

    @AnyThread
    public static final class Builder {
        volatile boolean zza;
        volatile s8f zzb;
        private volatile String zzc;
        private volatile PendingPurchasesParams zzd;
        private final Context zze;
        private volatile PurchasesUpdatedListener zzf;
        private volatile zzdu zzg;
        private volatile zzdd zzh;
        private volatile UserChoiceBillingListener zzi;

        @Nullable
        private volatile DeveloperProvidedBillingListener zzj;

        @Nullable
        private volatile ExecutorService zzk;
        private volatile boolean zzl;
        private volatile boolean zzm;
        private volatile boolean zzn;
        private volatile boolean zzo;
        private volatile boolean zzp;
        private volatile boolean zzq;
        private volatile boolean zzr;

        public Builder(Context context, zzaa zzaaVar) {
            this.zze = context;
        }

        private final boolean zza() {
            try {
                Context context = this.zze;
                return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
            } catch (Exception e) {
                a.o("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
                return false;
            }
        }

        @NonNull
        public BillingClient build() {
            BillingClient zzdaVar;
            Context context = this.zze;
            if (context == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.zzf == null) {
                if (this.zzi != null || this.zzr) {
                    throw new IllegalArgumentException("Please provide a valid listener for Google Play Billing purchases updates when enabling user choice billing or billing choice.");
                }
                if (this.zzl || this.zzm || this.zzo || this.zzp || this.zzq) {
                    return zza() ? new zzda(null, context, null, null, this) : new BillingClientImpl(null, context, null, null, this);
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            if (this.zzd == null || !this.zzd.isEnabledForOneTimeProducts()) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            if (this.zzf == null) {
                PendingPurchasesParams pendingPurchasesParams = this.zzd;
                zzdaVar = zza() ? new zzda((String) null, pendingPurchasesParams, context, (zzdu) null, (zzdd) null, (ExecutorService) null, this) : new BillingClientImpl((String) null, pendingPurchasesParams, context, (zzdu) null, (zzdd) null, (ExecutorService) null, this);
            } else {
                if (this.zzi != null || this.zzj != null) {
                    PendingPurchasesParams pendingPurchasesParams2 = this.zzd;
                    PurchasesUpdatedListener purchasesUpdatedListener = this.zzf;
                    UserChoiceBillingListener userChoiceBillingListener = this.zzi;
                    DeveloperProvidedBillingListener developerProvidedBillingListener = this.zzj;
                    return zza() ? new zzda(null, pendingPurchasesParams2, context, purchasesUpdatedListener, userChoiceBillingListener, developerProvidedBillingListener, null, null, this) : new BillingClientImpl(null, pendingPurchasesParams2, context, purchasesUpdatedListener, userChoiceBillingListener, developerProvidedBillingListener, null, null, this);
                }
                PendingPurchasesParams pendingPurchasesParams3 = this.zzd;
                PurchasesUpdatedListener purchasesUpdatedListener2 = this.zzf;
                zzdaVar = zza() ? new zzda((String) null, pendingPurchasesParams3, context, purchasesUpdatedListener2, (zzdd) null, (ExecutorService) null, this) : new BillingClientImpl((String) null, pendingPurchasesParams3, context, purchasesUpdatedListener2, (zzdd) null, (ExecutorService) null, this);
            }
            return zzdaVar;
        }

        @NonNull
        @zzc
        public Builder enableAlternativeBillingOnly() {
            this.zzl = true;
            return this;
        }

        @NonNull
        @zzd
        public Builder enableAutoServiceReconnection() {
            this.zza = true;
            return this;
        }

        @NonNull
        @zzf
        public Builder enableBillingProgram(int i) {
            EnableBillingProgramParams.Builder builderNewBuilder = EnableBillingProgramParams.newBuilder();
            builderNewBuilder.setBillingProgram(i);
            enableBillingProgram(builderNewBuilder.build());
            return this;
        }

        @NonNull
        @zzi
        @Deprecated
        public Builder enableExternalOffer() {
            this.zzm = true;
            return this;
        }

        @NonNull
        @zzt
        public Builder enablePendingPurchases(@NonNull PendingPurchasesParams pendingPurchasesParams) {
            this.zzd = pendingPurchasesParams;
            return this;
        }

        @NonNull
        @zzv
        public Builder enableUserChoiceBilling(@NonNull UserChoiceBillingListener userChoiceBillingListener) {
            this.zzi = userChoiceBillingListener;
            if (this.zzj == null) {
                return this;
            }
            throw new IllegalArgumentException("UserChoiceBillingListener and DeveloperProvidedBillingListener cannot be set at the same time.");
        }

        @NonNull
        public Builder setListener(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.zzf = purchasesUpdatedListener;
            return this;
        }

        @NonNull
        @zzk
        public Builder enableBillingProgram(@NonNull EnableBillingProgramParams enableBillingProgramParams) {
            if (enableBillingProgramParams.getDeveloperProvidedBillingListener() != null) {
                if (this.zzi == null) {
                    if (enableBillingProgramParams.getBillingProgram() != 4 && enableBillingProgramParams.getBillingProgram() != 5) {
                        throw new IllegalArgumentException("DeveloperProvidedBillingListener can only be set when enabling the EXTERNAL_PAYMENTS or BILLING_CHOICE program.");
                    }
                    this.zzj = enableBillingProgramParams.getDeveloperProvidedBillingListener();
                } else {
                    throw new IllegalArgumentException("UserChoiceBillingListener and DeveloperProvidedBillingListener cannot be set at the same time.");
                }
            }
            int billingProgram = enableBillingProgramParams.getBillingProgram();
            if (billingProgram == 1) {
                this.zzo = true;
            } else if (billingProgram == 2) {
                this.zzp = true;
            } else if (billingProgram == 3) {
                this.zzm = true;
            } else if (billingProgram == 4) {
                this.zzq = true;
            } else {
                if (billingProgram != 5) {
                    throw new IllegalArgumentException("An invalid BillingProgram has been provided.");
                }
                this.zzr = true;
            }
            return this;
        }
    }
}

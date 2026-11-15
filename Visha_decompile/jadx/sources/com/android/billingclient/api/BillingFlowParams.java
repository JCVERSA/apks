package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.g7f;
import defpackage.y4f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class BillingFlowParams {
    private boolean zza;
    private String zzb;
    private String zzc;
    private SubscriptionUpdateParams zzd;
    private com.google.android.gms.internal.play_billing.zzca zze;
    private ArrayList zzf;
    private boolean zzg;

    @Nullable
    private DeveloperBillingOptionParams zzh;

    public static class Builder {
        private String zza;
        private String zzb;
        private List zzc;
        private boolean zzd;
        private SubscriptionUpdateParams.Builder zze;

        @Nullable
        private DeveloperBillingOptionParams zzf;

        private Builder() {
            SubscriptionUpdateParams.Builder builderNewBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.zza(builderNewBuilder);
            this.zze = builderNewBuilder;
        }

        @NonNull
        public BillingFlowParams build() {
            List list = this.zzc;
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            List list2 = this.zzc;
            if (list2 != null) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    if (((ProductDetailsParams) it.next()) == null) {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                }
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(null);
            billingFlowParams.zza = !((ProductDetailsParams) this.zzc.get(0)).zza().zza().isEmpty();
            billingFlowParams.zzb = this.zza;
            billingFlowParams.zzc = this.zzb;
            billingFlowParams.zzd = this.zze.build();
            billingFlowParams.zzf = new ArrayList();
            billingFlowParams.zzg = this.zzd;
            List list3 = this.zzc;
            billingFlowParams.zze = list3 != null ? com.google.android.gms.internal.play_billing.zzca.zzj(list3) : com.google.android.gms.internal.play_billing.zzca.zzk();
            billingFlowParams.zzh = this.zzf;
            return billingFlowParams;
        }

        @NonNull
        @zzk
        public Builder enableDeveloperBillingOption(@NonNull DeveloperBillingOptionParams developerBillingOptionParams) {
            this.zzf = developerBillingOptionParams;
            return this;
        }

        @NonNull
        public Builder setIsOfferPersonalized(boolean z) {
            this.zzd = z;
            return this;
        }

        @NonNull
        public Builder setObfuscatedAccountId(@NonNull String str) {
            this.zza = str;
            return this;
        }

        @NonNull
        public Builder setObfuscatedProfileId(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setProductDetailsParamsList(@NonNull List<ProductDetailsParams> list) {
            this.zzc = new ArrayList(list);
            return this;
        }

        @NonNull
        public Builder setSubscriptionUpdateParams(@NonNull SubscriptionUpdateParams subscriptionUpdateParams) {
            this.zze = SubscriptionUpdateParams.zzb(subscriptionUpdateParams);
            return this;
        }

        public Builder(zzdb zzdbVar) {
            SubscriptionUpdateParams.Builder builderNewBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.zza(builderNewBuilder);
            this.zze = builderNewBuilder;
        }
    }

    public static final class ProductDetailsParams {

        @Nullable
        @zzx
        private final SubscriptionProductReplacementParams mSubscriptionProductReplacementParams;
        private final ProductDetails zza;

        @Nullable
        private final String zzb;

        public static class Builder {

            @Nullable
            @zzx
            private SubscriptionProductReplacementParams mSubscriptionProductReplacementParams;
            private ProductDetails zza;

            @Nullable
            private String zzb;

            private Builder() {
                throw null;
            }

            @NonNull
            public ProductDetailsParams build() {
                y4f.c(this.zza, "ProductDetails is required for constructing ProductDetailsParams.");
                return new ProductDetailsParams(this, null);
            }

            @NonNull
            public Builder setOfferToken(@NonNull String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("offerToken can not be empty");
                }
                this.zzb = str;
                return this;
            }

            @NonNull
            public Builder setProductDetails(@NonNull ProductDetails productDetails) {
                this.zza = productDetails;
                if (productDetails.getOneTimePurchaseOfferDetails() != null) {
                    productDetails.getOneTimePurchaseOfferDetails().getClass();
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                    if (oneTimePurchaseOfferDetails.getOfferToken() != null) {
                        this.zzb = oneTimePurchaseOfferDetails.getOfferToken();
                    }
                }
                return this;
            }

            @NonNull
            @zzx
            public Builder setSubscriptionProductReplacementParams(@NonNull SubscriptionProductReplacementParams subscriptionProductReplacementParams) {
                this.mSubscriptionProductReplacementParams = subscriptionProductReplacementParams;
                return this;
            }

            public Builder(zzdb zzdbVar) {
            }
        }

        @zzx
        public static class SubscriptionProductReplacementParams {
            private String oldProductId;

            @zzx
            private int replacementMode;

            @zzx
            public static class Builder {
                private String oldProductId;
                private int replacementMode;

                private Builder() {
                    this.replacementMode = 0;
                }

                @NonNull
                @zzx
                public SubscriptionProductReplacementParams build() {
                    SubscriptionProductReplacementParams subscriptionProductReplacementParams = new SubscriptionProductReplacementParams();
                    subscriptionProductReplacementParams.oldProductId = this.oldProductId;
                    subscriptionProductReplacementParams.replacementMode = this.replacementMode;
                    return subscriptionProductReplacementParams;
                }

                @NonNull
                @zzx
                public Builder setOldProductId(@NonNull String str) {
                    this.oldProductId = str;
                    return this;
                }

                @NonNull
                @zzx
                public Builder setReplacementMode(int i) {
                    this.replacementMode = i;
                    return this;
                }
            }

            @Retention(RetentionPolicy.SOURCE)
            public @interface ReplacementMode {
                public static final int CHARGE_FULL_PRICE = 4;
                public static final int CHARGE_PRORATED_PRICE = 2;
                public static final int DEFERRED = 5;
                public static final int KEEP_EXISTING = 6;
                public static final int UNKNOWN_REPLACEMENT_MODE = 0;
                public static final int WITHOUT_PRORATION = 3;
                public static final int WITH_TIME_PRORATION = 1;
            }

            @NonNull
            public static Builder newBuilder() {
                return new Builder();
            }

            @NonNull
            @zzx
            public String getOldProductId() {
                return this.oldProductId;
            }

            @zzx
            public int getReplacementMode() {
                return this.replacementMode;
            }
        }

        public ProductDetailsParams(Builder builder, zzdb zzdbVar) {
            this.zza = builder.zza;
            this.zzb = builder.zzb;
            this.mSubscriptionProductReplacementParams = builder.mSubscriptionProductReplacementParams;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @Nullable
        @zzx
        public SubscriptionProductReplacementParams getSubscriptionProductReplacementParams() {
            return this.mSubscriptionProductReplacementParams;
        }

        @NonNull
        public final ProductDetails zza() {
            return this.zza;
        }

        @Nullable
        public final String zzb() {
            return this.zzb;
        }
    }

    public static class SubscriptionUpdateParams {
        private String zza;
        private String zzb;
        private int zzc = 0;

        public static class Builder {
            private String zza;
            private String zzb;
            private boolean zzc;
            private int zzd = 0;

            private Builder() {
            }

            public static Builder zza(Builder builder) {
                builder.zzc = true;
                return builder;
            }

            @NonNull
            public SubscriptionUpdateParams build() {
                boolean z = true;
                zzdb zzdbVar = null;
                if (TextUtils.isEmpty(this.zza) && TextUtils.isEmpty(null)) {
                    z = false;
                }
                boolean zIsEmpty = TextUtils.isEmpty(this.zzb);
                if (z && !zIsEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.zzc && !z && zIsEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(zzdbVar);
                subscriptionUpdateParams.zza = this.zza;
                subscriptionUpdateParams.zzc = this.zzd;
                subscriptionUpdateParams.zzb = this.zzb;
                return subscriptionUpdateParams;
            }

            @NonNull
            public Builder setOldPurchaseToken(@NonNull String str) {
                this.zza = str;
                return this;
            }

            @NonNull
            @zzb
            public Builder setOriginalExternalTransactionId(@NonNull String str) {
                this.zzb = str;
                return this;
            }

            @NonNull
            @Deprecated
            public Builder setSubscriptionReplacementMode(int i) {
                this.zzd = i;
                return this;
            }

            public Builder(zzdb zzdbVar) {
            }
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface ReplacementMode {
            public static final int CHARGE_FULL_PRICE = 5;
            public static final int CHARGE_PRORATED_PRICE = 2;
            public static final int DEFERRED = 6;
            public static final int UNKNOWN_REPLACEMENT_MODE = 0;
            public static final int WITHOUT_PRORATION = 3;
            public static final int WITH_TIME_PRORATION = 1;
        }

        private SubscriptionUpdateParams() {
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        public static Builder zzb(SubscriptionUpdateParams subscriptionUpdateParams) {
            Builder builderNewBuilder = newBuilder();
            builderNewBuilder.setOldPurchaseToken(subscriptionUpdateParams.zza);
            builderNewBuilder.setSubscriptionReplacementMode(subscriptionUpdateParams.zzc);
            builderNewBuilder.setOriginalExternalTransactionId(subscriptionUpdateParams.zzb);
            return builderNewBuilder;
        }

        public final int zza() {
            return this.zzc;
        }

        public final String zzc() {
            return this.zza;
        }

        public final String zzd() {
            return this.zzb;
        }

        public SubscriptionUpdateParams(zzdb zzdbVar) {
        }
    }

    private BillingFlowParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @Nullable
    @zzk
    public DeveloperBillingOptionParams getDeveloperBillingOptionParams() {
        return this.zzh;
    }

    public int zza() {
        return 0;
    }

    public final int zzb() {
        return this.zzd.zza();
    }

    public long zzc() {
        return 0L;
    }

    public final BillingResult zzd() {
        ProductDetails.OneTimePurchaseOfferDetails next;
        ProductDetailsParams.SubscriptionProductReplacementParams subscriptionProductReplacementParams;
        BillingResult billingResultZza;
        if (this.zze.isEmpty()) {
            return zzdh.zzi;
        }
        ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.zze.get(0);
        for (int i = 1; i < this.zze.size(); i++) {
            ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.zze.get(i);
            if (!productDetailsParams2.zza().getProductType().equals(productDetailsParams.zza().getProductType()) && !productDetailsParams2.zza().getProductType().equals("play_pass_subs")) {
                return zzdh.zza(5, "All products should have same ProductType.");
            }
        }
        String strZza = productDetailsParams.zza().zza();
        HashMap map = new HashMap();
        HashSet<String> hashSet = new HashSet();
        com.google.android.gms.internal.play_billing.zzca zzcaVar = this.zze;
        int size = zzcaVar.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            ProductDetailsParams productDetailsParams3 = (ProductDetailsParams) zzcaVar.get(i2);
            ProductDetailsParams.SubscriptionProductReplacementParams subscriptionProductReplacementParams2 = productDetailsParams3.getSubscriptionProductReplacementParams();
            if (subscriptionProductReplacementParams2 != null) {
                if (!productDetailsParams3.zza().getProductType().equals(BillingClient.ProductType.SUBS)) {
                    billingResultZza = zzdh.zza(5, String.format("Non-subscription product cannot have SubscriptionProductReplacementParams. Invalid product id: %s", productDetailsParams3.zza().getProductId()));
                } else if (subscriptionProductReplacementParams2.getReplacementMode() <= 0) {
                    billingResultZza = zzdh.zza(5, String.format("replacementMode is required for constructing SubscriptionProductReplacementParams. Not correctly set for product id: %s", productDetailsParams3.zza().getProductId()));
                } else {
                    billingResultZza = g7f.d(subscriptionProductReplacementParams2.oldProductId) ? zzdh.zza(5, String.format("oldProductId is required for constructing SubscriptionProductReplacementParams. Not correctly set for product id: %s", productDetailsParams3.zza().getProductId())) : zzdh.zzi;
                }
                if (billingResultZza != zzdh.zzi) {
                    return billingResultZza;
                }
            }
            if (subscriptionProductReplacementParams2 != null && subscriptionProductReplacementParams2.getReplacementMode() == 6) {
                BillingResult billingResultZza2 = productDetailsParams3.zzb() != null ? zzdh.zza(5, String.format("When using KEEP_EXISTING mode, offerToken in ProductDetailsParams should not be set. Offer token is set for product id: %s", productDetailsParams3.zza().getProductId())) : !subscriptionProductReplacementParams2.getOldProductId().equals(productDetailsParams3.zza().getProductId()) ? zzdh.zza(5, String.format("When using KEEP_EXISTING mode, oldProductId in SubscriptionProductReplacementParams should be the same as the product id in ProductDetails. Value is invalid for product id: %s", productDetailsParams3.zza().getProductId())) : zzdh.zzi;
                if (billingResultZza2 != zzdh.zzi) {
                    return billingResultZza2;
                }
            }
            if (productDetailsParams3.zza().getSubscriptionOfferDetails() != null && productDetailsParams3.zzb() == null && (subscriptionProductReplacementParams2 == null || subscriptionProductReplacementParams2.getReplacementMode() != 6)) {
                return zzdh.zza(5, String.format("offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: %s", productDetailsParams3.zza().getProductId()));
            }
            if (map.containsKey(productDetailsParams3.zza().getProductId())) {
                return zzdh.zza(5, String.format("ProductId can not be duplicated. Invalid product id: %s.", productDetailsParams3.zza().getProductId()));
            }
            map.put(productDetailsParams3.zza().getProductId(), productDetailsParams3);
            if (subscriptionProductReplacementParams2 != null) {
                if (hashSet.contains(subscriptionProductReplacementParams2.getOldProductId())) {
                    return zzdh.zza(5, String.format("OldProductId can not be duplicated. Invalid old product id: %s.", subscriptionProductReplacementParams2.getOldProductId()));
                }
                hashSet.add(subscriptionProductReplacementParams2.getOldProductId());
                z = true;
            }
            if (!productDetailsParams.zza().getProductType().equals("play_pass_subs") && !productDetailsParams3.zza().getProductType().equals("play_pass_subs") && !strZza.equals(productDetailsParams3.zza().zza())) {
                return zzdh.zza(5, "All products must have the same package name.");
            }
        }
        for (String str : hashSet) {
            if (map.containsKey(str) && ((subscriptionProductReplacementParams = ((ProductDetailsParams) map.get(str)).getSubscriptionProductReplacementParams()) == null || !subscriptionProductReplacementParams.getOldProductId().equals(str))) {
                return zzdh.zza(5, String.format("OldProductId must not be one of the products to be purchased. Invalid old product id: %s.", str));
            }
        }
        if (z && this.zzd.zza() != 0) {
            return zzdh.zza(5, "SubscriptionUpdateParams.setSubscriptionReplaceMode and  ProductDetailsParams.setSubscriptionProductReplacementParams cannot be called at the same time.");
        }
        List<ProductDetails.OneTimePurchaseOfferDetails> oneTimePurchaseOfferDetailsList = productDetailsParams.zza().getOneTimePurchaseOfferDetailsList();
        String strZzb = productDetailsParams.zzb();
        if (strZzb != null && oneTimePurchaseOfferDetailsList != null) {
            Iterator<ProductDetails.OneTimePurchaseOfferDetails> it = oneTimePurchaseOfferDetailsList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!strZzb.equals(next.getOfferToken()));
            if (next != null && next.zza() != null) {
                return zzdh.zza(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
            }
        }
        return zzdh.zzi;
    }

    @Nullable
    public final String zze() {
        return this.zzb;
    }

    @Nullable
    public final String zzf() {
        return this.zzc;
    }

    @Nullable
    @Deprecated
    public String zzg() {
        return null;
    }

    @Nullable
    @Deprecated
    public final String zzh() {
        return this.zzd.zzc();
    }

    @Nullable
    public final String zzi() {
        return this.zzd.zzd();
    }

    @NonNull
    public final ArrayList zzj() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zzf);
        return arrayList;
    }

    @NonNull
    public final List zzk() {
        return this.zze;
    }

    public final boolean zzt() {
        return this.zzg;
    }

    public final boolean zzu() {
        if (this.zzb != null || this.zzc != null || this.zzd.zzd() != null || this.zzd.zza() != 0 || this.zza || this.zzg) {
            return true;
        }
        com.google.android.gms.internal.play_billing.zzca zzcaVar = this.zze;
        if (zzcaVar != null) {
            int size = zzcaVar.size();
            int i = 0;
            while (i < size) {
                ProductDetailsParams.SubscriptionProductReplacementParams subscriptionProductReplacementParams = ((ProductDetailsParams) zzcaVar.get(i)).getSubscriptionProductReplacementParams();
                i++;
                if (subscriptionProductReplacementParams != null) {
                    return true;
                }
            }
        }
        return false;
    }

    public BillingFlowParams(zzdb zzdbVar) {
    }
}

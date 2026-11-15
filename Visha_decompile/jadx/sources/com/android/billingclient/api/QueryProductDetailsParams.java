package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashSet;
import java.util.List;

public final class QueryProductDetailsParams {
    private final com.google.android.gms.internal.play_billing.zzca zza;

    public static class Builder {
        private com.google.android.gms.internal.play_billing.zzca zza;

        private Builder() {
            throw null;
        }

        @NonNull
        public QueryProductDetailsParams build() {
            if (this.zza != null) {
                return new QueryProductDetailsParams(this, null);
            }
            throw new IllegalArgumentException("Product list must be set to a non empty list.");
        }

        @NonNull
        public Builder setProductList(@NonNull List<Product> list) {
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Product list cannot be empty.");
            }
            HashSet hashSet = new HashSet();
            for (Product product : list) {
                if (!"play_pass_subs".equals(product.zzb())) {
                    hashSet.add(product.zzb());
                }
            }
            if (hashSet.size() > 1) {
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            this.zza = com.google.android.gms.internal.play_billing.zzca.zzj(list);
            return this;
        }

        public Builder(zzem zzemVar) {
        }
    }

    public static class Product {

        @Nullable
        @zzg
        private final String dynamicProductToken;
        private final String zza;
        private final String zzb;

        public static class Builder {

            @Nullable
            @zzg
            private String dynamicProductToken;
            private String zza;
            private String zzb;

            private Builder() {
                throw null;
            }

            @NonNull
            public Product build() {
                String str = this.zzb;
                if ("first_party".equals(str)) {
                    throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
                }
                if (this.zza == null) {
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                if (str != null) {
                    return new Product(this, null);
                }
                throw new IllegalArgumentException("Product type must be provided.");
            }

            @NonNull
            @zzg
            public Builder setDynamicProductToken(@NonNull String str) {
                this.dynamicProductToken = str;
                return this;
            }

            @NonNull
            public Builder setProductId(@NonNull String str) {
                this.zza = str;
                return this;
            }

            @NonNull
            public Builder setProductType(@NonNull String str) {
                this.zzb = str;
                return this;
            }

            public Builder(zzem zzemVar) {
            }
        }

        public Product(Builder builder, zzem zzemVar) {
            this.zza = builder.zza;
            this.zzb = builder.zzb;
            this.dynamicProductToken = builder.dynamicProductToken;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @Nullable
        @zzg
        public String getDynamicProductToken() {
            return this.dynamicProductToken;
        }

        @NonNull
        public final String zza() {
            return this.zza;
        }

        @NonNull
        public final String zzb() {
            return this.zzb;
        }
    }

    public QueryProductDetailsParams(Builder builder, zzem zzemVar) {
        this.zza = builder.zza;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzca zza() {
        return this.zza;
    }

    @NonNull
    public final String zzb() {
        return ((Product) this.zza.get(0)).zzb();
    }
}

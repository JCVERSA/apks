package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.impl.C2450bn;
import io.appmetrica.analytics.impl.Td;
import java.util.Currency;

public class Revenue {

    @NonNull
    public final Currency currency;

    @Nullable
    public final String payload;
    public final long priceMicros;

    @Nullable
    public final String productID;

    @Nullable
    public final Integer quantity;

    @Nullable
    public final Receipt receipt;

    public static class Builder {
        private static final C2450bn g = new C2450bn(new Td("revenue currency"));
        final long a;
        final Currency b;
        Integer c;
        String d;
        String e;
        Receipt f;

        public Builder(long j, Currency currency, int i) {
            this(j, currency);
        }

        @NonNull
        public Revenue build() {
            return new Revenue(this, 0);
        }

        @NonNull
        public Builder withPayload(@Nullable String str) {
            this.e = str;
            return this;
        }

        @NonNull
        public Builder withProductID(@Nullable String str) {
            this.d = str;
            return this;
        }

        @NonNull
        public Builder withQuantity(@Nullable Integer num) {
            this.c = num;
            return this;
        }

        @NonNull
        public Builder withReceipt(@Nullable Receipt receipt) {
            this.f = receipt;
            return this;
        }

        private Builder(long j, Currency currency) {
            g.a(currency);
            this.a = j;
            this.b = currency;
        }
    }

    public static class Receipt {

        @Nullable
        public final String data;

        @Nullable
        public final String signature;

        public static class Builder {
            private String a;
            private String b;

            public Builder(int i) {
                this();
            }

            @NonNull
            public Receipt build() {
                return new Receipt(this, 0);
            }

            @NonNull
            public Builder withData(@Nullable String str) {
                this.a = str;
                return this;
            }

            @NonNull
            public Builder withSignature(@Nullable String str) {
                this.b = str;
                return this;
            }

            private Builder() {
            }
        }

        public Receipt(Builder builder, int i) {
            this(builder);
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(0);
        }

        private Receipt(Builder builder) {
            this.data = builder.a;
            this.signature = builder.b;
        }
    }

    public Revenue(Builder builder, int i) {
        this(builder);
    }

    @NonNull
    public static Builder newBuilder(long j, @NonNull Currency currency) {
        return new Builder(j, currency, 0);
    }

    private Revenue(Builder builder) {
        this.priceMicros = builder.a;
        this.currency = builder.b;
        this.quantity = builder.c;
        this.productID = builder.d;
        this.payload = builder.e;
        this.receipt = builder.f;
    }
}

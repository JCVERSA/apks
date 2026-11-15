package io.appmetrica.analytics.ecommerce;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ECommerceReferrer {
    private String a;
    private String b;
    private ECommerceScreen c;

    @Nullable
    public String getIdentifier() {
        return this.b;
    }

    @Nullable
    public ECommerceScreen getScreen() {
        return this.c;
    }

    @Nullable
    public String getType() {
        return this.a;
    }

    @NonNull
    public ECommerceReferrer setIdentifier(@Nullable String str) {
        this.b = str;
        return this;
    }

    @NonNull
    public ECommerceReferrer setScreen(@Nullable ECommerceScreen eCommerceScreen) {
        this.c = eCommerceScreen;
        return this;
    }

    @NonNull
    public ECommerceReferrer setType(@Nullable String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        return "ECommerceReferrer{type='" + this.a + "', identifier='" + this.b + "', screen=" + this.c + '}';
    }
}

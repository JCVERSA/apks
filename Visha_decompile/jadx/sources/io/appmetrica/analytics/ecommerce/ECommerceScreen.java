package io.appmetrica.analytics.ecommerce;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

public class ECommerceScreen {
    private String a;
    private List b;
    private String c;
    private Map d;

    @Nullable
    public List<String> getCategoriesPath() {
        return this.b;
    }

    @Nullable
    public String getName() {
        return this.a;
    }

    @Nullable
    public Map<String, String> getPayload() {
        return this.d;
    }

    @Nullable
    public String getSearchQuery() {
        return this.c;
    }

    public ECommerceScreen setCategoriesPath(@Nullable List<String> list) {
        this.b = list;
        return this;
    }

    public ECommerceScreen setName(@Nullable String str) {
        this.a = str;
        return this;
    }

    public ECommerceScreen setPayload(@Nullable Map<String, String> map) {
        this.d = map;
        return this;
    }

    public ECommerceScreen setSearchQuery(@Nullable String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        return "ECommerceScreen{name='" + this.a + "', categoriesPath=" + this.b + ", searchQuery='" + this.c + "', payload=" + this.d + '}';
    }
}

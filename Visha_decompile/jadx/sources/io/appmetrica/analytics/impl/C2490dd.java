package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import org.json.JSONObject;

public final class C2490dd implements JsonParser, Converter {
    public final RemoteConfigExtensionConfiguration a;
    public final JsonParser b;
    public final Converter c;

    public C2490dd(RemoteConfigExtensionConfiguration<Object> remoteConfigExtensionConfiguration) {
        this.a = remoteConfigExtensionConfiguration;
        this.b = remoteConfigExtensionConfiguration.getJsonParser();
        this.c = remoteConfigExtensionConfiguration.getProtobufConverter();
    }

    public final byte[] a(Object obj) {
        return (byte[]) this.c.fromModel(obj);
    }

    public final Object b(JSONObject jSONObject) {
        return this.b.parseOrNull(jSONObject);
    }

    @Override
    public final Object fromModel(Object obj) {
        return (byte[]) this.c.fromModel(obj);
    }

    @Override
    public final Object parse(JSONObject jSONObject) {
        return this.b.parse(jSONObject);
    }

    @Override
    public final Object parseOrNull(JSONObject jSONObject) {
        return this.b.parseOrNull(jSONObject);
    }

    @Override
    public final Object toModel(Object obj) {
        return this.c.toModel((byte[]) obj);
    }

    public final Object a(JSONObject jSONObject) {
        return this.b.parse(jSONObject);
    }

    public final Object a(byte[] bArr) {
        return this.c.toModel(bArr);
    }

    public final RemoteConfigExtensionConfiguration<Object> a() {
        return this.a;
    }
}

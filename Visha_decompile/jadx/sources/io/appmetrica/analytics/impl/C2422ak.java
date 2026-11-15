package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;

public final class C2422ak implements ModuleRemoteConfig {
    public final SdkIdentifiers a;
    public final RemoteConfigMetaInfo b;
    public final Object c;

    public C2422ak(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        this.a = sdkIdentifiers;
        this.b = remoteConfigMetaInfo;
        this.c = obj;
    }

    public final C2422ak a(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        return new C2422ak(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }

    public final RemoteConfigMetaInfo b() {
        return this.b;
    }

    public final Object c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2422ak)) {
            return false;
        }
        C2422ak c2422ak = (C2422ak) obj;
        return y45.e(this.a, c2422ak.a) && y45.e(this.b, c2422ak.b) && y45.e(this.c, c2422ak.c);
    }

    @Override
    public final Object getFeaturesConfig() {
        return this.c;
    }

    @Override
    public final SdkIdentifiers getIdentifiers() {
        return this.a;
    }

    @Override
    public final RemoteConfigMetaInfo getRemoteConfigMetaInfo() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Object obj = this.c;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "ServiceModuleRemoteConfigModel(identifiers=" + this.a + ", remoteConfigMetaInfo=" + this.b + ", featuresConfig=" + this.c + ')';
    }

    public final SdkIdentifiers a() {
        return this.a;
    }

    public static C2422ak a(C2422ak c2422ak, SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            sdkIdentifiers = c2422ak.a;
        }
        if ((i & 2) != 0) {
            remoteConfigMetaInfo = c2422ak.b;
        }
        if ((i & 4) != 0) {
            obj = c2422ak.c;
        }
        c2422ak.getClass();
        return new C2422ak(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }
}

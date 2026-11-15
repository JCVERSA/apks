package com.cloud.tupdate.bean;

import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/cloud/tupdate/bean/SdkConfigInfo;", "", "openSdkCache", "", "closeVersions", "", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "getCloseVersions", "()Ljava/lang/String;", "getOpenSdkCache", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/cloud/tupdate/bean/SdkConfigInfo;", "equals", "other", "hashCode", "", "toString", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class SdkConfigInfo {
    private final String closeVersions;
    private final Boolean openSdkCache;

    /* JADX WARN: Multi-variable type inference failed */
    public SdkConfigInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static SdkConfigInfo copy$default(SdkConfigInfo sdkConfigInfo, Boolean bool, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = sdkConfigInfo.openSdkCache;
        }
        if ((i & 2) != 0) {
            str = sdkConfigInfo.closeVersions;
        }
        return sdkConfigInfo.copy(bool, str);
    }

    public final Boolean getOpenSdkCache() {
        return this.openSdkCache;
    }

    public final String getCloseVersions() {
        return this.closeVersions;
    }

    public final SdkConfigInfo copy(Boolean openSdkCache, String closeVersions) {
        return new SdkConfigInfo(openSdkCache, closeVersions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SdkConfigInfo)) {
            return false;
        }
        SdkConfigInfo sdkConfigInfo = (SdkConfigInfo) other;
        return y45.e(this.openSdkCache, sdkConfigInfo.openSdkCache) && y45.e(this.closeVersions, sdkConfigInfo.closeVersions);
    }

    public final String getCloseVersions() {
        return this.closeVersions;
    }

    public final Boolean getOpenSdkCache() {
        return this.openSdkCache;
    }

    public int hashCode() {
        Boolean bool = this.openSdkCache;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.closeVersions;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SdkConfigInfo(openSdkCache=" + this.openSdkCache + ", closeVersions=" + ((Object) this.closeVersions) + ')';
    }

    public SdkConfigInfo(Boolean bool, String str) {
        this.openSdkCache = bool;
        this.closeVersions = str;
    }

    public SdkConfigInfo(Boolean bool, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : str);
    }
}

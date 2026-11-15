package com.transsion.playercommon.vishaapis.cloud;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;", "", "originUrl", "", "regionHost", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "getOriginUrl", "()Ljava/lang/String;", "setOriginUrl", "(Ljava/lang/String;)V", "getRegionHost", "setRegionHost", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RegionHostModel {
    private String originUrl;
    private String regionHost;

    /* JADX WARN: Multi-variable type inference failed */
    public RegionHostModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static RegionHostModel copy$default(RegionHostModel regionHostModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = regionHostModel.originUrl;
        }
        if ((i & 2) != 0) {
            str2 = regionHostModel.regionHost;
        }
        return regionHostModel.copy(str, str2);
    }

    public final String getOriginUrl() {
        return this.originUrl;
    }

    public final String getRegionHost() {
        return this.regionHost;
    }

    public final RegionHostModel copy(String originUrl, String regionHost) {
        return new RegionHostModel(originUrl, regionHost);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RegionHostModel)) {
            return false;
        }
        RegionHostModel regionHostModel = (RegionHostModel) other;
        return y45.e(this.originUrl, regionHostModel.originUrl) && y45.e(this.regionHost, regionHostModel.regionHost);
    }

    public final String getOriginUrl() {
        return this.originUrl;
    }

    public final String getRegionHost() {
        return this.regionHost;
    }

    public int hashCode() {
        String str = this.originUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.regionHost;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setOriginUrl(String str) {
        this.originUrl = str;
    }

    public final void setRegionHost(String str) {
        this.regionHost = str;
    }

    public String toString() {
        return "RegionHostModel(originUrl=" + this.originUrl + ", regionHost=" + this.regionHost + ")";
    }

    public RegionHostModel(String str, String str2) {
        this.originUrl = str;
        this.regionHost = str2;
    }

    public RegionHostModel(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }
}

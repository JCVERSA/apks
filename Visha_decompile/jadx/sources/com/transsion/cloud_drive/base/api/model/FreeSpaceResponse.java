package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;", "", "cloudSpaceSize", "", "effectiveDays", "", "bannerUrl", "", "(JILjava/lang/String;)V", "getBannerUrl", "()Ljava/lang/String;", "getCloudSpaceSize", "()J", "getEffectiveDays", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FreeSpaceResponse {
    private final String bannerUrl;
    private final long cloudSpaceSize;
    private final int effectiveDays;

    public FreeSpaceResponse() {
        this(0L, 0, null, 7, null);
    }

    public static FreeSpaceResponse copy$default(FreeSpaceResponse freeSpaceResponse, long j, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = freeSpaceResponse.cloudSpaceSize;
        }
        if ((i2 & 2) != 0) {
            i = freeSpaceResponse.effectiveDays;
        }
        if ((i2 & 4) != 0) {
            str = freeSpaceResponse.bannerUrl;
        }
        return freeSpaceResponse.copy(j, i, str);
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public final String getBannerUrl() {
        return this.bannerUrl;
    }

    public final FreeSpaceResponse copy(@v95(name = "cloudSpaceSize") long cloudSpaceSize, @v95(name = "effectiveDays") int effectiveDays, @v95(name = "bannerUrl") String bannerUrl) {
        y45.j(bannerUrl, "bannerUrl");
        return new FreeSpaceResponse(cloudSpaceSize, effectiveDays, bannerUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FreeSpaceResponse)) {
            return false;
        }
        FreeSpaceResponse freeSpaceResponse = (FreeSpaceResponse) other;
        return this.cloudSpaceSize == freeSpaceResponse.cloudSpaceSize && this.effectiveDays == freeSpaceResponse.effectiveDays && y45.e(this.bannerUrl, freeSpaceResponse.bannerUrl);
    }

    public final String getBannerUrl() {
        return this.bannerUrl;
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public int hashCode() {
        return (((Long.hashCode(this.cloudSpaceSize) * 31) + Integer.hashCode(this.effectiveDays)) * 31) + this.bannerUrl.hashCode();
    }

    public String toString() {
        return "FreeSpaceResponse(cloudSpaceSize=" + this.cloudSpaceSize + ", effectiveDays=" + this.effectiveDays + ", bannerUrl=" + this.bannerUrl + ")";
    }

    public FreeSpaceResponse(@v95(name = "cloudSpaceSize") long j, @v95(name = "effectiveDays") int i, @v95(name = "bannerUrl") String str) {
        y45.j(str, "bannerUrl");
        this.cloudSpaceSize = j;
        this.effectiveDays = i;
        this.bannerUrl = str;
    }

    public FreeSpaceResponse(long j, int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? "" : str);
    }
}

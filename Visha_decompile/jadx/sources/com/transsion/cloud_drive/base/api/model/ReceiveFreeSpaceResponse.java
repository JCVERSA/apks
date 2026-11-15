package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;", "", "cloudSpaceSize", "", "effectiveDays", "", "(JI)V", "getCloudSpaceSize", "()J", "getEffectiveDays", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReceiveFreeSpaceResponse {
    private final long cloudSpaceSize;
    private final int effectiveDays;

    public ReceiveFreeSpaceResponse() {
        this(0L, 0, 3, null);
    }

    public static ReceiveFreeSpaceResponse copy$default(ReceiveFreeSpaceResponse receiveFreeSpaceResponse, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = receiveFreeSpaceResponse.cloudSpaceSize;
        }
        if ((i2 & 2) != 0) {
            i = receiveFreeSpaceResponse.effectiveDays;
        }
        return receiveFreeSpaceResponse.copy(j, i);
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public final ReceiveFreeSpaceResponse copy(@v95(name = "cloudSpaceSize") long cloudSpaceSize, @v95(name = "effectiveDays") int effectiveDays) {
        return new ReceiveFreeSpaceResponse(cloudSpaceSize, effectiveDays);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReceiveFreeSpaceResponse)) {
            return false;
        }
        ReceiveFreeSpaceResponse receiveFreeSpaceResponse = (ReceiveFreeSpaceResponse) other;
        return this.cloudSpaceSize == receiveFreeSpaceResponse.cloudSpaceSize && this.effectiveDays == receiveFreeSpaceResponse.effectiveDays;
    }

    public final long getCloudSpaceSize() {
        return this.cloudSpaceSize;
    }

    public final int getEffectiveDays() {
        return this.effectiveDays;
    }

    public int hashCode() {
        return (Long.hashCode(this.cloudSpaceSize) * 31) + Integer.hashCode(this.effectiveDays);
    }

    public String toString() {
        return "ReceiveFreeSpaceResponse(cloudSpaceSize=" + this.cloudSpaceSize + ", effectiveDays=" + this.effectiveDays + ")";
    }

    public ReceiveFreeSpaceResponse(@v95(name = "cloudSpaceSize") long j, @v95(name = "effectiveDays") int i) {
        this.cloudSpaceSize = j;
        this.effectiveDays = i;
    }

    public ReceiveFreeSpaceResponse(long j, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0 : i);
    }
}

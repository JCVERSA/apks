package com.transsion.cloud_drive.base.api.model;

import com.transsion.cloud_drive.base.api.request.MccMap;
import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;", "", "mccMap", "Lcom/transsion/cloud_drive/base/api/request/MccMap;", "(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V", "getMccMap", "()Lcom/transsion/cloud_drive/base/api/request/MccMap;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReceiveFreeSpaceRequest {
    private final MccMap mccMap;

    /* JADX WARN: Multi-variable type inference failed */
    public ReceiveFreeSpaceRequest() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static ReceiveFreeSpaceRequest copy$default(ReceiveFreeSpaceRequest receiveFreeSpaceRequest, MccMap mccMap, int i, Object obj) {
        if ((i & 1) != 0) {
            mccMap = receiveFreeSpaceRequest.mccMap;
        }
        return receiveFreeSpaceRequest.copy(mccMap);
    }

    public final MccMap getMccMap() {
        return this.mccMap;
    }

    public final ReceiveFreeSpaceRequest copy(@v95(name = "mccMap") MccMap mccMap) {
        return new ReceiveFreeSpaceRequest(mccMap);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReceiveFreeSpaceRequest) && y45.e(this.mccMap, ((ReceiveFreeSpaceRequest) other).mccMap);
    }

    public final MccMap getMccMap() {
        return this.mccMap;
    }

    public int hashCode() {
        MccMap mccMap = this.mccMap;
        if (mccMap == null) {
            return 0;
        }
        return mccMap.hashCode();
    }

    public String toString() {
        return "ReceiveFreeSpaceRequest(mccMap=" + this.mccMap + ")";
    }

    public ReceiveFreeSpaceRequest(@v95(name = "mccMap") MccMap mccMap) {
        this.mccMap = mccMap;
    }

    public ReceiveFreeSpaceRequest(MccMap mccMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : mccMap);
    }
}

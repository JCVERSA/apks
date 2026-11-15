package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/RefundRequest;", "", "orderId", "", "(Ljava/lang/String;)V", "getOrderId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundRequest {
    private final String orderId;

    public RefundRequest(@v95(name = "orderId") String str) {
        y45.j(str, "orderId");
        this.orderId = str;
    }

    public static RefundRequest copy$default(RefundRequest refundRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refundRequest.orderId;
        }
        return refundRequest.copy(str);
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final RefundRequest copy(@v95(name = "orderId") String orderId) {
        y45.j(orderId, "orderId");
        return new RefundRequest(orderId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RefundRequest) && y45.e(this.orderId, ((RefundRequest) other).orderId);
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public int hashCode() {
        return this.orderId.hashCode();
    }

    public String toString() {
        return "RefundRequest(orderId=" + this.orderId + ")";
    }
}

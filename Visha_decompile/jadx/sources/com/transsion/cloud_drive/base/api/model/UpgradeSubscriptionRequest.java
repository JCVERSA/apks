package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;", "", "productId", "", "subscriberId", "(Ljava/lang/String;Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "getSubscriberId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpgradeSubscriptionRequest {
    private final String productId;
    private final String subscriberId;

    public UpgradeSubscriptionRequest(@v95(name = "productId") String str, @v95(name = "subscriberId") String str2) {
        y45.j(str, "productId");
        y45.j(str2, "subscriberId");
        this.productId = str;
        this.subscriberId = str2;
    }

    public static UpgradeSubscriptionRequest copy$default(UpgradeSubscriptionRequest upgradeSubscriptionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = upgradeSubscriptionRequest.productId;
        }
        if ((i & 2) != 0) {
            str2 = upgradeSubscriptionRequest.subscriberId;
        }
        return upgradeSubscriptionRequest.copy(str, str2);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getSubscriberId() {
        return this.subscriberId;
    }

    public final UpgradeSubscriptionRequest copy(@v95(name = "productId") String productId, @v95(name = "subscriberId") String subscriberId) {
        y45.j(productId, "productId");
        y45.j(subscriberId, "subscriberId");
        return new UpgradeSubscriptionRequest(productId, subscriberId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeSubscriptionRequest)) {
            return false;
        }
        UpgradeSubscriptionRequest upgradeSubscriptionRequest = (UpgradeSubscriptionRequest) other;
        return y45.e(this.productId, upgradeSubscriptionRequest.productId) && y45.e(this.subscriberId, upgradeSubscriptionRequest.subscriberId);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getSubscriberId() {
        return this.subscriberId;
    }

    public int hashCode() {
        return (this.productId.hashCode() * 31) + this.subscriberId.hashCode();
    }

    public String toString() {
        return "UpgradeSubscriptionRequest(productId=" + this.productId + ", subscriberId=" + this.subscriberId + ")";
    }
}

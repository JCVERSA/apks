package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/SpaceExchangeRequest;", "", "exchangeCode", "", "(Ljava/lang/String;)V", "getExchangeCode", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SpaceExchangeRequest {
    private final String exchangeCode;

    public SpaceExchangeRequest(@v95(name = "exchangeCode") String str) {
        y45.j(str, "exchangeCode");
        this.exchangeCode = str;
    }

    public static SpaceExchangeRequest copy$default(SpaceExchangeRequest spaceExchangeRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = spaceExchangeRequest.exchangeCode;
        }
        return spaceExchangeRequest.copy(str);
    }

    public final String getExchangeCode() {
        return this.exchangeCode;
    }

    public final SpaceExchangeRequest copy(@v95(name = "exchangeCode") String exchangeCode) {
        y45.j(exchangeCode, "exchangeCode");
        return new SpaceExchangeRequest(exchangeCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SpaceExchangeRequest) && y45.e(this.exchangeCode, ((SpaceExchangeRequest) other).exchangeCode);
    }

    public final String getExchangeCode() {
        return this.exchangeCode;
    }

    public int hashCode() {
        return this.exchangeCode.hashCode();
    }

    public String toString() {
        return "SpaceExchangeRequest(exchangeCode=" + this.exchangeCode + ")";
    }
}

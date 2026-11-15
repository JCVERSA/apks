package com.transsion.cloud_drive.base.network.response;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BC\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0003\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0003\u0010\b\u001a\u00020\t\u0012\b\b\u0003\u0010\n\u001a\u00020\u000b\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0011JR\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00062\b\b\u0003\u0010\u0007\u001a\u00020\u00062\b\b\u0003\u0010\b\u001a\u00020\t2\b\b\u0003\u0010\n\u001a\u00020\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010#\u001a\u00020\u0004HÖ\u0001J\t\u0010$\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\f\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/BaseResult;", "T", "", TrackingKey.CODE, "", "message", "", "requestId", "timestamp", "", "isEncrypt", "", "data", "(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)V", "getCode", "()I", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "()Z", "getMessage", "()Ljava/lang/String;", "getRequestId", "getTimestamp", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/BaseResult;", "equals", "other", "hashCode", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BaseResult<T> {
    private final int code;
    private final T data;
    private final boolean isEncrypt;
    private final String message;
    private final String requestId;
    private final long timestamp;

    public BaseResult(@v95(name = TrackingKey.CODE) int i, @v95(name = "message") String str, @v95(name = "requestId") String str2, @v95(name = "timestamp") long j, @v95(name = "isEncrypt") boolean z, @v95(name = "data") T t) {
        y45.j(str, "message");
        y45.j(str2, "requestId");
        this.code = i;
        this.message = str;
        this.requestId = str2;
        this.timestamp = j;
        this.isEncrypt = z;
        this.data = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BaseResult copy$default(BaseResult baseResult, int i, String str, String str2, long j, boolean z, Object obj, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            i = baseResult.code;
        }
        if ((i2 & 2) != 0) {
            str = baseResult.message;
        }
        String str3 = str;
        if ((i2 & 4) != 0) {
            str2 = baseResult.requestId;
        }
        String str4 = str2;
        if ((i2 & 8) != 0) {
            j = baseResult.timestamp;
        }
        long j2 = j;
        if ((i2 & 16) != 0) {
            z = baseResult.isEncrypt;
        }
        boolean z2 = z;
        if ((i2 & 32) != 0) {
            obj = baseResult.data;
        }
        return baseResult.copy(i, str3, str4, j2, z2, obj);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final boolean getIsEncrypt() {
        return this.isEncrypt;
    }

    public final T component6() {
        return this.data;
    }

    public final BaseResult<T> copy(@v95(name = TrackingKey.CODE) int code, @v95(name = "message") String message, @v95(name = "requestId") String requestId, @v95(name = "timestamp") long timestamp, @v95(name = "isEncrypt") boolean isEncrypt, @v95(name = "data") T data) {
        y45.j(message, "message");
        y45.j(requestId, "requestId");
        return new BaseResult<>(code, message, requestId, timestamp, isEncrypt, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BaseResult)) {
            return false;
        }
        BaseResult baseResult = (BaseResult) other;
        return this.code == baseResult.code && y45.e(this.message, baseResult.message) && y45.e(this.requestId, baseResult.requestId) && this.timestamp == baseResult.timestamp && this.isEncrypt == baseResult.isEncrypt && y45.e(this.data, baseResult.data);
    }

    public final int getCode() {
        return this.code;
    }

    public final T getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        int iHashCode = ((((((((Integer.hashCode(this.code) * 31) + this.message.hashCode()) * 31) + this.requestId.hashCode()) * 31) + Long.hashCode(this.timestamp)) * 31) + Boolean.hashCode(this.isEncrypt)) * 31;
        T t = this.data;
        return iHashCode + (t == null ? 0 : t.hashCode());
    }

    public final boolean isEncrypt() {
        return this.isEncrypt;
    }

    public String toString() {
        return "BaseResult(code=" + this.code + ", message=" + this.message + ", requestId=" + this.requestId + ", timestamp=" + this.timestamp + ", isEncrypt=" + this.isEncrypt + ", data=" + this.data + ")";
    }

    public BaseResult(int i, String str, String str2, long j, boolean z, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? "" : str, (i2 & 4) == 0 ? str2 : "", (i2 & 8) != 0 ? 0L : j, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? null : obj);
    }
}

package com.transsion.cloud_drive.transfer.exception;

import com.hisavana.common.tracking.TrackingKey;
import com.transsion.cloud_drive.transfer.common.TransferErrorCode;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/transsion/cloud_drive/transfer/exception/TransferException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;", "errorMessage", "", "cause", "", "(Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V", TrackingKey.CODE, "", "getCode", "()I", "getErrorCode", "()Lcom/transsion/cloud_drive/transfer/common/TransferErrorCode;", "isNoNetwork", "", "toString", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TransferException extends Exception {
    private final TransferErrorCode errorCode;

    public TransferException(TransferErrorCode transferErrorCode, String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(transferErrorCode, (i & 2) != 0 ? transferErrorCode.getMessage() : str, (i & 4) != 0 ? null : th);
    }

    public final int getCode() {
        return this.errorCode.getCode();
    }

    public final TransferErrorCode getErrorCode() {
        return this.errorCode;
    }

    public final boolean isNoNetwork() {
        return this.errorCode == TransferErrorCode.NO_NETWORK;
    }

    @Override
    public String toString() {
        return "TransferException(code=" + this.errorCode.getCode() + ", message=" + this.errorCode.getMessage() + ", cause=" + getCause() + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferException(TransferErrorCode transferErrorCode, String str, Throwable th) {
        super(str, th);
        y45.j(transferErrorCode, "errorCode");
        this.errorCode = transferErrorCode;
    }
}

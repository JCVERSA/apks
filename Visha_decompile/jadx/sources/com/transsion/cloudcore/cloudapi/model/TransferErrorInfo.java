package com.transsion.cloudcore.cloudapi.model;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;", "", TrackingKey.CODE, "", "message", "", MethodDecl.initName, "(ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransferErrorInfo {
    private final int code;
    private final String message;

    public TransferErrorInfo(int i, String str) {
        y45.j(str, "message");
        this.code = i;
        this.message = str;
    }

    public static TransferErrorInfo copy$default(TransferErrorInfo transferErrorInfo, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = transferErrorInfo.code;
        }
        if ((i2 & 2) != 0) {
            str = transferErrorInfo.message;
        }
        return transferErrorInfo.copy(i, str);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final TransferErrorInfo copy(int code, String message) {
        y45.j(message, "message");
        return new TransferErrorInfo(code, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransferErrorInfo)) {
            return false;
        }
        TransferErrorInfo transferErrorInfo = (TransferErrorInfo) other;
        return this.code == transferErrorInfo.code && y45.e(this.message, transferErrorInfo.message);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        return (Integer.hashCode(this.code) * 31) + this.message.hashCode();
    }

    public String toString() {
        return "TransferErrorInfo(code=" + this.code + ", message=" + this.message + ")";
    }
}

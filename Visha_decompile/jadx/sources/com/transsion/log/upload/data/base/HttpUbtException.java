package com.transsion.log.upload.data.base;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/transsion/log/upload/data/base/HttpUbtException;", "", "errorCode", "", "message", "", MethodDecl.initName, "(ILjava/lang/String;)V", "getErrorCode", "()I", "setErrorCode", "(I)V", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "UBT_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HttpUbtException {
    public static final int NETWORK_FAIL = 1000;
    public static final int PARSE_FAIL = 1001;
    public static final int SERVICE_ERROR = 1002;
    private int errorCode;
    private String message;

    /* JADX WARN: Multi-variable type inference failed */
    public HttpUbtException() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public static HttpUbtException copy$default(HttpUbtException httpUbtException, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = httpUbtException.errorCode;
        }
        if ((i2 & 2) != 0) {
            str = httpUbtException.message;
        }
        return httpUbtException.copy(i, str);
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getMessage() {
        return this.message;
    }

    public final HttpUbtException copy(int errorCode, String message) {
        return new HttpUbtException(errorCode, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HttpUbtException)) {
            return false;
        }
        HttpUbtException httpUbtException = (HttpUbtException) other;
        return this.errorCode == httpUbtException.errorCode && y45.e(this.message, httpUbtException.message);
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.errorCode) * 31;
        String str = this.message;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setErrorCode(int i) {
        this.errorCode = i;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "HttpUbtException(errorCode=" + this.errorCode + ", message=" + this.message + ")";
    }

    public HttpUbtException(int i, String str) {
        this.errorCode = i;
        this.message = str;
    }

    public HttpUbtException(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str);
    }
}

package com.transsion.log.upload.data.base;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/transsion/log/upload/data/base/HttpUbtError;", "", "statusCode", "", "exception", "Lcom/transsion/log/upload/data/base/HttpUbtException;", MethodDecl.initName, "(ILcom/transsion/log/upload/data/base/HttpUbtException;)V", "getStatusCode", "()I", "getException", "()Lcom/transsion/log/upload/data/base/HttpUbtException;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "Companion", "UBT_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HttpUbtError {
    public static final int STATUS_CODE_FAIL = 1000;
    public static final int STATUS_CODE_PARSE_FAIL = 1001;
    public static final int STATUS_CODE_SERVICE_ERROR = 1002;
    public static final int STATUS_CODE_SUCCESS = 2000;
    private final HttpUbtException exception;
    private final int statusCode;

    public HttpUbtError(int i, HttpUbtException httpUbtException) {
        y45.j(httpUbtException, "exception");
        this.statusCode = i;
        this.exception = httpUbtException;
    }

    public static HttpUbtError copy$default(HttpUbtError httpUbtError, int i, HttpUbtException httpUbtException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = httpUbtError.statusCode;
        }
        if ((i2 & 2) != 0) {
            httpUbtException = httpUbtError.exception;
        }
        return httpUbtError.copy(i, httpUbtException);
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final HttpUbtException getException() {
        return this.exception;
    }

    public final HttpUbtError copy(int statusCode, HttpUbtException exception) {
        y45.j(exception, "exception");
        return new HttpUbtError(statusCode, exception);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HttpUbtError)) {
            return false;
        }
        HttpUbtError httpUbtError = (HttpUbtError) other;
        return this.statusCode == httpUbtError.statusCode && y45.e(this.exception, httpUbtError.exception);
    }

    public final HttpUbtException getException() {
        return this.exception;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        return (Integer.hashCode(this.statusCode) * 31) + this.exception.hashCode();
    }

    public String toString() {
        return "HttpUbtError(statusCode=" + this.statusCode + ", exception=" + this.exception + ")";
    }

    public HttpUbtError(int i, HttpUbtException httpUbtException, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, httpUbtException);
    }
}

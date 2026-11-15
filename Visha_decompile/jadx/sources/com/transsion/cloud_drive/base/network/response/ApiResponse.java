package com.transsion.cloud_drive.base.network.response;

import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000 \u0003*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0003\u0004\u0005\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "T", "", "Companion", "Failure", "Success", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ApiResponse<T> {

    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;", "", "()V", "exception", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;", "ex", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Failure.Exception exception(Throwable ex) {
            y45.j(ex, "ex");
            return new Failure.Exception(ex);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;", "T", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Error", "Exception", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Failure<T> extends ApiResponse<T> {

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;", "", "errorCode", "", "message", "", "(ILjava/lang/String;)V", "getErrorCode", "()I", "getMessage", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Error implements Failure {
            private final int errorCode;
            private final String message;

            public Error(int i, String str) {
                y45.j(str, "message");
                this.errorCode = i;
                this.message = str;
            }

            public boolean equals(Object other) {
                return (other instanceof Error) && this.errorCode == ((Error) other).errorCode;
            }

            public final int getErrorCode() {
                return this.errorCode;
            }

            public final String getMessage() {
                return this.message;
            }

            public int hashCode() {
                return (this.errorCode * 31) + this.message.hashCode();
            }

            public String toString() {
                return "errCode:" + this.errorCode + "  errorMessage:" + this.message;
            }

            public Error(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(i, (i2 & 2) != 0 ? "" : str);
            }
        }

        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0007H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure;", "", "throwable", "", "(Ljava/lang/Throwable;)V", "message", "", "getMessage", "()Ljava/lang/String;", "getThrowable", "()Ljava/lang/Throwable;", "equals", "", "other", "", "hashCode", "", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Exception implements Failure {
            private final String message;
            private final Throwable throwable;

            public Exception(Throwable th) {
                y45.j(th, "throwable");
                this.throwable = th;
                this.message = th.getMessage();
            }

            public boolean equals(Object other) {
                return (other instanceof Exception) && y45.e(this.throwable, ((Exception) other).throwable);
            }

            public final String getMessage() {
                return this.message;
            }

            public final Throwable getThrowable() {
                return this.throwable;
            }

            public int hashCode() {
                return 527 + this.throwable.hashCode();
            }

            public String toString() {
                String str = this.message;
                return str == null ? "" : str;
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0001¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00018\u0001HÆ\u0003¢\u0006\u0002\u0010\u0006J \u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0001HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;", "T", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "data", "(Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;", "equals", "", "other", "", "hashCode", "", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success<T> implements ApiResponse<T> {
        private final T data;

        public Success(T t) {
            this.data = t;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Success copy$default(Success success, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = success.data;
            }
            return success.copy(obj);
        }

        public final T component1() {
            return this.data;
        }

        public final Success<T> copy(T data) {
            return new Success<>(data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && y45.e(this.data, ((Success) other).data);
        }

        public final T getData() {
            return this.data;
        }

        public int hashCode() {
            T t = this.data;
            if (t == null) {
                return 0;
            }
            return t.hashCode();
        }

        public String toString() {
            return "Success(data=" + this.data + ")";
        }
    }
}

package defpackage;

import com.transsion.cloud_drive.transfer.common.TransferErrorCode;
import com.transsion.cloud_drive.transfer.exception.ServerException;
import com.transsion.cloud_drive.transfer.exception.TransferException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class r5b {
    public static final a f = new a(null);
    public final int a;
    public final String b;
    public final Throwable c;
    public final Integer d;
    public final String e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final r5b a(TransferException transferException) {
            y45.j(transferException, "error");
            Throwable cause = transferException.getCause();
            if (!(cause instanceof ServerException) || transferException.getCode() == TransferErrorCode.AUTH_ERROR.getCode()) {
                return new r5b(transferException.getCode(), transferException.getErrorCode().getMessage(), cause, (Integer) null, (String) null);
            }
            int code = TransferErrorCode.SERVER.getCode();
            String message = transferException.getMessage();
            if (message == null) {
                message = "";
            }
            String str = message;
            ServerException serverException = (ServerException) cause;
            return new r5b(code, str, cause, Integer.valueOf(serverException.getCode()), serverException.getMessage());
        }

        public a() {
        }
    }

    public r5b(int i, String str, Throwable th, Integer num, String str2) {
        y45.j(str, "errorMessage");
        this.a = i;
        this.b = str;
        this.c = th;
        this.d = num;
        this.e = str2;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r5b)) {
            return false;
        }
        r5b r5bVar = (r5b) obj;
        return this.a == r5bVar.a && y45.e(this.b, r5bVar.b) && y45.e(this.c, r5bVar.c) && y45.e(this.d, r5bVar.d) && y45.e(this.e, r5bVar.e);
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31;
        Throwable th = this.c;
        int iHashCode2 = (iHashCode + (th == null ? 0 : th.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.e;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TransferErrorInfo(errorCode=" + this.a + ", errorMessage=" + this.b + ", throwable=" + this.c + ", apiErrorCode=" + this.d + ", apiErrorMessage=" + this.e + ")";
    }

    public r5b(int i, String str, Throwable th, Integer num, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? null : th, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : str2);
    }

    public r5b(TransferErrorCode transferErrorCode, Throwable th, Integer num, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(transferErrorCode, (i & 2) != 0 ? null : th, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r5b(TransferErrorCode transferErrorCode, Throwable th, Integer num, String str) {
        this(transferErrorCode.getCode(), transferErrorCode.getMessage(), th, num, str);
        y45.j(transferErrorCode, "errorCode");
    }

    public r5b(TransferErrorCode transferErrorCode, String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(transferErrorCode, str, (i & 4) != 0 ? null : th);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r5b(TransferErrorCode transferErrorCode, String str, Throwable th) {
        this(transferErrorCode.getCode(), str, th, null, null, 24, null);
        y45.j(transferErrorCode, "errorCode");
        y45.j(str, "message");
    }
}

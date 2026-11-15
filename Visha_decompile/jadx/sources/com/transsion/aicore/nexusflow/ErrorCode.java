package com.transsion.aicore.nexusflow;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J$\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0013J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0010J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010\u0013¨\u0006#"}, d2 = {"Lcom/transsion/aicore/nexusflow/ErrorCode;", "Landroid/os/Parcelable;", "", TrackingKey.CODE, "", "message", MethodDecl.initName, "(ILjava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "component2", "()Ljava/lang/String;", "copy", "(ILjava/lang/String;)Lcom/transsion/aicore/nexusflow/ErrorCode;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getCode", "Ljava/lang/String;", "getMessage", "CREATOR", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "ipc_business_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ErrorCode implements Parcelable {

    public static final Companion INSTANCE = new Companion();
    private final int code;
    private final String message;

    public static final class Companion implements Parcelable.Creator {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new ErrorCode(parcel);
        }

        @Override
        public final Object[] newArray(int i) {
            return new ErrorCode[i];
        }
    }

    public ErrorCode(int i, String str) {
        y45.j(str, "message");
        this.code = i;
        this.message = str;
    }

    public static ErrorCode copy$default(ErrorCode errorCode, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = errorCode.code;
        }
        if ((i2 & 2) != 0) {
            str = errorCode.message;
        }
        return errorCode.copy(i, str);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public final ErrorCode copy(int code, String message) {
        y45.j(message, "message");
        return new ErrorCode(code, message);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ErrorCode)) {
            return false;
        }
        ErrorCode errorCode = (ErrorCode) other;
        return this.code == errorCode.code && y45.e(this.message, errorCode.message);
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        return this.message.hashCode() + (Integer.hashCode(this.code) * 31);
    }

    public String toString() {
        return "ErrorCode(code=" + this.code + ", message=" + this.message + ")";
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "parcel");
        parcel.writeInt(this.code);
        parcel.writeString(this.message);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ErrorCode(Parcel parcel) {
        y45.j(parcel, "parcel");
        int i = parcel.readInt();
        String string = parcel.readString();
        this(i, string == null ? "" : string);
    }
}

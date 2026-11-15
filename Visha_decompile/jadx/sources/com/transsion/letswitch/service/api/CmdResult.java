package com.transsion.letswitch.service.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u0000  2\u00020\u0001:\u0001 B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J&\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0012J\u0010\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u000fJ\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001c\u001a\u0004\b\u001d\u0010\u000fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010\u0012¨\u0006!"}, d2 = {"Lcom/transsion/letswitch/service/api/CmdResult;", "Landroid/os/Parcelable;", "", "result", "", "message", MethodDecl.initName, "(ILjava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "component2", "()Ljava/lang/String;", "copy", "(ILjava/lang/String;)Lcom/transsion/letswitch/service/api/CmdResult;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getResult", "Ljava/lang/String;", "getMessage", "Companion", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CmdResult implements Parcelable {
    private final String message;
    private final int result;

    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<CmdResult> CREATOR = new Creator();
    private static final CmdResult FAIL_RESULT = new CmdResult(-1, "");

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/letswitch/service/api/CmdResult$Companion;", "", MethodDecl.initName, "()V", "FAIL_RESULT", "Lcom/transsion/letswitch/service/api/CmdResult;", "getFAIL_RESULT", "()Lcom/transsion/letswitch/service/api/CmdResult;", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CmdResult getFAIL_RESULT() {
            return CmdResult.FAIL_RESULT;
        }

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CmdResult> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final CmdResult createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new CmdResult(parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final CmdResult[] newArray(int i) {
            return new CmdResult[i];
        }
    }

    public CmdResult(int i, String str) {
        this.result = i;
        this.message = str;
    }

    public static CmdResult copy$default(CmdResult cmdResult, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = cmdResult.result;
        }
        if ((i2 & 2) != 0) {
            str = cmdResult.message;
        }
        return cmdResult.copy(i, str);
    }

    public final int getResult() {
        return this.result;
    }

    public final String getMessage() {
        return this.message;
    }

    public final CmdResult copy(int result, String message) {
        return new CmdResult(result, message);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CmdResult)) {
            return false;
        }
        CmdResult cmdResult = (CmdResult) other;
        return this.result == cmdResult.result && y45.e(this.message, cmdResult.message);
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getResult() {
        return this.result;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.result) * 31;
        String str = this.message;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CmdResult(result=" + this.result + ", message=" + this.message + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeInt(this.result);
        dest.writeString(this.message);
    }
}

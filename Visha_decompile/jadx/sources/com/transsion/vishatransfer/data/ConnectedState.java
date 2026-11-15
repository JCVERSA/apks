package com.transsion.vishatransfer.data;

import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J)\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/transsion/vishatransfer/data/ConnectedState;", "", ICode.CALL.CALL_KEY_STATE, "", "message", "", "userType", MethodDecl.initName, "(ILjava/lang/String;I)V", "getState", "()I", "setState", "(I)V", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "getUserType", "setUserType", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConnectedState {
    public static final int SOCKET_STATE_CONNECT = 0;
    public static final int SOCKET_STATE_DEFAULT = -1;
    public static final int SOCKET_STATE_DISCONNECT = 2;
    public static final int SOCKET_STATE_ERROR = 3;
    public static final int SOCKET_STATE_READY = 1;
    public static final int SOCKET_STATE_START_TRANSFER = 8;
    public static final int WIFI_STATE_CONNECTED = 4;
    public static final int WIFI_STATE_DISCONNECTED = 5;
    public static final int WIFI_STATE_FINISH_TRANSFER = 6;
    public static final int WIFI_STATE_TRANSFER = 7;
    private String message;
    private int state;
    private int userType;

    public ConnectedState(int i, String str, int i2) {
        this.state = i;
        this.message = str;
        this.userType = i2;
    }

    public static ConnectedState copy$default(ConnectedState connectedState, int i, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = connectedState.state;
        }
        if ((i3 & 2) != 0) {
            str = connectedState.message;
        }
        if ((i3 & 4) != 0) {
            i2 = connectedState.userType;
        }
        return connectedState.copy(i, str, i2);
    }

    public final int getState() {
        return this.state;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getUserType() {
        return this.userType;
    }

    public final ConnectedState copy(int state, String message, int userType) {
        return new ConnectedState(state, message, userType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConnectedState)) {
            return false;
        }
        ConnectedState connectedState = (ConnectedState) other;
        return this.state == connectedState.state && y45.e(this.message, connectedState.message) && this.userType == connectedState.userType;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getState() {
        return this.state;
    }

    public final int getUserType() {
        return this.userType;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.state) * 31;
        String str = this.message;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.userType);
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setUserType(int i) {
        this.userType = i;
    }

    public String toString() {
        return "ConnectedState(state=" + this.state + ", message=" + this.message + ", userType=" + this.userType + ")";
    }

    public ConnectedState(int i, String str, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i3 & 2) != 0 ? "" : str, i2);
    }
}

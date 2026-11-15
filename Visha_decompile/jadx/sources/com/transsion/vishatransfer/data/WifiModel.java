package com.transsion.vishatransfer.data;

import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b(\b\u0086\b\u0018\u0000 02\u00020\u0001:\u00010BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\tHÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003JO\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0007HÆ\u0001J\u0013\u0010,\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0007HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0010\"\u0004\b\u001f\u0010\u0012R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019¨\u00061"}, d2 = {"Lcom/transsion/vishatransfer/data/WifiModel;", "", "message", "", "isSuccess", "", ICode.CALL.CALL_KEY_STATE, "", "progress", "", Progress.FILE_PATH, "serviceIP", "errorCode", MethodDecl.initName, "(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;I)V", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "()Z", "setSuccess", "(Z)V", "getState", "()I", "setState", "(I)V", "getProgress", "()F", "setProgress", "(F)V", "getFilePath", "setFilePath", "getServiceIP", "setServiceIP", "getErrorCode", "setErrorCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "Companion", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WifiModel {
    public static final int STATE_DEFAULT = 0;
    public static final int STATE_END = 3;
    public static final int STATE_PROGRESS = 2;
    public static final int STATE_START = 1;
    private int errorCode;
    private String filePath;
    private boolean isSuccess;
    private String message;
    private float progress;
    private String serviceIP;
    private int state;

    public WifiModel() {
        this(null, false, 0, 0.0f, null, null, 0, 127, null);
    }

    public static WifiModel copy$default(WifiModel wifiModel, String str, boolean z, int i, float f, String str2, String str3, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = wifiModel.message;
        }
        if ((i3 & 2) != 0) {
            z = wifiModel.isSuccess;
        }
        boolean z2 = z;
        if ((i3 & 4) != 0) {
            i = wifiModel.state;
        }
        int i4 = i;
        if ((i3 & 8) != 0) {
            f = wifiModel.progress;
        }
        float f2 = f;
        if ((i3 & 16) != 0) {
            str2 = wifiModel.filePath;
        }
        String str4 = str2;
        if ((i3 & 32) != 0) {
            str3 = wifiModel.serviceIP;
        }
        String str5 = str3;
        if ((i3 & 64) != 0) {
            i2 = wifiModel.errorCode;
        }
        return wifiModel.copy(str, z2, i4, f2, str4, str5, i2);
    }

    public final String getMessage() {
        return this.message;
    }

    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final int getState() {
        return this.state;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final String getServiceIP() {
        return this.serviceIP;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final WifiModel copy(String message, boolean isSuccess, int state, float progress, String filePath, String serviceIP, int errorCode) {
        y45.j(message, "message");
        y45.j(filePath, Progress.FILE_PATH);
        y45.j(serviceIP, "serviceIP");
        return new WifiModel(message, isSuccess, state, progress, filePath, serviceIP, errorCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WifiModel)) {
            return false;
        }
        WifiModel wifiModel = (WifiModel) other;
        return y45.e(this.message, wifiModel.message) && this.isSuccess == wifiModel.isSuccess && this.state == wifiModel.state && Float.compare(this.progress, wifiModel.progress) == 0 && y45.e(this.filePath, wifiModel.filePath) && y45.e(this.serviceIP, wifiModel.serviceIP) && this.errorCode == wifiModel.errorCode;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final String getMessage() {
        return this.message;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final String getServiceIP() {
        return this.serviceIP;
    }

    public final int getState() {
        return this.state;
    }

    public int hashCode() {
        return (((((((((((this.message.hashCode() * 31) + Boolean.hashCode(this.isSuccess)) * 31) + Integer.hashCode(this.state)) * 31) + Float.hashCode(this.progress)) * 31) + this.filePath.hashCode()) * 31) + this.serviceIP.hashCode()) * 31) + Integer.hashCode(this.errorCode);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public final void setErrorCode(int i) {
        this.errorCode = i;
    }

    public final void setFilePath(String str) {
        y45.j(str, "<set-?>");
        this.filePath = str;
    }

    public final void setMessage(String str) {
        y45.j(str, "<set-?>");
        this.message = str;
    }

    public final void setProgress(float f) {
        this.progress = f;
    }

    public final void setServiceIP(String str) {
        y45.j(str, "<set-?>");
        this.serviceIP = str;
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public String toString() {
        return "WifiModel(message=" + this.message + ", isSuccess=" + this.isSuccess + ", state=" + this.state + ", progress=" + this.progress + ", filePath=" + this.filePath + ", serviceIP=" + this.serviceIP + ", errorCode=" + this.errorCode + ")";
    }

    public WifiModel(String str, boolean z, int i, float f, String str2, String str3, int i2) {
        y45.j(str, "message");
        y45.j(str2, Progress.FILE_PATH);
        y45.j(str3, "serviceIP");
        this.message = str;
        this.isSuccess = z;
        this.state = i;
        this.progress = f;
        this.filePath = str2;
        this.serviceIP = str3;
        this.errorCode = i2;
    }

    public WifiModel(String str, boolean z, int i, float f, String str2, String str3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? false : z, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0.0f : f, (i3 & 16) != 0 ? "" : str2, (i3 & 32) != 0 ? "" : str3, (i3 & 64) != 0 ? 0 : i2);
    }
}

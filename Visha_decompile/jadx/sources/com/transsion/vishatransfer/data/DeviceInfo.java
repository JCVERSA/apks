package com.transsion.vishatransfer.data;

import com.transsion.vishatransfer.socket.TransferMessage;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\fJ\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u000fJ\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0005¨\u0006\u001e"}, d2 = {"Lcom/transsion/vishatransfer/data/DeviceInfo;", "Lcom/transsion/vishatransfer/socket/TransferMessage;", "", "deviceName", MethodDecl.initName, "(Ljava/lang/String;)V", "", "position", "Lzfb;", "progress", "(J)V", "complete", "()V", "beforeSend", "component1", "()Ljava/lang/String;", "copy", "(Ljava/lang/String;)Lcom/transsion/vishatransfer/data/DeviceInfo;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getDeviceName", "setDeviceName", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeviceInfo extends TransferMessage {
    private String deviceName;

    /* JADX WARN: Multi-variable type inference failed */
    public DeviceInfo() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static DeviceInfo copy$default(DeviceInfo deviceInfo, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deviceInfo.deviceName;
        }
        return deviceInfo.copy(str);
    }

    @Override
    public void beforeSend() {
    }

    @Override
    public void complete() {
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final DeviceInfo copy(String deviceName) {
        y45.j(deviceName, "deviceName");
        return new DeviceInfo(deviceName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DeviceInfo) && y45.e(this.deviceName, ((DeviceInfo) other).deviceName);
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public int hashCode() {
        return this.deviceName.hashCode();
    }

    @Override
    public void progress(long position) {
    }

    public final void setDeviceName(String str) {
        y45.j(str, "<set-?>");
        this.deviceName = str;
    }

    @Override
    public String toString() {
        return "DeviceInfo(deviceName=" + this.deviceName + ")";
    }

    public DeviceInfo(String str) {
        y45.j(str, "deviceName");
        this.deviceName = str;
    }

    public DeviceInfo(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }
}

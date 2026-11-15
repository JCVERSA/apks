package com.transsion.vishatransfer.data;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 -2\u00020\u0001:\u0001-BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003JG\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010(\u001a\u00020\u00072\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006."}, d2 = {"Lcom/transsion/vishatransfer/data/Conversation;", "", "type", "", "totalFileSize", "", "isAgree", "", "fileNum", "totalNum", "deviceInfo", "Lcom/transsion/vishatransfer/data/DeviceInfo;", MethodDecl.initName, "(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;)V", "getType", "()I", "setType", "(I)V", "getTotalFileSize", "()J", "setTotalFileSize", "(J)V", "()Z", "setAgree", "(Z)V", "getFileNum", "setFileNum", "getTotalNum", "setTotalNum", "getDeviceInfo", "()Lcom/transsion/vishatransfer/data/DeviceInfo;", "setDeviceInfo", "(Lcom/transsion/vishatransfer/data/DeviceInfo;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "", "Companion", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Conversation {
    public static final int CLIENT_ASK = 0;
    public static final int CLIENT_CANCEL_TRANSLATION = 5;
    public static final int CLIENT_SEND_FILE_SIZE = 1;
    public static final int SERVICE_ANSWER_AGREE = 2;
    public static final int SERVICE_CANCEL_TRANSLATION = 4;
    public static final int SERVICE_READY_TRANSLATION = 3;
    public static final int SERVICE_REFUSE_CONNECT = 6;
    private DeviceInfo deviceInfo;
    private int fileNum;
    private boolean isAgree;
    private long totalFileSize;
    private int totalNum;
    private int type;

    public Conversation(int i, long j, boolean z, int i2, int i3, DeviceInfo deviceInfo) {
        this.type = i;
        this.totalFileSize = j;
        this.isAgree = z;
        this.fileNum = i2;
        this.totalNum = i3;
        this.deviceInfo = deviceInfo;
    }

    public static Conversation copy$default(Conversation conversation, int i, long j, boolean z, int i2, int i3, DeviceInfo deviceInfo, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = conversation.type;
        }
        if ((i4 & 2) != 0) {
            j = conversation.totalFileSize;
        }
        long j2 = j;
        if ((i4 & 4) != 0) {
            z = conversation.isAgree;
        }
        boolean z2 = z;
        if ((i4 & 8) != 0) {
            i2 = conversation.fileNum;
        }
        int i5 = i2;
        if ((i4 & 16) != 0) {
            i3 = conversation.totalNum;
        }
        int i6 = i3;
        if ((i4 & 32) != 0) {
            deviceInfo = conversation.deviceInfo;
        }
        return conversation.copy(i, j2, z2, i5, i6, deviceInfo);
    }

    public final int getType() {
        return this.type;
    }

    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public final boolean getIsAgree() {
        return this.isAgree;
    }

    public final int getFileNum() {
        return this.fileNum;
    }

    public final int getTotalNum() {
        return this.totalNum;
    }

    public final DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public final Conversation copy(int type, long totalFileSize, boolean isAgree, int fileNum, int totalNum, DeviceInfo deviceInfo) {
        return new Conversation(type, totalFileSize, isAgree, fileNum, totalNum, deviceInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Conversation)) {
            return false;
        }
        Conversation conversation = (Conversation) other;
        return this.type == conversation.type && this.totalFileSize == conversation.totalFileSize && this.isAgree == conversation.isAgree && this.fileNum == conversation.fileNum && this.totalNum == conversation.totalNum && y45.e(this.deviceInfo, conversation.deviceInfo);
    }

    public final DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public final int getFileNum() {
        return this.fileNum;
    }

    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public final int getTotalNum() {
        return this.totalNum;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = ((((((((Integer.hashCode(this.type) * 31) + Long.hashCode(this.totalFileSize)) * 31) + Boolean.hashCode(this.isAgree)) * 31) + Integer.hashCode(this.fileNum)) * 31) + Integer.hashCode(this.totalNum)) * 31;
        DeviceInfo deviceInfo = this.deviceInfo;
        return iHashCode + (deviceInfo == null ? 0 : deviceInfo.hashCode());
    }

    public final boolean isAgree() {
        return this.isAgree;
    }

    public final void setAgree(boolean z) {
        this.isAgree = z;
    }

    public final void setDeviceInfo(DeviceInfo deviceInfo) {
        this.deviceInfo = deviceInfo;
    }

    public final void setFileNum(int i) {
        this.fileNum = i;
    }

    public final void setTotalFileSize(long j) {
        this.totalFileSize = j;
    }

    public final void setTotalNum(int i) {
        this.totalNum = i;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "Conversation(type=" + this.type + ", totalFileSize=" + this.totalFileSize + ", isAgree=" + this.isAgree + ", fileNum=" + this.fileNum + ", totalNum=" + this.totalNum + ", deviceInfo=" + this.deviceInfo + ")";
    }

    public Conversation(int i, long j, boolean z, int i2, int i3, DeviceInfo deviceInfo, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i4 & 2) != 0 ? 0L : j, (i4 & 4) != 0 ? false : z, (i4 & 8) != 0 ? 0 : i2, (i4 & 16) == 0 ? i3 : 0, (i4 & 32) != 0 ? null : deviceInfo);
    }
}

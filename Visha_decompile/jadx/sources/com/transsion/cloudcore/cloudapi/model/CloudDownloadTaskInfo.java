package com.transsion.cloudcore.cloudapi.model;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u001b\u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;", "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;", "taskId", "", Progress.FILE_NAME, "fileSize", "", "fileId", "savePath", "checkFileHash", "", "fileHash", "status", "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;", "currentBytes", "createTime", "updateTime", "errorInfo", "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V", "getFileId", "()Ljava/lang/String;", "getSavePath", "getCheckFileHash", "()Z", "getFileHash", "toString", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudDownloadTaskInfo extends TransferTaskInfo {
    private final boolean checkFileHash;
    private final String fileHash;
    private final String fileId;
    private final String savePath;

    public CloudDownloadTaskInfo(String str, String str2, long j, String str3, String str4, boolean z, String str5, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, str3, str4, (i & 32) != 0 ? true : z, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? TransferTaskStatus.WAITING : transferTaskStatus, (i & 256) != 0 ? 0L : j2, (i & 512) != 0 ? System.currentTimeMillis() : j3, (i & 1024) != 0 ? System.currentTimeMillis() : j4, (i & 2048) != 0 ? null : transferErrorInfo);
    }

    public final boolean getCheckFileHash() {
        return this.checkFileHash;
    }

    public final String getFileHash() {
        return this.fileHash;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getSavePath() {
        return this.savePath;
    }

    public String toString() {
        return "CloudDownloadTaskInfo(taskId='" + getTaskId() + "', fileName='" + getFileName() + "', fileSize=" + getFileSize() + ", fileId='" + this.fileId + "', savePath='" + this.savePath + "', checkFileHash=" + this.checkFileHash + ", fileHash=" + this.fileHash + ", status=" + getStatus() + ", currentBytes=" + getCurrentBytes() + ", createTime=" + getCreateTime() + ", updateTime=" + getUpdateTime() + ", errorInfo=" + getErrorInfo() + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudDownloadTaskInfo(String str, String str2, long j, String str3, String str4, boolean z, String str5, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo) {
        super(str, str2, j, transferTaskStatus, j2, j3, j4, transferErrorInfo);
        y45.j(str, "taskId");
        y45.j(str2, Progress.FILE_NAME);
        y45.j(str3, "fileId");
        y45.j(str4, "savePath");
        y45.j(transferTaskStatus, "status");
        this.fileId = str3;
        this.savePath = str4;
        this.checkFileHash = z;
        this.fileHash = str5;
    }
}

package com.transsion.cloud_drive.transfer.api.model;

import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;", "", "taskId", "", "(Ljava/lang/String;)V", "fileSize", "", "getFileSize", "()J", "setFileSize", "(J)V", "status", "Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;", "getStatus", "()Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;", "setStatus", "(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V", "getTaskId", "()Ljava/lang/String;", "transferredSize", "getTransferredSize", "setTransferredSize", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class BaseTaskInfo {
    private long fileSize;
    private TransferStatus status;
    private final String taskId;
    private long transferredSize;

    public BaseTaskInfo(String str) {
        y45.j(str, "taskId");
        this.taskId = str;
        this.status = TransferStatus.IDLE;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final TransferStatus getStatus() {
        return this.status;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final long getTransferredSize() {
        return this.transferredSize;
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setStatus(TransferStatus transferStatus) {
        y45.j(transferStatus, "<set-?>");
        this.status = transferStatus;
    }

    public final void setTransferredSize(long j) {
        this.transferredSize = j;
    }
}

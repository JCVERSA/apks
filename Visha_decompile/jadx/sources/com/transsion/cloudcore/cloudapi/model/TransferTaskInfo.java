package com.transsion.cloudcore.cloudapi.model;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0016\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;", "", "taskId", "", Progress.FILE_NAME, "fileSize", "", "status", "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;", "currentBytes", "createTime", "updateTime", "errorInfo", "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V", "getTaskId", "()Ljava/lang/String;", "setTaskId", "(Ljava/lang/String;)V", "getFileName", "setFileName", "getFileSize", "()J", "setFileSize", "(J)V", "getStatus", "()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;", "setStatus", "(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V", "getCurrentBytes", "setCurrentBytes", "getCreateTime", "setCreateTime", "getUpdateTime", "setUpdateTime", "getErrorInfo", "()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;", "setErrorInfo", "(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class TransferTaskInfo {
    private long createTime;
    private long currentBytes;
    private TransferErrorInfo errorInfo;
    private String fileName;
    private long fileSize;
    private TransferTaskStatus status;
    private String taskId;
    private long updateTime;

    public TransferTaskInfo(String str, String str2, long j, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo) {
        y45.j(str, "taskId");
        y45.j(str2, Progress.FILE_NAME);
        y45.j(transferTaskStatus, "status");
        this.taskId = str;
        this.fileName = str2;
        this.fileSize = j;
        this.status = transferTaskStatus;
        this.currentBytes = j2;
        this.createTime = j3;
        this.updateTime = j4;
        this.errorInfo = transferErrorInfo;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final long getCurrentBytes() {
        return this.currentBytes;
    }

    public final TransferErrorInfo getErrorInfo() {
        return this.errorInfo;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final TransferTaskStatus getStatus() {
        return this.status;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final void setCreateTime(long j) {
        this.createTime = j;
    }

    public final void setCurrentBytes(long j) {
        this.currentBytes = j;
    }

    public final void setErrorInfo(TransferErrorInfo transferErrorInfo) {
        this.errorInfo = transferErrorInfo;
    }

    public final void setFileName(String str) {
        y45.j(str, "<set-?>");
        this.fileName = str;
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setStatus(TransferTaskStatus transferTaskStatus) {
        y45.j(transferTaskStatus, "<set-?>");
        this.status = transferTaskStatus;
    }

    public final void setTaskId(String str) {
        y45.j(str, "<set-?>");
        this.taskId = str;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public TransferTaskInfo(String str, String str2, long j, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, (i & 8) != 0 ? TransferTaskStatus.WAITING : transferTaskStatus, (i & 16) != 0 ? 0L : j2, (i & 32) != 0 ? System.currentTimeMillis() : j3, (i & 64) != 0 ? System.currentTimeMillis() : j4, (i & 128) != 0 ? null : transferErrorInfo);
    }
}

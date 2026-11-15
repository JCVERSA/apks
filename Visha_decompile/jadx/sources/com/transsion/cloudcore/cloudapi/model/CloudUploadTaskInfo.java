package com.transsion.cloudcore.cloudapi.model;

import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.FileUserTag;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010 \u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0017\"\u0004\b\u001a\u0010\u001bR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;", "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;", "taskId", "", Progress.FILE_NAME, "fileSize", "", "localFilePath", "parentId", "fileId", "tags", "", "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;", "status", "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;", "currentBytes", "createTime", "updateTime", "errorInfo", "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V", "getLocalFilePath", "()Ljava/lang/String;", "getParentId", "getFileId", "setFileId", "(Ljava/lang/String;)V", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "toString", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudUploadTaskInfo extends TransferTaskInfo {
    private String fileId;
    private final String localFilePath;
    private final String parentId;
    private List<FileUserTag> tags;

    public CloudUploadTaskInfo(String str, String str2, long j, String str3, String str4, String str5, List list, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j, str3, str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? y71.k() : list, (i & 128) != 0 ? TransferTaskStatus.WAITING : transferTaskStatus, (i & 256) != 0 ? 0L : j2, (i & 512) != 0 ? System.currentTimeMillis() : j3, (i & 1024) != 0 ? System.currentTimeMillis() : j4, (i & 2048) != 0 ? null : transferErrorInfo);
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getLocalFilePath() {
        return this.localFilePath;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final List<FileUserTag> getTags() {
        return this.tags;
    }

    public final void setFileId(String str) {
        this.fileId = str;
    }

    public final void setTags(List<FileUserTag> list) {
        y45.j(list, "<set-?>");
        this.tags = list;
    }

    public String toString() {
        return "CloudUploadTaskInfo(taskId='" + getTaskId() + "', fileName='" + getFileName() + "', fileSize=" + getFileSize() + ", localFilePath='" + this.localFilePath + "', parentId='" + this.parentId + "', fileId=" + this.fileId + ", status=" + getStatus() + ", currentBytes=" + getCurrentBytes() + ", createTime=" + getCreateTime() + ", updateTime=" + getUpdateTime() + ", errorInfo=" + getErrorInfo() + "tags=" + this.tags + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudUploadTaskInfo(String str, String str2, long j, String str3, String str4, String str5, List<FileUserTag> list, TransferTaskStatus transferTaskStatus, long j2, long j3, long j4, TransferErrorInfo transferErrorInfo) {
        super(str, str2, j, transferTaskStatus, j2, j3, j4, transferErrorInfo);
        y45.j(str, "taskId");
        y45.j(str2, Progress.FILE_NAME);
        y45.j(str3, "localFilePath");
        y45.j(str4, "parentId");
        y45.j(list, "tags");
        y45.j(transferTaskStatus, "status");
        this.localFilePath = str3;
        this.parentId = str4;
        this.fileId = str5;
        this.tags = list;
    }
}

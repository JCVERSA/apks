package com.transsion.cloud_drive.transfer.api.model;

import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.base.api.model.FileInfo;
import com.transsion.cloud_drive.base.api.model.FileUserTag;
import defpackage.y45;
import defpackage.y71;
import java.io.File;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\b\u0010#\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\b\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\bR \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;", "Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;", "taskId", "", "file", "parentId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFile", "()Ljava/lang/String;", "fileId", "getFileId", "setFileId", "(Ljava/lang/String;)V", "fileInfo", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "getFileInfo", "()Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "setFileInfo", "(Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V", Progress.FILE_NAME, "getFileName", "hasTranscodeTask", "", "getHasTranscodeTask", "()Z", "setHasTranscodeTask", "(Z)V", "getParentId", "tags", "", "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "toString", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UploadTaskInfo extends BaseTaskInfo {
    private final String file;
    private String fileId;
    private FileInfo fileInfo;
    private final String fileName;
    private boolean hasTranscodeTask;
    private final String parentId;
    private List<FileUserTag> tags;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadTaskInfo(String str, String str2, String str3) {
        super(str);
        y45.j(str, "taskId");
        y45.j(str2, "file");
        y45.j(str3, "parentId");
        this.file = str2;
        this.parentId = str3;
        String name = new File(str2).getName();
        y45.i(name, "getName(...)");
        this.fileName = name;
        this.fileId = "";
        this.tags = y71.k();
        setFileSize(new File(str2).length());
    }

    public final String getFile() {
        return this.file;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final FileInfo getFileInfo() {
        return this.fileInfo;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final boolean getHasTranscodeTask() {
        return this.hasTranscodeTask;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final List<FileUserTag> getTags() {
        return this.tags;
    }

    public final void setFileId(String str) {
        y45.j(str, "<set-?>");
        this.fileId = str;
    }

    public final void setFileInfo(FileInfo fileInfo) {
        this.fileInfo = fileInfo;
    }

    public final void setHasTranscodeTask(boolean z) {
        this.hasTranscodeTask = z;
    }

    public final void setTags(List<FileUserTag> list) {
        y45.j(list, "<set-?>");
        this.tags = list;
    }

    public String toString() {
        return "UploadTaskInfo(file='" + this.file + "', parentId='" + this.parentId + "', fileName='" + this.fileName + "', fileId='" + this.fileId + "')";
    }
}

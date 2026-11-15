package com.transsion.cloud_drive.transfer.api.model;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\b\u0010\u001a\u001a\u00020\u0003H\u0016R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\n\"\u0004\b\u0016\u0010\fR\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\n\"\u0004\b\u0019\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;", "Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;", "taskId", "", "fileId", Progress.FILE_NAME, "path", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "contentHash", "getContentHash", "()Ljava/lang/String;", "setContentHash", "(Ljava/lang/String;)V", "crcAlgorithm", "getCrcAlgorithm", "setCrcAlgorithm", "getFileId", "getFileName", "setFileName", "getPath", "tempFilePath", "getTempFilePath", "setTempFilePath", "url", "getUrl", "setUrl", "toString", "cloud-drive-transfer_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DownloadTaskInfo extends BaseTaskInfo {
    private String contentHash;
    private String crcAlgorithm;
    private final String fileId;
    private String fileName;
    private final String path;
    private String tempFilePath;
    private String url;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadTaskInfo(String str, String str2, String str3, String str4) {
        super(str);
        y45.j(str, "taskId");
        y45.j(str2, "fileId");
        y45.j(str3, Progress.FILE_NAME);
        y45.j(str4, "path");
        this.fileId = str2;
        this.fileName = str3;
        this.path = str4;
        this.url = "";
        this.crcAlgorithm = "";
        this.contentHash = "";
        this.tempFilePath = "";
    }

    public final String getContentHash() {
        return this.contentHash;
    }

    public final String getCrcAlgorithm() {
        return this.crcAlgorithm;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getTempFilePath() {
        return this.tempFilePath;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setContentHash(String str) {
        y45.j(str, "<set-?>");
        this.contentHash = str;
    }

    public final void setCrcAlgorithm(String str) {
        y45.j(str, "<set-?>");
        this.crcAlgorithm = str;
    }

    public final void setFileName(String str) {
        y45.j(str, "<set-?>");
        this.fileName = str;
    }

    public final void setTempFilePath(String str) {
        y45.j(str, "<set-?>");
        this.tempFilePath = str;
    }

    public final void setUrl(String str) {
        y45.j(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "DownloadTaskInfo(fileId='" + this.fileId + "', fileName='" + this.fileName + "', path='" + this.path + "', url='" + this.url + "',crcAlgorithm='" + this.crcAlgorithm + "', contentHash='" + this.contentHash + "', tempFilePath='" + this.tempFilePath + "')";
    }
}

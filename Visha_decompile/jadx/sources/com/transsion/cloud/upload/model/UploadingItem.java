package com.transsion.cloud.upload.model;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/cloud/upload/model/UploadingItem;", "", MethodDecl.initName, "()V", Progress.FILE_PATH, "", "getFilePath", "()Ljava/lang/String;", "setFilePath", "(Ljava/lang/String;)V", Progress.FILE_NAME, "getFileName", "setFileName", Progress.TOTAL_SIZE, "", "mediaId", "", "duration", "fileType", "getFileType", "()I", "setFileType", "(I)V", "Companion", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UploadingItem {

    public static final Companion INSTANCE = new Companion(null);
    public long duration;
    public String fileName;
    public String filePath;
    private int fileType;
    public int mediaId;
    public long totalSize;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t¨\u0006\r"}, d2 = {"Lcom/transsion/cloud/upload/model/UploadingItem$Companion;", "", MethodDecl.initName, "()V", "createUploadProgressInfo", "Lcom/transsion/cloud/upload/model/UploadProgressInfo;", "uploadingItem", "Lcom/transsion/cloud/upload/model/UploadingItem;", "generateTag", "", "mediaId", "", Progress.FILE_NAME, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UploadProgressInfo createUploadProgressInfo(UploadingItem uploadingItem) {
            y45.j(uploadingItem, "uploadingItem");
            UploadProgressInfo uploadProgressInfo = new UploadProgressInfo();
            uploadProgressInfo.tag = generateTag(uploadingItem.mediaId, uploadingItem.getFileName());
            uploadProgressInfo.setFilePath(uploadingItem.getFilePath());
            uploadProgressInfo.fileName = uploadingItem.getFileName();
            uploadProgressInfo.totalSize = uploadingItem.totalSize;
            uploadProgressInfo.status = 0;
            uploadProgressInfo.duration = uploadingItem.duration;
            uploadProgressInfo.mediaId = uploadingItem.mediaId;
            return uploadProgressInfo;
        }

        public final String generateTag(int mediaId, String fileName) {
            y45.j(fileName, Progress.FILE_NAME);
            return "upload_" + mediaId + "_" + fileName + "_" + System.currentTimeMillis();
        }

        private Companion() {
        }
    }

    public final String getFileName() {
        String str = this.fileName;
        if (str != null) {
            return str;
        }
        y45.B(Progress.FILE_NAME);
        return null;
    }

    public final String getFilePath() {
        String str = this.filePath;
        if (str != null) {
            return str;
        }
        y45.B(Progress.FILE_PATH);
        return null;
    }

    public final int getFileType() {
        return this.fileType;
    }

    public final void setFileName(String str) {
        y45.j(str, "<set-?>");
        this.fileName = str;
    }

    public final void setFilePath(String str) {
        y45.j(str, "<set-?>");
        this.filePath = str;
    }

    public final void setFileType(int i) {
        this.fileType = i;
    }
}

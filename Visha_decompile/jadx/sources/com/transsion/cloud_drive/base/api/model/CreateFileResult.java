package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B-\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R$\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\n\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR$\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\n\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\fR*\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\n\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010%\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b&\u0010\n\u001a\u0004\b'\u0010\u0013\"\u0004\b(\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\fR$\u0010*\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b+\u0010\n\u001a\u0004\b,\u0010\f\"\u0004\b-\u0010\u000e¨\u0006."}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;", "", "fileId", "", "name", "parentId", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "crc", "getCrc$annotations", "()V", "getCrc", "()Ljava/lang/String;", "setCrc", "(Ljava/lang/String;)V", "exist", "", "getExist$annotations", "getExist", "()Z", "setExist", "(Z)V", "getFileId", "hasTranscodeTask", "getHasTranscodeTask$annotations", "getHasTranscodeTask", "setHasTranscodeTask", "getName", "getParentId", "partInfoList", "", "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;", "getPartInfoList$annotations", "getPartInfoList", "()Ljava/util/List;", "setPartInfoList", "(Ljava/util/List;)V", "rapidUpload", "getRapidUpload$annotations", "getRapidUpload", "setRapidUpload", "getType", "uploadId", "getUploadId$annotations", "getUploadId", "setUploadId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateFileResult {
    private String crc;
    private boolean exist;
    private final String fileId;
    private boolean hasTranscodeTask;
    private final String name;
    private final String parentId;
    private List<UploadPartInfo> partInfoList;
    private boolean rapidUpload;
    private final String type;
    private String uploadId;

    public CreateFileResult(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "file_name") String str2, @v95(name = "parent_file_id") String str3, @v95(name = "type") String str4) {
        y45.j(str, "fileId");
        y45.j(str2, "name");
        y45.j(str3, "parentId");
        y45.j(str4, "type");
        this.fileId = str;
        this.name = str2;
        this.parentId = str3;
        this.type = str4;
        this.uploadId = "";
        this.crc = "";
        this.partInfoList = y71.k();
    }

    @v95(name = "crc")
    public static void getCrc$annotations() {
    }

    @v95(name = "exist")
    public static void getExist$annotations() {
    }

    @v95(name = "has_transcode_task")
    public static void getHasTranscodeTask$annotations() {
    }

    @v95(name = "part_info_list")
    public static void getPartInfoList$annotations() {
    }

    @v95(name = "rapid_upload")
    public static void getRapidUpload$annotations() {
    }

    @v95(name = "upload_id")
    public static void getUploadId$annotations() {
    }

    public final String getCrc() {
        return this.crc;
    }

    public final boolean getExist() {
        return this.exist;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final boolean getHasTranscodeTask() {
        return this.hasTranscodeTask;
    }

    public final String getName() {
        return this.name;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final List<UploadPartInfo> getPartInfoList() {
        return this.partInfoList;
    }

    public final boolean getRapidUpload() {
        return this.rapidUpload;
    }

    public final String getType() {
        return this.type;
    }

    public final String getUploadId() {
        return this.uploadId;
    }

    public final void setCrc(String str) {
        y45.j(str, "<set-?>");
        this.crc = str;
    }

    public final void setExist(boolean z) {
        this.exist = z;
    }

    public final void setHasTranscodeTask(boolean z) {
        this.hasTranscodeTask = z;
    }

    public final void setPartInfoList(List<UploadPartInfo> list) {
        y45.j(list, "<set-?>");
        this.partInfoList = list;
    }

    public final void setRapidUpload(boolean z) {
        this.rapidUpload = z;
    }

    public final void setUploadId(String str) {
        y45.j(str, "<set-?>");
        this.uploadId = str;
    }
}

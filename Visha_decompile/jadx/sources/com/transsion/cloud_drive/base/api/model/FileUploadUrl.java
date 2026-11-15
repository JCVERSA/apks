package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B)\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileUploadUrl;", "", "uploadId", "", "fileId", "partInfoList", "", "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getFileId", "()Ljava/lang/String;", "getPartInfoList", "()Ljava/util/List;", "getUploadId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileUploadUrl {
    private final String fileId;
    private final List<UploadPartInfo> partInfoList;
    private final String uploadId;

    public FileUploadUrl(@v95(name = "upload_id") String str, @v95(name = FontsContractCompat.Columns.FILE_ID) String str2, @v95(name = "part_info_list") List<UploadPartInfo> list) {
        y45.j(str, "uploadId");
        y45.j(str2, "fileId");
        y45.j(list, "partInfoList");
        this.uploadId = str;
        this.fileId = str2;
        this.partInfoList = list;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final List<UploadPartInfo> getPartInfoList() {
        return this.partInfoList;
    }

    public final String getUploadId() {
        return this.uploadId;
    }

    public FileUploadUrl(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? y71.k() : list);
    }
}

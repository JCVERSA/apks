package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R*\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/RestoreRecycleBinFileRequest;", "", "fileId", "", "(Ljava/lang/String;)V", "fields", "", "getFields$annotations", "()V", "getFields", "()Ljava/util/List;", "setFields", "(Ljava/util/List;)V", "getFileId", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RestoreRecycleBinFileRequest {
    private List<String> fields;
    private final String fileId;

    public RestoreRecycleBinFileRequest(@v95(name = FontsContractCompat.Columns.FILE_ID) String str) {
        y45.j(str, "fileId");
        this.fileId = str;
        this.fields = y71.n("url", "id_path", "name_path");
    }

    @v95(name = "fields")
    public static void getFields$annotations() {
    }

    public final List<String> getFields() {
        return this.fields;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final void setFields(List<String> list) {
        y45.j(list, "<set-?>");
        this.fields = list;
    }
}

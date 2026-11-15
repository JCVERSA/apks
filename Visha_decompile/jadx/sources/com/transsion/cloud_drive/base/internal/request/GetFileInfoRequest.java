package com.transsion.cloud_drive.base.internal.request;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0010\u0018\u00002\u00020\u0001B'\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R*\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;", "", "fileId", "", "width", "", "height", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "fields", "", "getFields$annotations", "()V", "getFields", "()Ljava/util/List;", "setFields", "(Ljava/util/List;)V", "getFileId", "()Ljava/lang/String;", "getHeight", "()Ljava/lang/Integer;", "setHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getWidth", "setWidth", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetFileInfoRequest {
    private List<String> fields;
    private final String fileId;
    private Integer height;
    private Integer width;

    public GetFileInfoRequest(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "width") Integer num, @v95(name = "height") Integer num2) {
        y45.j(str, "fileId");
        this.fileId = str;
        this.width = num;
        this.height = num2;
        this.fields = y71.n("url", "id_path", "video_metadata", "name_path", "thumbnail");
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

    public final Integer getHeight() {
        return this.height;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final void setFields(List<String> list) {
        y45.j(list, "<set-?>");
        this.fields = list;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public GetFileInfoRequest(String str, Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : num2);
    }
}

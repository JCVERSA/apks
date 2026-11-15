package com.transsion.cloud_drive.base.internal.request;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.cloud_drive.base.api.model.FileUserTag;
import com.transsion.cloud_drive.base.api.model.UploadPartInfo;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R$\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR&\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\t\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001a\u0010\t\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\t\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u000bR*\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010\t\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R$\u0010.\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b/\u0010\t\u001a\u0004\b0\u0010\u000b\"\u0004\b1\u0010\rR$\u00102\u001a\u0002038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b4\u0010\t\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u000bR*\u0010:\u001a\b\u0012\u0004\u0012\u00020;0'8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b<\u0010\t\u001a\u0004\b=\u0010+\"\u0004\b>\u0010-¨\u0006?"}, d2 = {"Lcom/transsion/cloud_drive/base/internal/request/CreateFileRequest;", "", "name", "", "parentId", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "contentHash", "getContentHash$annotations", "()V", "getContentHash", "()Ljava/lang/String;", "setContentHash", "(Ljava/lang/String;)V", DataTypes.OBJ_CONTENT_TYPE, "getContentType$annotations", "getContentType", "setContentType", "localCreateTime", "Ljava/time/LocalDateTime;", "getLocalCreateTime$annotations", "getLocalCreateTime", "()Ljava/time/LocalDateTime;", "setLocalCreateTime", "(Ljava/time/LocalDateTime;)V", "localModifyTime", "getLocalModifyTime$annotations", "getLocalModifyTime", "setLocalModifyTime", "getName", "parallelUpload", "", "getParallelUpload$annotations", "getParallelUpload", "()Z", "setParallelUpload", "(Z)V", "getParentId", "partInfoList", "", "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;", "getPartInfoList$annotations", "getPartInfoList", "()Ljava/util/List;", "setPartInfoList", "(Ljava/util/List;)V", "preHash", "getPreHash$annotations", "getPreHash", "setPreHash", PlayAudioData.TAG_SIZE, "", "getSize$annotations", "getSize", "()J", "setSize", "(J)V", "getType", "userTags", "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;", "getUserTags$annotations", "getUserTags", "setUserTags", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateFileRequest {
    private String contentHash;
    private String contentType;
    private LocalDateTime localCreateTime;
    private LocalDateTime localModifyTime;
    private final String name;
    private boolean parallelUpload;
    private final String parentId;
    private List<UploadPartInfo> partInfoList;
    private String preHash;
    private long size;
    private final String type;
    private List<FileUserTag> userTags;

    public CreateFileRequest(@v95(name = "name") String str, @v95(name = "parent_file_id") String str2, @v95(name = "type") String str3) {
        y45.j(str, "name");
        y45.j(str2, "parentId");
        y45.j(str3, "type");
        this.name = str;
        this.parentId = str2;
        this.type = str3;
        this.contentType = "application/oct-stream";
        this.userTags = y71.k();
        this.contentHash = "";
        this.preHash = "";
        this.partInfoList = y71.k();
    }

    @v95(name = "content_hash")
    public static void getContentHash$annotations() {
    }

    @v95(name = "content_type")
    public static void getContentType$annotations() {
    }

    @v95(name = "local_created_at")
    public static void getLocalCreateTime$annotations() {
    }

    @v95(name = "local_modified_at")
    public static void getLocalModifyTime$annotations() {
    }

    @v95(name = "parallel_upload")
    public static void getParallelUpload$annotations() {
    }

    @v95(name = "part_info_list")
    public static void getPartInfoList$annotations() {
    }

    @v95(name = "pre_hash")
    public static void getPreHash$annotations() {
    }

    @v95(name = PlayAudioData.TAG_SIZE)
    public static void getSize$annotations() {
    }

    @v95(name = "user_tags")
    public static void getUserTags$annotations() {
    }

    public final String getContentHash() {
        return this.contentHash;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final LocalDateTime getLocalCreateTime() {
        return this.localCreateTime;
    }

    public final LocalDateTime getLocalModifyTime() {
        return this.localModifyTime;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getParallelUpload() {
        return this.parallelUpload;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final List<UploadPartInfo> getPartInfoList() {
        return this.partInfoList;
    }

    public final String getPreHash() {
        return this.preHash;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getType() {
        return this.type;
    }

    public final List<FileUserTag> getUserTags() {
        return this.userTags;
    }

    public final void setContentHash(String str) {
        y45.j(str, "<set-?>");
        this.contentHash = str;
    }

    public final void setContentType(String str) {
        y45.j(str, "<set-?>");
        this.contentType = str;
    }

    public final void setLocalCreateTime(LocalDateTime localDateTime) {
        this.localCreateTime = localDateTime;
    }

    public final void setLocalModifyTime(LocalDateTime localDateTime) {
        this.localModifyTime = localDateTime;
    }

    public final void setParallelUpload(boolean z) {
        this.parallelUpload = z;
    }

    public final void setPartInfoList(List<UploadPartInfo> list) {
        y45.j(list, "<set-?>");
        this.partInfoList = list;
    }

    public final void setPreHash(String str) {
        y45.j(str, "<set-?>");
        this.preHash = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setUserTags(List<FileUserTag> list) {
        y45.j(list, "<set-?>");
        this.userTags = list;
    }
}

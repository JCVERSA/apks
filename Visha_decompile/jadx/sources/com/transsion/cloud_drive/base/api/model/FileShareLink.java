package com.transsion.cloud_drive.base.api.model;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b0\u0018\u00002\u00020\u0001B£\u0001\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0003\u0012\u000e\b\u0003\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b\u0012\b\b\u0003\u0010\t\u001a\u00020\u0003\u0012\b\b\u0003\u0010\n\u001a\u00020\u000b\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0003\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0003\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0003\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0003\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0003\u0010\u0014\u001a\u00020\u0010\u0012\b\b\u0003\u0010\u0015\u001a\u00020\u0003¢\u0006\u0002\u0010\u0016R\u0011\u0010\u0014\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010!R\u0011\u0010\u0012\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0018R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001dR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R$\u0010/\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b0\u0010\u001b\u001a\u0004\b1\u0010,\"\u0004\b2\u00103R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u0018R\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u0010!R\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u0010!R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b8\u0010!R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010!R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b:\u0010!R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b;\u0010!R\u001e\u0010<\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010\u001b\u001a\u0004\b>\u0010\u001dR\u0011\u0010\u0013\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u0018¨\u0006@"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileShareLink;", "", "shareId", "", "shareUrl", "sharePwd", "shareName", "fileIds", "", "description", "expired", "", "expiration", "Ljava/time/LocalDateTime;", "status", "previewCount", "", "saveCount", "downloadCount", "videoPreviewCount", "accessCount", TtmlNode.TAG_REGION, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;)V", "getAccessCount", "()I", "createTime", "getCreateTime$annotations", "()V", "getCreateTime", "()Ljava/time/LocalDateTime;", "creatorId", "getCreatorId$annotations", "getCreatorId", "()Ljava/lang/String;", "setCreatorId", "(Ljava/lang/String;)V", "creatorName", "getCreatorName$annotations", "getCreatorName", "setCreatorName", "getDescription", "getDownloadCount", "getExpiration", "getExpired", "()Z", "getFileIds", "()Ljava/util/List;", "hasPassword", "getHasPassword$annotations", "getHasPassword", "setHasPassword", "(Z)V", "getPreviewCount", "getRegion", "getSaveCount", "getShareId", "getShareName", "getSharePwd", "getShareUrl", "getStatus", "updateTime", "getUpdateTime$annotations", "getUpdateTime", "getVideoPreviewCount", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileShareLink {
    private final int accessCount;
    private final LocalDateTime createTime;
    private String creatorId;
    private String creatorName;
    private final String description;
    private final int downloadCount;
    private final LocalDateTime expiration;
    private final boolean expired;
    private final List<String> fileIds;
    private boolean hasPassword;
    private final int previewCount;
    private final String region;
    private final int saveCount;
    private final String shareId;
    private final String shareName;
    private final String sharePwd;
    private final String shareUrl;
    private final String status;
    private final LocalDateTime updateTime;
    private final int videoPreviewCount;

    public FileShareLink() {
        this(null, null, null, null, null, null, false, null, null, 0, 0, 0, 0, 0, null, 32767, null);
    }

    @v95(name = "created_at")
    public static void getCreateTime$annotations() {
    }

    @v95(name = "creator_id")
    public static void getCreatorId$annotations() {
    }

    @v95(name = "creator_name")
    public static void getCreatorName$annotations() {
    }

    @v95(name = "has_pwd")
    public static void getHasPassword$annotations() {
    }

    @v95(name = "updated_at")
    public static void getUpdateTime$annotations() {
    }

    public final int getAccessCount() {
        return this.accessCount;
    }

    public final LocalDateTime getCreateTime() {
        return this.createTime;
    }

    public final String getCreatorId() {
        return this.creatorId;
    }

    public final String getCreatorName() {
        return this.creatorName;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getDownloadCount() {
        return this.downloadCount;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final boolean getExpired() {
        return this.expired;
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }

    public final boolean getHasPassword() {
        return this.hasPassword;
    }

    public final int getPreviewCount() {
        return this.previewCount;
    }

    public final String getRegion() {
        return this.region;
    }

    public final int getSaveCount() {
        return this.saveCount;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final String getShareName() {
        return this.shareName;
    }

    public final String getSharePwd() {
        return this.sharePwd;
    }

    public final String getShareUrl() {
        return this.shareUrl;
    }

    public final String getStatus() {
        return this.status;
    }

    public final LocalDateTime getUpdateTime() {
        return this.updateTime;
    }

    public final int getVideoPreviewCount() {
        return this.videoPreviewCount;
    }

    public final void setCreatorId(String str) {
        y45.j(str, "<set-?>");
        this.creatorId = str;
    }

    public final void setCreatorName(String str) {
        y45.j(str, "<set-?>");
        this.creatorName = str;
    }

    public final void setHasPassword(boolean z) {
        this.hasPassword = z;
    }

    public FileShareLink(@v95(name = "share_id") String str, @v95(name = "share_url") String str2, @v95(name = "share_pwd") String str3, @v95(name = "share_name") String str4, @v95(name = "file_id_list") List<String> list, @v95(name = "description") String str5, @v95(name = "expired") boolean z, @v95(name = "expiration") LocalDateTime localDateTime, @v95(name = "status") String str6, @v95(name = "preview_count") int i, @v95(name = "save_count") int i2, @v95(name = "download_count") int i3, @v95(name = "video_preview_count") int i4, @v95(name = "access_count") int i5, @v95(name = TtmlNode.TAG_REGION) String str7) {
        y45.j(str, "shareId");
        y45.j(str2, "shareUrl");
        y45.j(str3, "sharePwd");
        y45.j(str4, "shareName");
        y45.j(list, "fileIds");
        y45.j(str5, "description");
        y45.j(str6, "status");
        y45.j(str7, TtmlNode.TAG_REGION);
        this.shareId = str;
        this.shareUrl = str2;
        this.sharePwd = str3;
        this.shareName = str4;
        this.fileIds = list;
        this.description = str5;
        this.expired = z;
        this.expiration = localDateTime;
        this.status = str6;
        this.previewCount = i;
        this.saveCount = i2;
        this.downloadCount = i3;
        this.videoPreviewCount = i4;
        this.accessCount = i5;
        this.region = str7;
        this.creatorId = "";
        this.creatorName = "";
    }

    public FileShareLink(String str, String str2, String str3, String str4, List list, String str5, boolean z, LocalDateTime localDateTime, String str6, int i, int i2, int i3, int i4, int i5, String str7, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? "" : str, (i6 & 2) != 0 ? "" : str2, (i6 & 4) != 0 ? "" : str3, (i6 & 8) != 0 ? "" : str4, (i6 & 16) != 0 ? y71.k() : list, (i6 & 32) != 0 ? "" : str5, (i6 & 64) != 0 ? false : z, (i6 & 128) != 0 ? null : localDateTime, (i6 & 256) != 0 ? "enabled" : str6, (i6 & 512) != 0 ? 0 : i, (i6 & 1024) != 0 ? 0 : i2, (i6 & 2048) != 0 ? 0 : i3, (i6 & 4096) != 0 ? 0 : i4, (i6 & 8192) != 0 ? 0 : i5, (i6 & 16384) == 0 ? str7 : "");
    }
}

package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B-\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J.\u0010a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R&\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R&\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u000b\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R&\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010(\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010\u000b\u001a\u0004\b*\u0010\u0013\"\u0004\b+\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0013R$\u0010-\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b.\u0010\u000b\u001a\u0004\b/\u0010\r\"\u0004\b0\u0010\u000fR$\u00101\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b2\u0010\u000b\u001a\u0004\b3\u0010\u0013\"\u0004\b4\u0010\u0015R$\u00105\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b6\u0010\u000b\u001a\u0004\b7\u0010\u0013\"\u0004\b8\u0010\u0015R$\u00109\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b:\u0010\u000b\u001a\u0004\b;\u0010\u0013\"\u0004\b<\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\u0013R$\u0010>\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b?\u0010\u000b\u001a\u0004\b@\u0010\u0013\"\u0004\bA\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\u0013R&\u0010C\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bE\u0010\u000b\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR&\u0010J\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bL\u0010\u000b\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR&\u0010Q\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bR\u0010\u000b\u001a\u0004\bS\u0010\u001e\"\u0004\bT\u0010 R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bU\u0010\u0013R&\u0010V\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bW\u0010\u000b\u001a\u0004\bX\u0010\u001e\"\u0004\bY\u0010 R&\u0010Z\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\\\u0010\u000b\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`¨\u0006b"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "", "fileId", "", "name", "parentId", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "autoDeleteLeftSec", "", "getAutoDeleteLeftSec$annotations", "()V", "getAutoDeleteLeftSec", "()J", "setAutoDeleteLeftSec", "(J)V", CloudItem.KEY_CATEGORY, "getCategory$annotations", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", DataTypes.OBJ_CONTENT_TYPE, "getContentType$annotations", "getContentType", "setContentType", "createTime", "Ljava/time/LocalDateTime;", "getCreateTime$annotations", "getCreateTime", "()Ljava/time/LocalDateTime;", "setCreateTime", "(Ljava/time/LocalDateTime;)V", "dirInfo", "Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;", "getDirInfo$annotations", "getDirInfo", "()Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;", "setDirInfo", "(Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;)V", "fileExtension", "getFileExtension$annotations", "getFileExtension", "setFileExtension", "getFileId", "fileSize", "getFileSize$annotations", "getFileSize", "setFileSize", "idPath", "getIdPath$annotations", "getIdPath", "setIdPath", "mimeExtension", "getMimeExtension$annotations", "getMimeExtension", "setMimeExtension", Progress.MIMETYPE, "getMimeType$annotations", "getMimeType", "setMimeType", "getName", "namePath", "getNamePath$annotations", "getNamePath", "setNamePath", "getParentId", "thumbnailUrls", "Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;", "getThumbnailUrls$annotations", "getThumbnailUrls", "()Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;", "setThumbnailUrls", "(Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;)V", "thumbnailVersion", "Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;", "getThumbnailVersion$annotations", "getThumbnailVersion", "()Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;", "setThumbnailVersion", "(Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;)V", "trashedTime", "getTrashedTime$annotations", "getTrashedTime", "setTrashedTime", "getType", "updateTime", "getUpdateTime$annotations", "getUpdateTime", "setUpdateTime", "videoMetaInfo", "Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;", "getVideoMetaInfo$annotations", "getVideoMetaInfo", "()Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;", "setVideoMetaInfo", "(Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;)V", "copy", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileInfo {
    private long autoDeleteLeftSec;
    private String category;
    private String contentType;
    private LocalDateTime createTime;
    private FileDirInfo dirInfo;
    private String fileExtension;
    private final String fileId;
    private long fileSize;
    private String idPath;
    private String mimeExtension;
    private String mimeType;
    private final String name;
    private String namePath;
    private final String parentId;
    private FileThumbnail thumbnailUrls;
    private FileThumbnailVersion thumbnailVersion;
    private LocalDateTime trashedTime;
    private final String type;
    private LocalDateTime updateTime;
    private VideoMetaInfo videoMetaInfo;

    public FileInfo(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "name") String str2, @v95(name = "parent_file_id") String str3, @v95(name = "type") String str4) {
        y45.j(str, "fileId");
        y45.j(str2, "name");
        y45.j(str3, "parentId");
        y45.j(str4, "type");
        this.fileId = str;
        this.name = str2;
        this.parentId = str3;
        this.type = str4;
        this.category = "";
        this.idPath = "";
        this.namePath = "";
        this.contentType = "";
        this.mimeType = "";
        this.mimeExtension = "";
        this.fileExtension = "";
    }

    public static FileInfo copy$default(FileInfo fileInfo, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = fileInfo.fileId;
        }
        if ((i & 2) != 0) {
            str2 = fileInfo.name;
        }
        if ((i & 4) != 0) {
            str3 = fileInfo.parentId;
        }
        if ((i & 8) != 0) {
            str4 = fileInfo.type;
        }
        return fileInfo.copy(str, str2, str3, str4);
    }

    @v95(name = "auto_delete_left_sec")
    public static void getAutoDeleteLeftSec$annotations() {
    }

    @v95(name = CloudItem.KEY_CATEGORY)
    public static void getCategory$annotations() {
    }

    @v95(name = "content_type")
    public static void getContentType$annotations() {
    }

    @v95(name = "created_at")
    public static void getCreateTime$annotations() {
    }

    @v95(name = "dir_size_info")
    public static void getDirInfo$annotations() {
    }

    @v95(name = "file_extension")
    public static void getFileExtension$annotations() {
    }

    @v95(name = PlayAudioData.TAG_SIZE)
    public static void getFileSize$annotations() {
    }

    @v95(name = "id_path")
    public static void getIdPath$annotations() {
    }

    @v95(name = "mime_extension")
    public static void getMimeExtension$annotations() {
    }

    @v95(name = "mime_type")
    public static void getMimeType$annotations() {
    }

    @v95(name = "name_path")
    public static void getNamePath$annotations() {
    }

    @v95(name = "thumbnail_urls")
    public static void getThumbnailUrls$annotations() {
    }

    @v95(name = "thumbnail_versions")
    public static void getThumbnailVersion$annotations() {
    }

    @v95(name = "trashed_at")
    public static void getTrashedTime$annotations() {
    }

    @v95(name = "updated_at")
    public static void getUpdateTime$annotations() {
    }

    @v95(name = "video_media_metadata")
    public static void getVideoMetaInfo$annotations() {
    }

    public final FileInfo copy(String fileId, String name, String parentId, String type) {
        y45.j(fileId, "fileId");
        y45.j(name, "name");
        y45.j(parentId, "parentId");
        y45.j(type, "type");
        FileInfo fileInfo = new FileInfo(fileId, name, parentId, type);
        fileInfo.fileSize = this.fileSize;
        fileInfo.category = this.category;
        fileInfo.idPath = this.idPath;
        fileInfo.namePath = this.namePath;
        fileInfo.contentType = this.contentType;
        fileInfo.mimeType = this.mimeType;
        fileInfo.mimeExtension = this.mimeExtension;
        fileInfo.fileExtension = this.fileExtension;
        fileInfo.thumbnailUrls = this.thumbnailUrls;
        fileInfo.thumbnailVersion = this.thumbnailVersion;
        fileInfo.dirInfo = this.dirInfo;
        fileInfo.videoMetaInfo = this.videoMetaInfo;
        fileInfo.trashedTime = this.trashedTime;
        fileInfo.autoDeleteLeftSec = this.autoDeleteLeftSec;
        fileInfo.createTime = this.createTime;
        fileInfo.updateTime = this.updateTime;
        return fileInfo;
    }

    public final long getAutoDeleteLeftSec() {
        return this.autoDeleteLeftSec;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getContentType() {
        return this.contentType;
    }

    public final LocalDateTime getCreateTime() {
        return this.createTime;
    }

    public final FileDirInfo getDirInfo() {
        return this.dirInfo;
    }

    public final String getFileExtension() {
        return this.fileExtension;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final String getIdPath() {
        return this.idPath;
    }

    public final String getMimeExtension() {
        return this.mimeExtension;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNamePath() {
        return this.namePath;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final FileThumbnail getThumbnailUrls() {
        return this.thumbnailUrls;
    }

    public final FileThumbnailVersion getThumbnailVersion() {
        return this.thumbnailVersion;
    }

    public final LocalDateTime getTrashedTime() {
        return this.trashedTime;
    }

    public final String getType() {
        return this.type;
    }

    public final LocalDateTime getUpdateTime() {
        return this.updateTime;
    }

    public final VideoMetaInfo getVideoMetaInfo() {
        return this.videoMetaInfo;
    }

    public final void setAutoDeleteLeftSec(long j) {
        this.autoDeleteLeftSec = j;
    }

    public final void setCategory(String str) {
        y45.j(str, "<set-?>");
        this.category = str;
    }

    public final void setContentType(String str) {
        this.contentType = str;
    }

    public final void setCreateTime(LocalDateTime localDateTime) {
        this.createTime = localDateTime;
    }

    public final void setDirInfo(FileDirInfo fileDirInfo) {
        this.dirInfo = fileDirInfo;
    }

    public final void setFileExtension(String str) {
        y45.j(str, "<set-?>");
        this.fileExtension = str;
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setIdPath(String str) {
        y45.j(str, "<set-?>");
        this.idPath = str;
    }

    public final void setMimeExtension(String str) {
        y45.j(str, "<set-?>");
        this.mimeExtension = str;
    }

    public final void setMimeType(String str) {
        y45.j(str, "<set-?>");
        this.mimeType = str;
    }

    public final void setNamePath(String str) {
        y45.j(str, "<set-?>");
        this.namePath = str;
    }

    public final void setThumbnailUrls(FileThumbnail fileThumbnail) {
        this.thumbnailUrls = fileThumbnail;
    }

    public final void setThumbnailVersion(FileThumbnailVersion fileThumbnailVersion) {
        this.thumbnailVersion = fileThumbnailVersion;
    }

    public final void setTrashedTime(LocalDateTime localDateTime) {
        this.trashedTime = localDateTime;
    }

    public final void setUpdateTime(LocalDateTime localDateTime) {
        this.updateTime = localDateTime;
    }

    public final void setVideoMetaInfo(VideoMetaInfo videoMetaInfo) {
        this.videoMetaInfo = videoMetaInfo;
    }

    public FileInfo(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, str4);
    }
}

package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;", "", "shareId", "", "fileId", "playInfo", "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V", "getFileId", "()Ljava/lang/String;", "getPlayInfo", "()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;", "getShareId", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ShareFileVideoPlayInfoResult {
    private final String fileId;
    private final FileVideoPlayInfo playInfo;
    private final String shareId;

    public ShareFileVideoPlayInfoResult(@v95(name = "share_id") String str, @v95(name = FontsContractCompat.Columns.FILE_ID) String str2, @v95(name = "video_preview_play_info") FileVideoPlayInfo fileVideoPlayInfo) {
        y45.j(str, "shareId");
        y45.j(str2, "fileId");
        y45.j(fileVideoPlayInfo, "playInfo");
        this.shareId = str;
        this.fileId = str2;
        this.playInfo = fileVideoPlayInfo;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final FileVideoPlayInfo getPlayInfo() {
        return this.playInfo;
    }

    public final String getShareId() {
        return this.shareId;
    }
}

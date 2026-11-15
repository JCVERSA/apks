package com.transsion.cloud_drive.base.api.model;

import androidx.core.provider.FontsContractCompat;
import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;", "", "fileId", "", "playInfo", "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;", "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V", "getFileId", "()Ljava/lang/String;", "getPlayInfo", "()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileVideoPlayInfoResult {
    private final String fileId;
    private final FileVideoPlayInfo playInfo;

    public FileVideoPlayInfoResult(@v95(name = FontsContractCompat.Columns.FILE_ID) String str, @v95(name = "video_preview_play_info") FileVideoPlayInfo fileVideoPlayInfo) {
        y45.j(str, "fileId");
        y45.j(fileVideoPlayInfo, "playInfo");
        this.fileId = str;
        this.playInfo = fileVideoPlayInfo;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final FileVideoPlayInfo getPlayInfo() {
        return this.playInfo;
    }
}

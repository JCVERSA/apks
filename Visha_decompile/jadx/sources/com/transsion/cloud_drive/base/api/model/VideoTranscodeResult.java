package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B%\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;", "", "resolution", "", "status", "completedTime", "Ljava/time/LocalDateTime;", "(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V", "getCompletedTime", "()Ljava/time/LocalDateTime;", "getResolution", "()Ljava/lang/String;", "getStatus", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoTranscodeResult {
    private final LocalDateTime completedTime;
    private final String resolution;
    private final String status;

    public VideoTranscodeResult() {
        this(null, null, null, 7, null);
    }

    public final LocalDateTime getCompletedTime() {
        return this.completedTime;
    }

    public final String getResolution() {
        return this.resolution;
    }

    public final String getStatus() {
        return this.status;
    }

    public VideoTranscodeResult(@v95(name = "resolution") String str, @v95(name = "status") String str2, @v95(name = "completed_time") LocalDateTime localDateTime) {
        y45.j(str, "resolution");
        y45.j(str2, "status");
        this.resolution = str;
        this.status = str2;
        this.completedTime = localDateTime;
    }

    public VideoTranscodeResult(String str, String str2, LocalDateTime localDateTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "NONE" : str2, (i & 4) != 0 ? null : localDateTime);
    }
}

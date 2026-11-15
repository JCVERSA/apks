package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\u0018\u00002\u00020\u0001B-\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0003\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;", "", "bitRate", "", "codeName", "", "duration", "", "frameCount", "(ILjava/lang/String;DI)V", "getBitRate", "()I", "getCodeName", "()Ljava/lang/String;", "getDuration", "()D", "getFrameCount", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoMediaVideoStream {
    private final int bitRate;
    private final String codeName;
    private final double duration;
    private final int frameCount;

    public VideoMediaVideoStream() {
        this(0, null, 0.0d, 0, 15, null);
    }

    public final int getBitRate() {
        return this.bitRate;
    }

    public final String getCodeName() {
        return this.codeName;
    }

    public final double getDuration() {
        return this.duration;
    }

    public final int getFrameCount() {
        return this.frameCount;
    }

    public VideoMediaVideoStream(@v95(name = "bit_rate") int i, @v95(name = "code_name") String str, @v95(name = "duration") double d, @v95(name = "frame_count") int i2) {
        y45.j(str, "codeName");
        this.bitRate = i;
        this.codeName = str;
        this.duration = d;
        this.frameCount = i2;
    }

    public VideoMediaVideoStream(int i, String str, double d, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? 0.0d : d, (i3 & 8) != 0 ? 0 : i2);
    }
}

package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;", "", "bitRate", "", "codeName", "", "(ILjava/lang/String;)V", "getBitRate", "()I", "getCodeName", "()Ljava/lang/String;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoMediaAudioStream {
    private final int bitRate;
    private final String codeName;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoMediaAudioStream() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public final int getBitRate() {
        return this.bitRate;
    }

    public final String getCodeName() {
        return this.codeName;
    }

    public VideoMediaAudioStream(@v95(name = "bit_rate") int i, @v95(name = "code_name") String str) {
        y45.j(str, "codeName");
        this.bitRate = i;
        this.codeName = str;
    }

    public VideoMediaAudioStream(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str);
    }
}

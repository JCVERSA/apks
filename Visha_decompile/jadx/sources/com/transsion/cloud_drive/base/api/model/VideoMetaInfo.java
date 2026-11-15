package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R*\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R*\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\n\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;", "", "width", "", "height", "(II)V", "audioStreams", "", "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;", "getAudioStreams$annotations", "()V", "getAudioStreams", "()Ljava/util/List;", "setAudioStreams", "(Ljava/util/List;)V", "getHeight", "()I", "videoStreams", "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;", "getVideoStreams$annotations", "getVideoStreams", "setVideoStreams", "getWidth", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoMetaInfo {
    private List<VideoMediaAudioStream> audioStreams;
    private final int height;
    private List<VideoMediaVideoStream> videoStreams;
    private final int width;

    /* JADX WARN: Illegal instructions before constructor call */
    public VideoMetaInfo() {
        int i = 0;
        this(i, i, 3, null);
    }

    @v95(name = "video_media_audio_stream")
    public static void getAudioStreams$annotations() {
    }

    @v95(name = "video_media_video_stream")
    public static void getVideoStreams$annotations() {
    }

    public final List<VideoMediaAudioStream> getAudioStreams() {
        return this.audioStreams;
    }

    public final int getHeight() {
        return this.height;
    }

    public final List<VideoMediaVideoStream> getVideoStreams() {
        return this.videoStreams;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setAudioStreams(List<VideoMediaAudioStream> list) {
        y45.j(list, "<set-?>");
        this.audioStreams = list;
    }

    public final void setVideoStreams(List<VideoMediaVideoStream> list) {
        y45.j(list, "<set-?>");
        this.videoStreams = list;
    }

    public VideoMetaInfo(@v95(name = "width") int i, @v95(name = "height") int i2) {
        this.width = i;
        this.height = i2;
        this.audioStreams = y71.k();
        this.videoStreams = y71.k();
    }

    public VideoMetaInfo(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }
}

package com.snaptube.taskManager.task.video.pojo;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\b\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\b\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\u000bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\b\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\u000bR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001c\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/snaptube/taskManager/task/video/pojo/VideoLocalMetaInfo;", "", "<init>", "()V", "", "toString", "()Ljava/lang/String;", "mediaReferer", "Ljava/lang/String;", "getMediaReferer", "setMediaReferer", "(Ljava/lang/String;)V", "metaTitle", "getMetaTitle", "setMetaTitle", "metaSinger", "getMetaSinger", "setMetaSinger", "metaAlbum", "getMetaAlbum", "setMetaAlbum", "metaCover", "getMetaCover", "setMetaCover", "coverUrl", "getCoverUrl", "setCoverUrl", "", "isMusicVideo", "Z", "()Z", "setMusicVideo", "(Z)V", "Companion", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class VideoLocalMetaInfo {

    @SerializedName(IntentUtil.COVER_URL)
    @Nullable
    private String cover_url;

    @SerializedName("is_music_video")
    private boolean is_music_video;

    @SerializedName("media_referer")
    @Nullable
    private String media_referer;

    @SerializedName("meta_album")
    @Nullable
    private String meta_album;

    @SerializedName("meta_cover")
    @Nullable
    private String meta_cover;

    @SerializedName("meta_singer")
    @Nullable
    private String meta_singer;

    @SerializedName("meta_title")
    @Nullable
    private String meta_title;

    @Nullable
    public final String getCover_url() {
        return this.cover_url;
    }

    @Nullable
    public final String getMedia_referer() {
        return this.media_referer;
    }

    @Nullable
    public final String getMeta_album() {
        return this.meta_album;
    }

    @Nullable
    public final String getMeta_cover() {
        return this.meta_cover;
    }

    @Nullable
    public final String getMeta_singer() {
        return this.meta_singer;
    }

    @Nullable
    public final String getMeta_title() {
        return this.meta_title;
    }

    public final boolean getIs_music_video() {
        return this.is_music_video;
    }

    public final void setCoverUrl(@Nullable String str) {
        this.cover_url = str;
    }

    public final void setMediaReferer(@Nullable String str) {
        this.media_referer = str;
    }

    public final void setMetaAlbum(@Nullable String str) {
        this.meta_album = str;
    }

    public final void setMetaCover(@Nullable String str) {
        this.meta_cover = str;
    }

    public final void setMetaSinger(@Nullable String str) {
        this.meta_singer = str;
    }

    public final void setMetaTitle(@Nullable String str) {
        this.meta_title = str;
    }

    public final void setMusicVideo(boolean z) {
        this.is_music_video = z;
    }

    @NotNull
    public String toString() {
        return "VideoLocalMetaInfo(media_referer=" + this.media_referer + ", meta_title=" + this.meta_title + ", meta_singer=" + this.meta_singer + ", meta_album=" + this.meta_album + ", meta_cover=" + this.meta_cover + ", cover_url=" + this.cover_url + ", is_music_video=" + this.is_music_video + ")";
    }
}

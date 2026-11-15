package com.transsion.dbdata.beans.mimedia;

import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b7\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B§\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010=\u001a\u00020\u0000H\u0016J\u0006\u0010>\u001a\u00020?R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\"\u0010\u001a\"\u0004\b#\u0010\u001cR\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001f\"\u0004\b+\u0010!R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0016\"\u0004\b-\u0010\u0018R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001f\"\u0004\b4\u0010!R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001f\"\u0004\b6\u0010!R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001f\"\u0004\b8\u0010!R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001f\"\u0004\b:\u0010!R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u001f\"\u0004\b<\u0010!¨\u0006@"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;", "Ljava/io/Serializable;", "dataType", "", PlayAudioData.TAG_SIZE, "", "duration", "", "userId", "playDuration", "sourceId", "title", "status", "watchStatus", "mediaLibraryId", "virtualPersonName", "createAt", "cover", "updateTime", MethodDecl.initName, "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDataType", "()I", "setDataType", "(I)V", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getDuration", "()Ljava/lang/String;", "setDuration", "(Ljava/lang/String;)V", "getUserId", "setUserId", "getPlayDuration", "()J", "setPlayDuration", "(J)V", "getSourceId", "setSourceId", "getTitle", "setTitle", "getStatus", "setStatus", "getWatchStatus", "()Ljava/lang/Integer;", "setWatchStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMediaLibraryId", "setMediaLibraryId", "getVirtualPersonName", "setVirtualPersonName", "getCreateAt", "setCreateAt", "getCover", "setCover", "getUpdateTime", "setUpdateTime", "copy", "toVideoCloudData", "Lcom/transsion/dbdata/beans/VideoCloudData;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class RecentVideoShowData implements Serializable {
    private String cover;
    private String createAt;
    private int dataType;
    private String duration;
    private String mediaLibraryId;
    private long playDuration;
    private Long size;
    private String sourceId;
    private int status;
    private String title;
    private String updateTime;
    private Long userId;
    private String virtualPersonName;
    private Integer watchStatus;

    public RecentVideoShowData() {
        this(0, null, null, null, 0L, null, null, 0, null, null, null, null, null, null, 16383, null);
    }

    public RecentVideoShowData copy() {
        return new RecentVideoShowData(this.dataType, this.size, this.duration, this.userId, this.playDuration, this.sourceId, this.title, this.status, this.watchStatus, this.mediaLibraryId, this.virtualPersonName, this.createAt, this.cover, this.updateTime);
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final long getPlayDuration() {
        return this.playDuration;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final Long getUserId() {
        return this.userId;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public final Integer getWatchStatus() {
        return this.watchStatus;
    }

    public final void setCover(String str) {
        this.cover = str;
    }

    public final void setCreateAt(String str) {
        this.createAt = str;
    }

    public final void setDataType(int i) {
        this.dataType = i;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setMediaLibraryId(String str) {
        this.mediaLibraryId = str;
    }

    public final void setPlayDuration(long j) {
        this.playDuration = j;
    }

    public final void setSize(Long l) {
        this.size = l;
    }

    public final void setSourceId(String str) {
        y45.j(str, "<set-?>");
        this.sourceId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUpdateTime(String str) {
        this.updateTime = str;
    }

    public final void setUserId(Long l) {
        this.userId = l;
    }

    public final void setVirtualPersonName(String str) {
        this.virtualPersonName = str;
    }

    public final void setWatchStatus(Integer num) {
        this.watchStatus = num;
    }

    public final VideoCloudData toVideoCloudData() {
        Long l = this.userId;
        String str = this.sourceId;
        String str2 = this.title;
        Long l2 = this.size;
        String str3 = this.duration;
        return new VideoCloudData(l, str, str2, l2, str3 != null ? Long.valueOf((long) Float.parseFloat(str3)) : null, null, null, this.watchStatus, this.createAt, this.virtualPersonName, this.playDuration, null, null, null, Boolean.FALSE, Boolean.TRUE, this.dataType, this.mediaLibraryId, this.cover, this.updateTime);
    }

    public RecentVideoShowData(int i, Long l, String str, Long l2, long j, String str2, String str3, int i2, Integer num, String str4, String str5, String str6, String str7, String str8) {
        y45.j(str2, "sourceId");
        this.dataType = i;
        this.size = l;
        this.duration = str;
        this.userId = l2;
        this.playDuration = j;
        this.sourceId = str2;
        this.title = str3;
        this.status = i2;
        this.watchStatus = num;
        this.mediaLibraryId = str4;
        this.virtualPersonName = str5;
        this.createAt = str6;
        this.cover = str7;
        this.updateTime = str8;
    }

    public RecentVideoShowData(int i, Long l, String str, Long l2, long j, String str2, String str3, int i2, Integer num, String str4, String str5, String str6, String str7, String str8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 1 : i, (i3 & 2) != 0 ? 0L : l, (i3 & 4) != 0 ? "" : str, (i3 & 8) != 0 ? 0L : l2, (i3 & 16) == 0 ? j : 0L, (i3 & 32) != 0 ? "" : str2, (i3 & 64) != 0 ? "" : str3, (i3 & 128) != 0 ? 0 : i2, (i3 & 256) != 0 ? -1 : num, (i3 & 512) != 0 ? "" : str4, (i3 & 1024) != 0 ? "" : str5, (i3 & 2048) != 0 ? "" : str6, (i3 & 4096) != 0 ? "" : str7, (i3 & 8192) == 0 ? str8 : "");
    }
}

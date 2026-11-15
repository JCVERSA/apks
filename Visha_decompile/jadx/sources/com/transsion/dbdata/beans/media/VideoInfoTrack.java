package com.transsion.dbdata.beans.media;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/transsion/dbdata/beans/media/VideoInfoTrack;", "Lcom/transsion/dbdata/beans/media/VideoTrackData;", "vdFormat", "", "cnt", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "getVdFormat", "()Ljava/lang/String;", "getCnt", "()I", "setCnt", "(I)V", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoInfoTrack implements VideoTrackData {
    private int cnt;

    @SerializedName("vd_format")
    private final String vdFormat;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoInfoTrack() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static VideoInfoTrack copy$default(VideoInfoTrack videoInfoTrack, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoInfoTrack.vdFormat;
        }
        if ((i2 & 2) != 0) {
            i = videoInfoTrack.cnt;
        }
        return videoInfoTrack.copy(str, i);
    }

    public final String getVdFormat() {
        return this.vdFormat;
    }

    public final int getCnt() {
        return this.cnt;
    }

    public final VideoInfoTrack copy(String vdFormat, int cnt) {
        y45.j(vdFormat, "vdFormat");
        return new VideoInfoTrack(vdFormat, cnt);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoInfoTrack)) {
            return false;
        }
        VideoInfoTrack videoInfoTrack = (VideoInfoTrack) other;
        return y45.e(this.vdFormat, videoInfoTrack.vdFormat) && this.cnt == videoInfoTrack.cnt;
    }

    public final int getCnt() {
        return this.cnt;
    }

    public final String getVdFormat() {
        return this.vdFormat;
    }

    public int hashCode() {
        return (this.vdFormat.hashCode() * 31) + Integer.hashCode(this.cnt);
    }

    public final void setCnt(int i) {
        this.cnt = i;
    }

    public String toString() {
        return "VideoInfoTrack(vdFormat=" + this.vdFormat + ", cnt=" + this.cnt + ")";
    }

    public VideoInfoTrack(String str, int i) {
        y45.j(str, "vdFormat");
        this.vdFormat = str;
        this.cnt = i;
    }

    public VideoInfoTrack(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i);
    }
}

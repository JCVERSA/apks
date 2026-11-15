package com.transsion.dbdata.beans.audioedit;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003JB\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/Recording;", "", TtmlNode.ATTR_ID, "", "title", "duration", "", "artists", "", "Lcom/transsion/dbdata/beans/audioedit/Artist;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getTitle", "getDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getArtists", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/transsion/dbdata/beans/audioedit/Recording;", "equals", "", "other", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Recording {
    private final List<Artist> artists;
    private final Integer duration;
    private final String id;
    private final String title;

    public Recording(String str, String str2, Integer num, List<Artist> list) {
        y45.j(str, TtmlNode.ATTR_ID);
        this.id = str;
        this.title = str2;
        this.duration = num;
        this.artists = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Recording copy$default(Recording recording, String str, String str2, Integer num, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = recording.id;
        }
        if ((i & 2) != 0) {
            str2 = recording.title;
        }
        if ((i & 4) != 0) {
            num = recording.duration;
        }
        if ((i & 8) != 0) {
            list = recording.artists;
        }
        return recording.copy(str, str2, num, list);
    }

    public final String getId() {
        return this.id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final List<Artist> component4() {
        return this.artists;
    }

    public final Recording copy(String id, String title, Integer duration, List<Artist> artists) {
        y45.j(id, TtmlNode.ATTR_ID);
        return new Recording(id, title, duration, artists);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Recording)) {
            return false;
        }
        Recording recording = (Recording) other;
        return y45.e(this.id, recording.id) && y45.e(this.title, recording.title) && y45.e(this.duration, recording.duration) && y45.e(this.artists, recording.artists);
    }

    public final List<Artist> getArtists() {
        return this.artists;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final String getId() {
        return this.id;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.duration;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        List<Artist> list = this.artists;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "Recording(id=" + this.id + ", title=" + this.title + ", duration=" + this.duration + ", artists=" + this.artists + ")";
    }

    public Recording(String str, String str2, Integer num, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : list);
    }
}

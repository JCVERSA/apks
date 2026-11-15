package com.transsion.dbdata.beans.audioedit;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/Artist;", "", TtmlNode.ATTR_ID, "", "name", "joinphrase", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getJoinphrase", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Artist {
    private final String id;
    private final String joinphrase;
    private final String name;

    public Artist(String str, String str2, String str3) {
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(str2, "name");
        this.id = str;
        this.name = str2;
        this.joinphrase = str3;
    }

    public static Artist copy$default(Artist artist, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = artist.id;
        }
        if ((i & 2) != 0) {
            str2 = artist.name;
        }
        if ((i & 4) != 0) {
            str3 = artist.joinphrase;
        }
        return artist.copy(str, str2, str3);
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getJoinphrase() {
        return this.joinphrase;
    }

    public final Artist copy(String id, String name, String joinphrase) {
        y45.j(id, TtmlNode.ATTR_ID);
        y45.j(name, "name");
        return new Artist(id, name, joinphrase);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Artist)) {
            return false;
        }
        Artist artist = (Artist) other;
        return y45.e(this.id, artist.id) && y45.e(this.name, artist.name) && y45.e(this.joinphrase, artist.joinphrase);
    }

    public final String getId() {
        return this.id;
    }

    public final String getJoinphrase() {
        return this.joinphrase;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = ((this.id.hashCode() * 31) + this.name.hashCode()) * 31;
        String str = this.joinphrase;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "Artist(id=" + this.id + ", name=" + this.name + ", joinphrase=" + this.joinphrase + ")";
    }

    public Artist(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3);
    }
}

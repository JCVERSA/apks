package com.transsion.dbdata.database;

import androidx.annotation.Keep;
import androidx.room.ColumnInfo;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/transsion/dbdata/database/MediaPlayCount;", "", "path", "", "count", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "getPath", "()Ljava/lang/String;", "getCount", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaPlayCount {

    @ColumnInfo(name = "play_count")
    private final int count;

    @ColumnInfo(name = "_data")
    private final String path;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaPlayCount() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public static MediaPlayCount copy$default(MediaPlayCount mediaPlayCount, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = mediaPlayCount.path;
        }
        if ((i2 & 2) != 0) {
            i = mediaPlayCount.count;
        }
        return mediaPlayCount.copy(str, i);
    }

    public final String getPath() {
        return this.path;
    }

    public final int getCount() {
        return this.count;
    }

    public final MediaPlayCount copy(String path, int count) {
        y45.j(path, "path");
        return new MediaPlayCount(path, count);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediaPlayCount)) {
            return false;
        }
        MediaPlayCount mediaPlayCount = (MediaPlayCount) other;
        return y45.e(this.path, mediaPlayCount.path) && this.count == mediaPlayCount.count;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getPath() {
        return this.path;
    }

    public int hashCode() {
        return (this.path.hashCode() * 31) + Integer.hashCode(this.count);
    }

    public String toString() {
        return "MediaPlayCount(path=" + this.path + ", count=" + this.count + ")";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaPlayCount(String str) {
        this(str, 0, 2, null);
        y45.j(str, "path");
    }

    public MediaPlayCount(String str, int i) {
        y45.j(str, "path");
        this.path = str;
        this.count = i;
    }

    public MediaPlayCount(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i);
    }
}

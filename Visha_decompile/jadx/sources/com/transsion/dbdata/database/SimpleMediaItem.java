package com.transsion.dbdata.database;

import androidx.annotation.Keep;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/transsion/dbdata/database/SimpleMediaItem;", "", "mediaId", "", "mediaPath", "", MethodDecl.initName, "(ILjava/lang/String;)V", "getMediaId", "()I", "getMediaPath", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SimpleMediaItem {
    private final int mediaId;
    private final String mediaPath;

    public SimpleMediaItem(int i, String str) {
        y45.j(str, "mediaPath");
        this.mediaId = i;
        this.mediaPath = str;
    }

    public static SimpleMediaItem copy$default(SimpleMediaItem simpleMediaItem, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = simpleMediaItem.mediaId;
        }
        if ((i2 & 2) != 0) {
            str = simpleMediaItem.mediaPath;
        }
        return simpleMediaItem.copy(i, str);
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final String getMediaPath() {
        return this.mediaPath;
    }

    public final SimpleMediaItem copy(int mediaId, String mediaPath) {
        y45.j(mediaPath, "mediaPath");
        return new SimpleMediaItem(mediaId, mediaPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimpleMediaItem)) {
            return false;
        }
        SimpleMediaItem simpleMediaItem = (SimpleMediaItem) other;
        return this.mediaId == simpleMediaItem.mediaId && y45.e(this.mediaPath, simpleMediaItem.mediaPath);
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final String getMediaPath() {
        return this.mediaPath;
    }

    public int hashCode() {
        return (Integer.hashCode(this.mediaId) * 31) + this.mediaPath.hashCode();
    }

    public String toString() {
        return "SimpleMediaItem(mediaId=" + this.mediaId + ", mediaPath=" + this.mediaPath + ")";
    }
}

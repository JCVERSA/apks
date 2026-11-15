package com.transsion.dbdata.database;

import android.net.Uri;
import androidx.annotation.Keep;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Ignore;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0007HÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003J1\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010,\u001a\u00020#2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0007HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u001e\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R \u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0012\"\u0004\b!\u0010\u0014R\u001e\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010$\"\u0004\b%\u0010&¨\u00060"}, d2 = {"Lcom/transsion/dbdata/database/PlayListFolderItem;", "", TtmlNode.ATTR_ID, "", "name", "", "count", "", CloudItem.KEY_CATEGORY, MethodDecl.initName, "(JLjava/lang/String;II)V", "getId", "()J", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getCount", "()I", "setCount", "(I)V", "getCategory", "listFlag", "getListFlag", "setListFlag", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "uriType", "getUriType", "setUriType", "isCustomCover", "", "()Z", "setCustomCover", "(Z)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlayListFolderItem {

    @ColumnInfo(name = CloudItem.KEY_CATEGORY)
    private final int category;

    @ColumnInfo(name = "count")
    private int count;

    @ColumnInfo(name = TtmlNode.ATTR_ID)
    private final long id;

    @Ignore
    private boolean isCustomCover;

    @Ignore
    private int listFlag;

    @ColumnInfo(name = "name")
    private String name;

    @Ignore
    private Uri uri;

    @Ignore
    private int uriType;

    public PlayListFolderItem(long j, String str, int i, int i2) {
        y45.j(str, "name");
        this.id = j;
        this.name = str;
        this.count = i;
        this.category = i2;
    }

    public static PlayListFolderItem copy$default(PlayListFolderItem playListFolderItem, long j, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            j = playListFolderItem.id;
        }
        long j2 = j;
        if ((i3 & 2) != 0) {
            str = playListFolderItem.name;
        }
        String str2 = str;
        if ((i3 & 4) != 0) {
            i = playListFolderItem.count;
        }
        int i4 = i;
        if ((i3 & 8) != 0) {
            i2 = playListFolderItem.category;
        }
        return playListFolderItem.copy(j2, str2, i4, i2);
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getCategory() {
        return this.category;
    }

    public final PlayListFolderItem copy(long id, String name, int count, int category) {
        y45.j(name, "name");
        return new PlayListFolderItem(id, name, count, category);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListFolderItem)) {
            return false;
        }
        PlayListFolderItem playListFolderItem = (PlayListFolderItem) other;
        return this.id == playListFolderItem.id && y45.e(this.name, playListFolderItem.name) && this.count == playListFolderItem.count && this.category == playListFolderItem.category;
    }

    public final int getCategory() {
        return this.category;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getId() {
        return this.id;
    }

    public final int getListFlag() {
        return this.listFlag;
    }

    public final String getName() {
        return this.name;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final int getUriType() {
        return this.uriType;
    }

    public int hashCode() {
        return (((((Long.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + Integer.hashCode(this.count)) * 31) + Integer.hashCode(this.category);
    }

    public final boolean getIsCustomCover() {
        return this.isCustomCover;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final void setCustomCover(boolean z) {
        this.isCustomCover = z;
    }

    public final void setListFlag(int i) {
        this.listFlag = i;
    }

    public final void setName(String str) {
        y45.j(str, "<set-?>");
        this.name = str;
    }

    public final void setUri(Uri uri) {
        this.uri = uri;
    }

    public final void setUriType(int i) {
        this.uriType = i;
    }

    public String toString() {
        return "PlayListFolderItem(id=" + this.id + ", name=" + this.name + ", count=" + this.count + ", category=" + this.category + ")";
    }
}

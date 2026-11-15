package com.transsion.dbdata.beans.audioedit;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\tHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\t\u0010'\u001a\u00020\u0004HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jo\u0010)\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u0010*\u001a\u00020\u00062\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/Image;", "", "types", "", "", "front", "", "back", "edit", "", "image", "comment", "approved", TtmlNode.ATTR_ID, "thumbnails", "Lcom/transsion/dbdata/beans/audioedit/Thumbnails;", MethodDecl.initName, "(Ljava/util/List;ZZJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/dbdata/beans/audioedit/Thumbnails;)V", "getTypes", "()Ljava/util/List;", "getFront", "()Z", "getBack", "getEdit", "()J", "getImage", "()Ljava/lang/String;", "getComment", "getApproved", "getId", "getThumbnails", "()Lcom/transsion/dbdata/beans/audioedit/Thumbnails;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Image {
    private final boolean approved;
    private final boolean back;
    private final String comment;
    private final long edit;
    private final boolean front;
    private final String id;
    private final String image;
    private final Thumbnails thumbnails;
    private final List<String> types;

    public Image(List<String> list, boolean z, boolean z2, long j, String str, String str2, boolean z3, String str3, Thumbnails thumbnails) {
        y45.j(list, "types");
        y45.j(str3, TtmlNode.ATTR_ID);
        this.types = list;
        this.front = z;
        this.back = z2;
        this.edit = j;
        this.image = str;
        this.comment = str2;
        this.approved = z3;
        this.id = str3;
        this.thumbnails = thumbnails;
    }

    public final List<String> component1() {
        return this.types;
    }

    public final boolean getFront() {
        return this.front;
    }

    public final boolean getBack() {
        return this.back;
    }

    public final long getEdit() {
        return this.edit;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getComment() {
        return this.comment;
    }

    public final boolean getApproved() {
        return this.approved;
    }

    public final String getId() {
        return this.id;
    }

    public final Thumbnails getThumbnails() {
        return this.thumbnails;
    }

    public final Image copy(List<String> types, boolean front, boolean back, long edit, String image, String comment, boolean approved, String id, Thumbnails thumbnails) {
        y45.j(types, "types");
        y45.j(id, TtmlNode.ATTR_ID);
        return new Image(types, front, back, edit, image, comment, approved, id, thumbnails);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Image)) {
            return false;
        }
        Image image = (Image) other;
        return y45.e(this.types, image.types) && this.front == image.front && this.back == image.back && this.edit == image.edit && y45.e(this.image, image.image) && y45.e(this.comment, image.comment) && this.approved == image.approved && y45.e(this.id, image.id) && y45.e(this.thumbnails, image.thumbnails);
    }

    public final boolean getApproved() {
        return this.approved;
    }

    public final boolean getBack() {
        return this.back;
    }

    public final String getComment() {
        return this.comment;
    }

    public final long getEdit() {
        return this.edit;
    }

    public final boolean getFront() {
        return this.front;
    }

    public final String getId() {
        return this.id;
    }

    public final String getImage() {
        return this.image;
    }

    public final Thumbnails getThumbnails() {
        return this.thumbnails;
    }

    public final List<String> getTypes() {
        return this.types;
    }

    public int hashCode() {
        int iHashCode = ((((((this.types.hashCode() * 31) + Boolean.hashCode(this.front)) * 31) + Boolean.hashCode(this.back)) * 31) + Long.hashCode(this.edit)) * 31;
        String str = this.image;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.comment;
        int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Boolean.hashCode(this.approved)) * 31) + this.id.hashCode()) * 31;
        Thumbnails thumbnails = this.thumbnails;
        return iHashCode3 + (thumbnails != null ? thumbnails.hashCode() : 0);
    }

    public String toString() {
        return "Image(types=" + this.types + ", front=" + this.front + ", back=" + this.back + ", edit=" + this.edit + ", image=" + this.image + ", comment=" + this.comment + ", approved=" + this.approved + ", id=" + this.id + ", thumbnails=" + this.thumbnails + ")";
    }
}

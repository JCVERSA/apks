package com.transsion.dbdata.beans.audioedit;

import com.google.gson.annotations.SerializedName;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/Thumbnails;", "", "size250", "", "size500", "size1200", "small", "large", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSize250", "()Ljava/lang/String;", "getSize500", "getSize1200", "getSmall", "getLarge", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Thumbnails {
    private final String large;

    @SerializedName("1200")
    private final String size1200;

    @SerializedName("250")
    private final String size250;

    @SerializedName("500")
    private final String size500;
    private final String small;

    public Thumbnails(String str, String str2, String str3, String str4, String str5) {
        y45.j(str, "size250");
        y45.j(str2, "size500");
        y45.j(str3, "size1200");
        y45.j(str4, "small");
        y45.j(str5, "large");
        this.size250 = str;
        this.size500 = str2;
        this.size1200 = str3;
        this.small = str4;
        this.large = str5;
    }

    public static Thumbnails copy$default(Thumbnails thumbnails, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = thumbnails.size250;
        }
        if ((i & 2) != 0) {
            str2 = thumbnails.size500;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = thumbnails.size1200;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = thumbnails.small;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = thumbnails.large;
        }
        return thumbnails.copy(str, str6, str7, str8, str5);
    }

    public final String getSize250() {
        return this.size250;
    }

    public final String getSize500() {
        return this.size500;
    }

    public final String getSize1200() {
        return this.size1200;
    }

    public final String getSmall() {
        return this.small;
    }

    public final String getLarge() {
        return this.large;
    }

    public final Thumbnails copy(String size250, String size500, String size1200, String small, String large) {
        y45.j(size250, "size250");
        y45.j(size500, "size500");
        y45.j(size1200, "size1200");
        y45.j(small, "small");
        y45.j(large, "large");
        return new Thumbnails(size250, size500, size1200, small, large);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Thumbnails)) {
            return false;
        }
        Thumbnails thumbnails = (Thumbnails) other;
        return y45.e(this.size250, thumbnails.size250) && y45.e(this.size500, thumbnails.size500) && y45.e(this.size1200, thumbnails.size1200) && y45.e(this.small, thumbnails.small) && y45.e(this.large, thumbnails.large);
    }

    public final String getLarge() {
        return this.large;
    }

    public final String getSize1200() {
        return this.size1200;
    }

    public final String getSize250() {
        return this.size250;
    }

    public final String getSize500() {
        return this.size500;
    }

    public final String getSmall() {
        return this.small;
    }

    public int hashCode() {
        return (((((((this.size250.hashCode() * 31) + this.size500.hashCode()) * 31) + this.size1200.hashCode()) * 31) + this.small.hashCode()) * 31) + this.large.hashCode();
    }

    public String toString() {
        return "Thumbnails(size250=" + this.size250 + ", size500=" + this.size500 + ", size1200=" + this.size1200 + ", small=" + this.small + ", large=" + this.large + ")";
    }
}

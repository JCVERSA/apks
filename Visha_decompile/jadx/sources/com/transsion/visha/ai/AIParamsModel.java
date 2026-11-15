package com.transsion.visha.ai;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003JE\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsion/visha/ai/AIParamsModel;", "", "source", "", "singerName", "musicName", "albumName", "styleName", "date", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSource", "()Ljava/lang/String;", "getSingerName", "getMusicName", "getAlbumName", "getStyleName", "getDate", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "aicommunication_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AIParamsModel {
    private final String albumName;
    private final String date;
    private final String musicName;
    private final String singerName;
    private final String source;
    private final String styleName;

    public AIParamsModel(String str, String str2, String str3, String str4, String str5, String str6) {
        y45.j(str, "source");
        y45.j(str2, "singerName");
        y45.j(str3, "musicName");
        y45.j(str4, "albumName");
        y45.j(str5, "styleName");
        y45.j(str6, "date");
        this.source = str;
        this.singerName = str2;
        this.musicName = str3;
        this.albumName = str4;
        this.styleName = str5;
        this.date = str6;
    }

    public static AIParamsModel copy$default(AIParamsModel aIParamsModel, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aIParamsModel.source;
        }
        if ((i & 2) != 0) {
            str2 = aIParamsModel.singerName;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = aIParamsModel.musicName;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = aIParamsModel.albumName;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = aIParamsModel.styleName;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = aIParamsModel.date;
        }
        return aIParamsModel.copy(str, str7, str8, str9, str10, str6);
    }

    public final String getSource() {
        return this.source;
    }

    public final String getSingerName() {
        return this.singerName;
    }

    public final String getMusicName() {
        return this.musicName;
    }

    public final String getAlbumName() {
        return this.albumName;
    }

    public final String getStyleName() {
        return this.styleName;
    }

    public final String getDate() {
        return this.date;
    }

    public final AIParamsModel copy(String source, String singerName, String musicName, String albumName, String styleName, String date) {
        y45.j(source, "source");
        y45.j(singerName, "singerName");
        y45.j(musicName, "musicName");
        y45.j(albumName, "albumName");
        y45.j(styleName, "styleName");
        y45.j(date, "date");
        return new AIParamsModel(source, singerName, musicName, albumName, styleName, date);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AIParamsModel)) {
            return false;
        }
        AIParamsModel aIParamsModel = (AIParamsModel) other;
        return y45.e(this.source, aIParamsModel.source) && y45.e(this.singerName, aIParamsModel.singerName) && y45.e(this.musicName, aIParamsModel.musicName) && y45.e(this.albumName, aIParamsModel.albumName) && y45.e(this.styleName, aIParamsModel.styleName) && y45.e(this.date, aIParamsModel.date);
    }

    public final String getAlbumName() {
        return this.albumName;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getMusicName() {
        return this.musicName;
    }

    public final String getSingerName() {
        return this.singerName;
    }

    public final String getSource() {
        return this.source;
    }

    public final String getStyleName() {
        return this.styleName;
    }

    public int hashCode() {
        return (((((((((this.source.hashCode() * 31) + this.singerName.hashCode()) * 31) + this.musicName.hashCode()) * 31) + this.albumName.hashCode()) * 31) + this.styleName.hashCode()) * 31) + this.date.hashCode();
    }

    public String toString() {
        return "AIParamsModel(source=" + this.source + ", singerName=" + this.singerName + ", musicName=" + this.musicName + ", albumName=" + this.albumName + ", styleName=" + this.styleName + ", date=" + this.date + ")";
    }
}

package com.transsion.dbdata.beans.audioedit;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.annotations.SerializedName;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean;", "", "album", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;", MethodDecl.initName, "(Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;)V", "getAlbum", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Album", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LastFMResponseBean {
    private final Album album;

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u00041234BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0010HÆ\u0003Jk\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u0010HÆ\u0001J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u00065"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album;", "", "artist", "", "tags", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;", "name", "image", "", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;", "tracks", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;", "listeners", "playcount", "url", "wiki", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;", MethodDecl.initName, "(Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;Ljava/lang/String;Ljava/util/List;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;)V", "getArtist", "()Ljava/lang/String;", "getTags", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;", "getName", "getImage", "()Ljava/util/List;", "getTracks", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;", "getListeners", "getPlaycount", "getUrl", "getWiki", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "Tags", "Image", "Tracks", "Wiki", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Album {
        private final String artist;
        private final List<Image> image;
        private final String listeners;
        private final String name;
        private final String playcount;
        private final Tags tags;
        private final Tracks tracks;
        private final String url;
        private final Wiki wiki;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Image;", "", PlayAudioData.TAG_SIZE, "", "text", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "getSize", "()Ljava/lang/String;", "getText", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Image {
            private final String size;

            @SerializedName("#text")
            private final String text;

            public Image(String str, String str2) {
                y45.j(str, PlayAudioData.TAG_SIZE);
                y45.j(str2, "text");
                this.size = str;
                this.text = str2;
            }

            public static Image copy$default(Image image, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = image.size;
                }
                if ((i & 2) != 0) {
                    str2 = image.text;
                }
                return image.copy(str, str2);
            }

            public final String getSize() {
                return this.size;
            }

            public final String getText() {
                return this.text;
            }

            public final Image copy(String size, String text) {
                y45.j(size, PlayAudioData.TAG_SIZE);
                y45.j(text, "text");
                return new Image(size, text);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Image)) {
                    return false;
                }
                Image image = (Image) other;
                return y45.e(this.size, image.size) && y45.e(this.text, image.text);
            }

            public final String getSize() {
                return this.size;
            }

            public final String getText() {
                return this.text;
            }

            public int hashCode() {
                return (this.size.hashCode() * 31) + this.text.hashCode();
            }

            public String toString() {
                return "Image(size=" + this.size + ", text=" + this.text + ")";
            }
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags;", "", Progress.TAG, "", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags$Tag;", MethodDecl.initName, "(Ljava/util/List;)V", "getTag", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Tag", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Tags {
            private final List<Tag> tag;

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tags$Tag;", "", "url", "", "name", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getName", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Tag {
                private final String name;
                private final String url;

                public Tag(String str, String str2) {
                    y45.j(str, "url");
                    y45.j(str2, "name");
                    this.url = str;
                    this.name = str2;
                }

                public static Tag copy$default(Tag tag, String str, String str2, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = tag.url;
                    }
                    if ((i & 2) != 0) {
                        str2 = tag.name;
                    }
                    return tag.copy(str, str2);
                }

                public final String getUrl() {
                    return this.url;
                }

                public final String getName() {
                    return this.name;
                }

                public final Tag copy(String url, String name) {
                    y45.j(url, "url");
                    y45.j(name, "name");
                    return new Tag(url, name);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Tag)) {
                        return false;
                    }
                    Tag tag = (Tag) other;
                    return y45.e(this.url, tag.url) && y45.e(this.name, tag.name);
                }

                public final String getName() {
                    return this.name;
                }

                public final String getUrl() {
                    return this.url;
                }

                public int hashCode() {
                    return (this.url.hashCode() * 31) + this.name.hashCode();
                }

                public String toString() {
                    return "Tag(url=" + this.url + ", name=" + this.name + ")";
                }
            }

            public Tags(List<Tag> list) {
                y45.j(list, Progress.TAG);
                this.tag = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Tags copy$default(Tags tags, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = tags.tag;
                }
                return tags.copy(list);
            }

            public final List<Tag> component1() {
                return this.tag;
            }

            public final Tags copy(List<Tag> tag) {
                y45.j(tag, Progress.TAG);
                return new Tags(tag);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Tags) && y45.e(this.tag, ((Tags) other).tag);
            }

            public final List<Tag> getTag() {
                return this.tag;
            }

            public int hashCode() {
                return this.tag.hashCode();
            }

            public String toString() {
                return "Tags(tag=" + this.tag + ")";
            }
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks;", "", "track", "", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track;", MethodDecl.initName, "(Ljava/util/List;)V", "getTrack", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Track", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Tracks {
            private final List<Track> track;

            @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0003&'(B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\fHÆ\u0003JE\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\t\u0010%\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006)"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track;", "", "streamable", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Streamable;", "duration", "", "url", "", "name", "attr", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Attr;", "artist", "Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Artist;", MethodDecl.initName, "(Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Streamable;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Attr;Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Artist;)V", "getStreamable", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Streamable;", "getDuration", "()I", "getUrl", "()Ljava/lang/String;", "getName", "getAttr", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Attr;", "getArtist", "()Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Artist;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "Streamable", "Attr", ExifInterface.TAG_ARTIST, "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Track {
                private final Artist artist;

                @SerializedName("@attr")
                private final Attr attr;
                private final int duration;
                private final String name;
                private final Streamable streamable;
                private final String url;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Artist;", "", "url", "", "name", "mbid", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getName", "getMbid", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                public static final class Artist {
                    private final String mbid;
                    private final String name;
                    private final String url;

                    public Artist(String str, String str2, String str3) {
                        y45.j(str, "url");
                        y45.j(str2, "name");
                        y45.j(str3, "mbid");
                        this.url = str;
                        this.name = str2;
                        this.mbid = str3;
                    }

                    public static Artist copy$default(Artist artist, String str, String str2, String str3, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = artist.url;
                        }
                        if ((i & 2) != 0) {
                            str2 = artist.name;
                        }
                        if ((i & 4) != 0) {
                            str3 = artist.mbid;
                        }
                        return artist.copy(str, str2, str3);
                    }

                    public final String getUrl() {
                        return this.url;
                    }

                    public final String getName() {
                        return this.name;
                    }

                    public final String getMbid() {
                        return this.mbid;
                    }

                    public final Artist copy(String url, String name, String mbid) {
                        y45.j(url, "url");
                        y45.j(name, "name");
                        y45.j(mbid, "mbid");
                        return new Artist(url, name, mbid);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof Artist)) {
                            return false;
                        }
                        Artist artist = (Artist) other;
                        return y45.e(this.url, artist.url) && y45.e(this.name, artist.name) && y45.e(this.mbid, artist.mbid);
                    }

                    public final String getMbid() {
                        return this.mbid;
                    }

                    public final String getName() {
                        return this.name;
                    }

                    public final String getUrl() {
                        return this.url;
                    }

                    public int hashCode() {
                        return (((this.url.hashCode() * 31) + this.name.hashCode()) * 31) + this.mbid.hashCode();
                    }

                    public String toString() {
                        return "Artist(url=" + this.url + ", name=" + this.name + ", mbid=" + this.mbid + ")";
                    }
                }

                @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Attr;", "", TranSearchIndexablesContract.TranBaseColumns.COLUMN_RANK, "", MethodDecl.initName, "(I)V", "getRank", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                public static final class Attr {
                    private final int rank;

                    public Attr(int i) {
                        this.rank = i;
                    }

                    public static Attr copy$default(Attr attr, int i, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            i = attr.rank;
                        }
                        return attr.copy(i);
                    }

                    public final int getRank() {
                        return this.rank;
                    }

                    public final Attr copy(int rank) {
                        return new Attr(rank);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        return (other instanceof Attr) && this.rank == ((Attr) other).rank;
                    }

                    public final int getRank() {
                        return this.rank;
                    }

                    public int hashCode() {
                        return Integer.hashCode(this.rank);
                    }

                    public String toString() {
                        return "Attr(rank=" + this.rank + ")";
                    }
                }

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Tracks$Track$Streamable;", "", "fulltrack", "", "text", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "getFulltrack", "()Ljava/lang/String;", "getText", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                public static final class Streamable {
                    private final String fulltrack;

                    @SerializedName("#text")
                    private final String text;

                    public Streamable(String str, String str2) {
                        y45.j(str, "fulltrack");
                        y45.j(str2, "text");
                        this.fulltrack = str;
                        this.text = str2;
                    }

                    public static Streamable copy$default(Streamable streamable, String str, String str2, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = streamable.fulltrack;
                        }
                        if ((i & 2) != 0) {
                            str2 = streamable.text;
                        }
                        return streamable.copy(str, str2);
                    }

                    public final String getFulltrack() {
                        return this.fulltrack;
                    }

                    public final String getText() {
                        return this.text;
                    }

                    public final Streamable copy(String fulltrack, String text) {
                        y45.j(fulltrack, "fulltrack");
                        y45.j(text, "text");
                        return new Streamable(fulltrack, text);
                    }

                    public boolean equals(Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof Streamable)) {
                            return false;
                        }
                        Streamable streamable = (Streamable) other;
                        return y45.e(this.fulltrack, streamable.fulltrack) && y45.e(this.text, streamable.text);
                    }

                    public final String getFulltrack() {
                        return this.fulltrack;
                    }

                    public final String getText() {
                        return this.text;
                    }

                    public int hashCode() {
                        return (this.fulltrack.hashCode() * 31) + this.text.hashCode();
                    }

                    public String toString() {
                        return "Streamable(fulltrack=" + this.fulltrack + ", text=" + this.text + ")";
                    }
                }

                public Track(Streamable streamable, int i, String str, String str2, Attr attr, Artist artist) {
                    y45.j(streamable, "streamable");
                    y45.j(str, "url");
                    y45.j(str2, "name");
                    y45.j(attr, "attr");
                    y45.j(artist, "artist");
                    this.streamable = streamable;
                    this.duration = i;
                    this.url = str;
                    this.name = str2;
                    this.attr = attr;
                    this.artist = artist;
                }

                public static Track copy$default(Track track, Streamable streamable, int i, String str, String str2, Attr attr, Artist artist, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        streamable = track.streamable;
                    }
                    if ((i2 & 2) != 0) {
                        i = track.duration;
                    }
                    int i3 = i;
                    if ((i2 & 4) != 0) {
                        str = track.url;
                    }
                    String str3 = str;
                    if ((i2 & 8) != 0) {
                        str2 = track.name;
                    }
                    String str4 = str2;
                    if ((i2 & 16) != 0) {
                        attr = track.attr;
                    }
                    Attr attr2 = attr;
                    if ((i2 & 32) != 0) {
                        artist = track.artist;
                    }
                    return track.copy(streamable, i3, str3, str4, attr2, artist);
                }

                public final Streamable getStreamable() {
                    return this.streamable;
                }

                public final int getDuration() {
                    return this.duration;
                }

                public final String getUrl() {
                    return this.url;
                }

                public final String getName() {
                    return this.name;
                }

                public final Attr getAttr() {
                    return this.attr;
                }

                public final Artist getArtist() {
                    return this.artist;
                }

                public final Track copy(Streamable streamable, int duration, String url, String name, Attr attr, Artist artist) {
                    y45.j(streamable, "streamable");
                    y45.j(url, "url");
                    y45.j(name, "name");
                    y45.j(attr, "attr");
                    y45.j(artist, "artist");
                    return new Track(streamable, duration, url, name, attr, artist);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Track)) {
                        return false;
                    }
                    Track track = (Track) other;
                    return y45.e(this.streamable, track.streamable) && this.duration == track.duration && y45.e(this.url, track.url) && y45.e(this.name, track.name) && y45.e(this.attr, track.attr) && y45.e(this.artist, track.artist);
                }

                public final Artist getArtist() {
                    return this.artist;
                }

                public final Attr getAttr() {
                    return this.attr;
                }

                public final int getDuration() {
                    return this.duration;
                }

                public final String getName() {
                    return this.name;
                }

                public final Streamable getStreamable() {
                    return this.streamable;
                }

                public final String getUrl() {
                    return this.url;
                }

                public int hashCode() {
                    return (((((((((this.streamable.hashCode() * 31) + Integer.hashCode(this.duration)) * 31) + this.url.hashCode()) * 31) + this.name.hashCode()) * 31) + this.attr.hashCode()) * 31) + this.artist.hashCode();
                }

                public String toString() {
                    return "Track(streamable=" + this.streamable + ", duration=" + this.duration + ", url=" + this.url + ", name=" + this.name + ", attr=" + this.attr + ", artist=" + this.artist + ")";
                }
            }

            public Tracks(List<Track> list) {
                y45.j(list, "track");
                this.track = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static Tracks copy$default(Tracks tracks, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = tracks.track;
                }
                return tracks.copy(list);
            }

            public final List<Track> component1() {
                return this.track;
            }

            public final Tracks copy(List<Track> track) {
                y45.j(track, "track");
                return new Tracks(track);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Tracks) && y45.e(this.track, ((Tracks) other).track);
            }

            public final List<Track> getTrack() {
                return this.track;
            }

            public int hashCode() {
                return this.track.hashCode();
            }

            public String toString() {
                return "Tracks(track=" + this.track + ")";
            }
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/LastFMResponseBean$Album$Wiki;", "", "published", "", "summary", ICode.CALL.CALL_KEY_CONTENT, MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPublished", "()Ljava/lang/String;", "getSummary", "getContent", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Wiki {
            private final String content;
            private final String published;
            private final String summary;

            public Wiki(String str, String str2, String str3) {
                y45.j(str, "published");
                y45.j(str2, "summary");
                y45.j(str3, ICode.CALL.CALL_KEY_CONTENT);
                this.published = str;
                this.summary = str2;
                this.content = str3;
            }

            public static Wiki copy$default(Wiki wiki, String str, String str2, String str3, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = wiki.published;
                }
                if ((i & 2) != 0) {
                    str2 = wiki.summary;
                }
                if ((i & 4) != 0) {
                    str3 = wiki.content;
                }
                return wiki.copy(str, str2, str3);
            }

            public final String getPublished() {
                return this.published;
            }

            public final String getSummary() {
                return this.summary;
            }

            public final String getContent() {
                return this.content;
            }

            public final Wiki copy(String published, String summary, String content) {
                y45.j(published, "published");
                y45.j(summary, "summary");
                y45.j(content, ICode.CALL.CALL_KEY_CONTENT);
                return new Wiki(published, summary, content);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Wiki)) {
                    return false;
                }
                Wiki wiki = (Wiki) other;
                return y45.e(this.published, wiki.published) && y45.e(this.summary, wiki.summary) && y45.e(this.content, wiki.content);
            }

            public final String getContent() {
                return this.content;
            }

            public final String getPublished() {
                return this.published;
            }

            public final String getSummary() {
                return this.summary;
            }

            public int hashCode() {
                return (((this.published.hashCode() * 31) + this.summary.hashCode()) * 31) + this.content.hashCode();
            }

            public String toString() {
                return "Wiki(published=" + this.published + ", summary=" + this.summary + ", content=" + this.content + ")";
            }
        }

        public Album(String str, Tags tags, String str2, List<Image> list, Tracks tracks, String str3, String str4, String str5, Wiki wiki) {
            y45.j(str, "artist");
            y45.j(tags, "tags");
            y45.j(str2, "name");
            y45.j(tracks, "tracks");
            y45.j(str3, "listeners");
            y45.j(str4, "playcount");
            y45.j(str5, "url");
            y45.j(wiki, "wiki");
            this.artist = str;
            this.tags = tags;
            this.name = str2;
            this.image = list;
            this.tracks = tracks;
            this.listeners = str3;
            this.playcount = str4;
            this.url = str5;
            this.wiki = wiki;
        }

        public final String getArtist() {
            return this.artist;
        }

        public final Tags getTags() {
            return this.tags;
        }

        public final String getName() {
            return this.name;
        }

        public final List<Image> component4() {
            return this.image;
        }

        public final Tracks getTracks() {
            return this.tracks;
        }

        public final String getListeners() {
            return this.listeners;
        }

        public final String getPlaycount() {
            return this.playcount;
        }

        public final String getUrl() {
            return this.url;
        }

        public final Wiki getWiki() {
            return this.wiki;
        }

        public final Album copy(String artist, Tags tags, String name, List<Image> image, Tracks tracks, String listeners, String playcount, String url, Wiki wiki) {
            y45.j(artist, "artist");
            y45.j(tags, "tags");
            y45.j(name, "name");
            y45.j(tracks, "tracks");
            y45.j(listeners, "listeners");
            y45.j(playcount, "playcount");
            y45.j(url, "url");
            y45.j(wiki, "wiki");
            return new Album(artist, tags, name, image, tracks, listeners, playcount, url, wiki);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Album)) {
                return false;
            }
            Album album = (Album) other;
            return y45.e(this.artist, album.artist) && y45.e(this.tags, album.tags) && y45.e(this.name, album.name) && y45.e(this.image, album.image) && y45.e(this.tracks, album.tracks) && y45.e(this.listeners, album.listeners) && y45.e(this.playcount, album.playcount) && y45.e(this.url, album.url) && y45.e(this.wiki, album.wiki);
        }

        public final String getArtist() {
            return this.artist;
        }

        public final List<Image> getImage() {
            return this.image;
        }

        public final String getListeners() {
            return this.listeners;
        }

        public final String getName() {
            return this.name;
        }

        public final String getPlaycount() {
            return this.playcount;
        }

        public final Tags getTags() {
            return this.tags;
        }

        public final Tracks getTracks() {
            return this.tracks;
        }

        public final String getUrl() {
            return this.url;
        }

        public final Wiki getWiki() {
            return this.wiki;
        }

        public int hashCode() {
            int iHashCode = ((((this.artist.hashCode() * 31) + this.tags.hashCode()) * 31) + this.name.hashCode()) * 31;
            List<Image> list = this.image;
            return ((((((((((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + this.tracks.hashCode()) * 31) + this.listeners.hashCode()) * 31) + this.playcount.hashCode()) * 31) + this.url.hashCode()) * 31) + this.wiki.hashCode();
        }

        public String toString() {
            return "Album(artist=" + this.artist + ", tags=" + this.tags + ", name=" + this.name + ", image=" + this.image + ", tracks=" + this.tracks + ", listeners=" + this.listeners + ", playcount=" + this.playcount + ", url=" + this.url + ", wiki=" + this.wiki + ")";
        }
    }

    public LastFMResponseBean(Album album) {
        this.album = album;
    }

    public static LastFMResponseBean copy$default(LastFMResponseBean lastFMResponseBean, Album album, int i, Object obj) {
        if ((i & 1) != 0) {
            album = lastFMResponseBean.album;
        }
        return lastFMResponseBean.copy(album);
    }

    public final Album getAlbum() {
        return this.album;
    }

    public final LastFMResponseBean copy(Album album) {
        return new LastFMResponseBean(album);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LastFMResponseBean) && y45.e(this.album, ((LastFMResponseBean) other).album);
    }

    public final Album getAlbum() {
        return this.album;
    }

    public int hashCode() {
        Album album = this.album;
        if (album == null) {
            return 0;
        }
        return album.hashCode();
    }

    public String toString() {
        return "LastFMResponseBean(album=" + this.album + ")";
    }
}

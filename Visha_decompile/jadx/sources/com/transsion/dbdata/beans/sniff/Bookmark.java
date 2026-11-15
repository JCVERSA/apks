package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

@Entity(tableName = "Bookmark")
public class Bookmark implements Serializable {

    @ColumnInfo
    public byte[] bitmap;

    @SerializedName(TtmlNode.ATTR_ID)
    @PrimaryKey(autoGenerate = true)
    public long id;

    @ColumnInfo
    private int imageResId;

    @SerializedName("icon")
    @ColumnInfo
    private String imageUri;

    @Ignore
    private boolean isEnable;

    @Ignore
    private boolean isLoadFromCode;

    @NonNull
    @SerializedName("website_name")
    @ColumnInfo
    private String name;

    @SerializedName("sort")
    @Ignore
    private int sort;

    @SerializedName("type")
    @Ignore
    private int type;

    @SerializedName("website_link")
    @ColumnInfo
    private String uri;

    public Bookmark(@NonNull String str, String str2, String str3) {
        this.name = str;
        this.uri = str2;
        this.imageUri = str3;
    }

    public byte[] getBitmap() {
        return this.bitmap;
    }

    public int getImageResId() {
        return this.imageResId;
    }

    public String getImageUri() {
        return this.imageUri;
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    public String getUri() {
        return this.uri;
    }

    public boolean isEnable() {
        return this.isEnable;
    }

    public boolean isLoadFromCode() {
        return this.isLoadFromCode;
    }

    public void setBitmap(byte[] bArr) {
        this.bitmap = bArr;
    }

    public void setEnable(boolean z) {
        this.isEnable = z;
    }

    public void setImageResId(int i) {
        this.imageResId = i;
    }

    public void setImageUri(String str) {
        this.imageUri = str;
    }

    public void setLoadFromCode(boolean z) {
        this.isLoadFromCode = z;
    }

    public void setName(@NonNull String str) {
        this.name = str;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    @Ignore
    public Bookmark(@NonNull String str, String str2, String str3, byte[] bArr) {
        this.name = str;
        this.uri = str2;
        this.imageUri = str3;
        this.bitmap = bArr;
    }

    @Ignore
    public Bookmark(@NonNull String str, String str2, byte[] bArr) {
        this.name = str;
        this.uri = str2;
        this.bitmap = bArr;
    }

    @Ignore
    public Bookmark(String str) {
        this.uri = str;
    }

    @Ignore
    public Bookmark(@NonNull String str, String str2, int i) {
        this.name = str;
        this.uri = str2;
        this.imageResId = i;
    }

    @Ignore
    public Bookmark(@NonNull String str, String str2) {
        this.name = str;
        this.uri = str2;
    }
}

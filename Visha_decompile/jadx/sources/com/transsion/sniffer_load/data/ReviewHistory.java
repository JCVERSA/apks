package com.transsion.sniffer_load.data;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

@Entity(tableName = "ReviewHistory")
public class ReviewHistory {

    @ColumnInfo
    public byte[] bitmap;

    @ColumnInfo
    public long date;

    @PrimaryKey(autoGenerate = true)
    public long id;

    @ColumnInfo
    public String imageUri;

    @Ignore
    public boolean isDateItem;

    @ColumnInfo
    public String name;

    @ColumnInfo
    public String url;

    @Ignore
    public ReviewHistory(String str, String str2, long j) {
        this.name = str;
        this.url = str2;
        this.date = j;
    }

    public byte[] getBitmap() {
        return this.bitmap;
    }

    public long getDate() {
        return this.date;
    }

    public long getId() {
        return this.id;
    }

    public String getImageUri() {
        return this.imageUri;
    }

    public String getName() {
        return this.name;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isDateItem() {
        return this.isDateItem;
    }

    public void setBitmap(byte[] bArr) {
        this.bitmap = bArr;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDateItem(boolean z) {
        this.isDateItem = z;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setImageUri(String str) {
        this.imageUri = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "ReviewHistory{id=" + this.id + ", name='" + this.name + "', url='" + this.url + "', date=" + this.date + '}';
    }

    public ReviewHistory(String str, String str2, String str3, long j) {
        this.name = str;
        this.imageUri = str2;
        this.url = str3;
        this.date = j;
    }

    @Ignore
    public ReviewHistory(String str, byte[] bArr, String str2, long j) {
        this.name = str;
        this.bitmap = bArr;
        this.url = str2;
        this.date = j;
    }

    @Ignore
    public ReviewHistory(String str, long j, boolean z) {
        this.name = str;
        this.isDateItem = z;
        this.date = j;
    }
}

package com.transsion.dbdata.database;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import java.io.Serializable;

@Entity(tableName = "AudioAlbum")
public class AudioAlbum implements Serializable {
    private static final long serialVersionUID = 5662304604075257939L;

    @PrimaryKey
    public Integer id;

    @ColumnInfo
    public String imgPath;

    public AudioAlbum(int i, String str) {
        this.id = Integer.valueOf(i);
        this.imgPath = str;
    }

    public String toString() {
        return "AudioAlbum{id=" + this.id + ", imgPath='" + this.imgPath + "'}";
    }
}

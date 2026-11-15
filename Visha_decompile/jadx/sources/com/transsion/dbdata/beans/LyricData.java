package com.transsion.dbdata.beans;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity(tableName = "lyric_data")
public class LyricData {

    @ColumnInfo(name = "_data", typeAffinity = 2)
    public String _data;

    @PrimaryKey
    @ColumnInfo(name = "media_id", typeAffinity = 3)
    public int media_id;

    @ColumnInfo(name = "delay", typeAffinity = 3)
    public int offset;
}

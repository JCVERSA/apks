package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.transsion.livecaption.constant.ICode;

@Entity(tableName = "SubtitleHistory")
public class SubtitleHistory {

    @Ignore
    public boolean isCheck;

    @ColumnInfo(name = ICode.CALL.CALL_KEY_STATE)
    public int state;

    @NonNull
    @PrimaryKey(autoGenerate = false)
    @ColumnInfo(name = "sub_id")
    public String subId;

    @ColumnInfo(name = "sub_language")
    public String subLanguage;

    @ColumnInfo(name = "sub_language_id")
    public String subLanguageId;

    @ColumnInfo(name = "sub_name")
    public String subName;

    @ColumnInfo(name = "sub_path")
    public String subPath;

    @ColumnInfo(name = "sub_size")
    public long subSize;

    @NonNull
    public String toString() {
        return "subId" + this.subId + ",subName" + this.subName + ",subLanguage" + this.subLanguage + ",sub_size" + this.subSize;
    }
}

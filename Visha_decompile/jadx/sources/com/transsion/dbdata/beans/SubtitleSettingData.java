package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.transsion.utils.BaseConstant;

@Entity(tableName = "SubtitleSetting")
public class SubtitleSettingData {

    @ColumnInfo(name = "location")
    public int location;

    @ColumnInfo(name = "text_alignment")
    public int textAlignment;

    @ColumnInfo(name = "text_background_color")
    public int textBackgroundColor;

    @ColumnInfo(name = "text_background_opacity")
    public int textBackgroundOpacity;

    @ColumnInfo(name = "text_color")
    public int textColor;

    @ColumnInfo(name = "text_drag")
    public int textDrag;

    @ColumnInfo(name = "text_size")
    public int textSize;

    @ColumnInfo(name = "text_style")
    public int textStyle;

    @ColumnInfo(name = "time")
    public int time;

    @ColumnInfo(name = "translateY")
    public int translateY;

    @PrimaryKey(autoGenerate = false)
    @ColumnInfo(name = "video_id")
    public int videoId;

    public SubtitleSettingData() {
    }

    public boolean canDrag() {
        return this.textDrag == 0;
    }

    public void cloneData(SubtitleSettingData subtitleSettingData) {
        this.videoId = subtitleSettingData.videoId;
        this.location = subtitleSettingData.location;
        this.translateY = subtitleSettingData.translateY;
        this.textStyle = subtitleSettingData.textStyle;
        this.textSize = subtitleSettingData.textSize;
        this.textBackgroundColor = subtitleSettingData.textBackgroundColor;
        this.textBackgroundOpacity = subtitleSettingData.textBackgroundOpacity;
        this.textColor = subtitleSettingData.textColor;
        this.textAlignment = subtitleSettingData.textAlignment;
        this.textDrag = subtitleSettingData.textDrag;
        this.time = subtitleSettingData.time;
    }

    @NonNull
    public String toString() {
        return "videoId" + this.videoId + "textAlignment" + this.textAlignment + "location" + this.location + "translateY" + this.translateY + "textSize" + this.textSize + "textStyle" + this.textStyle + "textColor" + this.textColor + "textDrag" + this.textDrag;
    }

    @Ignore
    public SubtitleSettingData(int i) {
        this.videoId = i;
        this.location = 2;
        this.translateY = 0;
        this.textAlignment = BaseConstant.q;
        this.textSize = BaseConstant.p;
        this.textStyle = 1;
        this.textColor = 0;
        this.textBackgroundColor = 1;
        this.textBackgroundOpacity = 70;
        this.textDrag = 0;
    }
}

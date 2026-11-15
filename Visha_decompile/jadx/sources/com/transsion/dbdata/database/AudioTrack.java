package com.transsion.dbdata.database;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import java.io.Serializable;
import org.apache.commons.text.StringSubstitutor;

@Entity
public class AudioTrack implements Serializable {
    private static final long serialVersionUID = 335563324322130151L;

    @ColumnInfo
    public int audioId;

    @PrimaryKey(autoGenerate = false)
    @ColumnInfo
    public int id;

    @ColumnInfo
    public String name;

    @NonNull
    public String toString() {
        return "AudioTrack{audioId=" + this.audioId + ", name=" + this.name + StringSubstitutor.DEFAULT_VAR_END;
    }
}

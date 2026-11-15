package com.transsion.dbdata.database;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import defpackage.bw6;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Database(entities = {MusicVideoDataBean.class}, exportSchema = false, version = 1)
public abstract class MusicVideoDatabase extends RoomDatabase {
    public static Context c;
    public static volatile MusicVideoDatabase d;
    public List a = new CopyOnWriteArrayList();
    public List b = new CopyOnWriteArrayList();

    public static MusicVideoDatabase a() {
        if (d == null) {
            synchronized (SniffScriptDatabase.class) {
                try {
                    if (d == null) {
                        d = (MusicVideoDatabase) Room.databaseBuilder(Utils.a() != null ? Utils.a() : c, MusicVideoDatabase.class, "music_video_info2.db").fallbackToDestructiveMigration().build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public abstract bw6 b();
}

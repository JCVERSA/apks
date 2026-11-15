package com.transsion.dbdata.database;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.YoutubeData;
import defpackage.tuc;

@Database(entities = {YoutubeData.class}, exportSchema = false, version = 1)
public abstract class YoutubeRoomDatabase extends RoomDatabase {
    public static volatile YoutubeRoomDatabase a;

    public static YoutubeRoomDatabase a() {
        if (a == null) {
            synchronized (SniffScriptDatabase.class) {
                try {
                    if (a == null) {
                        a = (YoutubeRoomDatabase) Room.databaseBuilder(Utils.a(), YoutubeRoomDatabase.class, "youtube_url_info.db").fallbackToDestructiveMigration().build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public abstract tuc b();
}

package com.transsion.dbdata.database;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import defpackage.br9;

@Database(entities = {SniffScriptBean.class}, exportSchema = false, version = 2)
public abstract class SniffScriptDatabase extends RoomDatabase {
    public static volatile SniffScriptDatabase a;

    public static SniffScriptDatabase a() {
        if (a == null) {
            synchronized (SniffScriptDatabase.class) {
                try {
                    if (a == null) {
                        a = (SniffScriptDatabase) Room.databaseBuilder(Utils.a(), SniffScriptDatabase.class, "sniffer_sever.db").fallbackToDestructiveMigration().allowMainThreadQueries().build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public abstract br9 b();
}

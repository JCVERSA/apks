package com.transsion.dbdata.database;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import defpackage.sg7;
import defpackage.zf7;

@Database(entities = {HistoryBean.class, HistoryUserBean.class}, exportSchema = false, version = 7)
public abstract class OnlineVideoDatabase extends RoomDatabase {
    public static volatile OnlineVideoDatabase a;
    public static final Migration b = new a(6, 7);
    public static final Migration c = new b(5, 6);
    public static final Migration d = new c(4, 5);
    public static final Migration e = new d(3, 4);
    public static final Migration f = new e(1, 2);
    public static final Migration g = new f(2, 3);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN play_let INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN play_let INTEGER NOT NULL DEFAULT 0");
        }
    }

    public class b extends Migration {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN video_bean_json TEXT  DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN video_bean_json TEXT  DEFAULT ''");
        }
    }

    public class c extends Migration {
        public c(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN is_youtube INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN channel_name TEXT   DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN channel_cover TEXT DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN is_youtube INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN channel_name TEXT   DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN channel_cover TEXT DEFAULT ''");
        }
    }

    public class d extends Migration {
        public d(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN video_link TEXT  DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN source_type TEXT   DEFAULT '1'");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN video_link TEXT DEFAULT ''");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN source_type TEXT DEFAULT '1'");
        }
    }

    public class e extends Migration {
        public e(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN record_id INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN user_id INTEGER  NOT NULL  DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN video_serial_name TEXT");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `online_user_history` (`serialId` INTEGER NOT NULL, `source_id` TEXT, `video_id` INTEGER NOT NULL, `video_name` TEXT, `series_id` INTEGER NOT NULL, `video_description` TEXT, `last_play_postion` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `video_cover` TEXT, `last_watch_time` INTEGER NOT NULL, `last_frame_img` BLOB, `watch_progress` REAL NOT NULL, `update_progress` TEXT, `record_id` INTEGER NOT NULL, `user_id` INTEGER NOT NULL, `video_serial_name` TEXT, `is_uploaded` INTEGER NOT NULL,  PRIMARY KEY(`serialId`))");
        }
    }

    public class f extends Migration {
        public f(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN pay_type INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_history ADD COLUMN is_intact INTEGER  NOT NULL  DEFAULT 1");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN pay_type INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.execSQL("ALTER TABLE online_user_history ADD COLUMN is_intact INTEGER  NOT NULL  DEFAULT 1");
        }
    }

    public static OnlineVideoDatabase a() {
        if (a == null) {
            synchronized (OnlineVideoDatabase.class) {
                try {
                    if (a == null) {
                        a = (OnlineVideoDatabase) Room.databaseBuilder(Utils.a(), OnlineVideoDatabase.class, "online_video_info.db").addMigrations(f, g, e, d, c, b).fallbackToDestructiveMigration().build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public abstract zf7 b();

    public abstract sg7 c();
}

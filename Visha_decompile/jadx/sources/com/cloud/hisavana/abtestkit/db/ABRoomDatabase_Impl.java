package com.cloud.hisavana.abtestkit.db;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.jjd;
import defpackage.nnd;
import defpackage.pod;
import defpackage.xud;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ABRoomDatabase_Impl extends ABRoomDatabase {
    public volatile xud b;
    public volatile nnd c;

    public class a extends RoomOpenHelper.Delegate {
        public a() {
            super(1);
        }

        @Override
        public final void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `hisavana_ab_room` (`layer_id` INTEGER NOT NULL, `request_time` INTEGER NOT NULL, `ab_info` TEXT, PRIMARY KEY(`layer_id`))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `hisavana_local_ab_room` (`local_ab_version_code` INTEGER NOT NULL, `local_ab_json` TEXT, PRIMARY KEY(`local_ab_version_code`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c3731bb55f7c1b83c5a17ab41e6dc2b1')");
        }

        @Override
        public final void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `hisavana_ab_room`");
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `hisavana_local_ab_room`");
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public final void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public final void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) ABRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            ABRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onOpen(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public final void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override
        public final void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
        }

        @Override
        public final RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap map = new HashMap(3);
            map.put(ClientABTestDTOKt.LAYER_ID, new TableInfo.Column(ClientABTestDTOKt.LAYER_ID, "INTEGER", true, 1, null, 1));
            map.put(TrackingKey.REQUEST_TIME, new TableInfo.Column(TrackingKey.REQUEST_TIME, "INTEGER", true, 0, null, 1));
            map.put("ab_info", new TableInfo.Column("ab_info", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("hisavana_ab_room", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "hisavana_ab_room");
            if (!tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(false, "hisavana_ab_room(com.cloud.hisavana.abtestkit.db.entities.OnlineABEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
            HashMap map2 = new HashMap(2);
            map2.put("local_ab_version_code", new TableInfo.Column("local_ab_version_code", "INTEGER", true, 1, null, 1));
            map2.put("local_ab_json", new TableInfo.Column("local_ab_json", "TEXT", false, 0, null, 1));
            TableInfo tableInfo3 = new TableInfo("hisavana_local_ab_room", map2, new HashSet(0), new HashSet(0));
            TableInfo tableInfo4 = TableInfo.read(supportSQLiteDatabase, "hisavana_local_ab_room");
            if (tableInfo3.equals(tableInfo4)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "hisavana_local_ab_room(com.cloud.hisavana.abtestkit.db.entities.LocalABEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + tableInfo4);
        }
    }

    @Override
    public final jjd a() {
        nnd nndVar;
        if (this.c != null) {
            return this.c;
        }
        synchronized (this) {
            try {
                if (this.c == null) {
                    this.c = new nnd(this);
                }
                nndVar = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nndVar;
    }

    @Override
    public final pod b() {
        xud xudVar;
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b == null) {
                    this.b = new xud(this);
                }
                xudVar = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xudVar;
    }

    @Override
    public final void clearAllTables() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        try {
            beginTransaction();
            writableDatabase.execSQL("DELETE FROM `hisavana_ab_room`");
            writableDatabase.execSQL("DELETE FROM `hisavana_local_ab_room`");
            setTransactionSuccessful();
        } finally {
            endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "hisavana_ab_room", "hisavana_local_ab_room");
    }

    @Override
    public final SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(), "c3731bb55f7c1b83c5a17ab41e6dc2b1", "59a3f677eceb796bf1de1bde197864ae")).build());
    }

    @Override
    public final List getAutoMigrations(Map map) {
        return new ArrayList();
    }

    @Override
    public final Set getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override
    public final Map getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(pod.class, Collections.emptyList());
        map.put(jjd.class, Collections.emptyList());
        return map;
    }
}

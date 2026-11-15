package com.transsion.dbdata.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import defpackage.br9;
import defpackage.cr9;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class SniffScriptDatabase_Impl extends SniffScriptDatabase {
    public volatile br9 b;

    public class a extends RoomOpenHelper.Delegate {
        public a(int i) {
            super(i);
        }

        @Override
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `url_js` (`script_key` TEXT NOT NULL, `script_version` TEXT, `script_url` TEXT, `sniff_domain` TEXT, `sniff_url` TEXT, `script_content` TEXT, `script_status` INTEGER NOT NULL, `script_updatetime` INTEGER NOT NULL, `js_file_name` TEXT, PRIMARY KEY(`script_key`))");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '1496f40ccd22931f5fcff79e0ac55a65')");
        }

        @Override
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `url_js`");
            List list = ((RoomDatabase) SniffScriptDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onDestructiveMigration(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            List list = ((RoomDatabase) SniffScriptDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) SniffScriptDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
            SniffScriptDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            List list = ((RoomDatabase) SniffScriptDatabase_Impl.this).mCallbacks;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.Callback) it.next()).onOpen(supportSQLiteDatabase);
                }
            }
        }

        @Override
        public void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override
        public void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
        }

        @Override
        public RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap map = new HashMap(9);
            map.put("script_key", new TableInfo.Column("script_key", "TEXT", true, 1, null, 1));
            map.put("script_version", new TableInfo.Column("script_version", "TEXT", false, 0, null, 1));
            map.put("script_url", new TableInfo.Column("script_url", "TEXT", false, 0, null, 1));
            map.put("sniff_domain", new TableInfo.Column("sniff_domain", "TEXT", false, 0, null, 1));
            map.put(SniffSoucreBean.JSON_KEY_SNIFF_URL, new TableInfo.Column(SniffSoucreBean.JSON_KEY_SNIFF_URL, "TEXT", false, 0, null, 1));
            map.put("script_content", new TableInfo.Column("script_content", "TEXT", false, 0, null, 1));
            map.put("script_status", new TableInfo.Column("script_status", "INTEGER", true, 0, null, 1));
            map.put("script_updatetime", new TableInfo.Column("script_updatetime", "INTEGER", true, 0, null, 1));
            map.put("js_file_name", new TableInfo.Column("js_file_name", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("url_js", map, new HashSet(0), new HashSet(0));
            TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "url_js");
            if (tableInfo.equals(tableInfo2)) {
                return new RoomOpenHelper.ValidationResult(true, null);
            }
            return new RoomOpenHelper.ValidationResult(false, "url_js(com.transsion.dbdata.beans.sniff.SniffScriptBean).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
        }
    }

    @Override
    public br9 b() {
        br9 br9Var;
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            try {
                if (this.b == null) {
                    this.b = new cr9(this);
                }
                br9Var = this.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return br9Var;
    }

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `url_js`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "url_js");
    }

    @Override
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new a(2), "1496f40ccd22931f5fcff79e0ac55a65", "272f0c752d2147f00a05af80cf824ef5")).build());
    }

    @Override
    public List getAutoMigrations(Map map) {
        return new ArrayList();
    }

    @Override
    public Set getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override
    public Map getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(br9.class, cr9.a());
        return map;
    }
}

package com.mgmi.db.dao3;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class MgmiPullRefreshAdDao extends AbstractDao<h, Long> {
    public static final String TABLENAME = "MGMI_PULLREFRESH_AD_DB";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, Integer.TYPE, "channel", false, "CHANNEL");
        public static final Property c = new Property(2, String.class, "vast", false, "VAST");
    }

    public MgmiPullRefreshAdDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"MGMI_PULLREFRESH_AD_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"CHANNEL\" INTEGER NOT NULL ,\"VAST\" TEXT);");
    }

    public static void b(Database database, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"MGMI_PULLREFRESH_AD_DB\"");
        database.execSQL(sb.toString());
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, h hVar) {
        databaseStatement.clearBindings();
        Long lA = hVar.a();
        if (lA != null) {
            databaseStatement.bindLong(1, lA.longValue());
        }
        databaseStatement.bindLong(2, hVar.b());
        String strC = hVar.c();
        if (strC != null) {
            databaseStatement.bindString(3, strC);
        }
    }

    @Override
    public h readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = cursor.getInt(i + 1);
        int i3 = i + 2;
        return new h(lValueOf, i2, cursor.isNull(i3) ? null : cursor.getString(i3));
    }

    @Override
    public boolean hasKey(h hVar) {
        return hVar.a() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, h hVar) {
        sQLiteStatement.clearBindings();
        Long lA = hVar.a();
        if (lA != null) {
            sQLiteStatement.bindLong(1, lA.longValue());
        }
        sQLiteStatement.bindLong(2, hVar.b());
        String strC = hVar.c();
        if (strC != null) {
            sQLiteStatement.bindString(3, strC);
        }
    }

    @Override
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i));
    }

    @Override
    public void readEntity(Cursor cursor, h hVar, int i) {
        hVar.a(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        hVar.a(cursor.getInt(i + 1));
        int i2 = i + 2;
        hVar.a(cursor.isNull(i2) ? null : cursor.getString(i2));
    }

    @Override
    public final Long updateKeyAfterInsert(h hVar, long j) {
        hVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(h hVar) {
        if (hVar != null) {
            return hVar.a();
        }
        return null;
    }
}

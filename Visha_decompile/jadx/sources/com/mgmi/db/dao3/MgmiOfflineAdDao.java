package com.mgmi.db.dao3;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class MgmiOfflineAdDao extends AbstractDao<f, Long> {
    public static final String TABLENAME = "MGMI_OFFLINEAD_DB";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, Integer.class, "videoId", false, "VIDEOID");
        public static final Property c = new Property(2, String.class, "vast", false, "VAST");
        public static final Property d = new Property(3, Long.class, "created", false, "CREATED");
    }

    public MgmiOfflineAdDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"MGMI_OFFLINEAD_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"VIDEOID\" INTEGER,\"VAST\" TEXT,\"CREATED\" INTEGER);");
    }

    public static void b(Database database, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"MGMI_OFFLINEAD_DB\"");
        database.execSQL(sb.toString());
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, f fVar) {
        databaseStatement.clearBindings();
        Long lA = fVar.a();
        if (lA != null) {
            databaseStatement.bindLong(1, lA.longValue());
        }
        Integer numB = fVar.b();
        if (numB != null) {
            databaseStatement.bindLong(2, numB.intValue());
        }
        String strC = fVar.c();
        if (strC != null) {
            databaseStatement.bindString(3, strC);
        }
        Long lD = fVar.d();
        if (lD != null) {
            databaseStatement.bindLong(4, lD.longValue());
        }
    }

    @Override
    public f readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = i + 1;
        int i3 = i + 2;
        int i4 = i + 3;
        return new f(lValueOf, cursor.isNull(i2) ? null : Integer.valueOf(cursor.getInt(i2)), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.isNull(i4) ? null : Long.valueOf(cursor.getLong(i4)));
    }

    @Override
    public boolean hasKey(f fVar) {
        return fVar.a() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, f fVar) {
        sQLiteStatement.clearBindings();
        Long lA = fVar.a();
        if (lA != null) {
            sQLiteStatement.bindLong(1, lA.longValue());
        }
        Integer numB = fVar.b();
        if (numB != null) {
            sQLiteStatement.bindLong(2, numB.intValue());
        }
        String strC = fVar.c();
        if (strC != null) {
            sQLiteStatement.bindString(3, strC);
        }
        Long lD = fVar.d();
        if (lD != null) {
            sQLiteStatement.bindLong(4, lD.longValue());
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
    public void readEntity(Cursor cursor, f fVar, int i) {
        fVar.a(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        int i2 = i + 1;
        fVar.a(cursor.isNull(i2) ? null : Integer.valueOf(cursor.getInt(i2)));
        int i3 = i + 2;
        fVar.a(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        fVar.b(cursor.isNull(i4) ? null : Long.valueOf(cursor.getLong(i4)));
    }

    @Override
    public final Long updateKeyAfterInsert(f fVar, long j) {
        fVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(f fVar) {
        if (fVar != null) {
            return fVar.a();
        }
        return null;
    }
}

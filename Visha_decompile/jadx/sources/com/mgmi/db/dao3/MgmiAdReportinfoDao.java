package com.mgmi.db.dao3;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class MgmiAdReportinfoDao extends AbstractDao<e, Long> {
    public static final String TABLENAME = "MGMI_ADREPORTER_DB";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, String.class, "uuid", false, "UUID");
        public static final Property c = new Property(2, String.class, "packageName", false, "DOWNLOADPACKNAME");
        public static final Property d = new Property(3, String.class, "downloadPath", false, "DOWNLOADPATH");
        public static final Property e = new Property(4, String.class, "repoterData", false, "REPORTDATA");
        public static final Property f = new Property(5, String.class, "urldata", false, "URLDATA");
        public static final Property g = new Property(6, Long.class, "valueExpire", false, "EXPIRETIME");
    }

    public MgmiAdReportinfoDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"MGMI_ADREPORTER_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"UUID\" TEXT,\"DOWNLOADPACKNAME\" TEXT,\"DOWNLOADPATH\" TEXT,\"REPORTDATA\" TEXT,\"URLDATA\" TEXT,\"EXPIRETIME\" INTEGER);");
    }

    @Override
    public e readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = i + 1;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 2;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 3;
        String string3 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 4;
        String string4 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 5;
        int i7 = i + 6;
        return new e(lValueOf, string, string2, string3, string4, cursor.isNull(i6) ? null : cursor.getString(i6), cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, e eVar) {
        databaseStatement.clearBindings();
        Long lE = eVar.e();
        if (lE != null) {
            databaseStatement.bindLong(1, lE.longValue());
        }
        String strA = eVar.a();
        if (strA != null) {
            databaseStatement.bindString(2, strA);
        }
        String strF = eVar.f();
        if (strF != null) {
            databaseStatement.bindString(3, strF);
        }
        String strG = eVar.g();
        if (strG != null) {
            databaseStatement.bindString(4, strG);
        }
        String strB = eVar.b();
        if (strB != null) {
            databaseStatement.bindString(5, strB);
        }
        String strC = eVar.c();
        if (strC != null) {
            databaseStatement.bindString(6, strC);
        }
        Long lD = eVar.d();
        if (lD != null) {
            databaseStatement.bindLong(7, lD.longValue());
        }
    }

    @Override
    public boolean hasKey(e eVar) {
        return eVar.e() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, e eVar) {
        sQLiteStatement.clearBindings();
        Long lE = eVar.e();
        if (lE != null) {
            sQLiteStatement.bindLong(1, lE.longValue());
        }
        String strA = eVar.a();
        if (strA != null) {
            sQLiteStatement.bindString(2, strA);
        }
        String strF = eVar.f();
        if (strF != null) {
            sQLiteStatement.bindString(3, strF);
        }
        String strG = eVar.g();
        if (strG != null) {
            sQLiteStatement.bindString(4, strG);
        }
        String strB = eVar.b();
        if (strB != null) {
            sQLiteStatement.bindString(5, strB);
        }
        String strC = eVar.c();
        if (strC != null) {
            sQLiteStatement.bindString(6, strC);
        }
        Long lD = eVar.d();
        if (lD != null) {
            sQLiteStatement.bindLong(7, lD.longValue());
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
    public void readEntity(Cursor cursor, e eVar, int i) {
        eVar.b(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        int i2 = i + 1;
        eVar.a(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 2;
        eVar.d(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 3;
        eVar.e(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        eVar.c(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        eVar.b(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i + 6;
        eVar.a(cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
    }

    @Override
    public final Long updateKeyAfterInsert(e eVar, long j) {
        eVar.b(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(e eVar) {
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }
}

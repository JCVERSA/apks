package com.mgmi.db.dao3;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class FileDownloadInfoDao extends AbstractDao<c, Long> {
    public static final String TABLENAME = "DOWNLOAD_FILE_INFO";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, String.class, "fileUrl", false, "FILE_URL");
        public static final Property c = new Property(2, String.class, Progress.FILE_PATH, false, "FILE_PATH");
        public static final Property d;
        public static final Property e;
        public static final Property f;
        public static final Property g;
        public static final Property h;
        public static final Property i;

        static {
            Class cls = Long.TYPE;
            d = new Property(3, cls, "completeSize", false, "COMPLETE_SIZE");
            e = new Property(4, cls, Progress.TOTAL_SIZE, false, "TOTAL_SIZE");
            f = new Property(5, Integer.class, "status", false, "STATUS");
            g = new Property(6, cls, "operateTime", false, "OPERATE_TIME");
            h = new Property(7, Integer.class, "speed", false, "SPEED");
            i = new Property(8, String.class, "uuid", false, "UUID");
        }
    }

    public FileDownloadInfoDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"DOWNLOAD_FILE_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"FILE_URL\" TEXT,\"FILE_PATH\" TEXT,\"COMPLETE_SIZE\" INTEGER NOT NULL ,\"TOTAL_SIZE\" INTEGER NOT NULL ,\"STATUS\" INTEGER,\"OPERATE_TIME\" INTEGER NOT NULL ,\"SPEED\" INTEGER,\"UUID\" TEXT);");
    }

    public static void b(Database database, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"DOWNLOAD_FILE_INFO\"");
        database.execSQL(sb.toString());
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, c cVar) {
        databaseStatement.clearBindings();
        Long lA = cVar.a();
        if (lA != null) {
            databaseStatement.bindLong(1, lA.longValue());
        }
        String strB = cVar.b();
        if (strB != null) {
            databaseStatement.bindString(2, strB);
        }
        String strC = cVar.c();
        if (strC != null) {
            databaseStatement.bindString(3, strC);
        }
        databaseStatement.bindLong(4, cVar.d().longValue());
        databaseStatement.bindLong(5, cVar.e().longValue());
        Integer numF = cVar.f();
        if (numF != null) {
            databaseStatement.bindLong(6, numF.intValue());
        }
        databaseStatement.bindLong(7, cVar.g().longValue());
        Integer numH = cVar.h();
        if (numH != null) {
            databaseStatement.bindLong(8, numH.intValue());
        }
        String strI = cVar.i();
        if (strI != null) {
            databaseStatement.bindString(9, strI);
        }
    }

    @Override
    public c readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = i + 1;
        String string = cursor.isNull(i2) ? null : cursor.getString(i2);
        int i3 = i + 2;
        String string2 = cursor.isNull(i3) ? null : cursor.getString(i3);
        long j = cursor.getLong(i + 3);
        long j2 = cursor.getLong(i + 4);
        int i4 = i + 5;
        Integer numValueOf = cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4));
        long j3 = cursor.getLong(i + 6);
        int i5 = i + 7;
        int i6 = i + 8;
        return new c(lValueOf, string, string2, j, j2, numValueOf, j3, cursor.isNull(i5) ? null : Integer.valueOf(cursor.getInt(i5)), cursor.isNull(i6) ? null : cursor.getString(i6));
    }

    @Override
    public boolean hasKey(c cVar) {
        return cVar.a() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, c cVar) {
        sQLiteStatement.clearBindings();
        Long lA = cVar.a();
        if (lA != null) {
            sQLiteStatement.bindLong(1, lA.longValue());
        }
        String strB = cVar.b();
        if (strB != null) {
            sQLiteStatement.bindString(2, strB);
        }
        String strC = cVar.c();
        if (strC != null) {
            sQLiteStatement.bindString(3, strC);
        }
        sQLiteStatement.bindLong(4, cVar.d().longValue());
        sQLiteStatement.bindLong(5, cVar.e().longValue());
        Integer numF = cVar.f();
        if (numF != null) {
            sQLiteStatement.bindLong(6, numF.intValue());
        }
        sQLiteStatement.bindLong(7, cVar.g().longValue());
        Integer numH = cVar.h();
        if (numH != null) {
            sQLiteStatement.bindLong(8, numH.intValue());
        }
        String strI = cVar.i();
        if (strI != null) {
            sQLiteStatement.bindString(9, strI);
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
    public void readEntity(Cursor cursor, c cVar, int i) {
        cVar.a(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        int i2 = i + 1;
        cVar.a(cursor.isNull(i2) ? null : cursor.getString(i2));
        int i3 = i + 2;
        cVar.b(cursor.isNull(i3) ? null : cursor.getString(i3));
        cVar.a(cursor.getLong(i + 3));
        cVar.b(cursor.getLong(i + 4));
        int i4 = i + 5;
        cVar.a(cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4)));
        cVar.c(cursor.getLong(i + 6));
        int i5 = i + 7;
        cVar.b(cursor.isNull(i5) ? null : Integer.valueOf(cursor.getInt(i5)));
        int i6 = i + 8;
        cVar.c(cursor.isNull(i6) ? null : cursor.getString(i6));
    }

    @Override
    public final Long updateKeyAfterInsert(c cVar, long j) {
        cVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(c cVar) {
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }
}

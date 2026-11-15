package com.mgtv.ssp.download.dao3;

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
    public static final String TABLENAME = "FILE_DOWNLOAD_INFO";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, String.class, "fileId", false, "FILE_ID");
        public static final Property c = new Property(2, String.class, Progress.FILE_NAME, false, "FILE_NAME");
        public static final Property d = new Property(3, String.class, Progress.FILE_PATH, false, "FILE_PATH");
        public static final Property e = new Property(4, String.class, "fileUrl", false, "FILE_URL");
        public static final Property f = new Property(5, Long.class, "operateTime", false, "OPERATE_TIME");
        public static final Property g = new Property(6, Long.class, "completeSize", false, "COMPLETE_SIZE");
        public static final Property h = new Property(7, Long.class, Progress.TOTAL_SIZE, false, "TOTAL_SIZE");
        public static final Property i = new Property(8, Integer.class, "status", false, "STATUS");
        public static final Property j = new Property(9, String.class, "fileMD5", false, "FILE_MD5");
    }

    public FileDownloadInfoDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"FILE_DOWNLOAD_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"FILE_ID\" TEXT,\"FILE_NAME\" TEXT,\"FILE_PATH\" TEXT,\"FILE_URL\" TEXT,\"OPERATE_TIME\" INTEGER,\"COMPLETE_SIZE\" INTEGER,\"TOTAL_SIZE\" INTEGER,\"STATUS\" INTEGER,\"FILE_MD5\" TEXT);");
    }

    @Override
    public c readEntity(Cursor cursor, int i) {
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
        Long lValueOf2 = cursor.isNull(i6) ? null : Long.valueOf(cursor.getLong(i6));
        int i7 = i + 6;
        Long lValueOf3 = cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7));
        int i8 = i + 7;
        Long lValueOf4 = cursor.isNull(i8) ? null : Long.valueOf(cursor.getLong(i8));
        int i9 = i + 8;
        int i10 = i + 9;
        return new c(lValueOf, string, string2, string3, string4, lValueOf2, lValueOf3, lValueOf4, cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)), cursor.isNull(i10) ? null : cursor.getString(i10));
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
        String strD = cVar.d();
        if (strD != null) {
            databaseStatement.bindString(4, strD);
        }
        String strE = cVar.e();
        if (strE != null) {
            databaseStatement.bindString(5, strE);
        }
        Long lF = cVar.f();
        if (lF != null) {
            databaseStatement.bindLong(6, lF.longValue());
        }
        Long lG = cVar.g();
        if (lG != null) {
            databaseStatement.bindLong(7, lG.longValue());
        }
        Long lH = cVar.h();
        if (lH != null) {
            databaseStatement.bindLong(8, lH.longValue());
        }
        Integer numI = cVar.i();
        if (numI != null) {
            databaseStatement.bindLong(9, numI.intValue());
        }
        String strJ = cVar.j();
        if (strJ != null) {
            databaseStatement.bindString(10, strJ);
        }
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
        String strD = cVar.d();
        if (strD != null) {
            sQLiteStatement.bindString(4, strD);
        }
        String strE = cVar.e();
        if (strE != null) {
            sQLiteStatement.bindString(5, strE);
        }
        Long lF = cVar.f();
        if (lF != null) {
            sQLiteStatement.bindLong(6, lF.longValue());
        }
        Long lG = cVar.g();
        if (lG != null) {
            sQLiteStatement.bindLong(7, lG.longValue());
        }
        Long lH = cVar.h();
        if (lH != null) {
            sQLiteStatement.bindLong(8, lH.longValue());
        }
        Integer numI = cVar.i();
        if (numI != null) {
            sQLiteStatement.bindLong(9, numI.intValue());
        }
        String strJ = cVar.j();
        if (strJ != null) {
            sQLiteStatement.bindString(10, strJ);
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
        int i4 = i + 3;
        cVar.c(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        cVar.d(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        cVar.b(cursor.isNull(i6) ? null : Long.valueOf(cursor.getLong(i6)));
        int i7 = i + 6;
        cVar.c(cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
        int i8 = i + 7;
        cVar.d(cursor.isNull(i8) ? null : Long.valueOf(cursor.getLong(i8)));
        int i9 = i + 8;
        cVar.a(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 9;
        cVar.e(cursor.isNull(i10) ? null : cursor.getString(i10));
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

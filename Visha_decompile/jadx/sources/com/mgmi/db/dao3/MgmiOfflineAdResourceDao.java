package com.mgmi.db.dao3;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.sniffer_load.sniffservice.SniffYoutubeUtil;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

public class MgmiOfflineAdResourceDao extends AbstractDao<g, Long> {
    public static final String TABLENAME = "MGMI_OFFLINEADRESOURCE_DB";

    public static class Properties {
        public static final Property a = new Property(0, Long.class, TtmlNode.ATTR_ID, true, "_id");
        public static final Property b = new Property(1, Long.class, "total", false, "TOTAL");
        public static final Property c = new Property(2, Long.class, "received", false, "RECEIVED");
        public static final Property d = new Property(3, String.class, "url", false, DataTypes.OBJ_URL);
        public static final Property e = new Property(4, String.class, "path", false, "PATH");
        public static final Property f = new Property(5, Long.class, SniffYoutubeUtil.YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE, false, "EXPIRE");
        public static final Property g = new Property(6, Long.class, "failed", false, "FAILED");
    }

    public MgmiOfflineAdResourceDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        database.execSQL("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"MGMI_OFFLINEADRESOURCE_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"TOTAL\" INTEGER,\"RECEIVED\" INTEGER,\"URL\" TEXT,\"PATH\" TEXT,\"EXPIRE\" INTEGER,\"FAILED\" INTEGER);");
    }

    public static void b(Database database, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(z ? "IF EXISTS " : "");
        sb.append("\"MGMI_OFFLINEADRESOURCE_DB\"");
        database.execSQL(sb.toString());
    }

    @Override
    public final boolean isEntityUpdateable() {
        return true;
    }

    @Override
    public final void bindValues(DatabaseStatement databaseStatement, g gVar) {
        databaseStatement.clearBindings();
        Long lA = gVar.a();
        if (lA != null) {
            databaseStatement.bindLong(1, lA.longValue());
        }
        Long lB = gVar.b();
        if (lB != null) {
            databaseStatement.bindLong(2, lB.longValue());
        }
        Long lC = gVar.c();
        if (lC != null) {
            databaseStatement.bindLong(3, lC.longValue());
        }
        String strD = gVar.d();
        if (strD != null) {
            databaseStatement.bindString(4, strD);
        }
        String strE = gVar.e();
        if (strE != null) {
            databaseStatement.bindString(5, strE);
        }
        Long lF = gVar.f();
        if (lF != null) {
            databaseStatement.bindLong(6, lF.longValue());
        }
        Long lG = gVar.g();
        if (lG != null) {
            databaseStatement.bindLong(7, lG.longValue());
        }
    }

    @Override
    public g readEntity(Cursor cursor, int i) {
        Long lValueOf = cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i));
        int i2 = i + 1;
        Long lValueOf2 = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 2;
        Long lValueOf3 = cursor.isNull(i3) ? null : Long.valueOf(cursor.getLong(i3));
        int i4 = i + 3;
        String string = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 4;
        String string2 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 5;
        int i7 = i + 6;
        return new g(lValueOf, lValueOf2, lValueOf3, string, string2, cursor.isNull(i6) ? null : Long.valueOf(cursor.getLong(i6)), cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
    }

    @Override
    public boolean hasKey(g gVar) {
        return gVar.a() != null;
    }

    @Override
    public final void bindValues(SQLiteStatement sQLiteStatement, g gVar) {
        sQLiteStatement.clearBindings();
        Long lA = gVar.a();
        if (lA != null) {
            sQLiteStatement.bindLong(1, lA.longValue());
        }
        Long lB = gVar.b();
        if (lB != null) {
            sQLiteStatement.bindLong(2, lB.longValue());
        }
        Long lC = gVar.c();
        if (lC != null) {
            sQLiteStatement.bindLong(3, lC.longValue());
        }
        String strD = gVar.d();
        if (strD != null) {
            sQLiteStatement.bindString(4, strD);
        }
        String strE = gVar.e();
        if (strE != null) {
            sQLiteStatement.bindString(5, strE);
        }
        Long lF = gVar.f();
        if (lF != null) {
            sQLiteStatement.bindLong(6, lF.longValue());
        }
        Long lG = gVar.g();
        if (lG != null) {
            sQLiteStatement.bindLong(7, lG.longValue());
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
    public void readEntity(Cursor cursor, g gVar, int i) {
        gVar.a(cursor.isNull(i) ? null : Long.valueOf(cursor.getLong(i)));
        int i2 = i + 1;
        gVar.b(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 2;
        gVar.c(cursor.isNull(i3) ? null : Long.valueOf(cursor.getLong(i3)));
        int i4 = i + 3;
        gVar.a(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 4;
        gVar.b(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 5;
        gVar.d(cursor.isNull(i6) ? null : Long.valueOf(cursor.getLong(i6)));
        int i7 = i + 6;
        gVar.e(cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
    }

    @Override
    public final Long updateKeyAfterInsert(g gVar, long j) {
        gVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    @Override
    public Long getKey(g gVar) {
        if (gVar != null) {
            return gVar.a();
        }
        return null;
    }
}

package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class jp1 extends SQLiteOpenHelper {
    public static final Lock g = new ReentrantLock();
    public final qda b;
    public final qda c;
    public final qda d;
    public final qda e;
    public final qda f;

    public jp1() {
        this(fe7.i().g());
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(this.b.b());
        sQLiteDatabase.execSQL(this.c.b());
        sQLiteDatabase.execSQL(this.d.b());
        sQLiteDatabase.execSQL(this.f.b());
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (kp1.a(sQLiteDatabase, this.b)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        }
        if (kp1.a(sQLiteDatabase, this.c)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
        }
        if (kp1.a(sQLiteDatabase, this.d)) {
            if (i == 3 && i2 == 4) {
                sQLiteDatabase.execSQL("ALTER TABLE download ADD COLUMN sniffId VARCHAR");
                sQLiteDatabase.execSQL("ALTER TABLE download ADD COLUMN source INTEGER");
                sQLiteDatabase.execSQL("ALTER TABLE download ADD COLUMN uaAgent VARCHAR");
                sQLiteDatabase.execSQL("ALTER TABLE download ADD COLUMN cookie VARCHAR");
            } else if (i == 4 && i2 == 5) {
                this.e.a(new aa1(Progress.TAG, "VARCHAR", true, true)).a(new aa1("url", "VARCHAR")).a(new aa1(Progress.FOLDER, "VARCHAR")).a(new aa1(Progress.FILE_PATH, "VARCHAR")).a(new aa1(Progress.FILE_NAME, "VARCHAR")).a(new aa1(Progress.FRACTION, "VARCHAR")).a(new aa1(Progress.TOTAL_SIZE, "INTEGER")).a(new aa1(Progress.CURRENT_SIZE, "INTEGER")).a(new aa1("status", "INTEGER")).a(new aa1("priority", "INTEGER")).a(new aa1("date", "INTEGER")).a(new aa1(Progress.IMGURL, "VARCHAR")).a(new aa1(Progress.MIMETYPE, "VARCHAR")).a(new aa1(Progress.REQUEST, "BLOB")).a(new aa1(Progress.EXTRA1, "BLOB")).a(new aa1(Progress.EXTRA2, "BLOB")).a(new aa1(Progress.EXTRA3, "BLOB")).a(new aa1(Progress.SNIFFID, "VARCHAR")).a(new aa1("source", "INTEGER")).a(new aa1(Progress.UAAGENT, "VARCHAR")).a(new aa1("cookie", "VARCHAR")).a(new aa1(Progress.ACCEPTLANGUAGE, "VARCHAR")).a(new aa1(Progress.ACCEPTTYPE, "VARCHAR")).a(new aa1("origin", "VARCHAR")).a(new aa1(Progress.REFERER, "VARCHAR"));
                sQLiteDatabase.execSQL(this.e.b());
                sQLiteDatabase.execSQL("INSERT INTO download_temp (tag, url, folder, filePath, fileName,fraction,totalSize,currentSize,status,priority,date,imgUrl,mimeType,request,extra1,extra2,extra3,sniffId,source,uaAgent,cookie) SELECT tag, url, folder, filePath, fileName,fraction,totalSize,currentSize,status,priority,date,imgUrl,mimeType,request,extra1,extra2,extra3,sniffId,source,uaAgent,cookie FROM download");
                sQLiteDatabase.execSQL("DROP TABLE download");
                sQLiteDatabase.execSQL("ALTER TABLE download_temp RENAME TO download");
            } else {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS download");
            }
        }
        if (kp1.a(sQLiteDatabase, this.f)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS upload");
        }
        onCreate(sQLiteDatabase);
    }

    public jp1(Context context) {
        super(context, "okgo.db", (SQLiteDatabase.CursorFactory) null, 5);
        qda qdaVar = new qda("cache");
        this.b = qdaVar;
        qda qdaVar2 = new qda("cookie");
        this.c = qdaVar2;
        qda qdaVar3 = new qda("download");
        this.d = qdaVar3;
        this.e = new qda("download_temp");
        qda qdaVar4 = new qda("upload");
        this.f = qdaVar4;
        qdaVar.a(new aa1("key", "VARCHAR", true, true)).a(new aa1(CacheEntity.LOCAL_EXPIRE, "INTEGER")).a(new aa1("head", "BLOB")).a(new aa1("data", "BLOB"));
        qdaVar2.a(new aa1(SerializableCookie.HOST, "VARCHAR")).a(new aa1("name", "VARCHAR")).a(new aa1(SerializableCookie.DOMAIN, "VARCHAR")).a(new aa1("cookie", "BLOB")).a(new aa1(SerializableCookie.HOST, "name", SerializableCookie.DOMAIN));
        qdaVar3.a(new aa1(Progress.TAG, "VARCHAR", true, true)).a(new aa1("url", "VARCHAR")).a(new aa1(Progress.FOLDER, "VARCHAR")).a(new aa1(Progress.FILE_PATH, "VARCHAR")).a(new aa1(Progress.FILE_NAME, "VARCHAR")).a(new aa1(Progress.FRACTION, "VARCHAR")).a(new aa1(Progress.TOTAL_SIZE, "INTEGER")).a(new aa1(Progress.CURRENT_SIZE, "INTEGER")).a(new aa1("status", "INTEGER")).a(new aa1("priority", "INTEGER")).a(new aa1("date", "INTEGER")).a(new aa1(Progress.IMGURL, "VARCHAR")).a(new aa1(Progress.MIMETYPE, "VARCHAR")).a(new aa1(Progress.REQUEST, "BLOB")).a(new aa1(Progress.EXTRA1, "BLOB")).a(new aa1(Progress.EXTRA2, "BLOB")).a(new aa1(Progress.EXTRA3, "BLOB")).a(new aa1(Progress.SNIFFID, "VARCHAR")).a(new aa1("source", "INTEGER")).a(new aa1(Progress.UAAGENT, "VARCHAR")).a(new aa1("cookie", "VARCHAR")).a(new aa1(Progress.ACCEPTLANGUAGE, "VARCHAR")).a(new aa1(Progress.ACCEPTTYPE, "VARCHAR")).a(new aa1("origin", "VARCHAR")).a(new aa1(Progress.REFERER, "VARCHAR"));
        qdaVar4.a(new aa1(Progress.TAG, "VARCHAR", true, true)).a(new aa1("url", "VARCHAR")).a(new aa1(Progress.FOLDER, "VARCHAR")).a(new aa1(Progress.FILE_PATH, "VARCHAR")).a(new aa1(Progress.FILE_NAME, "VARCHAR")).a(new aa1(Progress.FRACTION, "VARCHAR")).a(new aa1(Progress.TOTAL_SIZE, "INTEGER")).a(new aa1(Progress.CURRENT_SIZE, "INTEGER")).a(new aa1("status", "INTEGER")).a(new aa1("priority", "INTEGER")).a(new aa1("date", "INTEGER")).a(new aa1(Progress.REQUEST, "BLOB")).a(new aa1(Progress.EXTRA1, "BLOB")).a(new aa1(Progress.EXTRA2, "BLOB")).a(new aa1(Progress.EXTRA3, "BLOB"));
    }
}

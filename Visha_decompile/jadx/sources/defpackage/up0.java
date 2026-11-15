package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import com.lzy.okgo.cache.CacheEntity;
import java.util.List;

public class up0 extends t90 {

    public static class b {
        public static final up0 a = new up0();
    }

    public static up0 p() {
        return b.a;
    }

    @Override
    public String d() {
        return "cache";
    }

    public CacheEntity n(String str) {
        if (str == null) {
            return null;
        }
        List listG = g("key=?", new String[]{str});
        if (listG.size() > 0) {
            return (CacheEntity) listG.get(0);
        }
        return null;
    }

    @Override
    public ContentValues c(CacheEntity cacheEntity) {
        return CacheEntity.getContentValues(cacheEntity);
    }

    @Override
    public CacheEntity f(Cursor cursor) {
        return CacheEntity.parseCursorToBean(cursor);
    }

    public up0() {
        super(new jp1());
    }
}

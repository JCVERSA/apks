package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import com.lzy.okgo.model.Progress;
import java.util.List;

public class r03 extends t90 {

    public static class b {
        public static final r03 a = new r03();
    }

    public static r03 t() {
        return b.a;
    }

    @Override
    public String d() {
        return "download";
    }

    public void n(String str) {
        b("tag=?", new String[]{str});
    }

    public Progress o(String str) {
        return (Progress) j("tag=?", new String[]{str});
    }

    public List p() {
        return h(null, null, null, null, null, "date ASC", null);
    }

    @Override
    public ContentValues c(Progress progress) {
        return Progress.buildContentValues(progress);
    }

    public List r() {
        return h(null, "status not in(?)", new String[]{"5"}, null, null, "date ASC", null);
    }

    public List s() {
        return h(null, "status=?", new String[]{"5"}, null, null, "date ASC", null);
    }

    @Override
    public Progress f(Cursor cursor) {
        return Progress.parseCursorToBean(cursor);
    }

    public boolean v(ContentValues contentValues, String str) {
        return m(contentValues, "tag=?", new String[]{str});
    }

    public r03() {
        super(new jp1());
    }
}

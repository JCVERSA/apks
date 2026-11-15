package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import com.lzy.okgo.model.Progress;
import java.util.List;

public class phb extends t90 {

    public static class b {
        public static final phb a = new phb();
    }

    public static phb q() {
        return b.a;
    }

    @Override
    public String d() {
        return "upload";
    }

    public void n(String str) {
        b("tag=?", new String[]{str});
    }

    public Progress o(String str) {
        return (Progress) j("tag=?", new String[]{str});
    }

    @Override
    public ContentValues c(Progress progress) {
        return Progress.buildContentValues(progress);
    }

    public List r() {
        return h(null, "status not in(?)", new String[]{"5"}, null, null, "date ASC", null);
    }

    @Override
    public Progress f(Cursor cursor) {
        return Progress.parseCursorToBean(cursor);
    }

    public boolean t(ContentValues contentValues, String str) {
        return m(contentValues, "tag=?", new String[]{str});
    }

    public phb() {
        super(new jp1());
    }
}

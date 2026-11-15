package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.yandex.div.storage.database.ReadState;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ky0 implements nv9, Closeable {
    public final zs1.b b;
    public final List c;
    public final List d;

    public ky0(zs1.b bVar) {
        y45.j(bVar, "db");
        this.b = bVar;
        this.c = new ArrayList();
        this.d = new ArrayList();
    }

    public static final Cursor d(ky0 ky0Var, String str, String[] strArr) {
        y45.j(ky0Var, "this$0");
        y45.j(str, "$sql");
        y45.j(strArr, "$selectionArgs");
        Cursor cursorRawQuery = ky0Var.b.rawQuery(str, strArr);
        ky0Var.d.add(cursorRawQuery);
        return cursorRawQuery;
    }

    @Override
    public ReadState a(final String str, final String... strArr) {
        y45.j(str, "sql");
        y45.j(strArr, "selectionArgs");
        return new ReadState(null, new oj8() {
            @Override
            public final Object get() {
                return ky0.d(this.a, str, strArr);
            }
        }, 1, null);
    }

    @Override
    public void close() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ov9.a((SQLiteStatement) it.next());
        }
        this.c.clear();
        for (Cursor cursor : this.d) {
            if (!cursor.isClosed()) {
                ov9.a(cursor);
            }
        }
        this.d.clear();
    }

    @Override
    public SQLiteStatement compileStatement(String str) {
        y45.j(str, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.b.compileStatement(str);
        this.c.add(sQLiteStatementCompileStatement);
        return sQLiteStatementCompileStatement;
    }
}

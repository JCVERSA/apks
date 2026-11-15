package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0007\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "Landroid/database/sqlite/SQLiteProgram;", "delegate", MethodDecl.initName, "(Landroid/database/sqlite/SQLiteProgram;)V", "", "index", "Lzfb;", "bindNull", "(I)V", "", ES6Iterator.VALUE_PROPERTY, "bindLong", "(IJ)V", "", "bindDouble", "(ID)V", "", "bindString", "(ILjava/lang/String;)V", "", "bindBlob", "(I[B)V", "clearBindings", "()V", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Landroid/database/sqlite/SQLiteProgram;", "sqlite-framework_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    private final SQLiteProgram delegate;

    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        y45.j(sQLiteProgram, "delegate");
        this.delegate = sQLiteProgram;
    }

    @Override
    public void bindBlob(int index, byte[] value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        this.delegate.bindBlob(index, value);
    }

    @Override
    public void bindDouble(int index, double value) {
        this.delegate.bindDouble(index, value);
    }

    @Override
    public void bindLong(int index, long value) {
        this.delegate.bindLong(index, value);
    }

    @Override
    public void bindNull(int index) {
        this.delegate.bindNull(index);
    }

    @Override
    public void bindString(int index, String value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        this.delegate.bindString(index, value);
    }

    @Override
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override
    public void close() {
        this.delegate.close();
    }
}

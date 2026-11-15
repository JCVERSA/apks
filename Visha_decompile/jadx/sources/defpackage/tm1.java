package defpackage;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;

public class tm1 extends CursorWrapper implements CrossProcessCursor {
    public AbstractWindowedCursor b;

    public tm1(Cursor cursor) {
        super(cursor);
        for (int i = 0; i < 10 && (cursor instanceof CursorWrapper); i++) {
            cursor = ((CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            throw new IllegalArgumentException("Unknown type: ".concat(cursor.getClass().getName()));
        }
        this.b = (AbstractWindowedCursor) cursor;
    }

    public void a(CursorWindow cursorWindow) {
        this.b.setWindow(cursorWindow);
    }

    @Override
    public void fillWindow(int i, CursorWindow cursorWindow) {
        this.b.fillWindow(i, cursorWindow);
    }

    @Override
    public CursorWindow getWindow() {
        return this.b.getWindow();
    }

    @Override
    public final Cursor getWrappedCursor() {
        return this.b;
    }

    @Override
    public final boolean onMove(int i, int i2) {
        return this.b.onMove(i, i2);
    }
}

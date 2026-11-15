package androidx.room.util;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.MatrixCursor;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import defpackage.e74;
import defpackage.g1a;
import defpackage.hi;
import defpackage.j05;
import defpackage.ly0;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\u001a\u0015\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b\u001a\u001d\u0010\t\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\b\u001a\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\b\u001a%\u0010\u000b\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\u000e\u001a1\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000f*\u00020\u00002\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00028\u00000\u0010H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a+\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Landroid/database/Cursor;", "c", "copyAndClose", "(Landroid/database/Cursor;)Landroid/database/Cursor;", "", "name", "", "getColumnIndex", "(Landroid/database/Cursor;Ljava/lang/String;)I", "getColumnIndexOrThrow", "cursor", "findColumnIndexBySuffix", "", "columnNames", "([Ljava/lang/String;Ljava/lang/String;)I", "R", "Lkotlin/Function1;", "block", "useCursor", "(Landroid/database/Cursor;Le74;)Ljava/lang/Object;", "", "mapping", "wrapMappedColumns", "(Landroid/database/Cursor;[Ljava/lang/String;[I)Landroid/database/Cursor;", "room-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class CursorUtil {
    public static final Cursor copyAndClose(Cursor cursor) {
        y45.j(cursor, "c");
        Cursor cursor2 = cursor;
        try {
            Cursor cursor3 = cursor2;
            MatrixCursor matrixCursor = new MatrixCursor(cursor3.getColumnNames(), cursor3.getCount());
            while (cursor3.moveToNext()) {
                Object[] objArr = new Object[cursor3.getColumnCount()];
                int columnCount = cursor.getColumnCount();
                for (int i = 0; i < columnCount; i++) {
                    int type = cursor3.getType(i);
                    if (type == 0) {
                        objArr[i] = null;
                    } else if (type == 1) {
                        objArr[i] = Long.valueOf(cursor3.getLong(i));
                    } else if (type == 2) {
                        objArr[i] = Double.valueOf(cursor3.getDouble(i));
                    } else if (type == 3) {
                        objArr[i] = cursor3.getString(i);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i] = cursor3.getBlob(i);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            ly0.a(cursor2, null);
            return matrixCursor;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(cursor2, th);
                throw th2;
            }
        }
    }

    private static final int findColumnIndexBySuffix(Cursor cursor, String str) {
        return -1;
    }

    public static final int getColumnIndex(Cursor cursor, String str) {
        y45.j(cursor, "c");
        y45.j(str, "name");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex('`' + str + '`');
        return columnIndex2 >= 0 ? columnIndex2 : findColumnIndexBySuffix(cursor, str);
    }

    public static final int getColumnIndexOrThrow(Cursor cursor, String str) {
        String strS0;
        y45.j(cursor, "c");
        y45.j(str, "name");
        int columnIndex = getColumnIndex(cursor, str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = cursor.getColumnNames();
            y45.i(columnNames, "c.columnNames");
            strS0 = hi.s0(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception e) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e);
            strS0 = "unknown";
        }
        throw new IllegalArgumentException("column '" + str + "' does not exist. Available columns: " + strS0);
    }

    public static final <R> R useCursor(Cursor cursor, e74 e74Var) {
        y45.j(cursor, "<this>");
        y45.j(e74Var, "block");
        Cursor cursor2 = cursor;
        try {
            R r = (R) e74Var.invoke(cursor2);
            j05.b(1);
            ly0.a(cursor2, null);
            j05.a(1);
            return r;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                j05.b(1);
                ly0.a(cursor2, th);
                j05.a(1);
                throw th2;
            }
        }
    }

    public static final Cursor wrapMappedColumns(Cursor cursor, final String[] strArr, final int[] iArr) {
        y45.j(cursor, "cursor");
        y45.j(strArr, "columnNames");
        y45.j(iArr, "mapping");
        if (strArr.length == iArr.length) {
            return new CursorWrapper(cursor) {
                @Override
                public int getColumnIndex(String columnName) {
                    y45.j(columnName, "columnName");
                    String[] strArr2 = strArr;
                    int[] iArr2 = iArr;
                    int length = strArr2.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        int i3 = i2 + 1;
                        if (g1a.E(strArr2[i], columnName, true)) {
                            return iArr2[i2];
                        }
                        i++;
                        i2 = i3;
                    }
                    return super.getColumnIndex(columnName);
                }
            };
        }
        throw new IllegalStateException("Expected columnNames.length == mapping.length");
    }

    @VisibleForTesting
    public static final int findColumnIndexBySuffix(String[] strArr, String str) {
        y45.j(strArr, "columnNames");
        y45.j(str, "name");
        String str2 = '.' + str;
        String str3 = '.' + str + '`';
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str4 = strArr[i];
            int i3 = i2 + 1;
            if (str4.length() >= str.length() + 2) {
                if (g1a.D(str4, str2, false, 2, null)) {
                    return i2;
                }
                if (str4.charAt(0) == '`' && g1a.D(str4, str3, false, 2, null)) {
                    return i2;
                }
            }
            i++;
            i2 = i3;
        }
        return -1;
    }
}

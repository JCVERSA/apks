package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class a {
    public static final Cursor a(Cursor c10) {
        Intrinsics.h(c10, "c");
        try {
            MatrixCursor matrixCursor = new MatrixCursor(c10.getColumnNames(), c10.getCount());
            while (c10.moveToNext()) {
                Object[] objArr = new Object[c10.getColumnCount()];
                int columnCount = c10.getColumnCount();
                for (int i10 = 0; i10 < columnCount; i10++) {
                    int type = c10.getType(i10);
                    if (type == 0) {
                        objArr[i10] = null;
                    } else if (type == 1) {
                        objArr[i10] = Long.valueOf(c10.getLong(i10));
                    } else if (type == 2) {
                        objArr[i10] = Double.valueOf(c10.getDouble(i10));
                    } else if (type == 3) {
                        objArr[i10] = c10.getString(i10);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i10] = c10.getBlob(i10);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            CloseableKt.a(c10, null);
            return matrixCursor;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(c10, th2);
                throw th3;
            }
        }
    }

    private static final int b(Cursor cursor, String str) {
        if (Build.VERSION.SDK_INT > 25 || str.length() == 0) {
            return -1;
        }
        String[] columnNames = cursor.getColumnNames();
        Intrinsics.e(columnNames);
        return c(columnNames, str);
    }

    public static final int c(String[] columnNames, String name) {
        Intrinsics.h(columnNames, "columnNames");
        Intrinsics.h(name, "name");
        String str = '.' + name;
        String str2 = '.' + name + '`';
        int length = columnNames.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str3 = columnNames[i10];
            int i12 = i11 + 1;
            if (str3.length() >= name.length() + 2) {
                if (StringsKt.G(str3, str, false, 2, null)) {
                    return i11;
                }
                if (str3.charAt(0) == '`' && StringsKt.G(str3, str2, false, 2, null)) {
                    return i11;
                }
            }
            i10++;
            i11 = i12;
        }
        return -1;
    }

    public static final int d(Cursor c10, String name) {
        Intrinsics.h(c10, "c");
        Intrinsics.h(name, "name");
        int columnIndex = c10.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c10.getColumnIndex('`' + name + '`');
        return columnIndex2 >= 0 ? columnIndex2 : b(c10, name);
    }

    public static final int e(Cursor c10, String name) {
        String strM0;
        Intrinsics.h(c10, "c");
        Intrinsics.h(name, "name");
        int iD = d(c10, name);
        if (iD >= 0) {
            return iD;
        }
        try {
            String[] columnNames = c10.getColumnNames();
            Intrinsics.g(columnNames, "getColumnNames(...)");
            strM0 = ArraysKt.m0(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception unused) {
            strM0 = TmcConstants.ROUTE_UNKNOWN;
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + strM0);
    }
}

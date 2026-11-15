package defpackage;

import android.content.ContentValues;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class qv9 {
    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return "(" + str + ") AND (" + str2 + ")";
    }

    public static String[] b(String[] strArr, List list) {
        if (list == null) {
            return strArr;
        }
        if (strArr == null) {
            return (String[]) list.toArray(new String[list.size()]);
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.addAll(list);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] c(String[] strArr, String[] strArr2) {
        return strArr2 == null ? strArr : b(strArr, Arrays.asList(strArr2));
    }

    public static int d(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, ContentValues contentValues, String[] strArr2) {
        if (sQLiteDatabase == null) {
            return -1;
        }
        if (DatabaseUtils.queryNumEntries(sQLiteDatabase, str, str2, strArr) == 0) {
            return sQLiteDatabase.insert(str, null, contentValues) == -1 ? -1 : 1;
        }
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                contentValues.remove(str3);
            }
        }
        sQLiteDatabase.update(str, contentValues, str2, strArr);
        return 0;
    }
}

package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.List;

public final class xw6 {
    public static final xw6 a = new xw6();
    public static Uri b;

    static {
        Uri uri = Uri.parse("content://" + ul4.d() + ".HisavanaContentProvider/click_freq");
        y45.i(uri, "parse(this)");
        b = uri;
    }

    public final int a() {
        try {
            return ul4.a().getContentResolver().delete(b, "DELETE FROM click_freq_room WHERE date != ?", new String[]{HSCommonUtils.a.k()});
        } catch (Throwable th) {
            ikd.b().e("ClickFreqDBHelper", "deleteInvalidData error: " + th.getMessage());
            return -1;
        }
    }

    public final Uri b(String str, String str2, int i, String str3) {
        y45.j(str, "codeSeatId");
        y45.j(str2, PushConstants.PROVIDER_FIELD_PKG);
        y45.j(str3, "date");
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("codeSeatId", str);
            contentValues.put(PushConstants.PROVIDER_FIELD_PKG, str2);
            contentValues.put("count", Integer.valueOf(i));
            contentValues.put("date", str3);
            return ul4.a().getContentResolver().insert(b, contentValues);
        } catch (Throwable th) {
            ikd.b().e("ClickFreqDBHelper", "insertOrReplace error: " + th.getMessage());
            return null;
        }
    }

    public final List c() {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor cursorQuery = ul4.a().getContentResolver().query(b, null, "SELECT * FROM click_freq_room", null, null);
            if (cursorQuery != null) {
                try {
                    int columnIndex = cursorQuery.getColumnIndex("codeSeatId");
                    int columnIndex2 = cursorQuery.getColumnIndex(PushConstants.PROVIDER_FIELD_PKG);
                    int columnIndex3 = cursorQuery.getColumnIndex("count");
                    int columnIndex4 = cursorQuery.getColumnIndex("date");
                    while (cursorQuery.moveToNext()) {
                        String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : null;
                        String string2 = columnIndex2 >= 0 ? cursorQuery.getString(columnIndex2) : null;
                        int i = columnIndex3 >= 0 ? cursorQuery.getInt(columnIndex3) : 0;
                        String string3 = columnIndex4 >= 0 ? cursorQuery.getString(columnIndex4) : null;
                        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                            y45.g(string);
                            y45.g(string2);
                            y45.g(string3);
                            arrayList.add(new qk8(string, string2, i, string3));
                        }
                    }
                    zfb zfbVar = zfb.a;
                    ly0.a(cursorQuery, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(cursorQuery, th);
                        throw th2;
                    }
                }
            }
            return arrayList;
        } catch (Throwable th3) {
            ikd.b().e("ClickFreqDBHelper", "queryAllData error: " + th3.getMessage());
            return null;
        }
    }
}

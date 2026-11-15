package defpackage;

import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import androidx.sqlite.db.SimpleSQLiteQuery;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.transsion.push.PushConstants;

public final class gx8 {
    public static final gx8 a = new gx8();
    public static String b;
    public static UriMatcher c;

    public static final void b(UriMatcher uriMatcher, String str) {
        c = uriMatcher;
        b = str;
        if (uriMatcher != null) {
            uriMatcher.addURI(str, "click_freq", 400);
        }
    }

    public final int a(HSRoomDatabase hSRoomDatabase, String str, String[] strArr) {
        l47 l47VarJ;
        if (hSRoomDatabase == null || (l47VarJ = hSRoomDatabase.j()) == null) {
            return -1;
        }
        if (str == null) {
            str = "";
        }
        return l47VarJ.b(new SimpleSQLiteQuery(str, strArr));
    }

    public final boolean c(HSRoomDatabase hSRoomDatabase, ContentValues contentValues) {
        l47 l47VarJ;
        if (contentValues == null) {
            return false;
        }
        try {
            String asString = contentValues.getAsString("codeSeatId");
            y45.i(asString, "getAsString(...)");
            String asString2 = contentValues.getAsString(PushConstants.PROVIDER_FIELD_PKG);
            y45.i(asString2, "getAsString(...)");
            Integer asInteger = contentValues.getAsInteger("count");
            y45.i(asInteger, "getAsInteger(...)");
            int iIntValue = asInteger.intValue();
            String asString3 = contentValues.getAsString("date");
            y45.i(asString3, "getAsString(...)");
            qk8 qk8Var = new qk8(asString, asString2, iIntValue, asString3);
            if (hSRoomDatabase == null || (l47VarJ = hSRoomDatabase.j()) == null) {
                return true;
            }
            l47VarJ.a(qk8Var);
            return true;
        } catch (Throwable th) {
            ikd.b().w("ClickFreqProvider", "insert error : " + th.getMessage());
            return false;
        }
    }

    public final Cursor d(HSRoomDatabase hSRoomDatabase, String str, String[] strArr) {
        l47 l47VarJ;
        if (hSRoomDatabase == null || (l47VarJ = hSRoomDatabase.j()) == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        return l47VarJ.a(new SimpleSQLiteQuery(str, strArr));
    }
}

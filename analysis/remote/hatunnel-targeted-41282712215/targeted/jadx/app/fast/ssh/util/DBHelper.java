package app.fast.ssh.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import app.fast.ssh.ProtectedFastSSH;
import java.util.Locale;

public class DBHelper extends SQLiteOpenHelper {
    private static final String DB_NAME = ProtectedFastSSH.s("㆜");
    private final Context mContext;

    public enum Resource {
        SERVERS,
        METHODS,
        METHODS_LITE,
        ALLOWED_APPS
    }

    public DBHelper(Context context) {
        super(context, ProtectedFastSSH.s("㆜"), (SQLiteDatabase.CursorFactory) null, 1);
        this.mContext = context;
    }

    public String getResource(Resource resource) {
        String string;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursorRawQuery = writableDatabase.rawQuery(ProtectedFastSSH.s("㆝") + resource.toString().toLowerCase() + ProtectedFastSSH.s("㆞"), null);
        String strDecrypt = "";
        if (cursorRawQuery.getCount() > 0) {
            cursorRawQuery.moveToNext();
            string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(ProtectedFastSSH.s("㆟")));
        } else {
            string = "";
        }
        cursorRawQuery.close();
        try {
            strDecrypt = AESEncryption.decrypt(string, ProtectedFastSSH.s("ㆠ"));
        } catch (Exception unused) {
        }
        writableDatabase.close();
        return strDecrypt;
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(ProtectedFastSSH.s("ㆡ"));
        ContentValues contentValues = new ContentValues();
        contentValues.put(ProtectedFastSSH.s("㆟"), "");
        String lowerCase = Resource.SERVERS.toString().toLowerCase();
        String strS = ProtectedFastSSH.s("ㆢ");
        contentValues.put(strS, lowerCase);
        String strS2 = ProtectedFastSSH.s("ㆣ");
        sQLiteDatabase.insert(strS2, null, contentValues);
        contentValues.put(strS, Resource.METHODS.toString().toLowerCase());
        sQLiteDatabase.insert(strS2, null, contentValues);
        contentValues.put(strS, Resource.ALLOWED_APPS.toString().toLowerCase());
        sQLiteDatabase.insert(strS2, null, contentValues);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(ProtectedFastSSH.s("ㆤ"));
        onCreate(sQLiteDatabase);
    }

    public void updateResource(Resource resource, String str) {
        String strEncrypt;
        try {
            strEncrypt = AESEncryption.encrypt(str, ProtectedFastSSH.s("ㆠ"));
        } catch (Exception unused) {
            strEncrypt = "";
        }
        String str2 = String.format(Locale.US, ProtectedFastSSH.s("ㆥ"), strEncrypt, resource.toString().toLowerCase());
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.execSQL(str2);
        writableDatabase.close();
    }
}

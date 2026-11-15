package net.grandcentrix.tray.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.q9b;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import net.grandcentrix.tray.core.TrayException;

public class a {
    public final Context a;
    public final b b;

    public a(Context context) {
        this.a = context;
        this.b = new b(context);
    }

    public static q9b a(Cursor cursor) {
        return new q9b(cursor.getString(cursor.getColumnIndexOrThrow("MODULE")), cursor.getString(cursor.getColumnIndexOrThrow("KEY")), cursor.getString(cursor.getColumnIndexOrThrow("MIGRATED_KEY")), cursor.getString(cursor.getColumnIndexOrThrow("VALUE")), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("CREATED"))), new Date(cursor.getLong(cursor.getColumnIndexOrThrow("UPDATED"))));
    }

    public boolean b(Uri uri, String str) {
        return c(uri, str, null);
    }

    public boolean c(Uri uri, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("VALUE", str);
        contentValues.put("MIGRATED_KEY", str2);
        try {
            return this.a.getContentResolver().insert(uri, contentValues) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public List d(Uri uri) {
        try {
            Cursor cursorQuery = this.a.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery == null) {
                throw new TrayException("could not access stored data with uri " + uri);
            }
            ArrayList arrayList = new ArrayList();
            for (boolean zMoveToFirst = cursorQuery.moveToFirst(); zMoveToFirst; zMoveToFirst = cursorQuery.moveToNext()) {
                arrayList.add(a(cursorQuery));
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            throw new TrayException("Hard error accessing the ContentProvider", th);
        }
    }

    public List e(Uri uri) {
        try {
            return d(uri);
        } catch (TrayException unused) {
            return new ArrayList();
        }
    }

    public int f(Uri uri) {
        try {
            return this.a.getContentResolver().delete(uri, null, null);
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }
}

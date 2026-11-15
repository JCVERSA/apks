package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

class TransferDBBase {

    private static final Log f17835f = LogFactory.b(TransferDBBase.class);

    private static final Object f17836g = new Object();

    private final Context f17837a;

    private final Uri f17838b;

    private final UriMatcher f17839c;

    private final TransferDatabaseHelper f17840d;

    private SQLiteDatabase f17841e;

    public TransferDBBase(Context context) {
        this.f17837a = context;
        String packageName = context.getApplicationContext().getPackageName();
        TransferDatabaseHelper transferDatabaseHelper = new TransferDatabaseHelper(context);
        this.f17840d = transferDatabaseHelper;
        this.f17841e = transferDatabaseHelper.getWritableDatabase();
        this.f17838b = Uri.parse("content://" + packageName + "/transfers");
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f17839c = uriMatcher;
        uriMatcher.addURI(packageName, "transfers", 10);
        uriMatcher.addURI(packageName, "transfers/#", 20);
        uriMatcher.addURI(packageName, "transfers/part/#", 30);
        uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    private void c() {
        synchronized (f17836g) {
            try {
                if (!this.f17841e.isOpen()) {
                    this.f17841e = this.f17840d.getWritableDatabase();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int a(Uri uri, ContentValues[] contentValuesArr) {
        int iMatch = this.f17839c.match(uri);
        c();
        if (iMatch != 10) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        int iInsertOrThrow = 0;
        try {
            try {
                this.f17841e.beginTransaction();
                iInsertOrThrow = (int) this.f17841e.insertOrThrow("awstransfer", null, contentValuesArr[0]);
                for (int i10 = 1; i10 < contentValuesArr.length; i10++) {
                    contentValuesArr[i10].put("main_upload_id", Integer.valueOf(iInsertOrThrow));
                    this.f17841e.insertOrThrow("awstransfer", null, contentValuesArr[i10]);
                }
                this.f17841e.setTransactionSuccessful();
            } catch (Exception e10) {
                f17835f.e("bulkInsert error : ", e10);
            }
            return iInsertOrThrow;
        } finally {
            this.f17841e.endTransaction();
        }
    }

    public int b(Uri uri, String str, String[] strArr) {
        int iMatch = this.f17839c.match(uri);
        c();
        if (iMatch == 10) {
            return this.f17841e.delete("awstransfer", str, strArr);
        }
        if (iMatch != 20) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (TextUtils.isEmpty(str)) {
            return this.f17841e.delete("awstransfer", "_id=" + lastPathSegment, null);
        }
        return this.f17841e.delete("awstransfer", "_id=" + lastPathSegment + " and " + str, strArr);
    }

    public Uri d() {
        return this.f17838b;
    }

    public Uri e(Uri uri, ContentValues contentValues) {
        int iMatch = this.f17839c.match(uri);
        c();
        if (iMatch != 10) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return Uri.parse("transfers/" + this.f17841e.insertOrThrow("awstransfer", null, contentValues));
    }

    public Cursor f(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int iMatch = this.f17839c.match(uri);
        if (iMatch == 10) {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        } else if (iMatch == 20) {
            sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
        } else if (iMatch == 30) {
            sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
        } else {
            if (iMatch != 40) {
                throw new IllegalArgumentException("Unknown URI: " + uri);
            }
            sQLiteQueryBuilder.appendWhere("state=");
            sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
        }
        c();
        return sQLiteQueryBuilder.query(this.f17841e, strArr, str, strArr2, null, null, str2);
    }

    public synchronized int g(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int iUpdate;
        try {
            int iMatch = this.f17839c.match(uri);
            c();
            if (iMatch == 10) {
                iUpdate = this.f17841e.update("awstransfer", contentValues, str, strArr);
            } else {
                if (iMatch != 20) {
                    throw new IllegalArgumentException("Unknown URI: " + uri);
                }
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    iUpdate = this.f17841e.update("awstransfer", contentValues, "_id=" + lastPathSegment, null);
                } else {
                    iUpdate = this.f17841e.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return iUpdate;
    }
}

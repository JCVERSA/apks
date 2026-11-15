package net.grandcentrix.tray.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MergeCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import defpackage.p9b;
import defpackage.qv9;
import defpackage.r9b;
import java.util.Date;
import org.apache.commons.lang3.BooleanUtils;

public class TrayContentProvider extends ContentProvider {
    public static UriMatcher d;
    public p9b b;
    public p9b c;

    public static void e(String str) {
        UriMatcher uriMatcher = new UriMatcher(-1);
        d = uriMatcher;
        uriMatcher.addURI(str, "preferences", 30);
        d.addURI(str, "preferences/*", 20);
        d.addURI(str, "preferences/*/*", 10);
        d.addURI(str, "internal_preferences", 130);
        d.addURI(str, "internal_preferences/*", 120);
        d.addURI(str, "internal_preferences/*/*", 110);
    }

    public SQLiteDatabase a(Uri uri) {
        return f(uri) ? this.c.getReadableDatabase() : this.b.getReadableDatabase();
    }

    @Override
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        e(providerInfo.authority);
        r9b.b("TrayContentProvider registered for authority: " + providerInfo.authority);
    }

    public String b(Uri uri) {
        if (uri == null) {
            return null;
        }
        int iMatch = d.match(uri);
        return (iMatch == 110 || iMatch == 120 || iMatch == 130) ? "TrayInternal" : "TrayPreferences";
    }

    public SQLiteDatabase c(Uri uri) {
        return f(uri) ? this.c.getWritableDatabase() : this.b.getWritableDatabase();
    }

    public int d(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, ContentValues contentValues, String[] strArr2) {
        return qv9.d(sQLiteDatabase, str, str2, strArr, contentValues, strArr2);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        int iMatch = d.match(uri);
        if (iMatch == 10) {
            str = qv9.a(str, "KEY = ?");
            strArr = qv9.c(strArr, new String[]{uri.getPathSegments().get(2)});
            str = qv9.a(str, "MODULE = ?");
            strArr = qv9.c(strArr, new String[]{uri.getPathSegments().get(1)});
        } else if (iMatch == 20) {
            str = qv9.a(str, "MODULE = ?");
            strArr = qv9.c(strArr, new String[]{uri.getPathSegments().get(1)});
        } else if (iMatch != 30) {
            if (iMatch == 110) {
                str = qv9.a(str, "KEY = ?");
                strArr = qv9.c(strArr, new String[]{uri.getPathSegments().get(2)});
            } else if (iMatch != 120) {
                if (iMatch != 130) {
                    throw new IllegalArgumentException("Delete is not supported for Uri: " + uri);
                }
            }
            str = qv9.a(str, "MODULE = ?");
            strArr = qv9.c(strArr, new String[]{uri.getPathSegments().get(1)});
        }
        int iDelete = uri.getQueryParameter("backup") == null ? this.b.getWritableDatabase().delete(b(uri), str, strArr) + this.c.getWritableDatabase().delete(b(uri), str, strArr) : c(uri).delete(b(uri), str, strArr);
        if (iDelete > 0) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return iDelete;
    }

    public boolean f(Uri uri) {
        return !BooleanUtils.FALSE.equals(uri.getQueryParameter("backup"));
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        Date date = new Date();
        int iMatch = d.match(uri);
        if (iMatch != 10 && iMatch != 110) {
            throw new IllegalArgumentException("Insert is not supported for Uri: " + uri);
        }
        contentValues.put("CREATED", Long.valueOf(date.getTime()));
        contentValues.put("UPDATED", Long.valueOf(date.getTime()));
        contentValues.put("MODULE", uri.getPathSegments().get(1));
        contentValues.put("KEY", uri.getPathSegments().get(2));
        int iD = d(c(uri), b(uri), "MODULE = ?AND KEY = ?", new String[]{contentValues.getAsString("MODULE"), contentValues.getAsString("KEY")}, contentValues, new String[]{"CREATED"});
        if (iD >= 0) {
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        }
        if (iD == -1) {
            r9b.c("Couldn't update or insert data. Uri: " + uri);
        } else {
            r9b.c("unknown SQLite error");
        }
        return null;
    }

    @Override
    public boolean onCreate() {
        this.c = new p9b(getContext(), true);
        this.b = new p9b(getContext(), false);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0063 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:19:0x0065  */
    /* JADX WARN: Instruction removed from duplicated block: B:16:0x003f, please report this as an issue */
    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        int iMatch = d.match(uri);
        if (iMatch == 10) {
            sQLiteQueryBuilder.appendWhere("KEY = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(2)));
            if (iMatch != 10 || iMatch == 110) {
                sQLiteQueryBuilder.appendWhere(" AND ");
            }
            sQLiteQueryBuilder.appendWhere("MODULE = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(1)));
        } else if (iMatch == 20) {
            if (iMatch != 10) {
                sQLiteQueryBuilder.appendWhere(" AND ");
            } else {
                sQLiteQueryBuilder.appendWhere(" AND ");
            }
            sQLiteQueryBuilder.appendWhere("MODULE = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(1)));
        } else if (iMatch != 30) {
            if (iMatch == 110) {
                sQLiteQueryBuilder.appendWhere("KEY = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(2)));
            } else if (iMatch != 120) {
                if (iMatch != 130) {
                    throw new IllegalArgumentException("Query is not supported for Uri: " + uri);
                }
            }
            if (iMatch != 10) {
                sQLiteQueryBuilder.appendWhere(" AND ");
            } else {
                sQLiteQueryBuilder.appendWhere(" AND ");
            }
            sQLiteQueryBuilder.appendWhere("MODULE = " + DatabaseUtils.sqlEscapeString(uri.getPathSegments().get(1)));
        }
        sQLiteQueryBuilder.setTables(b(uri));
        Cursor mergeCursor = uri.getQueryParameter("backup") == null ? new MergeCursor(new Cursor[]{sQLiteQueryBuilder.query(this.c.getReadableDatabase(), strArr, str, strArr2, null, null, str2), sQLiteQueryBuilder.query(this.b.getReadableDatabase(), strArr, str, strArr2, null, null, str2)}) : sQLiteQueryBuilder.query(a(uri), strArr, str, strArr2, null, null, str2);
        if (mergeCursor != null) {
            mergeCursor.setNotificationUri(getContext().getContentResolver(), uri);
        }
        return mergeCursor;
    }

    @Override
    public void shutdown() {
        this.c.close();
        this.b.close();
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("not implemented");
    }
}

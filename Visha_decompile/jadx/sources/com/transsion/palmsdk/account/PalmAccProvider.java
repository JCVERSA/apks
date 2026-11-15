package com.transsion.palmsdk.account;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.hunantv.media.player.subtitle.MediaFormat;
import defpackage.mj7;
import defpackage.qj7;
import defpackage.vj7;

public class PalmAccProvider extends ContentProvider {
    public static String b;
    public static final UriMatcher c = new UriMatcher(-1);

    public static String a(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        StringBuilder sbA = qj7.a("content://");
        sbA.append(context.getPackageName());
        sbA.append(".PalmAccProvider");
        String[] streamTypes = contentResolver.getStreamTypes(Uri.parse(sbA.toString()), str);
        return (streamTypes == null || streamTypes.length <= 0) ? "" : streamTypes[0];
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public String[] getStreamTypes(Uri uri, String str) {
        if (TextUtils.isEmpty(str)) {
            return super.getStreamTypes(uri, str);
        }
        Context applicationContext = getContext().getApplicationContext();
        String[] strArr = new String[1];
        str.getClass();
        switch (str) {
            case "status":
                strArr[0] = XNManager.g().j(applicationContext) ? "1" : "0";
                return strArr;
            case "profile":
                strArr[0] = XNManager.g().e(applicationContext);
                return strArr;
            case "token":
                strArr[0] = XNManager.g().h(applicationContext);
                return strArr;
            case "userLogout":
                strArr[0] = applicationContext.getSharedPreferences("AccountPrefs", 0).getBoolean("user_log_out", false) ? "1" : "0";
                return strArr;
            default:
                return strArr;
        }
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        try {
            int iMatch = c.match(uri);
            if (iMatch == 2) {
                String asString = contentValues.getAsString("aToken");
                String asString2 = contentValues.getAsString("rToken");
                if (!TextUtils.isEmpty(asString) && !TextUtils.isEmpty(asString2)) {
                    XNManager.g().l(getContext(), contentValues.getAsString("account"));
                    XNManager.g().n(getContext(), asString, asString2);
                    vj7.a.g("setToken success");
                }
            } else if (iMatch == 4) {
                String asString3 = contentValues.getAsString("linkedPkg");
                String asString4 = contentValues.getAsString("linkedId");
                String asString5 = contentValues.getAsString("linkedBd");
                if (!TextUtils.isEmpty(asString3) && !TextUtils.isEmpty(asString4)) {
                    mj7.a(getContext()).a.saveString("linked_pkg", asString3);
                    mj7.a(getContext()).a.saveString("linked_id", asString4);
                    if (asString5 != null) {
                        mj7.a(getContext()).a.saveString("linked_bd", asString5);
                    }
                    vj7.a.g("setLinked success");
                }
            }
        } catch (Exception e) {
            vj7.a.i(Log.getStackTraceString(e));
        }
        return null;
    }

    @Override
    public boolean onCreate() {
        String str = getContext().getPackageName() + ".PalmAccProvider";
        b = str;
        UriMatcher uriMatcher = c;
        uriMatcher.addURI(str, "status", 1);
        uriMatcher.addURI(b, "token", 2);
        uriMatcher.addURI(b, MediaFormat.KEY_PROFILE, 3);
        uriMatcher.addURI(b, "linked", 4);
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Context context = getContext();
        vj7.a.g("query uri = " + uri);
        int iMatch = c.match(uri);
        if (iMatch == 1) {
            boolean zJ = XNManager.g().j(context);
            MatrixCursor matrixCursor = new MatrixCursor(new String[]{"status"}, 1);
            matrixCursor.addRow(new Object[]{Integer.valueOf(zJ ? 1 : 0)});
            return matrixCursor;
        }
        if (iMatch == 2) {
            String strH = XNManager.g().h(context);
            MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"token"}, 1);
            matrixCursor2.addRow(new Object[]{strH});
            return matrixCursor2;
        }
        if (iMatch != 3) {
            return null;
        }
        String strE = XNManager.g().e(context);
        MatrixCursor matrixCursor3 = new MatrixCursor(new String[]{MediaFormat.KEY_PROFILE}, 1);
        matrixCursor3.addRow(new Object[]{strE});
        return matrixCursor3;
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

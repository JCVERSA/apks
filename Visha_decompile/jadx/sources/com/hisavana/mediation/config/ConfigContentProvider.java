package com.hisavana.mediation.config;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import defpackage.aad;
import defpackage.ul4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public class ConfigContentProvider extends ContentProvider {
    public UriMatcher b;
    public String c = "";
    public SQLiteDatabase d;

    public final UriMatcher a() {
        if (this.b == null) {
            if (ul4.a() != null) {
                this.c = ul4.a().getPackageName() + ".HisavanaConfigContentProvider";
                UriMatcher uriMatcher = new UriMatcher(-1);
                this.b = uriMatcher;
                uriMatcher.addURI(this.c, "config", 200);
            } else {
                AdLogUtil.Log().e("ssp", "HSCoreUtil is not init now");
            }
        }
        return this.b;
    }

    public final Cursor b(String[] strArr) {
        String str;
        if (strArr != null) {
            try {
                if (strArr.length == 0) {
                    str = "select * from cloudList";
                } else {
                    StringBuilder sb = new StringBuilder("(");
                    for (int i = 0; i < strArr.length; i++) {
                        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider ***** " + strArr[i]);
                        if (i == strArr.length - 1) {
                            sb.append("'");
                            sb.append(strArr[i]);
                            sb.append("'");
                        } else {
                            sb.append("'");
                            sb.append(strArr[i]);
                            sb.append("',");
                        }
                    }
                    sb.append(")");
                    str = "select * from cloudList where codeSeatId IN " + sb.toString();
                }
            } catch (Exception e) {
                AdLogUtil.Log().e("ConfigContentProvider", "getCursorForProvider e " + Log.getStackTraceString(e));
                return null;
            }
        } else {
            str = "select * from cloudList";
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider sql " + str);
        return this.d.rawQuery(str, null);
    }

    public final synchronized SQLiteDatabase c() {
        SQLiteDatabase sQLiteDatabase = this.d;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            try {
                this.d = new aad(ul4.a()).getWritableDatabase();
            } catch (Exception e) {
                AdLogUtil.Log().e("ConfigContentProvider", "openDB ex " + Log.getStackTraceString(e));
            }
        }
        return this.d;
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        if (a() == null || this.b.match(uri) != 200) {
            return 0;
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "delete ");
        try {
            return this.d.delete("cloudList", str, strArr);
        } catch (Exception e) {
            AdLogUtil.Log().e("ConfigContentProvider", "delete Exception:" + Log.getStackTraceString(e));
            return 0;
        }
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase sQLiteDatabase;
        if (a() == null) {
            return null;
        }
        boolean z = false;
        if (this.b.match(uri) == 200) {
            if (contentValues != null && contentValues.keySet() != null) {
                try {
                    if (!contentValues.keySet().isEmpty()) {
                        try {
                            SQLiteDatabase sQLiteDatabaseC = c();
                            this.d = sQLiteDatabaseC;
                            if (sQLiteDatabaseC == null) {
                                Uri uri2 = Uri.parse("content://" + this.c + "/config/false");
                                SQLiteDatabase sQLiteDatabase2 = this.d;
                                if (sQLiteDatabase2 != null) {
                                    sQLiteDatabase2.endTransaction();
                                }
                                return uri2;
                            }
                            Set<String> setKeySet = contentValues.keySet();
                            AdLogUtil.Log().d("ConfigContentProvider", "insert ids " + setKeySet);
                            ArrayList<CloudControlConfig.CodeSeat> arrayList = new ArrayList();
                            Iterator<String> it = setKeySet.iterator();
                            while (it.hasNext()) {
                                arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a((String) contentValues.get(it.next()), CloudControlConfig.CodeSeat.class));
                            }
                            this.d.beginTransaction();
                            this.d.delete("cloudList", null, null);
                            for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues2.put("json", strD);
                                this.d.insert("cloudList", null, contentValues2);
                            }
                            z = true;
                            this.d.setTransactionSuccessful();
                            sQLiteDatabase = this.d;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Exception e) {
                            AdLogUtil.Log().e("ConfigContentProvider", "insert e " + Log.getStackTraceString(e));
                            sQLiteDatabase = this.d;
                            if (sQLiteDatabase != null) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    SQLiteDatabase sQLiteDatabase3 = this.d;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.endTransaction();
                    }
                    throw th;
                }
            }
            return Uri.parse("content://" + this.c + "/config/false");
        }
        return Uri.parse("content://" + this.c + "/config/" + z);
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            AdLogUtil.Log().d("ConfigContentProvider", "query " + uri);
            if (a() != null && this.b.match(uri) == 200) {
                AdLogUtil.Log().d("ConfigContentProvider", "query ");
                return b(strArr);
            }
        } catch (Exception e) {
            AdLogUtil.Log().e("ConfigContentProvider", "query error: " + Log.getStackTraceString(e));
        }
        return null;
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        int iUpdate = 0;
        if (a() == null) {
            return 0;
        }
        if (this.b.match(uri) == 200 && contentValues != null && contentValues.keySet() != null && !contentValues.keySet().isEmpty()) {
            try {
                try {
                    c();
                    SQLiteDatabase sQLiteDatabase2 = this.d;
                    if (sQLiteDatabase2 == null) {
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.endTransaction();
                        }
                        return 0;
                    }
                    Set<String> setKeySet = contentValues.keySet();
                    AdLogUtil.Log().d("ConfigContentProvider", "update id " + setKeySet);
                    ArrayList<CloudControlConfig.CodeSeat> arrayList = new ArrayList();
                    Iterator<String> it = setKeySet.iterator();
                    while (it.hasNext()) {
                        arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a((String) contentValues.get(it.next()), CloudControlConfig.CodeSeat.class));
                    }
                    this.d.beginTransaction();
                    for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                        String strD = GsonUtil.d(codeSeat);
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                        contentValues2.put("json", strD);
                        iUpdate = this.d.update("cloudList", contentValues2, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                    }
                    this.d.setTransactionSuccessful();
                    sQLiteDatabase = this.d;
                    if (sQLiteDatabase != null) {
                    }
                } catch (Exception e) {
                    AdLogUtil.Log().e("ConfigContentProvider", "update e " + Log.getStackTraceString(e));
                    sQLiteDatabase = this.d;
                    if (sQLiteDatabase != null) {
                    }
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                SQLiteDatabase sQLiteDatabase3 = this.d;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.endTransaction();
                }
                throw th;
            }
        }
        return iUpdate;
    }
}

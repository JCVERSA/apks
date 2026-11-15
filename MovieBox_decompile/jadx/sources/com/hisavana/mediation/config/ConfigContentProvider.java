package com.hisavana.mediation.config;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Log;
import com.cloud.config.utils.XLogUtil;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import ee.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public class ConfigContentProvider extends ContentProvider {

    public UriMatcher f32407a;

    public String f32408b = "";

    public SQLiteDatabase f32409c;

    public final UriMatcher a() {
        if (this.f32407a == null) {
            if (e.a() != null) {
                this.f32408b = e.a().getPackageName() + ".HisavanaConfigContentProvider";
                UriMatcher uriMatcher = new UriMatcher(-1);
                this.f32407a = uriMatcher;
                uriMatcher.addURI(this.f32408b, XLogUtil.TAG, 200);
            } else {
                AdLogUtil.Log().e("ssp", "HSCoreUtil is not init now");
            }
        }
        return this.f32407a;
    }

    public final Cursor b(String[] strArr) {
        String str;
        if (strArr != null) {
            try {
                if (strArr.length == 0) {
                    str = "select * from cloudList";
                } else {
                    StringBuilder sb2 = new StringBuilder("(");
                    for (int i10 = 0; i10 < strArr.length; i10++) {
                        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider ***** " + strArr[i10]);
                        if (i10 == strArr.length - 1) {
                            sb2.append("'");
                            sb2.append(strArr[i10]);
                            sb2.append("'");
                        } else {
                            sb2.append("'");
                            sb2.append(strArr[i10]);
                            sb2.append("',");
                        }
                    }
                    sb2.append(")");
                    str = "select * from cloudList where codeSeatId IN " + sb2.toString();
                }
            } catch (Exception e10) {
                AdLogUtil.Log().e("ConfigContentProvider", "getCursorForProvider e " + Log.getStackTraceString(e10));
                return null;
            }
        } else {
            str = "select * from cloudList";
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "getCursorForProvider sql " + str);
        return this.f32409c.rawQuery(str, null);
    }

    public final synchronized SQLiteDatabase c() {
        SQLiteDatabase sQLiteDatabase = this.f32409c;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            try {
                this.f32409c = new d(e.a()).getWritableDatabase();
            } catch (Exception e10) {
                AdLogUtil.Log().e("ConfigContentProvider", "openDB ex " + Log.getStackTraceString(e10));
            }
        }
        return this.f32409c;
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        if (a() == null || this.f32407a.match(uri) != 200) {
            return 0;
        }
        c();
        AdLogUtil.Log().d("ConfigContentProvider", "delete ");
        try {
            return this.f32409c.delete("cloudList", str, strArr);
        } catch (Exception e10) {
            AdLogUtil.Log().e("ConfigContentProvider", "delete Exception:" + Log.getStackTraceString(e10));
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
        boolean z10 = false;
        if (this.f32407a.match(uri) == 200) {
            if (contentValues != null && contentValues.keySet() != null) {
                try {
                    if (!contentValues.keySet().isEmpty()) {
                        try {
                            SQLiteDatabase sQLiteDatabaseC = c();
                            this.f32409c = sQLiteDatabaseC;
                            if (sQLiteDatabaseC == null) {
                                Uri uri2 = Uri.parse("content://" + this.f32408b + "/" + XLogUtil.TAG + "/false");
                                SQLiteDatabase sQLiteDatabase2 = this.f32409c;
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
                            this.f32409c.beginTransaction();
                            this.f32409c.delete("cloudList", null, null);
                            for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues2.put("json", strD);
                                this.f32409c.insert("cloudList", null, contentValues2);
                            }
                            z10 = true;
                            this.f32409c.setTransactionSuccessful();
                            sQLiteDatabase = this.f32409c;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Exception e10) {
                            AdLogUtil.Log().e("ConfigContentProvider", "insert e " + Log.getStackTraceString(e10));
                            sQLiteDatabase = this.f32409c;
                            if (sQLiteDatabase != null) {
                            }
                        }
                    }
                } catch (Throwable th2) {
                    SQLiteDatabase sQLiteDatabase3 = this.f32409c;
                    if (sQLiteDatabase3 != null) {
                        sQLiteDatabase3.endTransaction();
                    }
                    throw th2;
                }
            }
            return Uri.parse("content://" + this.f32408b + "/" + XLogUtil.TAG + "/false");
        }
        return Uri.parse("content://" + this.f32408b + "/" + XLogUtil.TAG + "/" + z10);
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            AdLogUtil.Log().d("ConfigContentProvider", "query " + uri);
            if (a() != null && this.f32407a.match(uri) == 200) {
                AdLogUtil.Log().d("ConfigContentProvider", "query ");
                return b(strArr);
            }
        } catch (Exception e10) {
            AdLogUtil.Log().e("ConfigContentProvider", "query error: " + Log.getStackTraceString(e10));
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
        if (this.f32407a.match(uri) == 200 && contentValues != null && contentValues.keySet() != null && !contentValues.keySet().isEmpty()) {
            try {
                try {
                    c();
                    SQLiteDatabase sQLiteDatabase2 = this.f32409c;
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
                    this.f32409c.beginTransaction();
                    for (CloudControlConfig.CodeSeat codeSeat : arrayList) {
                        String strD = GsonUtil.d(codeSeat);
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("codeSeatId", codeSeat.getCodeSeatId());
                        contentValues2.put("json", strD);
                        iUpdate = this.f32409c.update("cloudList", contentValues2, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                    }
                    this.f32409c.setTransactionSuccessful();
                    sQLiteDatabase = this.f32409c;
                    if (sQLiteDatabase != null) {
                    }
                } catch (Exception e10) {
                    AdLogUtil.Log().e("ConfigContentProvider", "update e " + Log.getStackTraceString(e10));
                    sQLiteDatabase = this.f32409c;
                    if (sQLiteDatabase != null) {
                    }
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable th2) {
                SQLiteDatabase sQLiteDatabase3 = this.f32409c;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.endTransaction();
                }
                throw th2;
            }
        }
        return iUpdate;
    }
}

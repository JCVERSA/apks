package com.transsion.athena.data.anateh;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.Pair;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.aatnhe;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.Track;
import com.transsion.athena.taaneh.a;
import com.transsion.ga.anateh;
import defpackage.c4d;
import defpackage.e5d;
import defpackage.r4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class anehat {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile anehat a;
    private com.transsion.athena.data.anateh.athena b;
    private Context c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class athena {
        public static final athena a = new athena("EVENTS", 0, "events");
        public static final athena b = new athena("COUNTER", 1, "counter");
        public static final athena c = new athena("TID_CONFIG", 2, "tidconfig");
        public static final athena d = new athena("APPID_CONFIG", 3, "appidconfig");
        private final String e;

        private athena(String str, int i, String str2) {
            super(str, i);
            this.e = str2;
        }

        public String a() {
            return this.e;
        }
    }

    private anehat(Context context) {
        try {
            this.c = context;
            com.transsion.athena.data.anateh.athena athenaVar = new com.transsion.athena.data.anateh.athena(context, "athena.db");
            this.b = athenaVar;
            athenaVar.setWriteAheadLoggingEnabled(true);
        } catch (Exception e) {
            c4d.d(e.getMessage());
        }
    }

    public static synchronized anehat a(Context context) {
        try {
            if (a == null) {
                synchronized (anehat.class) {
                    try {
                        if (a == null) {
                            a = new anehat(context);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a;
    }

    private SQLiteDatabase b() {
        try {
            if (!this.c.getDatabasePath("athena.db").exists()) {
                this.b.close();
            }
            return this.b.getWritableDatabase();
        } catch (SQLiteException e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0192  */
    /* JADX WARN: Code duplicated, block: B:88:0x0197  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.StringBuilder] */
    public int b(athena athenaVar, List<Track> list, enatha<LongSparseArray<Integer>> enathaVar) throws Throwable {
        ?? r6;
        ?? r7;
        Cursor cursorRawQuery;
        ?? A = athenaVar.a();
        HashSet hashSet = new HashSet();
        ?? r5 = 0;
        ?? r8 = 0;
        r5 = 0;
        try {
            try {
                try {
                    ?? B = b();
                    int i = 0;
                    if (B == 0) {
                        if (B != 0) {
                            B.endTransaction();
                        }
                        if (this.b.b()) {
                            c4d.d("There is not enough space left");
                        }
                        return 0;
                    }
                    try {
                        B.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        for (Track track : list) {
                            JSONObject jsonData = track.getJsonData();
                            Pair pairU = e5d.o().u();
                            Integer num = (Integer) pairU.first;
                            num.intValue();
                            String strB = r4d.b(jsonData.toString(), (byte[]) pairU.second);
                            if (strB != null) {
                                contentValues.clear();
                                contentValues.put("tid", Long.valueOf(track.getTid()));
                                contentValues.put(NotificationCompat.CATEGORY_EVENT, strB);
                                contentValues.put("et", (Integer) 0);
                                contentValues.put("pi", num);
                                contentValues.put("created_at", Long.valueOf(track.getTrackTs()));
                                if (track.getBootId() != null) {
                                    contentValues.put("er_ts", Long.valueOf(track.getTrackErTs()));
                                    contentValues.put("boot_id", track.getBootId());
                                }
                                if (B.insert(A, null, contentValues) > 0) {
                                    hashSet.add(Long.valueOf(track.getTid()));
                                }
                            }
                        }
                        if (hashSet.size() > 0) {
                            LongSparseArray<Integer> longSparseArray = new LongSparseArray<>();
                            cursorRawQuery = B.rawQuery("SELECT tid,COUNT(*) FROM " + A + " WHERE tid IN (" + com.transsion.athena.config.data.model.anehat.a(hashSet, StringUtils.COMMA) + ") GROUP BY tid", null);
                            int i2 = 0;
                            while (cursorRawQuery != null) {
                                try {
                                    if (!cursorRawQuery.moveToNext()) {
                                        break;
                                    }
                                    longSparseArray.put(cursorRawQuery.getLong(0), Integer.valueOf(cursorRawQuery.getInt(1)));
                                    i2++;
                                } catch (SQLiteException e) {
                                    e = e;
                                    A = cursorRawQuery;
                                    r7 = B;
                                    c4d.d(Log.getStackTraceString(e));
                                    if (A != 0) {
                                        A.close();
                                    }
                                    if (r7 != 0) {
                                        r7.endTransaction();
                                    } else {
                                        r8 = r7;
                                    }
                                    try {
                                        a(e);
                                        throw new anateh("addJSON_sql", e);
                                    } catch (Throwable th) {
                                        th = th;
                                        r6 = r8;
                                        r5 = A;
                                        if (r5 != 0) {
                                            r5.close();
                                        }
                                        if (r6 != 0) {
                                            r6.endTransaction();
                                        }
                                        if (this.b.b()) {
                                            c4d.d("There is not enough space left");
                                        }
                                        throw th;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    c4d.d(Log.getStackTraceString(e));
                                    throw new anateh("addJSON", e);
                                }
                            }
                            if (enathaVar != null && longSparseArray.size() > 0) {
                                enathaVar.a(longSparseArray);
                            }
                            i = i2;
                            cursorRawQuery = cursorRawQuery;
                        } else {
                            cursorRawQuery = null;
                        }
                        B.setTransactionSuccessful();
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        B.endTransaction();
                        if (!this.b.b()) {
                            return i;
                        }
                        c4d.d("There is not enough space left");
                        return -2;
                    } catch (SQLiteException e3) {
                        e = e3;
                        A = 0;
                        r7 = B;
                    } catch (Exception e4) {
                        e = e4;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r5 = A;
                    if (r5 != 0) {
                        r5.close();
                    }
                    if (r6 != 0) {
                        r6.endTransaction();
                    }
                    if (this.b.b()) {
                        c4d.d("There is not enough space left");
                    }
                    throw th;
                }
            } catch (SQLiteException e5) {
                e = e5;
                A = 0;
                r7 = 0;
            } catch (Exception e6) {
                e = e6;
            } catch (Throwable th3) {
                th = th3;
                r6 = 0;
                if (r5 != 0) {
                    r5.close();
                }
                if (r6 != 0) {
                    r6.endTransaction();
                }
                if (this.b.b()) {
                    c4d.d("There is not enough space left");
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public void a(enatha<SparseArray<com.transsion.athena.config.data.model.athena>> enathaVar) throws Throwable {
        com.transsion.athena.config.data.model.athena athenaVarA;
        SparseArray<com.transsion.athena.config.data.model.athena> sparseArray = new SparseArray<>();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return;
                }
                Cursor cursorRawQuery2 = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.d.a(), null);
                while (cursorRawQuery2 != null) {
                    try {
                        if (!cursorRawQuery2.moveToNext()) {
                            break;
                        }
                        String string = cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("cfg"));
                        if (!TextUtils.isEmpty(string) && (athenaVarA = com.transsion.athena.config.data.model.athena.a(string)) != null) {
                            athenaVarA.a(cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("appid")));
                            sparseArray.put(athenaVarA.b(), athenaVarA);
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        cursorRawQuery = cursorRawQuery2;
                    } catch (Throwable th) {
                        th = th;
                        cursorRawQuery = cursorRawQuery2;
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        throw th;
                    }
                }
                if (cursorRawQuery2 != null) {
                    cursorRawQuery2.close();
                }
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.c.a(), null);
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    long j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("tid"));
                    String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ev"));
                    aatnhe aatnheVar = new aatnhe();
                    aatnheVar.c(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("pt")));
                    aatnheVar.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("cf")));
                    com.transsion.athena.config.data.model.athena athenaVar = sparseArray.get(a.a(j));
                    if (athenaVar != null) {
                        athenaVar.a(new TidConfigBean(j, string2, aatnheVar));
                    }
                }
                if (enathaVar != null) {
                    enathaVar.a(sparseArray);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return;
                }
                return;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        c4d.d(Log.getStackTraceString(e));
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        a(e);
        throw new anateh("getAPPIDApp_sql", e);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x019d  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a2  */
    public void a(athena athenaVar, com.transsion.athena.config.data.model.athena athenaVar2, boolean z) throws Throwable {
        SQLiteDatabase sQLiteDatabaseB;
        Cursor cursor;
        Cursor cursorRawQuery;
        String strA = athenaVar.a();
        Cursor cursor2 = null;
        cursor2 = null;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                if (sQLiteDatabaseB != null) {
                    sQLiteDatabaseB.endTransaction();
                    return;
                }
                return;
            }
            try {
                sQLiteDatabaseB.beginTransaction();
                ContentValues contentValues = new ContentValues();
                contentValues.put("cfg", athenaVar2.m());
                sQLiteDatabaseB.update(strA, contentValues, "appid=" + athenaVar2.b(), null);
                if (z) {
                    sQLiteDatabaseB.delete(athena.c.a(), "CAST(tid AS TEXT) LIKE ?", new String[]{athenaVar2.b() + "%"});
                    List<TidConfigBean> listJ = athenaVar2.j();
                    HashMap map = new HashMap();
                    for (TidConfigBean tidConfigBean : listJ) {
                        aatnhe tidConfig = tidConfigBean.getTidConfig();
                        contentValues.clear();
                        contentValues.put("tid", Long.valueOf(tidConfigBean.getTid()));
                        contentValues.put("ev", tidConfigBean.getEvent());
                        contentValues.put("pt", Long.valueOf(tidConfig.j()));
                        contentValues.put("cf", tidConfig.o());
                        sQLiteDatabaseB.insert(athena.c.a(), null, contentValues);
                        if (tidConfigBean.getEvent() != null) {
                            map.put(tidConfigBean.getEvent(), Long.valueOf(tidConfigBean.getTid()));
                        }
                    }
                    cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT DISTINCT ext FROM " + athena.a.a() + " WHERE tid=" + athenaVar2.b(), null);
                    while (cursorRawQuery != null) {
                        try {
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                            }
                            String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ext"));
                            if (map.containsKey(string)) {
                                contentValues.clear();
                                contentValues.put("tid", (Long) map.get(string));
                                sQLiteDatabaseB.update(athena.a.a(), contentValues, "tid=" + athenaVar2.b() + " AND ext=?", new String[]{string});
                            }
                        } catch (SQLiteException e) {
                            cursor = cursorRawQuery;
                            e = e;
                            try {
                                c4d.d(Log.getStackTraceString(e));
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabaseB != null) {
                                    sQLiteDatabaseB.endTransaction();
                                } else {
                                    sQLiteDatabase = sQLiteDatabaseB;
                                }
                                try {
                                    a(e);
                                    throw new anateh("updateAppConfig_sql", e);
                                } catch (Throwable th) {
                                    th = th;
                                    sQLiteDatabaseB = sQLiteDatabase;
                                    cursor2 = cursor;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.endTransaction();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursor2 = cursorRawQuery;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.endTransaction();
                            }
                            throw th;
                        }
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } else {
                    cursorRawQuery = null;
                }
                sQLiteDatabaseB.setTransactionSuccessful();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                sQLiteDatabaseB.endTransaction();
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
            sQLiteDatabaseB = null;
        } catch (Throwable th5) {
            th = th5;
            sQLiteDatabaseB = null;
        }
    }

    public void a(athena athenaVar, AppIdData appIdData) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("appid", Integer.valueOf(appIdData.a));
            contentValues.put(TtmlNode.RUBY_BASE, appIdData.b);
            if (sQLiteDatabaseB.update(strA, contentValues, "appid=" + appIdData.a, null) != 1) {
                sQLiteDatabaseB.insert(strA, null, contentValues);
            }
        } catch (SQLiteException e) {
            c4d.d(Log.getStackTraceString(e));
            a(e);
            throw new anateh("addAppId_sql", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    public List<AppIdData> a(athena athenaVar) throws anateh {
        String strA = athenaVar.a();
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return arrayList;
                }
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + strA, null);
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    AppIdData appIdData = new AppIdData();
                    appIdData.a = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("appid"));
                    appIdData.b = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(TtmlNode.RUBY_BASE));
                    appIdData.c = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("uid"));
                    appIdData.d = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("try"));
                    arrayList.add(appIdData);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                c4d.d(Log.getStackTraceString(e));
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                a(e);
                throw new anateh("getAppIdList_sql", e);
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0064: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:16:0x0064 */
    public void a(athena athenaVar, List<AppIdData> list) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabaseB;
        String strA = athenaVar.a();
        StringBuilder sb = new StringBuilder();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                try {
                    sQLiteDatabaseB = b();
                    if (sQLiteDatabaseB == null) {
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            return;
                        }
                        return;
                    }
                    try {
                        sQLiteDatabaseB.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("uid", "");
                        for (AppIdData appIdData : list) {
                            sQLiteDatabaseB.update(athena.a.a(), contentValues, "CAST(tid AS TEXT) LIKE ? AND uid=?", new String[]{appIdData.a + "%", appIdData.c});
                            com.transsion.athena.config.data.model.anehat.a(sb, Integer.valueOf(appIdData.a));
                        }
                        contentValues.put("try", (Integer) 0);
                        sQLiteDatabaseB.update(strA, contentValues, "appid IN (" + sb.toString() + ")", null);
                        sQLiteDatabaseB.setTransactionSuccessful();
                        sQLiteDatabaseB.endTransaction();
                    } catch (SQLiteException e) {
                        e = e;
                        c4d.d(Log.getStackTraceString(e));
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        } else {
                            sQLiteDatabase2 = sQLiteDatabaseB;
                        }
                        a(e);
                        throw new anateh("updateAppIdList_sql", e);
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    sQLiteDatabaseB = null;
                }
            } catch (Throwable th) {
                th = th;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.endTransaction();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase2 = sQLiteDatabase;
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0239 A[Catch: all -> 0x0101, Exception -> 0x01a4, SQLiteException -> 0x01aa, TRY_LEAVE, TryCatch #17 {all -> 0x0101, blocks: (B:49:0x00f2, B:56:0x0116, B:60:0x0126, B:63:0x0132, B:65:0x0138, B:70:0x0153, B:77:0x016e, B:80:0x0188, B:81:0x018d, B:84:0x019b, B:93:0x01b6, B:108:0x0239, B:91:0x01b0, B:95:0x01d5), top: B:190:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0326 A[Catch: all -> 0x032c, Exception -> 0x032f, SQLiteException -> 0x0332, TRY_LEAVE, TryCatch #22 {SQLiteException -> 0x0332, Exception -> 0x032f, all -> 0x032c, blocks: (B:145:0x0320, B:147:0x0326), top: B:202:0x0320 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x0335  */
    /* JADX WARN: Code duplicated, block: B:157:0x0338  */
    /* JADX WARN: Code duplicated, block: B:160:0x0345  */
    /* JADX WARN: Code duplicated, block: B:174:0x0376 A[Catch: all -> 0x0365, TryCatch #2 {all -> 0x0365, blocks: (B:166:0x0356, B:167:0x0364, B:172:0x036d, B:174:0x0376, B:175:0x0379, B:176:0x0383), top: B:185:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0386  */
    /* JADX WARN: Code duplicated, block: B:181:0x0391  */
    /* JADX WARN: Code duplicated, block: B:199:0x016e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0320 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b7 A[Catch: all -> 0x00a3, Exception -> 0x00a9, SQLiteException -> 0x00af, TryCatch #23 {SQLiteException -> 0x00af, Exception -> 0x00a9, all -> 0x00a3, blocks: (B:21:0x0098, B:32:0x00b7, B:34:0x00c0, B:33:0x00ba), top: B:200:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba A[Catch: all -> 0x00a3, Exception -> 0x00a9, SQLiteException -> 0x00af, TryCatch #23 {SQLiteException -> 0x00af, Exception -> 0x00a9, all -> 0x00a3, blocks: (B:21:0x0098, B:32:0x00b7, B:34:0x00c0, B:33:0x00ba), top: B:200:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0188 A[Catch: all -> 0x0101, Exception -> 0x01a4, SQLiteException -> 0x01aa, TRY_ENTER, TRY_LEAVE, TryCatch #17 {all -> 0x0101, blocks: (B:49:0x00f2, B:56:0x0116, B:60:0x0126, B:63:0x0132, B:65:0x0138, B:70:0x0153, B:77:0x016e, B:80:0x0188, B:81:0x018d, B:84:0x019b, B:93:0x01b6, B:108:0x0239, B:91:0x01b0, B:95:0x01d5), top: B:190:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x019b A[Catch: all -> 0x0101, Exception -> 0x01a4, SQLiteException -> 0x01aa, TRY_ENTER, TryCatch #17 {all -> 0x0101, blocks: (B:49:0x00f2, B:56:0x0116, B:60:0x0126, B:63:0x0132, B:65:0x0138, B:70:0x0153, B:77:0x016e, B:80:0x0188, B:81:0x018d, B:84:0x019b, B:93:0x01b6, B:108:0x0239, B:91:0x01b0, B:95:0x01d5), top: B:190:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01b0 A[Catch: all -> 0x0101, Exception -> 0x01a4, SQLiteException -> 0x01aa, TryCatch #17 {all -> 0x0101, blocks: (B:49:0x00f2, B:56:0x0116, B:60:0x0126, B:63:0x0132, B:65:0x0138, B:70:0x0153, B:77:0x016e, B:80:0x0188, B:81:0x018d, B:84:0x019b, B:93:0x01b6, B:108:0x0239, B:91:0x01b0, B:95:0x01d5), top: B:190:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01b6 A[Catch: all -> 0x0101, Exception -> 0x01a4, SQLiteException -> 0x01aa, TryCatch #17 {all -> 0x0101, blocks: (B:49:0x00f2, B:56:0x0116, B:60:0x0126, B:63:0x0132, B:65:0x0138, B:70:0x0153, B:77:0x016e, B:80:0x0188, B:81:0x018d, B:84:0x019b, B:93:0x01b6, B:108:0x0239, B:91:0x01b0, B:95:0x01d5), top: B:190:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01f7  */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x01b6, please report this as an issue */
    public int a(athena athenaVar, Track track, int i) throws Throwable {
        String str;
        Cursor cursorRawQuery;
        Cursor cursorRawQuery2;
        String str2;
        String str3;
        String str4;
        JSONObject jSONObject;
        int i2;
        String str5;
        boolean z;
        Cursor cursor;
        boolean z2;
        byte[] bArr;
        String str6;
        long j;
        JSONObject jSONObject2;
        String string;
        String strC;
        byte[] bArr2;
        byte[] bArr3;
        String str7;
        int i3;
        anehat anehatVar = this;
        String str8 = "There is not enough space left";
        String strA = athenaVar.a();
        long tid = track.getTid();
        JSONObject jsonData = track.getJsonData();
        List listP = e5d.o().p();
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB != null) {
                    String str9 = "pi";
                    String str10 = " WHERE ";
                    String str11 = "=";
                    String str12 = "tid";
                    String str13 = "_eid";
                    if (i == 1) {
                        try {
                            StringBuilder sb = new StringBuilder();
                            JSONObject jSONObject3 = jsonData;
                            sb.append("SELECT * FROM ");
                            sb.append(strA);
                            sb.append(" WHERE ");
                            sb.append("tid");
                            sb.append("=");
                            sb.append(tid);
                            sb.append(" AND ");
                            sb.append("et");
                            sb.append("=");
                            sb.append(i);
                            cursorRawQuery = sQLiteDatabaseB.rawQuery(sb.toString(), null);
                            byte[] bArr4 = null;
                            String str14 = null;
                            String str15 = null;
                            while (true) {
                                if (cursorRawQuery != null) {
                                    try {
                                        if (cursorRawQuery.moveToNext()) {
                                            int i4 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(str9));
                                            byte[] bArr5 = bArr4;
                                            String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(NotificationCompat.CATEGORY_EVENT));
                                            str2 = str11;
                                            if (i4 != -1) {
                                                if (i4 != 0) {
                                                    try {
                                                        if (com.transsion.athena.config.data.model.anehat.b(listP)) {
                                                            if (i4 == 0) {
                                                                bArr3 = ehanat.n;
                                                            } else {
                                                                bArr3 = (byte[]) listP.get(i4);
                                                            }
                                                            byte[] bArr6 = bArr3;
                                                            strC = r4d.c(string2, bArr3, i4);
                                                            bArr2 = bArr6;
                                                        } else {
                                                            strC = string2;
                                                            bArr2 = bArr5;
                                                        }
                                                    } catch (SQLiteException e) {
                                                        e = e;
                                                        cursorRawQuery2 = cursorRawQuery;
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        c4d.d(Log.getStackTraceString(e));
                                                        throw new anateh("addJSON", e);
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        cursorRawQuery2 = cursorRawQuery;
                                                        str = str8;
                                                        if (cursorRawQuery2 != null) {
                                                            cursorRawQuery2.close();
                                                        }
                                                        if (anehatVar.b.b()) {
                                                            c4d.d(str);
                                                        }
                                                        throw th;
                                                    }
                                                } else {
                                                    if (i4 == 0) {
                                                        bArr3 = ehanat.n;
                                                    } else {
                                                        bArr3 = (byte[]) listP.get(i4);
                                                    }
                                                    byte[] bArr7 = bArr3;
                                                    strC = r4d.c(string2, bArr3, i4);
                                                    bArr2 = bArr7;
                                                }
                                                if (bArr2 == null || strC == null) {
                                                    cursorRawQuery.close();
                                                    if (!anehatVar.b.b()) {
                                                        return -1;
                                                    }
                                                    c4d.d(str8);
                                                    return -1;
                                                }
                                                String str16 = strC;
                                                bArr = bArr2;
                                                string2 = str16;
                                            } else {
                                                bArr = bArr5;
                                            }
                                            if (str14 == null) {
                                                str = str8;
                                                jSONObject = jSONObject3;
                                                try {
                                                    try {
                                                        str14 = String.format("\"%s\":\"%s\"", NotificationCompat.CATEGORY_EVENT, jSONObject.getString(NotificationCompat.CATEGORY_EVENT));
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        anehatVar = this;
                                                        cursorRawQuery2 = cursorRawQuery;
                                                        if (cursorRawQuery2 != null) {
                                                            cursorRawQuery2.close();
                                                        }
                                                        if (anehatVar.b.b()) {
                                                            c4d.d(str);
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Exception unused) {
                                                    tid = tid;
                                                    str5 = str12;
                                                    str3 = str9;
                                                    str4 = str10;
                                                    anehatVar = this;
                                                    bArr4 = bArr;
                                                    str12 = str5;
                                                    listP = listP;
                                                    str11 = str2;
                                                    str10 = str4;
                                                    str9 = str3;
                                                    tid = tid;
                                                    jSONObject3 = jSONObject;
                                                    str8 = str;
                                                }
                                            } else {
                                                str = str8;
                                                jSONObject = jSONObject3;
                                            }
                                            String str17 = str14;
                                            try {
                                                boolean zContains = string2.contains(str17);
                                                str14 = str17;
                                                if (zContains) {
                                                    str4 = str10;
                                                    str3 = str9;
                                                    try {
                                                        if ("ev_athena".equals(track.getEventName())) {
                                                            if (str15 == null) {
                                                                str6 = str13;
                                                                try {
                                                                    str15 = String.format("\"%s\":\"%s\"", str6, jSONObject.getJSONObject("_eparam").optString(str6));
                                                                } catch (Exception unused2) {
                                                                    str5 = str12;
                                                                    str13 = str6;
                                                                    anehatVar = this;
                                                                    bArr4 = bArr;
                                                                    str12 = str5;
                                                                    listP = listP;
                                                                    str11 = str2;
                                                                    str10 = str4;
                                                                    str9 = str3;
                                                                    tid = tid;
                                                                    jSONObject3 = jSONObject;
                                                                    str8 = str;
                                                                }
                                                            } else {
                                                                str6 = str13;
                                                            }
                                                            String str18 = str15;
                                                            try {
                                                                zContains = string2.contains(str18);
                                                                str15 = str18;
                                                            } catch (Exception unused3) {
                                                                str15 = str18;
                                                                str5 = str12;
                                                                str13 = str6;
                                                            }
                                                        }
                                                        if (zContains) {
                                                            try {
                                                                str13 = str6;
                                                                j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                                str5 = str12;
                                                                tid = tid;
                                                                if (string2.length() < 131072) {
                                                                    jSONObject2 = new JSONObject(string2);
                                                                    try {
                                                                        com.transsion.athena.config.data.model.anehat.a(jSONObject.getJSONObject("_eparam"), jSONObject2.getJSONObject("_eparam"));
                                                                        i2 = -1;
                                                                        if (i4 != -1) {
                                                                            string = r4d.b(jSONObject2.toString(), bArr);
                                                                        } else {
                                                                            string = jSONObject2.toString();
                                                                        }
                                                                        if (string != null) {
                                                                            ContentValues contentValues = new ContentValues();
                                                                            contentValues.put(NotificationCompat.CATEGORY_EVENT, string);
                                                                            sQLiteDatabaseB.update(strA, contentValues, "_id=" + j, null);
                                                                        }
                                                                        z = false;
                                                                    } catch (JSONException unused4) {
                                                                        continue;
                                                                        anehatVar = this;
                                                                        bArr4 = bArr;
                                                                        str12 = str5;
                                                                        listP = listP;
                                                                        str11 = str2;
                                                                        str10 = str4;
                                                                        str9 = str3;
                                                                        tid = tid;
                                                                        jSONObject3 = jSONObject;
                                                                        str8 = str;
                                                                    }
                                                                } else {
                                                                    i2 = -1;
                                                                    ContentValues contentValues2 = new ContentValues();
                                                                    contentValues2.put("et", (Integer) 2);
                                                                    sQLiteDatabaseB.update(strA, contentValues2, "_id=" + j, null);
                                                                    z = true;
                                                                }
                                                                if (cursorRawQuery != null) {
                                                                    cursorRawQuery.close();
                                                                }
                                                                cursor = cursorRawQuery;
                                                                z2 = z;
                                                            } catch (SQLiteException e3) {
                                                                e = e3;
                                                                anehatVar = this;
                                                                cursorRawQuery2 = cursorRawQuery;
                                                            } catch (Exception e4) {
                                                                e = e4;
                                                                c4d.d(Log.getStackTraceString(e));
                                                                throw new anateh("addJSON", e);
                                                            }
                                                        } else {
                                                            tid = tid;
                                                            str5 = str12;
                                                            str13 = str6;
                                                        }
                                                    } catch (Exception unused5) {
                                                        tid = tid;
                                                        str5 = str12;
                                                    }
                                                    anehatVar = this;
                                                    bArr4 = bArr;
                                                    str12 = str5;
                                                    listP = listP;
                                                    str11 = str2;
                                                    str10 = str4;
                                                    str9 = str3;
                                                    tid = tid;
                                                    jSONObject3 = jSONObject;
                                                    str8 = str;
                                                } else {
                                                    str3 = str9;
                                                    str4 = str10;
                                                }
                                                str6 = str13;
                                                if (zContains) {
                                                    str13 = str6;
                                                    j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                    str5 = str12;
                                                    tid = tid;
                                                    if (string2.length() < 131072) {
                                                        jSONObject2 = new JSONObject(string2);
                                                        com.transsion.athena.config.data.model.anehat.a(jSONObject.getJSONObject("_eparam"), jSONObject2.getJSONObject("_eparam"));
                                                        i2 = -1;
                                                        if (i4 != -1) {
                                                            string = r4d.b(jSONObject2.toString(), bArr);
                                                        } else {
                                                            string = jSONObject2.toString();
                                                        }
                                                        if (string != null) {
                                                            ContentValues contentValues3 = new ContentValues();
                                                            contentValues3.put(NotificationCompat.CATEGORY_EVENT, string);
                                                            sQLiteDatabaseB.update(strA, contentValues3, "_id=" + j, null);
                                                        }
                                                        z = false;
                                                    } else {
                                                        i2 = -1;
                                                        ContentValues contentValues4 = new ContentValues();
                                                        contentValues4.put("et", (Integer) 2);
                                                        sQLiteDatabaseB.update(strA, contentValues4, "_id=" + j, null);
                                                        z = true;
                                                    }
                                                    if (cursorRawQuery != null) {
                                                        cursorRawQuery.close();
                                                    }
                                                    cursor = cursorRawQuery;
                                                    z2 = z;
                                                } else {
                                                    tid = tid;
                                                    str5 = str12;
                                                    str13 = str6;
                                                }
                                            } catch (Exception unused6) {
                                                str14 = str17;
                                                tid = tid;
                                                str5 = str12;
                                                str3 = str9;
                                                str4 = str10;
                                            }
                                            anehatVar = this;
                                            bArr4 = bArr;
                                            str12 = str5;
                                            listP = listP;
                                            str11 = str2;
                                            str10 = str4;
                                            str9 = str3;
                                            tid = tid;
                                            jSONObject3 = jSONObject;
                                            str8 = str;
                                        }
                                    } catch (SQLiteException e5) {
                                        e = e5;
                                        anehatVar = this;
                                        cursorRawQuery2 = cursorRawQuery;
                                    } catch (Exception e6) {
                                        e = e6;
                                        c4d.d(Log.getStackTraceString(e));
                                        throw new anateh("addJSON", e);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str = str8;
                                        anehatVar = this;
                                        cursorRawQuery2 = cursorRawQuery;
                                        if (cursorRawQuery2 != null) {
                                            cursorRawQuery2.close();
                                        }
                                        if (anehatVar.b.b()) {
                                            c4d.d(str);
                                        }
                                        throw th;
                                    }
                                    c4d.d(Log.getStackTraceString(e));
                                    if (cursorRawQuery2 != null) {
                                        cursorRawQuery2.close();
                                    }
                                    anehatVar.a(e);
                                    throw new anateh("addJSON_sql", e);
                                }
                                str = str8;
                                tid = tid;
                                str2 = str11;
                                str3 = str9;
                                str4 = str10;
                                jSONObject = jSONObject3;
                                i2 = -1;
                                str5 = str12;
                                z = true;
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                cursor = cursorRawQuery;
                                z2 = z;
                            }
                        } catch (SQLiteException e7) {
                            e = e7;
                            cursorRawQuery2 = null;
                            anehatVar = this;
                            c4d.d(Log.getStackTraceString(e));
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            anehatVar.a(e);
                            throw new anateh("addJSON_sql", e);
                        } catch (Exception e8) {
                            e = e8;
                            c4d.d(Log.getStackTraceString(e));
                            throw new anateh("addJSON", e);
                        } catch (Throwable th4) {
                            th = th4;
                            str = "There is not enough space left";
                            cursorRawQuery2 = null;
                            anehatVar = this;
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            if (anehatVar.b.b()) {
                                c4d.d(str);
                            }
                            throw th;
                        }
                    } else {
                        str = "There is not enough space left";
                        tid = tid;
                        jSONObject = jsonData;
                        str5 = "tid";
                        str2 = "=";
                        str3 = "pi";
                        str4 = " WHERE ";
                        i2 = -1;
                        z2 = true;
                        cursor = null;
                    }
                    if (z2) {
                        try {
                            Pair pairU = e5d.o().u();
                            Integer num = (Integer) pairU.first;
                            num.intValue();
                            String strB = r4d.b(jSONObject.toString(), (byte[]) pairU.second);
                            if (strB != null) {
                                ContentValues contentValues5 = new ContentValues();
                                str7 = str5;
                                contentValues5.put(str7, Long.valueOf(tid));
                                contentValues5.put(NotificationCompat.CATEGORY_EVENT, strB);
                                contentValues5.put("et", Integer.valueOf(i));
                                contentValues5.put(str3, num);
                                contentValues5.put("created_at", Long.valueOf(track.getTrackTs()));
                                if (a.j(tid)) {
                                    contentValues5.put("ext", track.getEventName());
                                }
                                if (track.getBootId() != null) {
                                    contentValues5.put("er_ts", Long.valueOf(track.getTrackErTs()));
                                    contentValues5.put("boot_id", track.getBootId());
                                }
                                sQLiteDatabaseB.insert(strA, null, contentValues5);
                            }
                            cursorRawQuery2 = sQLiteDatabaseB.rawQuery("SELECT COUNT(*) FROM " + strA + str4 + str7 + str2 + tid, null);
                            if (cursorRawQuery2 == null) {
                                try {
                                    if (cursorRawQuery2.moveToNext()) {
                                        i3 = cursorRawQuery2.getInt(0);
                                    } else {
                                        i3 = i2;
                                    }
                                } catch (SQLiteException e9) {
                                    e = e9;
                                    anehatVar = this;
                                    c4d.d(Log.getStackTraceString(e));
                                    if (cursorRawQuery2 != null) {
                                        cursorRawQuery2.close();
                                    }
                                    anehatVar.a(e);
                                    throw new anateh("addJSON_sql", e);
                                } catch (Exception e10) {
                                    e = e10;
                                    c4d.d(Log.getStackTraceString(e));
                                    throw new anateh("addJSON", e);
                                } catch (Throwable th5) {
                                    th = th5;
                                    anehatVar = this;
                                    if (cursorRawQuery2 != null) {
                                        cursorRawQuery2.close();
                                    }
                                    if (anehatVar.b.b()) {
                                        c4d.d(str);
                                    }
                                    throw th;
                                }
                            } else {
                                i3 = i2;
                            }
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            if (this.b.b()) {
                                return i3;
                            }
                            c4d.d(str);
                            return -2;
                        } catch (SQLiteException e11) {
                            e = e11;
                            anehatVar = this;
                            cursorRawQuery2 = cursor;
                        } catch (Exception e12) {
                            e = e12;
                            c4d.d(Log.getStackTraceString(e));
                            throw new anateh("addJSON", e);
                        } catch (Throwable th6) {
                            th = th6;
                            anehatVar = this;
                            cursorRawQuery2 = cursor;
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            if (anehatVar.b.b()) {
                                c4d.d(str);
                            }
                            throw th;
                        }
                    }
                    str7 = str5;
                    cursorRawQuery2 = sQLiteDatabaseB.rawQuery("SELECT COUNT(*) FROM " + strA + str4 + str7 + str2 + tid, null);
                    if (cursorRawQuery2 == null) {
                        i3 = i2;
                    } else if (cursorRawQuery2.moveToNext()) {
                        i3 = cursorRawQuery2.getInt(0);
                    } else {
                        i3 = i2;
                    }
                    if (cursorRawQuery2 != null) {
                        cursorRawQuery2.close();
                    }
                    if (this.b.b()) {
                        return i3;
                    }
                    c4d.d(str);
                    return -2;
                }
                if (anehatVar.b.b()) {
                    c4d.d("There is not enough space left");
                }
                return -1;
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (SQLiteException e13) {
            e = e13;
            cursorRawQuery = null;
        } catch (Exception e14) {
            e = e14;
            cursorRawQuery = null;
        } catch (Throwable th8) {
            th = th8;
            str = "There is not enough space left";
            cursorRawQuery = null;
        }
    }

    public void a(athena athenaVar, List<AppIdData> list, int i) throws anateh {
        String strA = athenaVar.a();
        StringBuilder sb = new StringBuilder();
        try {
            for (AppIdData appIdData : list) {
                com.transsion.athena.config.data.model.anehat.a(sb, Integer.valueOf(appIdData.a));
                appIdData.d = i;
            }
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("try", Integer.valueOf(i));
            sQLiteDatabaseB.update(strA, contentValues, "appid IN (" + sb.toString() + ")", null);
        } catch (SQLiteException e) {
            c4d.d(Log.getStackTraceString(e));
            a(e);
            throw new anateh("updateEvents_sql", e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0081: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:16:0x0081 */
    public void a(athena athenaVar, List<AppIdData> list, String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseB;
        SQLiteDatabase sQLiteDatabase;
        String strA = athenaVar.a();
        StringBuilder sb = new StringBuilder();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
                try {
                    sQLiteDatabaseB = b();
                    if (sQLiteDatabaseB == null) {
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            return;
                        }
                        return;
                    }
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("uid", str);
                        sQLiteDatabaseB.beginTransaction();
                        for (AppIdData appIdData : list) {
                            for (com.transsion.athena.data.anehat anehatVar : appIdData.e) {
                                sQLiteDatabaseB.update(strA, contentValues, "tid=" + anehatVar.a + " AND _id>=" + anehatVar.d + " AND _id<=" + anehatVar.e, null);
                            }
                            com.transsion.athena.config.data.model.anehat.a(sb, Integer.valueOf(appIdData.a));
                        }
                        contentValues.put("try", (Integer) 0);
                        sQLiteDatabaseB.update(athena.d.a(), contentValues, "appid IN (" + sb.toString() + ")", null);
                        sQLiteDatabaseB.setTransactionSuccessful();
                        sQLiteDatabaseB.endTransaction();
                    } catch (SQLiteException e) {
                        e = e;
                        c4d.d(Log.getStackTraceString(e));
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        }
                        a(e);
                        throw new anateh("updateEvents_sql", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase2 = sQLiteDatabase;
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.endTransaction();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                e = e2;
                sQLiteDatabaseB = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void a(athena athenaVar, String str, long j) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return;
            }
            sQLiteDatabaseB.execSQL("UPDATE " + strA + " SET created_at = er_ts + " + j + ", boot_id = '' WHERE boot_id = '" + str + "'");
        } catch (SQLiteException e) {
            c4d.d(Log.getStackTraceString(e));
            a(e);
            throw new anateh("updateEvents_sql", e);
        }
    }

    public void a(athena athenaVar, List<Long> list, enatha<String> enathaVar) throws Throwable {
        String strA = athenaVar.a();
        String strA2 = com.transsion.athena.config.data.model.anehat.a(list, StringUtils.COMMA);
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return;
                }
                LongSparseArray longSparseArray = new LongSparseArray();
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT tid FROM " + strA + " WHERE tid IN (" + strA2 + ")", null);
                while (cursorRawQuery != null) {
                    try {
                        if (!cursorRawQuery.moveToNext()) {
                            break;
                        }
                        long j = cursorRawQuery.getLong(0);
                        longSparseArray.put(j, Integer.valueOf(((Integer) longSparseArray.get(j, 0)).intValue() + 1));
                    } catch (SQLiteException e) {
                        e = e;
                        cursor = cursorRawQuery;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                sQLiteDatabaseB.delete(strA, "tid IN (" + strA2 + ")", null);
                if (enathaVar != null && longSparseArray.size() > 0) {
                    enathaVar.a(longSparseArray.toString());
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return;
                }
                return;
            } catch (SQLiteException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        c4d.d(Log.getStackTraceString(e));
        if (cursor != null) {
            cursor.close();
        }
        a(e);
        throw new anateh("cleanupEvents_off_sql", e);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00cc  */
    public int a(athena athenaVar, int i, enatha<String> enathaVar) throws anateh {
        String strA = athenaVar.a();
        LongSparseArray longSparseArray = new LongSparseArray();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return 0;
                }
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT _id,tid FROM " + strA + " ORDER BY _id LIMIT " + i, null);
                long j = 0;
                while (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                    long j2 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("tid"));
                    longSparseArray.put(j2, Integer.valueOf(((Integer) longSparseArray.get(j2, 0)).intValue() + 1));
                    j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                int iDelete = sQLiteDatabaseB.delete(strA, "_id<=" + j + " AND CAST(tid AS TEXT) NOT LIKE ?", new String[]{"9999%"});
                if (enathaVar != null && longSparseArray.size() > 0) {
                    enathaVar.a(longSparseArray.toString());
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return iDelete;
            } catch (SQLiteException e) {
                c4d.d(Log.getStackTraceString(e));
                if (0 != 0) {
                    cursor.close();
                }
                a(e);
                throw new anateh("cleanupEvents_oom_sql", e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
        if (0 != 0) {
            cursor.close();
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x026e A[Catch: all -> 0x00c4, TryCatch #5 {all -> 0x00c4, blocks: (B:20:0x0086, B:22:0x008c, B:29:0x00a1, B:31:0x00bf, B:41:0x00d3, B:37:0x00ca, B:43:0x00de, B:112:0x0265, B:114:0x026e, B:116:0x0273), top: B:134:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0273 A[Catch: all -> 0x00c4, TRY_LEAVE, TryCatch #5 {all -> 0x00c4, blocks: (B:20:0x0086, B:22:0x008c, B:29:0x00a1, B:31:0x00bf, B:41:0x00d3, B:37:0x00ca, B:43:0x00de, B:112:0x0265, B:114:0x026e, B:116:0x0273), top: B:134:0x0086 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x027a  */
    /* JADX WARN: Code duplicated, block: B:124:0x028e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0293  */
    public void a(athena athenaVar, List<AppIdData> list, long j, String str, enatha<SparseArray<com.transsion.athena.data.enatha>> enathaVar) throws Throwable {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabaseB;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabase;
        String str2;
        Cursor cursor2;
        String str3;
        int i;
        String str4 = "_id";
        String str5 = " AND ";
        String strA = athenaVar.a();
        StringBuilder sb = new StringBuilder();
        SparseArray<com.transsion.athena.data.enatha> sparseArray = new SparseArray<>();
        Cursor cursor3 = null;
        try {
            Iterator<AppIdData> it = list.iterator();
            while (it.hasNext()) {
                try {
                    com.transsion.athena.config.data.model.anehat.a(sb, Integer.valueOf(it.next().a));
                } catch (SQLiteException e) {
                    e = e;
                    sQLiteDatabaseB = null;
                    cursorRawQuery = null;
                    cursor = null;
                    c4d.d(Log.getStackTraceString(e));
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseB != null) {
                        sQLiteDatabaseB.endTransaction();
                        sQLiteDatabase = cursor;
                    } else {
                        sQLiteDatabase = sQLiteDatabaseB;
                    }
                    try {
                        a(e);
                        throw new anateh("cleanupEvents_sql", e);
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabaseB = sQLiteDatabase;
                        cursor3 = cursorRawQuery;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabaseB = null;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    if (sQLiteDatabaseB != null) {
                        sQLiteDatabaseB.endTransaction();
                    }
                    throw th;
                }
            }
            sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                if (sQLiteDatabaseB != null) {
                    sQLiteDatabaseB.endTransaction();
                    return;
                }
                return;
            }
            try {
                sQLiteDatabaseB.beginTransaction();
                cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT * FROM " + athena.d.a() + " WHERE appid IN (" + ((Object) sb) + ")", null);
                while (true) {
                    str2 = "ext";
                    if (cursorRawQuery == null) {
                        break;
                    }
                    try {
                        try {
                            if (!cursorRawQuery.moveToNext()) {
                                break;
                            }
                            int i2 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("appid"));
                            if (i2 != 9999 && i2 != 1031 && i2 != 1041) {
                                int i3 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("cnt"));
                                String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("date"));
                                String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ext"));
                                if (TextUtils.isEmpty(string2)) {
                                    i = 0;
                                } else {
                                    try {
                                        i = Integer.parseInt(string2);
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                        i = 0;
                                    }
                                }
                                sparseArray.put(i2, new com.transsion.athena.data.enatha(i2, string, i3, i));
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursor3 = cursorRawQuery;
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            if (sQLiteDatabaseB != null) {
                                sQLiteDatabaseB.endTransaction();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e3) {
                        e = e3;
                        cursor = null;
                        c4d.d(Log.getStackTraceString(e));
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        if (sQLiteDatabaseB != null) {
                            sQLiteDatabaseB.endTransaction();
                            sQLiteDatabase = cursor;
                        } else {
                            sQLiteDatabase = sQLiteDatabaseB;
                        }
                        a(e);
                        throw new anateh("cleanupEvents_sql", e);
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                try {
                    try {
                        Iterator<AppIdData> it2 = list.iterator();
                        while (it2.hasNext()) {
                            AppIdData next = it2.next();
                            int i4 = 0;
                            for (com.transsion.athena.data.anehat anehatVar : next.e) {
                                try {
                                    Iterator<AppIdData> it3 = it2;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("tid=");
                                    cursor2 = cursorRawQuery;
                                    String str6 = str2;
                                    try {
                                        try {
                                            sb2.append(anehatVar.a);
                                            sb2.append(str5);
                                            sb2.append(str4);
                                            sb2.append(">=");
                                            sb2.append(anehatVar.d);
                                            sb2.append(str5);
                                            sb2.append(str4);
                                            sb2.append("<=");
                                            sb2.append(anehatVar.e);
                                            sQLiteDatabaseB.delete(strA, sb2.toString(), null);
                                            if (anehatVar.h) {
                                                ContentValues contentValues = new ContentValues();
                                                contentValues.put("pt", Long.valueOf(j));
                                                sQLiteDatabaseB.update(athena.c.a(), contentValues, "tid=" + anehatVar.a, null);
                                            }
                                            i4 += anehatVar.f;
                                            it2 = it3;
                                            cursorRawQuery = cursor2;
                                            str2 = str6;
                                            str4 = str4;
                                            str5 = str5;
                                            cursor3 = null;
                                        } catch (SQLiteException e4) {
                                            e = e4;
                                            cursorRawQuery = cursor2;
                                            cursor = null;
                                            c4d.d(Log.getStackTraceString(e));
                                            if (cursorRawQuery != null) {
                                                cursorRawQuery.close();
                                            }
                                            if (sQLiteDatabaseB != null) {
                                                sQLiteDatabaseB.endTransaction();
                                                sQLiteDatabase = cursor;
                                            } else {
                                                sQLiteDatabase = sQLiteDatabaseB;
                                            }
                                            a(e);
                                            throw new anateh("cleanupEvents_sql", e);
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        cursor3 = cursor2;
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                        if (sQLiteDatabaseB != null) {
                                            sQLiteDatabaseB.endTransaction();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e5) {
                                    e = e5;
                                }
                            }
                            String str7 = str4;
                            String str8 = str5;
                            Iterator<AppIdData> it4 = it2;
                            cursor2 = cursorRawQuery;
                            String str9 = str2;
                            try {
                                ContentValues contentValues2 = new ContentValues();
                                com.transsion.athena.data.enatha enathaVar2 = sparseArray.get(next.a);
                                if (enathaVar2 != null) {
                                    String str10 = enathaVar2.b;
                                    if (str10 == null || str10.equals(str)) {
                                        sparseArray.remove(next.a);
                                    }
                                    String str11 = enathaVar2.b;
                                    if (str11 != null && str11.equals(str)) {
                                        contentValues2.put("cnt", Integer.valueOf(enathaVar2.c + i4));
                                        str3 = str9;
                                        contentValues2.put(str3, String.valueOf(enathaVar2.d + 1));
                                    } else {
                                        str3 = str9;
                                        contentValues2.put("date", str);
                                        contentValues2.put("cnt", Integer.valueOf(i4));
                                        contentValues2.put(str3, "1");
                                    }
                                } else {
                                    str3 = str9;
                                }
                                contentValues2.put("uid", "");
                                contentValues2.put("try", (Integer) 0);
                                cursor = null;
                                try {
                                    sQLiteDatabaseB.update(athena.d.a(), contentValues2, "appid=" + next.a, null);
                                    cursor3 = null;
                                    cursorRawQuery = cursor2;
                                    str4 = str7;
                                    str5 = str8;
                                    str2 = str3;
                                    it2 = it4;
                                } catch (SQLiteException e6) {
                                    e = e6;
                                    cursorRawQuery = cursor2;
                                    c4d.d(Log.getStackTraceString(e));
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    if (sQLiteDatabaseB != null) {
                                        sQLiteDatabaseB.endTransaction();
                                        sQLiteDatabase = cursor;
                                    } else {
                                        sQLiteDatabase = sQLiteDatabaseB;
                                    }
                                    a(e);
                                    throw new anateh("cleanupEvents_sql", e);
                                }
                            } catch (SQLiteException e7) {
                                e = e7;
                                cursor = null;
                                cursorRawQuery = cursor2;
                                c4d.d(Log.getStackTraceString(e));
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                if (sQLiteDatabaseB != null) {
                                    sQLiteDatabaseB.endTransaction();
                                    sQLiteDatabase = cursor;
                                } else {
                                    sQLiteDatabase = sQLiteDatabaseB;
                                }
                                a(e);
                                throw new anateh("cleanupEvents_sql", e);
                            }
                        }
                        cursor = cursor3;
                        cursor2 = cursorRawQuery;
                        sQLiteDatabaseB.setTransactionSuccessful();
                        if (enathaVar != null) {
                            enathaVar.a(sparseArray);
                        }
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        sQLiteDatabaseB.endTransaction();
                    } catch (SQLiteException e8) {
                        e = e8;
                        cursor = cursor3;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cursor2 = cursorRawQuery;
                }
            } catch (SQLiteException e9) {
                e = e9;
                cursor = null;
                cursorRawQuery = null;
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (SQLiteException e10) {
            e = e10;
            cursor = null;
            sQLiteDatabaseB = null;
            cursorRawQuery = null;
        } catch (Throwable th7) {
            th = th7;
        }
    }

    public boolean a(athena athenaVar, int i) throws anateh {
        String strA = athenaVar.a();
        try {
            SQLiteDatabase sQLiteDatabaseB = b();
            if (sQLiteDatabaseB == null) {
                return false;
            }
            sQLiteDatabaseB.delete(strA, "CAST(tid AS TEXT) LIKE ?", new String[]{i + "%"});
            return true;
        } catch (SQLiteException e) {
            c4d.d(Log.getStackTraceString(e));
            a(e);
            throw new anateh("cleanupEvents_del_sql", e);
        }
    }

    public void a() {
        c4d.b("deleteDB");
        try {
            this.b.a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:142:0x02bf  */
    public com.transsion.athena.data.anehat a(athena athenaVar, long j, long j2, String str, int i, int i2) throws Throwable {
        String str2;
        long j3;
        int i3;
        int i4;
        String str3;
        int iIntValue;
        Object jSONObject;
        String str4 = DownloadFacadeEnum.USER_NET;
        String str5 = NotificationCompat.CATEGORY_EVENT;
        List listP = e5d.o().p();
        Cursor cursor = null;
        if (com.transsion.athena.config.data.model.anehat.a(listP)) {
            return null;
        }
        String strA = athenaVar.a();
        try {
            try {
                SQLiteDatabase sQLiteDatabaseB = b();
                if (sQLiteDatabaseB == null) {
                    return null;
                }
                String str6 = "_eparam";
                if (TextUtils.isEmpty(str)) {
                    try {
                        str2 = "SELECT * FROM " + strA + " WHERE tid=" + j + " AND created_at<=" + j2 + " ORDER BY _id LIMIT " + i2;
                    } catch (SQLiteException e) {
                        e = e;
                        cursor = null;
                    } catch (Exception e2) {
                        e = e2;
                        c4d.d(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    } catch (Throwable th) {
                        th = th;
                        cursor = null;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } else {
                    try {
                        str2 = "SELECT * FROM " + strA + " WHERE tid=" + j + " AND uid='" + str + "' ORDER BY _id";
                    } catch (SQLiteException e3) {
                        e = e3;
                        cursor = null;
                    } catch (Exception e4) {
                        e = e4;
                        c4d.d(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                cursor = null;
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery(str2, null);
                if (cursorRawQuery != null) {
                    try {
                        try {
                            if (cursorRawQuery.getCount() != 0) {
                                int count = cursorRawQuery.getCount();
                                ArrayList arrayList = new ArrayList();
                                String str7 = "";
                                long j4 = 0;
                                int i5 = 0;
                                int i6 = 0;
                                int i7 = 0;
                                long j5 = 0;
                                while (true) {
                                    if (!cursorRawQuery.moveToNext()) {
                                        j3 = j4;
                                        i3 = i6;
                                        i4 = i7;
                                        str3 = str7;
                                        break;
                                    }
                                    String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(str5));
                                    long j6 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("created_at"));
                                    int i8 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("pi"));
                                    int i9 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("et"));
                                    if (i8 != -1) {
                                        string = r4d.c(string, (byte[]) listP.get(i8), i8);
                                    }
                                    if (j4 == 0) {
                                        j4 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                    }
                                    if (string != null) {
                                        if (i9 != 0) {
                                            string = string.replace("&add", "").replace("&append", "");
                                        }
                                        try {
                                            JSONObject jSONObject2 = new JSONObject(string);
                                            String str8 = (String) jSONObject2.remove(str5);
                                            try {
                                                if (jSONObject2.has(str4)) {
                                                    try {
                                                        iIntValue = ((Integer) jSONObject2.remove(str4)).intValue();
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        str7 = str8;
                                                        str6 = str6;
                                                        str4 = str4;
                                                        e.printStackTrace();
                                                        i5++;
                                                    }
                                                } else {
                                                    iIntValue = 0;
                                                }
                                                try {
                                                    if (jSONObject2.has(str6)) {
                                                        jSONObject = jSONObject2.remove(str6);
                                                    } else {
                                                        jSONObject = new JSONObject();
                                                    }
                                                    Object obj = jSONObject;
                                                    if (obj instanceof JSONObject) {
                                                        try {
                                                            if (jSONObject2.length() > 0) {
                                                                Iterator<String> itKeys = jSONObject2.keys();
                                                                while (itKeys.hasNext()) {
                                                                    itKeys = itKeys;
                                                                    String next = itKeys.next();
                                                                    str4 = str4;
                                                                    try {
                                                                        if (next.startsWith("_")) {
                                                                            str5 = str5;
                                                                            try {
                                                                                ((JSONObject) obj).put(next, jSONObject2.get(next));
                                                                                str5 = str5;
                                                                            } catch (Exception e6) {
                                                                                e = e6;
                                                                                str7 = str8;
                                                                                e.printStackTrace();
                                                                                i5++;
                                                                                j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                                                str4 = str4;
                                                                                str5 = str5;
                                                                                str6 = str6;
                                                                            }
                                                                        }
                                                                    } catch (Exception e7) {
                                                                        e = e7;
                                                                        str5 = str5;
                                                                        str7 = str8;
                                                                        e.printStackTrace();
                                                                        i5++;
                                                                        j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                                        str4 = str4;
                                                                        str5 = str5;
                                                                        str6 = str6;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                            str4 = str4;
                                                        }
                                                    }
                                                    str4 = str4;
                                                    str5 = str5;
                                                    arrayList.add(new com.transsion.athena.data.anehat.athena(str8, j6, iIntValue, obj.toString()));
                                                    i6++;
                                                    int length = i7 + string.length();
                                                    if (length >= i) {
                                                        try {
                                                            i4 = length;
                                                            j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                            str3 = str8;
                                                            j3 = j4;
                                                            i3 = i6;
                                                            break;
                                                        } catch (Exception e9) {
                                                            e = e9;
                                                            i7 = length;
                                                            str7 = str8;
                                                            e.printStackTrace();
                                                            i5++;
                                                            j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                            str4 = str4;
                                                            str5 = str5;
                                                            str6 = str6;
                                                        }
                                                    } else {
                                                        i7 = length;
                                                        str7 = str8;
                                                        j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                                        str4 = str4;
                                                        str5 = str5;
                                                        str6 = str6;
                                                    }
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    str4 = str4;
                                                    str5 = str5;
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                str5 = str5;
                                                str6 = str6;
                                                str4 = str4;
                                            }
                                        } catch (Exception e12) {
                                            e = e12;
                                        }
                                    } else {
                                        str5 = str5;
                                        str6 = str6;
                                        str4 = str4;
                                    }
                                    i5++;
                                    j5 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("_id"));
                                    str4 = str4;
                                    str5 = str5;
                                    str6 = str6;
                                }
                                cursorRawQuery.close();
                                if (i3 <= 0) {
                                    cursorRawQuery.close();
                                    return null;
                                }
                                int i10 = i3 + i5;
                                com.transsion.athena.data.anehat anehatVar = new com.transsion.athena.data.anehat(j, str3, arrayList, j3, j5, i3, i4, count <= i10 && !(count == i2 && count == i10));
                                cursorRawQuery.close();
                                return anehatVar;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (SQLiteException e13) {
                        e = e13;
                        cursor = cursorRawQuery;
                    } catch (Exception e14) {
                        e = e14;
                        c4d.d(Log.getStackTraceString(e));
                        throw new anateh("queryEventList", e);
                    }
                }
                if (cursorRawQuery == null) {
                    return null;
                }
                cursorRawQuery.close();
                return null;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (SQLiteException e15) {
            e = e15;
        } catch (Exception e16) {
            e = e16;
        } catch (Throwable th5) {
            th = th5;
        }
        c4d.d(Log.getStackTraceString(e));
        if (cursor != null) {
            cursor.close();
        }
        a(e);
        throw new anateh("queryEventList_sql", e);
    }

    private void a(SQLiteException sQLiteException) {
        try {
            if (sQLiteException instanceof SQLiteFullException) {
                this.b.close();
            } else {
                this.b.close();
                this.b.a();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

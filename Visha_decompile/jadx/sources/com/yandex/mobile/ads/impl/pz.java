package com.yandex.mobile.ads.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class pz implements al2 {
    private static final String e;
    private static final String[] f;
    private final zv b;

    @GuardedBy("initializationLock")
    private boolean d;
    private final String a = "ExoPlayerDownloads";
    private final Object c = new Object();

    public static final class a implements x30 {
        private final Cursor a;

        public final w30 a() {
            return pz.a(this.a);
        }

        public final int b() {
            return this.a.getPosition();
        }

        @Override
        public final void close() {
            this.a.close();
        }

        private a(Cursor cursor) {
            this.a = cursor;
        }

        public final boolean a(int i) {
            return this.a.moveToPosition(i);
        }
    }

    static {
        int[] iArr = {3, 4};
        StringBuilder sb = new StringBuilder("state IN (");
        for (int i = 0; i < 2; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(iArr[i]);
        }
        sb.append(')');
        e = sb.toString();
        f = new String[]{TtmlNode.ATTR_ID, "mime_type", "uri", "stream_keys", "custom_cache_key", "data", ICode.CALL.CALL_KEY_STATE, "start_time_ms", "update_time_ms", "content_length", DownloadService.KEY_STOP_REASON, "failure_reason", "percent_downloaded", "bytes_downloaded", "key_set_id"};
    }

    public pz(k22 k22Var, int i) {
        this.b = k22Var;
    }

    private static ArrayList a(@Nullable String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        int i = f92.a;
        for (String str2 : str.split(StringUtils.COMMA, -1)) {
            String[] strArrSplit = str2.split("\\.", -1);
            if (strArrSplit.length != 3) {
                throw new IllegalStateException();
            }
            arrayList.add(new w22(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])));
        }
        return arrayList;
    }

    @Nullable
    public final w30 b(String str) throws yv {
        a();
        try {
            Cursor cursorA = a("id = ?", new String[]{str});
            try {
                if (cursorA.getCount() == 0) {
                    cursorA.close();
                    return null;
                }
                cursorA.moveToNext();
                w30 w30VarA = a(cursorA);
                cursorA.close();
                return w30VarA;
            } catch (Throwable th) {
                if (cursorA != null) {
                    try {
                        cursorA.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            throw new yv(e2);
        }
        throw new yv(e2);
    }

    public final void c(String str) throws yv {
        a();
        try {
            this.b.getWritableDatabase().delete(this.a, "id = ?", new String[]{str});
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    public final void c() throws yv {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(ICode.CALL.CALL_KEY_STATE, (Integer) 5);
            contentValues.put("failure_reason", (Integer) 0);
            this.b.getWritableDatabase().update(this.a, contentValues, null, null);
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    private static w30 b(Cursor cursor) {
        String str;
        String string = cursor.getString(0);
        string.getClass();
        String string2 = cursor.getString(2);
        string2.getClass();
        a40.b bVar = new a40.b(Uri.parse(string2), string);
        String string3 = cursor.getString(1);
        if ("dash".equals(string3)) {
            str = MimeTypes.APPLICATION_MPD;
        } else if ("hls".equals(string3)) {
            str = MimeTypes.APPLICATION_M3U8;
        } else if ("ss".equals(string3)) {
            str = MimeTypes.APPLICATION_SS;
        } else {
            str = MimeTypes.VIDEO_UNKNOWN;
        }
        a40 a40VarA = bVar.b(str).a(a(cursor.getString(3))).a(cursor.getString(4)).a(cursor.getBlob(5)).a();
        z30 z30Var = new z30();
        z30Var.a = cursor.getLong(13);
        z30Var.b = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new w30(a40VarA, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, z30Var);
    }

    private void a() throws yv {
        ArrayList arrayList;
        synchronized (this.c) {
            if (this.d) {
                return;
            }
            try {
                int iA = jb2.a(this.b.getReadableDatabase(), 0, "");
                if (iA != 3) {
                    SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        jb2.a(writableDatabase, 0, "", 3);
                        if (iA == 2) {
                            arrayList = a(writableDatabase);
                        } else {
                            arrayList = new ArrayList();
                        }
                        writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.a);
                        writableDatabase.execSQL("CREATE TABLE " + this.a + " (id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)");
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            a((w30) it.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                this.d = true;
            } catch (Throwable th2) {
                throw new yv(th2);
            }
        }
    }

    private Cursor a(String str, @Nullable String[] strArr) throws yv {
        try {
            return this.b.getReadableDatabase().query(this.a, f, str, strArr, null, null, "start_time_ms ASC");
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    public final void b() throws yv {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(ICode.CALL.CALL_KEY_STATE, (Integer) 0);
            this.b.getWritableDatabase().update(this.a, contentValues, "state = 2", null);
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    public static w30 a(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        String string = cursor.getString(0);
        string.getClass();
        String string2 = cursor.getString(2);
        string2.getClass();
        a40.b bVarA = new a40.b(Uri.parse(string2), string).b(cursor.getString(1)).a(a(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        a40 a40VarA = bVarA.b(blob).a(cursor.getString(4)).a(cursor.getBlob(5)).a();
        z30 z30Var = new z30();
        z30Var.a = cursor.getLong(13);
        z30Var.b = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new w30(a40VarA, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, z30Var);
    }

    public final x30 a(int... iArr) throws yv {
        String string;
        a();
        if (iArr.length == 0) {
            string = "1";
        } else {
            StringBuilder sb = new StringBuilder("state IN (");
            for (int i = 0; i < iArr.length; i++) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(iArr[i]);
            }
            sb.append(')');
            string = sb.toString();
        }
        return new a(a(string, (String[]) null));
    }

    private ArrayList a(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (!f92.a(sQLiteDatabase, this.a)) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabase.query(this.a, new String[]{TtmlNode.ATTR_ID, "title", "uri", "stream_keys", "custom_cache_key", "data", ICode.CALL.CALL_KEY_STATE, "start_time_ms", "update_time_ms", "content_length", DownloadService.KEY_STOP_REASON, "failure_reason", "percent_downloaded", "bytes_downloaded"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(b(cursorQuery));
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                try {
                    cursorQuery.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    public final void a(w30 w30Var) throws yv {
        a();
        try {
            a(w30Var, this.b.getWritableDatabase());
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    private void a(w30 w30Var, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = w30Var.a.f;
        if (bArr == null) {
            bArr = f92.f;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(TtmlNode.ATTR_ID, w30Var.a.b);
        contentValues.put("mime_type", w30Var.a.d);
        contentValues.put("uri", w30Var.a.c.toString());
        List<w22> list = w30Var.a.e;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            w22 w22Var = list.get(i);
            sb.append(w22Var.b);
            sb.append('.');
            sb.append(w22Var.c);
            sb.append('.');
            sb.append(w22Var.d);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        contentValues.put("stream_keys", sb.toString());
        contentValues.put("custom_cache_key", w30Var.a.g);
        contentValues.put("data", w30Var.a.h);
        contentValues.put(ICode.CALL.CALL_KEY_STATE, Integer.valueOf(w30Var.b));
        contentValues.put("start_time_ms", Long.valueOf(w30Var.c));
        contentValues.put("update_time_ms", Long.valueOf(w30Var.d));
        contentValues.put("content_length", Long.valueOf(w30Var.e));
        contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(w30Var.f));
        contentValues.put("failure_reason", Integer.valueOf(w30Var.g));
        contentValues.put("percent_downloaded", Float.valueOf(w30Var.h.b));
        contentValues.put("bytes_downloaded", Long.valueOf(w30Var.h.a));
        contentValues.put("key_set_id", bArr);
        sQLiteDatabase.replaceOrThrow(this.a, null, contentValues);
    }

    public final void a(int i) throws yv {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(i));
            this.b.getWritableDatabase().update(this.a, contentValues, e, null);
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    public final void a(int i, String str) throws yv {
        a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(i));
            this.b.getWritableDatabase().update(this.a, contentValues, e + " AND id = ?", new String[]{str});
        } catch (Throwable th) {
            throw new yv(th);
        }
    }
}

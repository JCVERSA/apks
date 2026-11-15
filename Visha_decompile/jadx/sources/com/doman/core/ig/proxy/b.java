package com.doman.core.ig.proxy;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.tod;
import java.util.Iterator;
import java.util.UUID;
import org.apache.commons.text.StringSubstitutor;

final class b implements d {
    SQLiteDatabase a = null;
    private C0069b b;
    private i c;

    public class a implements d.a {
        private String b;
        private String c;
        private tod d;

        public a(String str, String str2, tod todVar) {
            this.b = str;
            this.c = str2;
            this.d = todVar;
        }

        @Override
        public final String a() {
            return this.b;
        }

        @Override
        public final String b() {
            return this.c;
        }

        @Override
        public final tod c() {
            return this.d;
        }
    }

    public static class C0069b extends SQLiteOpenHelper {
        private i a;
        private Context b;

        public C0069b(i iVar, Context context) {
            super(context, "mqAndroidService.db", (SQLiteDatabase.CursorFactory) null, 1);
            this.a = iVar;
            this.b = context;
        }

        @Override
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.a.a("MQTTDatabaseHelper", "onCreate {CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);" + StringSubstitutor.DEFAULT_VAR_END);
            try {
                sQLiteDatabase.execSQL("CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);");
                this.a.a("MQTTDatabaseHelper", "created the table");
            } catch (SQLException e) {
                this.a.a("MQTTDatabaseHelper", "onCreate", e);
                throw e;
            }
        }

        @Override
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.a.a("MQTTDatabaseHelper", "onUpgrade");
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MqttArrivedMessageTable");
                onCreate(sQLiteDatabase);
                this.a.a("MQTTDatabaseHelper", "onUpgrade complete");
            } catch (SQLException e) {
                this.a.a("MQTTDatabaseHelper", "onUpgrade", e);
                throw e;
            }
        }
    }

    public class c extends tod {
        public c(byte[] bArr) {
            super(bArr);
        }

        @Override
        public final void setDuplicate(boolean z) {
            super.setDuplicate(z);
        }
    }

    public b(MqttService mqttService, Context context) {
        this.b = null;
        this.c = mqttService;
        this.b = new C0069b(this.c, context);
        this.c.a("DatabaseMessageStore", "DatabaseMessageStore<init> complete");
    }

    private int c(String str) {
        String[] strArr = {"messageId"};
        String[] strArr2 = {str};
        SQLiteDatabase sQLiteDatabase = this.a;
        if (sQLiteDatabase == null) {
            return 0;
        }
        Cursor cursorQuery = sQLiteDatabase.query("MqttArrivedMessageTable", strArr, "clientHandle=?", strArr2, null, null, null);
        int i = cursorQuery.moveToFirst() ? cursorQuery.getInt(0) : 0;
        cursorQuery.close();
        return i;
    }

    @Override
    public final String a(String str, String str2, tod todVar) {
        if (this.b == null) {
            this.c.b("DatabaseMessageStore", "storeArrived database was not avaiable.");
            return null;
        }
        try {
            a();
        } catch (Exception unused) {
        }
        this.c.a("DatabaseMessageStore", "storeArrived{" + str + "}, {" + todVar.toString() + StringSubstitutor.DEFAULT_VAR_END);
        byte[] payload = todVar.getPayload();
        int qos = todVar.getQos();
        boolean zIsRetained = todVar.isRetained();
        boolean zIsDuplicate = todVar.isDuplicate();
        ContentValues contentValues = new ContentValues();
        String string = UUID.randomUUID().toString();
        contentValues.put("messageId", string);
        contentValues.put("clientHandle", str);
        contentValues.put("destinationName", str2);
        contentValues.put(TranSearchIndexablesContract.TranRawData.PAYLOAD, payload);
        contentValues.put("qos", Integer.valueOf(qos));
        contentValues.put("retained", Boolean.valueOf(zIsRetained));
        contentValues.put("duplicate", Boolean.valueOf(zIsDuplicate));
        contentValues.put("mtimestamp", Long.valueOf(System.currentTimeMillis()));
        try {
            SQLiteDatabase sQLiteDatabase = this.a;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.insertOrThrow("MqttArrivedMessageTable", null, contentValues);
            }
            int iC = c(str);
            this.c.a("DatabaseMessageStore", "storeArrived: inserted message with id of {" + string + "} - Number of messages in database for this clientHandle = " + iC);
            return string;
        } catch (SQLException e) {
            this.c.a("DatabaseMessageStore", "onUpgrade", e);
            throw e;
        }
    }

    @Override
    public final void b() {
        SQLiteDatabase sQLiteDatabase = this.a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    @Override
    public final Iterator<d.a> a(String str) {
        return new Iterator<d.a>(str) {
            final String a;
            private Cursor c;
            private boolean d;
            private final String[] e;

            {
                SQLiteDatabase sQLiteDatabase;
                String[] strArr;
                String str2;
                String str3;
                String str4;
                String[] strArr2;
                String str5;
                this.a = str;
                this.e = new String[]{str};
                try {
                    b.this.a();
                } catch (Exception unused) {
                }
                if (this.a == null) {
                    sQLiteDatabase = b.this.a;
                    if (sQLiteDatabase != null) {
                        str2 = null;
                        str3 = "mtimestamp ASC";
                        str4 = "MqttArrivedMessageTable";
                        strArr2 = null;
                        str5 = null;
                        strArr = null;
                        this.c = sQLiteDatabase.query(str4, strArr2, str5, strArr, null, str2, str3);
                    }
                } else {
                    sQLiteDatabase = b.this.a;
                    if (sQLiteDatabase != null) {
                        strArr = this.e;
                        str2 = null;
                        str3 = "mtimestamp ASC";
                        str4 = "MqttArrivedMessageTable";
                        strArr2 = null;
                        str5 = "clientHandle=?";
                        this.c = sQLiteDatabase.query(str4, strArr2, str5, strArr, null, str2, str3);
                    }
                }
                this.d = this.c.moveToFirst();
            }

            public final void finalize() throws Throwable {
                this.c.close();
                super.finalize();
            }

            @Override
            public final boolean hasNext() {
                if (!this.d) {
                    this.c.close();
                }
                return this.d;
            }

            @Override
            public final d.a next() {
                Cursor cursor = this.c;
                String string = cursor.getString(cursor.getColumnIndex("messageId"));
                Cursor cursor2 = this.c;
                cursor2.getString(cursor2.getColumnIndex("clientHandle"));
                Cursor cursor3 = this.c;
                String string2 = cursor3.getString(cursor3.getColumnIndex("destinationName"));
                Cursor cursor4 = this.c;
                byte[] blob = cursor4.getBlob(cursor4.getColumnIndex(TranSearchIndexablesContract.TranRawData.PAYLOAD));
                Cursor cursor5 = this.c;
                int i = cursor5.getInt(cursor5.getColumnIndex("qos"));
                Cursor cursor6 = this.c;
                boolean z = Boolean.parseBoolean(cursor6.getString(cursor6.getColumnIndex("retained")));
                Cursor cursor7 = this.c;
                boolean z2 = Boolean.parseBoolean(cursor7.getString(cursor7.getColumnIndex("duplicate")));
                c cVar = b.this.new c(blob);
                cVar.setQos(i);
                cVar.setRetained(z);
                cVar.setDuplicate(z2);
                this.d = this.c.moveToNext();
                return b.this.new a(string, string2, cVar);
            }

            @Override
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004d  */
    @Override
    public final void b(String str) {
        int iDelete;
        if (this.b == null) {
            this.c.b("DatabaseMessageStore", "clearArrivedMessages database was not avaiable.");
            return;
        }
        try {
            a();
        } catch (Exception unused) {
        }
        String[] strArr = {str};
        if (str == null) {
            this.c.a("DatabaseMessageStore", "clearArrivedMessages: clearing the table");
            SQLiteDatabase sQLiteDatabase = this.a;
            if (sQLiteDatabase != null) {
                iDelete = sQLiteDatabase.delete("MqttArrivedMessageTable", null, null);
            } else {
                iDelete = 0;
            }
        } else {
            this.c.a("DatabaseMessageStore", "clearArrivedMessages: clearing the table of " + str + " messages");
            SQLiteDatabase sQLiteDatabase2 = this.a;
            if (sQLiteDatabase2 != null) {
                iDelete = sQLiteDatabase2.delete("MqttArrivedMessageTable", "clientHandle=?", strArr);
            } else {
                iDelete = 0;
            }
        }
        this.c.a("DatabaseMessageStore", "clearArrivedMessages: rows affected = ".concat(String.valueOf(iDelete)));
    }

    public final void a() {
        try {
            C0069b c0069b = this.b;
            if (c0069b == null) {
                return;
            }
            this.a = c0069b.getWritableDatabase();
        } catch (Exception unused) {
        }
    }

    @Override
    public final boolean a(String str, String str2) {
        i iVar;
        String str3;
        if (this.b == null) {
            iVar = this.c;
            str3 = "discardArrived database was not avaiable.";
        } else {
            try {
                a();
            } catch (Exception unused) {
            }
            this.c.a("DatabaseMessageStore", "discardArrived{" + str + "}, {" + str2 + StringSubstitutor.DEFAULT_VAR_END);
            String[] strArr = {str2, str};
            try {
                SQLiteDatabase sQLiteDatabase = this.a;
                int iDelete = sQLiteDatabase != null ? sQLiteDatabase.delete("MqttArrivedMessageTable", "messageId=? AND clientHandle=?", strArr) : 0;
                if (iDelete == 1) {
                    this.c.a("DatabaseMessageStore", "discardArrived - Message deleted successfully. - messages in db for this clientHandle ".concat(String.valueOf(c(str))));
                    return true;
                }
                iVar = this.c;
                str3 = "discardArrived - Error deleting message {" + str2 + "} from database: Rows affected = " + iDelete;
            } catch (SQLException e) {
                this.c.a("DatabaseMessageStore", "discardArrived", e);
                throw e;
            }
        }
        iVar.b("DatabaseMessageStore", str3);
        return false;
    }
}

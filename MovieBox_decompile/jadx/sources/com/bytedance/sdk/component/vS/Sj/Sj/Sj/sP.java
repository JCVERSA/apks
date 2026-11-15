package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import org.json.JSONObject;

class sP {
    private C0211sP Sj;
    private Context sP;

    private class Sj extends AbstractCursor {
        private Sj() {
        }

        @Override
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override
        public int getCount() {
            return 0;
        }

        @Override
        public double getDouble(int i10) {
            return 0.0d;
        }

        @Override
        public float getFloat(int i10) {
            return 0.0f;
        }

        @Override
        public int getInt(int i10) {
            return 0;
        }

        @Override
        public long getLong(int i10) {
            return 0L;
        }

        @Override
        public short getShort(int i10) {
            return (short) 0;
        }

        @Override
        public String getString(int i10) {
            return null;
        }

        @Override
        public boolean isNull(int i10) {
            return true;
        }
    }

    sP(Context context) {
        try {
            this.sP = context.getApplicationContext();
            if (this.Sj == null) {
                this.Sj = new C0211sP();
            }
        } catch (Throwable unused) {
        }
    }

    public C0211sP Sj() {
        return this.Sj;
    }

    public class C0211sP {
        private volatile SQLiteDatabase sP = null;

        public C0211sP() {
        }

        private void Sj() {
            try {
                if (this.sP != null && this.sP.isOpen()) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (this.sP == null || !this.sP.isOpen()) {
                            this.sP = Dq.Jcg().EjP().Sj(Dq.Jcg().vS());
                            this.sP.setLockingEnabled(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                if (sP()) {
                    throw th3;
                }
            }
        }

        private boolean sP() {
            SQLiteDatabase sQLiteDatabase = this.sP;
            return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
        }

        public void Sj(String str) throws SQLException {
            try {
                Sj();
                this.sP.execSQL(str);
            } catch (Throwable th2) {
                if (sP()) {
                    throw th2;
                }
            }
        }

        public Cursor Sj(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                Sj();
                return this.sP.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th2) {
                Sj sj2 = new Sj();
                if (sP()) {
                    throw th2;
                }
                return sj2;
            }
        }

        public int Sj(String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
            try {
                Sj();
                return this.sP.update(str, contentValues, str2, strArr);
            } catch (Exception e10) {
                if (sP()) {
                    throw e10;
                }
                return 0;
            }
        }

        public long Sj(String str, String str2, ContentValues contentValues) throws Exception {
            try {
                Sj();
                return this.sP.insert(str, str2, contentValues);
            } catch (Exception e10) {
                if (sP()) {
                    throw e10;
                }
                return -1L;
            }
        }

        public synchronized void Sj(String str, String str2, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
            JSONObject jSONObjectJcg;
            try {
                try {
                    Sj();
                    this.sP.beginTransaction();
                    ContentValues contentValues = new ContentValues();
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(i10);
                        if (sj2 != null && (jSONObjectJcg = sj2.Jcg()) != null) {
                            contentValues.put("id", sj2.TKC());
                            String strSP = Dq.Jcg().uvD().sP(jSONObjectJcg.toString());
                            if (!TextUtils.isEmpty(strSP)) {
                                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, strSP);
                                contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                contentValues.put("retry", (Integer) 0);
                                contentValues.put("encrypt", (Integer) 1);
                                if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.EjP() && sj2.TEQ() > 0 && (sj2.EjP() == 0 || sj2.EjP() == 3)) {
                                    contentValues.put("channel", Integer.valueOf(sj2.TEQ()));
                                }
                                this.sP.insert(str, str2, contentValues);
                            }
                            contentValues.clear();
                        }
                    }
                    this.sP.setTransactionSuccessful();
                    list.size();
                    if (this.sP != null) {
                        this.sP.endTransaction();
                    }
                } catch (Exception e10) {
                    list.size();
                    if (!sP()) {
                        if (this.sP != null) {
                            this.sP.endTransaction();
                        }
                    } else {
                        throw e10;
                    }
                }
            } catch (Throwable th2) {
                if (this.sP != null) {
                    this.sP.endTransaction();
                }
                throw th2;
            }
        }

        public int Sj(String str, String str2, String[] strArr) throws Exception {
            try {
                Sj();
                return this.sP.delete(str, str2, strArr);
            } catch (Exception e10) {
                if (sP()) {
                    throw e10;
                }
                return 0;
            }
        }
    }
}

package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class fbd implements bkd {
    public SQLiteDatabase a;
    public final AtomicInteger b;

    public static class b {
        public static final fbd a = new fbd();
    }

    public static fbd d() {
        return b.a;
    }

    @Override
    public boolean a(List list) {
        if (list != null) {
            try {
                if (list.size() >= 1) {
                    try {
                        e();
                        SQLiteDatabase sQLiteDatabase = this.a;
                        if (sQLiteDatabase == null) {
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            return false;
                        }
                        sQLiteDatabase.beginTransaction();
                        this.a.delete("cloudList", null, null);
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
                            if (codeSeat != null) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues.put("json", strD);
                                this.a.insert("cloudList", null, contentValues);
                            }
                        }
                        this.a.setTransactionSuccessful();
                        SQLiteDatabase sQLiteDatabase2 = this.a;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.endTransaction();
                        }
                        return true;
                    } catch (Exception e) {
                        AdLogUtil.Log().e("CloudControlDatabaseManager", "insert cloud data 2 db failed in work thread " + Log.getStackTraceString(e));
                        SQLiteDatabase sQLiteDatabase3 = this.a;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.endTransaction();
                        }
                        return false;
                    }
                }
            } catch (Throwable th) {
                SQLiteDatabase sQLiteDatabase4 = this.a;
                if (sQLiteDatabase4 != null) {
                    sQLiteDatabase4.endTransaction();
                }
                throw th;
            }
        }
        return false;
    }

    @Override
    public long b() {
        Cursor cursorRawQuery = null;
        try {
            try {
                e();
                cursorRawQuery = this.a.rawQuery("select count(*) from cloudList", null);
                cursorRawQuery.moveToFirst();
                long j = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j;
            } catch (Exception e) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e));
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return 0L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @Override
    public List c() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                e();
                cursorRawQuery = this.a.rawQuery("select * from cloudList", null);
                while (cursorRawQuery.moveToNext()) {
                    arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("json")), CloudControlConfig.CodeSeat.class));
                }
            } catch (Exception e) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e));
                if (cursorRawQuery != null) {
                }
                return arrayList;
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final synchronized SQLiteDatabase e() {
        if (this.b.incrementAndGet() == 1 || this.a == null) {
            try {
                this.a = new aad(ul4.a()).getWritableDatabase();
            } catch (Exception e) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e));
            }
        }
        return this.a;
    }

    public fbd() {
        this.b = new AtomicInteger();
    }

    @Override
    public void a() {
        try {
            e();
            this.a.delete("cloudList", null, null);
        } catch (Exception e) {
            AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void a(CloudControlConfig.CodeSeat codeSeat) {
        SQLiteDatabase sQLiteDatabase;
        try {
            try {
                e();
                SQLiteDatabase sQLiteDatabase2 = this.a;
                if (sQLiteDatabase2 == null) {
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.endTransaction();
                        return;
                    }
                    return;
                }
                sQLiteDatabase2.beginTransaction();
                String strD = GsonUtil.d(codeSeat);
                ContentValues contentValues = new ContentValues();
                contentValues.put("codeSeatId", codeSeat.getCodeSeatId());
                contentValues.put("json", strD);
                this.a.update("cloudList", contentValues, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                this.a.setTransactionSuccessful();
                SQLiteDatabase sQLiteDatabase3 = this.a;
                sQLiteDatabase = sQLiteDatabase3;
                this = sQLiteDatabase3;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase.endTransaction();
                    this = sQLiteDatabase;
                }
            } catch (Exception e) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", "update e " + Log.getStackTraceString(e));
                SQLiteDatabase sQLiteDatabase4 = this.a;
                sQLiteDatabase = sQLiteDatabase4;
                this = sQLiteDatabase4;
                if (sQLiteDatabase4 != null) {
                }
            }
        } catch (Throwable th) {
            SQLiteDatabase sQLiteDatabase5 = this.a;
            if (sQLiteDatabase5 != null) {
                sQLiteDatabase5.endTransaction();
            }
            throw th;
        }
    }
}

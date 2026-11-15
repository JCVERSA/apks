package ee;

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

public class e implements j {

    public SQLiteDatabase f59594a;

    public final AtomicInteger f59595b;

    public static class b {

        public static final e f59596a = new e();
    }

    public static e d() {
        return b.f59596a;
    }

    @Override
    public boolean a(List list) {
        if (list != null) {
            try {
                if (list.size() >= 1) {
                    try {
                        e();
                        SQLiteDatabase sQLiteDatabase = this.f59594a;
                        if (sQLiteDatabase == null) {
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            return false;
                        }
                        sQLiteDatabase.beginTransaction();
                        this.f59594a.delete("cloudList", null, null);
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
                            if (codeSeat != null) {
                                String strD = GsonUtil.d(codeSeat);
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("codeSeatId", codeSeat.getCodeSeatId());
                                contentValues.put("json", strD);
                                this.f59594a.insert("cloudList", null, contentValues);
                            }
                        }
                        this.f59594a.setTransactionSuccessful();
                        SQLiteDatabase sQLiteDatabase2 = this.f59594a;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.endTransaction();
                        }
                        return true;
                    } catch (Exception e10) {
                        AdLogUtil.Log().e("CloudControlDatabaseManager", "insert cloud data 2 db failed in work thread " + Log.getStackTraceString(e10));
                        SQLiteDatabase sQLiteDatabase3 = this.f59594a;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.endTransaction();
                        }
                        return false;
                    }
                }
            } catch (Throwable th2) {
                SQLiteDatabase sQLiteDatabase4 = this.f59594a;
                if (sQLiteDatabase4 != null) {
                    sQLiteDatabase4.endTransaction();
                }
                throw th2;
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
                cursorRawQuery = this.f59594a.rawQuery("select count(*) from cloudList", null);
                cursorRawQuery.moveToFirst();
                long j10 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j10;
            } catch (Exception e10) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e10));
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return 0L;
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    @Override
    public List c() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                e();
                cursorRawQuery = this.f59594a.rawQuery("select * from cloudList", null);
                while (cursorRawQuery.moveToNext()) {
                    arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("json")), CloudControlConfig.CodeSeat.class));
                }
            } catch (Exception e10) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e10));
                if (cursorRawQuery != null) {
                }
                return arrayList;
            }
            cursorRawQuery.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    public final synchronized SQLiteDatabase e() {
        if (this.f59595b.incrementAndGet() == 1 || this.f59594a == null) {
            try {
                this.f59594a = new d(com.cloud.sdk.commonutil.util.e.a()).getWritableDatabase();
            } catch (Exception e10) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e10));
            }
        }
        return this.f59594a;
    }

    public e() {
        this.f59595b = new AtomicInteger();
    }

    @Override
    public void a() {
        try {
            e();
            this.f59594a.delete("cloudList", null, null);
        } catch (Exception e10) {
            AdLogUtil.Log().e("CloudControlDatabaseManager", Log.getStackTraceString(e10));
        }
    }

    @Override
    public void a(CloudControlConfig.CodeSeat codeSeat) {
        SQLiteDatabase sQLiteDatabase;
        try {
            try {
                e();
                SQLiteDatabase sQLiteDatabase2 = this.f59594a;
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
                this.f59594a.update("cloudList", contentValues, "codeSeatId=?", new String[]{codeSeat.getCodeSeatId()});
                this.f59594a.setTransactionSuccessful();
                sQLiteDatabase = this.f59594a;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Exception e10) {
                AdLogUtil.Log().e("CloudControlDatabaseManager", "update e " + Log.getStackTraceString(e10));
                sQLiteDatabase = this.f59594a;
                if (sQLiteDatabase != null) {
                }
            }
        } catch (Throwable th2) {
            SQLiteDatabase sQLiteDatabase3 = this.f59594a;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.endTransaction();
            }
            throw th2;
        }
    }
}

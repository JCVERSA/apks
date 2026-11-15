package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.util.List;
import tech.palm.lib.utils.AdvertisingIdClient;

public abstract class l41 {

    public static class a {
        public String a = "";
        public String b = "";

        public String c() {
            return this.a;
        }
    }

    public static Cursor a(Context context) {
        try {
            return context.getContentResolver().query(Uri.parse("content://tech.palm.cloud.CloudSyncStateProvider/syncState"), null, null, null, null);
        } catch (Exception e) {
            Log.i("CloudManager", "get state fail, cause" + e.getMessage());
            return null;
        }
    }

    public static a b(Context context) {
        a aVar = new a();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(Uri.parse("content://com.hoffnung.DeviceInfoProvider"), null, null, null, null);
                if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                    aVar.a = AdvertisingIdClient.a(context);
                } else {
                    cursorQuery.moveToFirst();
                    aVar.a = cursorQuery.getString(cursorQuery.getColumnIndex("cpuid"));
                    aVar.b = cursorQuery.getString(cursorQuery.getColumnIndex("clientid"));
                }
                if (cursorQuery != null && !cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
            } catch (Exception e) {
                Log.i("CloudManager", "get state fail, cause" + e.getMessage());
                if (0 != 0 && !cursorQuery.isClosed()) {
                }
            }
            return aVar;
        } catch (Throwable th) {
            if (0 != 0 && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static boolean c(Context context) throws Throwable {
        Cursor cursorA;
        try {
            cursorA = a(context);
            boolean zBooleanValue = false;
            boolean zBooleanValue2 = false;
            boolean zBooleanValue3 = false;
            while (cursorA != null) {
                try {
                    if (!cursorA.moveToNext()) {
                        break;
                    }
                    if (1 == cursorA.getInt(cursorA.getColumnIndex(CloudItem.KEY_CATEGORY))) {
                        zBooleanValue = Boolean.valueOf(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_SYNC_STATE))).booleanValue();
                    }
                    if (2 == cursorA.getInt(cursorA.getColumnIndex(CloudItem.KEY_CATEGORY))) {
                        zBooleanValue2 = Boolean.valueOf(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_SYNC_STATE))).booleanValue();
                    }
                    if (3 == cursorA.getInt(cursorA.getColumnIndex(CloudItem.KEY_CATEGORY))) {
                        zBooleanValue3 = Boolean.valueOf(cursorA.getString(cursorA.getColumnIndex(CloudItem.KEY_SYNC_STATE))).booleanValue();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorA != null && !cursorA.isClosed()) {
                        cursorA.close();
                    }
                    throw th;
                }
            }
            boolean z = zBooleanValue || zBooleanValue2 || zBooleanValue3;
            if (cursorA != null && !cursorA.isClosed()) {
                cursorA.close();
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    public static boolean d(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                for (int i = 0; i < runningAppProcessInfo.pkgList.length; i++) {
                    if (context.getPackageName().equals(runningAppProcessInfo.pkgList[i]) && runningAppProcessInfo.importance <= 100) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

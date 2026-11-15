package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import org.apache.commons.lang3.BooleanUtils;

public final class zz0 {
    public static final zz0 a = new zz0();
    public static final String b = "visha_cloud_CloudFeatures";
    public static int c = -1;
    public static int d = -1;

    public static final boolean d() {
        int i = c;
        return i != -1 && i == 1;
    }

    public static final void f(final Context context) {
        y45.j(context, "context");
        boolean zC = w6c.c(context, "is_support_cloud_disk", false);
        String str = b;
        Log.i(str, "loadCloudDiskFeature isSupport:" + zC);
        if (zC) {
            d = 1;
        } else if (a.c(context)) {
            TaskExecutor.f().execute(new Runnable() {
                @Override
                public final void run() {
                    zz0.g(context);
                }
            });
        } else {
            d = 0;
            Log.i(str, "loadCloudDiskFeature isCloudServerNotExist");
        }
    }

    public static final void g(Context context) {
        Thread.currentThread().setPriority(10);
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.transsion.cloudserver.provider.CloudDiskProvider/cloud_disk"), null, null, null, null);
            try {
                Cursor cursor = cursorQuery;
                String str = b;
                Log.i(str, "loadCloudDiskFeature run cursor: " + cursor);
                if (cursor == null || !cursor.moveToNext()) {
                    d = 0;
                } else {
                    boolean zE = y45.e(BooleanUtils.TRUE, cursor.getString(cursor.getColumnIndex("is_support_cloud_disk")));
                    d = zE ? 1 : 0;
                    Log.i(str, "loadCloudDiskFeature run: " + zE);
                    if (zE) {
                        ri4.e().i(context);
                    }
                    w6c.r(context, "is_support_cloud_disk", zE);
                }
                zfb zfbVar = zfb.a;
                ly0.a(cursorQuery, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(cursorQuery, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            Log.e(b, Log.getStackTraceString(e));
            d = 0;
        }
        Log.i(b, "loadCloudDiskFeature run isSupportCloudDisk: " + (d == 1));
    }

    public final void b() {
        CloudFeaturesConfigHelper.Companion companion = CloudFeaturesConfigHelper.INSTANCE;
        if (!companion.isSupportVishaCloudFeatures()) {
            c = 0;
        } else if (companion.isSupportMIMediaLibrary() || e()) {
            c = 1;
        }
        String str = b;
        boolean z = c == 1;
        Log.i(str, "initCloudControlStatus isSupport:" + z + ", " + companion.isSupportVishaCloudFeatures() + ", " + companion.isSupportMIMediaLibrary() + ", " + e());
    }

    public final boolean c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.transsion.cloudserver", 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w(b, "isCloudServerExist App not installed: com.transsion.cloudserver");
            return false;
        } catch (Exception e) {
            Log.e(b, "isCloudServerExist Error checking cloudserver installation: " + e.getMessage());
            return false;
        }
    }

    public final boolean e() {
        int i = d;
        return i != -1 && i == 1;
    }
}

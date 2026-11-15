package defpackage;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.google.gson.Gson;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.palmsdk.account.XNManager;

public class uj7 {
    public final Context a;

    public uj7(Context context, PalmAuthParam palmAuthParam) {
        this.a = context.getApplicationContext();
    }

    public PalmID.Profile a() {
        try {
            String strE = XNManager.g().e(this.a);
            if (strE != null) {
                return (PalmID.Profile) new Gson().fromJson(strE, PalmID.Profile.class);
            }
            return null;
        } catch (Exception e) {
            oj7.a(e, qj7.a("PalmUserManager getProfile error: "), vj7.a);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[Catch: all -> 0x002d, Exception -> 0x002f, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:3:0x0002, B:5:0x000b, B:7:0x0017, B:17:0x0050, B:13:0x0031, B:15:0x0039), top: B:31:0x0002, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a A[PHI: r1
      0x007a: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:25:0x0078, B:22:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean b() {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            try {
                Intent intentA = vj7.a(this.a, true);
                if (intentA != null) {
                    String str = intentA.getPackage();
                    if ("tech.palm.id".equals(str)) {
                        cursorQuery = this.a.getContentResolver().query(Uri.parse("content://com.palm.id.account.AccountProvider/logged"), null, null, null, null);
                    } else {
                        if ("com.rlk.mi".equals(str)) {
                            cursorQuery = this.a.getContentResolver().query(Uri.parse("content://com.palm.id.old.account.AccountProvider/logged"), null, null, null, null);
                        }
                        if (cursor != null) {
                            boolean z = cursor.getCount() > 0;
                            cursor.close();
                            return z;
                        }
                    }
                    cursor = cursorQuery;
                    if (cursor != null) {
                        if (cursor.getCount() > 0) {
                        }
                        cursor.close();
                        return z;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                vj7.a.i("PalmUserManager isOSLoggedIn error: " + e.getMessage());
                if (cursor != null) {
                    cursor.close();
                }
            }
            return false;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}

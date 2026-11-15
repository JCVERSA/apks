package com.community.oneroom.nu.mm;

import a.c;
import a.d;
import a.k;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.util.Locale;

public final class a extends ContentProvider {

    public static final int f23324a = 0;

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override
    public final String getType(Uri uri) {
        return null;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static void installPlaybackClientBuild() {
        Handler handler = k.f33i;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = String.format(Locale.US, "%d%06d%d", Long.valueOf(jCurrentTimeMillis / 1000), Integer.valueOf((int) ((jCurrentTimeMillis % 1000) * 1000)), Integer.valueOf(k.f34j.nextInt(1000)));
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest("03d4b741632d136bc23e2de4c6adcdb7712f1980b619c183221801730bbd0410oneroom".concat(str).getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder(32);
            for (byte b10 : bArrDigest) {
                sb2.append(String.format(Locale.US, "%02x", Integer.valueOf(b10 & 255)));
            }
            String str2 = str + "." + sb2.toString();
            Object obj = Class.forName("jg.b").getField("a").get(null);
            obj.getClass().getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, String.class, String.class).invoke(obj, "X-Client-Build", str2);
        } catch (Throwable unused) {
        }
    }

    @Override
    public final boolean onCreate() {
        String str;
        Application application = (Application) getContext().getApplicationContext();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                NotificationManager notificationManager = (NotificationManager) application.getSystemService("notification");
                if (notificationManager != null && notificationManager.getNotificationChannel("oneroom_notice_Permanent") == null) {
                    a.a.c();
                    NotificationChannel notificationChannelA = a.a.a();
                    notificationChannelA.setSound(null, null);
                    notificationChannelA.enableLights(false);
                    notificationChannelA.enableVibration(false);
                    notificationChannelA.setShowBadge(false);
                    notificationManager.createNotificationChannel(notificationChannelA);
                }
            } catch (RuntimeException unused) {
            }
        }
        try {
            Signature[] signatureArrA = d.a(application);
            if (signatureArrA != null && signatureArrA.length != 0) {
                int[][] iArr = d.f18a;
                int[] iArr2 = d.f19b;
                byte[] bArr = new byte[64];
                for (int i10 = 0; i10 < 64; i10++) {
                    int i11 = i10 % 4;
                    bArr[i10] = (byte) (iArr2[i11] ^ iArr[i11][i10 / 4]);
                }
                try {
                    str = new String(bArr, "UTF-8");
                } catch (Exception unused2) {
                    str = "";
                }
                if (str.length() == 64) {
                    for (Signature signature : signatureArrA) {
                        byte[] bArrDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256).digest(signature.toByteArray());
                        char[] charArray = "0123456789abcdef".toCharArray();
                        char[] cArr = new char[bArrDigest.length * 2];
                        for (int i12 = 0; i12 < bArrDigest.length; i12++) {
                            byte b10 = bArrDigest[i12];
                            int i13 = i12 * 2;
                            cArr[i13] = charArray[(b10 & 255) >>> 4];
                            cArr[i13 + 1] = charArray[b10 & 15];
                        }
                        if (!str.equalsIgnoreCase(new String(cArr))) {
                        }
                    }
                }
                if (d.f20c.compareAndSet(false, true)) {
                    int iMax = Math.max(0, 4000);
                    d.f21d.postDelayed(new c(1), (iMax != 0 ? d.f22e.nextInt(iMax + 1) : 0) + 4000);
                }
            }
        } catch (Throwable unused3) {
        }
        k kVar = k.f41q;
        kVar.f42a = application;
        application.registerActivityLifecycleCallbacks(kVar);
        kVar.b();
        return true;
    }
}

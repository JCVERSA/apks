package defpackage;

import android.R;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.google.firebase.messaging.c;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.greendao.generator.Schema;

public abstract class ka1 {
    public static final AtomicInteger a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    public static class a {
        public final NotificationCompat.Builder a;
        public final String b;
        public final int c;

        public a(NotificationCompat.Builder builder, String str, int i) {
            this.a = builder;
            this.b = str;
            this.c = i;
        }
    }

    public static PendingIntent a(Context context, c cVar, String str, PackageManager packageManager) {
        Intent intentF = f(str, cVar, packageManager);
        if (intentF == null) {
            return null;
        }
        intentF.addFlags(67108864);
        intentF.putExtras(cVar.y());
        if (q(cVar)) {
            intentF.putExtra("gcm.n.analytics_data", cVar.x());
        }
        return PendingIntent.getActivity(context, g(), intentF, l(1073741824));
    }

    public static PendingIntent b(Context context, Context context2, c cVar) {
        if (q(cVar)) {
            return c(context, context2, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(cVar.x()));
        }
        return null;
    }

    public static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(context2.getPackageName()).putExtra("wrapped_intent", intent), l(1073741824));
    }

    public static a d(Context context, Context context2, c cVar, String str, Bundle bundle) {
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context2, str);
        String strN = cVar.n(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(strN)) {
            builder.setContentTitle(strN);
        }
        String strN2 = cVar.n(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(strN2)) {
            builder.setContentText(strN2);
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(strN2));
        }
        builder.setSmallIcon(m(packageManager, resources, packageName, cVar.p("gcm.n.icon"), bundle));
        Uri uriN = n(packageName, cVar, resources);
        if (uriN != null) {
            builder.setSound(uriN);
        }
        builder.setContentIntent(a(context, cVar, packageName, packageManager));
        PendingIntent pendingIntentB = b(context, context2, cVar);
        if (pendingIntentB != null) {
            builder.setDeleteIntent(pendingIntentB);
        }
        Integer numH = h(context2, cVar.p("gcm.n.color"), bundle);
        if (numH != null) {
            builder.setColor(numH.intValue());
        }
        builder.setAutoCancel(!cVar.a("gcm.n.sticky"));
        builder.setLocalOnly(cVar.a("gcm.n.local_only"));
        String strP = cVar.p("gcm.n.ticker");
        if (strP != null) {
            builder.setTicker(strP);
        }
        Integer numM = cVar.m();
        if (numM != null) {
            builder.setPriority(numM.intValue());
        }
        Integer numR = cVar.r();
        if (numR != null) {
            builder.setVisibility(numR.intValue());
        }
        Integer numL = cVar.l();
        if (numL != null) {
            builder.setNumber(numL.intValue());
        }
        Long lJ = cVar.j("gcm.n.event_time");
        if (lJ != null) {
            builder.setShowWhen(true);
            builder.setWhen(lJ.longValue());
        }
        long[] jArrQ = cVar.q();
        if (jArrQ != null) {
            builder.setVibrate(jArrQ);
        }
        int[] iArrE = cVar.e();
        if (iArrE != null) {
            builder.setLights(iArrE[0], iArrE[1], iArrE[2]);
        }
        builder.setDefaults(i(cVar));
        return new a(builder, o(cVar), 0);
    }

    public static a e(Context context, c cVar) {
        Bundle bundleJ = j(context.getPackageManager(), context.getPackageName());
        return d(context, context, cVar, k(context, cVar.k(), bundleJ), bundleJ);
    }

    public static Intent f(String str, c cVar, PackageManager packageManager) {
        String strP = cVar.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(strP)) {
            Intent intent = new Intent(strP);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri uriF = cVar.f();
        if (uriF != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(uriF);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    public static int g() {
        return a.incrementAndGet();
    }

    public static Integer h(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i == 0) {
            return null;
        }
        try {
            return Integer.valueOf(ContextCompat.getColor(context, i));
        } catch (Resources.NotFoundException unused2) {
            Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public static int i(c cVar) {
        boolean zA = cVar.a("gcm.n.default_sound");
        ?? r0 = zA;
        if (cVar.a("gcm.n.default_vibrate_timings")) {
            r0 = (zA ? 1 : 0) | 2;
        }
        return cVar.a("gcm.n.default_light_settings") ? r0 | 4 : r0;
    }

    public static Bundle j(PackageManager packageManager, String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                return bundle;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e);
        }
        return Bundle.EMPTY;
    }

    public static String k(Context context, String str, Bundle bundle) {
        String string;
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                if (notificationManager.getNotificationChannel(str) != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (TextUtils.isEmpty(string2)) {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            } else {
                if (notificationManager.getNotificationChannel(string2) != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            }
            if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static int l(int i) {
        return i | 67108864;
    }

    public static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i == 0 || !p(resources, i)) {
            try {
                i = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e);
            }
        }
        return (i == 0 || !p(resources, i)) ? R.drawable.sym_def_app_icon : i;
    }

    public static Uri n(String str, c cVar, Resources resources) {
        String strO = cVar.o();
        if (TextUtils.isEmpty(strO)) {
            return null;
        }
        if (Schema.DEFAULT_NAME.equals(strO) || resources.getIdentifier(strO, "raw", str) == 0) {
            return RingtoneManager.getDefaultUri(2);
        }
        return Uri.parse("android.resource://" + str + "/raw/" + strO);
    }

    public static String o(c cVar) {
        String strP = cVar.p("gcm.n.tag");
        if (!TextUtils.isEmpty(strP)) {
            return strP;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    public static boolean p(Resources resources, int i) {
        return true;
    }

    public static boolean q(c cVar) {
        return cVar.a("google.c.a.e");
    }
}

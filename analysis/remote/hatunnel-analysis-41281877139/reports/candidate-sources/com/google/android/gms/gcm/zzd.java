package com.google.android.gms.gcm;

import android.app.Notification;
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
import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
import androidx.core.app.NotificationCompat;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

final class zzd {
    static zzd zzk;
    private final Context zzl;
    private String zzm;
    private final AtomicInteger zzn = new AtomicInteger((int) SystemClock.elapsedRealtime());

    private zzd(Context context) {
        this.zzl = context.getApplicationContext();
    }

    static synchronized zzd zzd(Context context) {
        if (zzk == null) {
            zzk = new zzd(context);
        }
        return zzk;
    }

    static String zzd(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace(ProtectedFastSSH.s("䋾"), ProtectedFastSSH.s("䋿"))) : string;
    }

    private final String zze(Bundle bundle, String str) {
        String strS = ProtectedFastSSH.s("䌀");
        String strZzd = zzd(bundle, str);
        if (!TextUtils.isEmpty(strZzd)) {
            return strZzd;
        }
        String strValueOf = String.valueOf(str);
        String strS2 = ProtectedFastSSH.s("䌁");
        String strZzd2 = zzd(bundle, strValueOf.concat(strS2));
        if (TextUtils.isEmpty(strZzd2)) {
            return null;
        }
        Resources resources = this.zzl.getResources();
        int identifier = resources.getIdentifier(strZzd2, ProtectedFastSSH.s("䌂"), this.zzl.getPackageName());
        String strS3 = ProtectedFastSSH.s("䌃");
        ProtectedFastSSH.s("䌄");
        if (identifier == 0) {
            String strSubstring = String.valueOf(str).concat(strS2).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 49 + String.valueOf(strZzd2).length());
            sb.append(strSubstring);
            sb.append(ProtectedFastSSH.s("䌅"));
            sb.append(strZzd2);
            sb.append(strS3);
            sb.toString();
            return null;
        }
        String strValueOf2 = String.valueOf(str);
        String strS4 = ProtectedFastSSH.s("䌆");
        String strZzd3 = zzd(bundle, strValueOf2.concat(strS4));
        if (TextUtils.isEmpty(strZzd3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(strZzd3);
            int length = jSONArray.length();
            Object[] objArr = new String[length];
            for (int i = 0; i < length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(strZzd2).length() + 58 + String.valueOf(strZzd3).length());
            sb2.append(ProtectedFastSSH.s("䌇"));
            sb2.append(strZzd2);
            sb2.append(strS);
            sb2.append(strZzd3);
            sb2.append(strS3);
            sb2.toString();
            return null;
        } catch (JSONException unused) {
            String strSubstring2 = String.valueOf(str).concat(strS4).substring(6);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strSubstring2).length() + 41 + String.valueOf(strZzd3).length());
            sb3.append(ProtectedFastSSH.s("䌈"));
            sb3.append(strSubstring2);
            sb3.append(strS);
            sb3.append(strZzd3);
            sb3.append(ProtectedFastSSH.s("䌉"));
            sb3.toString();
            return null;
        }
    }

    private final Bundle zzf() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.zzl.getPackageManager().getApplicationInfo(this.zzl.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        return (applicationInfo == null || applicationInfo.metaData == null) ? Bundle.EMPTY : applicationInfo.metaData;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:26:0x0131  */
    /* JADX WARN: Code duplicated, block: B:49:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:52:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:53:0x0224  */
    /* JADX WARN: Code duplicated, block: B:55:0x0228 A[PHI: r8
      0x0228: PHI (r8v30 java.lang.String) = (r8v18 java.lang.String), (r8v25 java.lang.String), (r8v14 java.lang.String) binds: [B:54:0x0226, B:66:0x027c, B:50:0x01f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x022a  */
    /* JADX WARN: Code duplicated, block: B:58:0x0241  */
    /* JADX WARN: Code duplicated, block: B:60:0x0249  */
    /* JADX WARN: Code duplicated, block: B:61:0x024c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0255  */
    /* JADX WARN: Code duplicated, block: B:65:0x026a  */
    /* JADX WARN: Code duplicated, block: B:69:0x0295  */
    /* JADX WARN: Code duplicated, block: B:72:0x029e  */
    /* JADX WARN: Code duplicated, block: B:75:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:77:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:79:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:81:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:84:0x02de  */
    /* JADX WARN: Code duplicated, block: B:87:0x02fb  */
    final boolean zze(Bundle bundle) {
        int i;
        int identifier;
        Uri defaultUri;
        Intent launchIntentForPackage;
        PendingIntent activity;
        String strZzd;
        NotificationCompat.Builder smallIcon;
        String strZzd2;
        NotificationManager notificationManager;
        String string;
        CharSequence charSequenceZze = zze(bundle, ProtectedFastSSH.s("䌊"));
        if (TextUtils.isEmpty(charSequenceZze)) {
            charSequenceZze = this.zzl.getApplicationInfo().loadLabel(this.zzl.getPackageManager());
        }
        String strZze = zze(bundle, ProtectedFastSSH.s("䌋"));
        String strZzd3 = zzd(bundle, ProtectedFastSSH.s("䌌"));
        boolean zIsEmpty = TextUtils.isEmpty(strZzd3);
        String strS = ProtectedFastSSH.s("䌄");
        if (zIsEmpty) {
            i = this.zzl.getApplicationInfo().icon;
            if (i == 0) {
                i = android.R.drawable.sym_def_app_icon;
            }
            identifier = i;
        } else {
            Resources resources = this.zzl.getResources();
            identifier = resources.getIdentifier(strZzd3, ProtectedFastSSH.s("䌍"), this.zzl.getPackageName());
            if (identifier == 0) {
                identifier = resources.getIdentifier(strZzd3, ProtectedFastSSH.s("䌎"), this.zzl.getPackageName());
                if (identifier == 0) {
                    StringBuilder sb = new StringBuilder(String.valueOf(strZzd3).length() + 57);
                    sb.append(ProtectedFastSSH.s("䌏"));
                    sb.append(strZzd3);
                    sb.append(ProtectedFastSSH.s("䌐"));
                    sb.toString();
                    i = this.zzl.getApplicationInfo().icon;
                    if (i == 0) {
                        i = android.R.drawable.sym_def_app_icon;
                    }
                    identifier = i;
                }
            }
        }
        String strZzd4 = zzd(bundle, ProtectedFastSSH.s("䌑"));
        String strZzd5 = zzd(bundle, ProtectedFastSSH.s("䌒"));
        String str = null;
        if (TextUtils.isEmpty(strZzd5)) {
            defaultUri = null;
        } else if (ProtectedFastSSH.s("䌓").equals(strZzd5)) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        } else {
            if (this.zzl.getResources().getIdentifier(strZzd5, ProtectedFastSSH.s("䌔"), this.zzl.getPackageName()) != 0) {
                String packageName = this.zzl.getPackageName();
                StringBuilder sb2 = new StringBuilder(String.valueOf(packageName).length() + 24 + String.valueOf(strZzd5).length());
                sb2.append(ProtectedFastSSH.s("䌕"));
                sb2.append(packageName);
                sb2.append(ProtectedFastSSH.s("䌖"));
                sb2.append(strZzd5);
                defaultUri = Uri.parse(sb2.toString());
            } else {
                defaultUri = RingtoneManager.getDefaultUri(2);
            }
        }
        String strZzd6 = zzd(bundle, ProtectedFastSSH.s("䌗"));
        if (TextUtils.isEmpty(strZzd6)) {
            launchIntentForPackage = this.zzl.getPackageManager().getLaunchIntentForPackage(this.zzl.getPackageName());
            if (launchIntentForPackage == null) {
                ProtectedFastSSH.s("䌘");
                activity = null;
            }
            strZzd = zzd(bundle, ProtectedFastSSH.s("䌙"));
            if (PlatformVersion.isAtLeastO() && this.zzl.getApplicationInfo().targetSdkVersion >= 26) {
                notificationManager = (NotificationManager) this.zzl.getSystemService(NotificationManager.class);
                if (TextUtils.isEmpty(strZzd)) {
                    strZzd = this.zzm;
                    if (strZzd != null) {
                        str = strZzd;
                    } else {
                        string = zzf().getString(ProtectedFastSSH.s("䌜"));
                        this.zzm = string;
                        if (!TextUtils.isEmpty(string)) {
                            ProtectedFastSSH.s("䌞");
                        } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, this.zzm) != null) {
                            str = this.zzm;
                        } else {
                            ProtectedFastSSH.s("䌝");
                        }
                        strZzd = ProtectedFastSSH.s("䌟");
                        if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) == null) {
                            zzy$$ExternalSyntheticApiModelOutline0.m516m$1();
                            ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, ComponentDialog$$ExternalSyntheticApiModelOutline0.m(strZzd, this.zzl.getString(R.string.gcm_fallback_notification_channel_label), 3));
                        }
                        this.zzm = strZzd;
                        str = strZzd;
                    }
                } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) != null) {
                    str = strZzd;
                } else {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(strZzd).length() + 122);
                    sb3.append(ProtectedFastSSH.s("䌚"));
                    sb3.append(strZzd);
                    sb3.append(ProtectedFastSSH.s("䌛"));
                    sb3.toString();
                    strZzd = this.zzm;
                    if (strZzd != null) {
                        str = strZzd;
                    } else {
                        string = zzf().getString(ProtectedFastSSH.s("䌜"));
                        this.zzm = string;
                        if (!TextUtils.isEmpty(string)) {
                            ProtectedFastSSH.s("䌞");
                        } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, this.zzm) != null) {
                            str = this.zzm;
                        } else {
                            ProtectedFastSSH.s("䌝");
                        }
                        strZzd = ProtectedFastSSH.s("䌟");
                        if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) == null) {
                            zzy$$ExternalSyntheticApiModelOutline0.m516m$1();
                            ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, ComponentDialog$$ExternalSyntheticApiModelOutline0.m(strZzd, this.zzl.getString(R.string.gcm_fallback_notification_channel_label), 3));
                        }
                        this.zzm = strZzd;
                        str = strZzd;
                    }
                }
            }
            smallIcon = new NotificationCompat.Builder(this.zzl).setAutoCancel(true).setSmallIcon(identifier);
            if (!TextUtils.isEmpty(charSequenceZze)) {
                smallIcon.setContentTitle(charSequenceZze);
            }
            if (!TextUtils.isEmpty(strZze)) {
                smallIcon.setContentText(strZze);
                smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(strZze));
            }
            if (!TextUtils.isEmpty(strZzd4)) {
                smallIcon.setColor(Color.parseColor(strZzd4));
            }
            if (defaultUri != null) {
                smallIcon.setSound(defaultUri);
            }
            if (activity != null) {
                smallIcon.setContentIntent(activity);
            }
            if (str != null) {
                smallIcon.setChannelId(str);
            }
            Notification notificationBuild = smallIcon.build();
            strZzd2 = zzd(bundle, ProtectedFastSSH.s("䌠"));
            if (Log.isLoggable(strS, 3)) {
                ProtectedFastSSH.s("䌡");
            }
            NotificationManager notificationManager2 = (NotificationManager) this.zzl.getSystemService(ProtectedFastSSH.s("䌢"));
            if (TextUtils.isEmpty(strZzd2)) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                StringBuilder sb4 = new StringBuilder(37);
                sb4.append(ProtectedFastSSH.s("䌣"));
                sb4.append(jUptimeMillis);
                strZzd2 = sb4.toString();
            }
            notificationManager2.notify(strZzd2, 0, notificationBuild);
            return true;
        }
        launchIntentForPackage = new Intent(strZzd6);
        launchIntentForPackage.setPackage(this.zzl.getPackageName());
        launchIntentForPackage.setFlags(268435456);
        Bundle bundle2 = new Bundle(bundle);
        GcmListenerService.zzd(bundle2);
        launchIntentForPackage.putExtras(bundle2);
        for (String str2 : bundle2.keySet()) {
            if (str2.startsWith(ProtectedFastSSH.s("䋾")) || str2.startsWith(ProtectedFastSSH.s("䋿"))) {
                launchIntentForPackage.removeExtra(str2);
            }
        }
        activity = PendingIntent.getActivity(this.zzl, this.zzn.getAndIncrement(), launchIntentForPackage, 1073741824);
        strZzd = zzd(bundle, ProtectedFastSSH.s("䌙"));
        if (PlatformVersion.isAtLeastO()) {
            notificationManager = (NotificationManager) this.zzl.getSystemService(NotificationManager.class);
            if (TextUtils.isEmpty(strZzd)) {
                strZzd = this.zzm;
                if (strZzd != null) {
                    str = strZzd;
                } else {
                    string = zzf().getString(ProtectedFastSSH.s("䌜"));
                    this.zzm = string;
                    if (!TextUtils.isEmpty(string)) {
                        ProtectedFastSSH.s("䌞");
                    } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, this.zzm) != null) {
                        str = this.zzm;
                    } else {
                        ProtectedFastSSH.s("䌝");
                    }
                    strZzd = ProtectedFastSSH.s("䌟");
                    if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) == null) {
                        zzy$$ExternalSyntheticApiModelOutline0.m516m$1();
                        ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, ComponentDialog$$ExternalSyntheticApiModelOutline0.m(strZzd, this.zzl.getString(R.string.gcm_fallback_notification_channel_label), 3));
                    }
                    this.zzm = strZzd;
                    str = strZzd;
                }
            } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) != null) {
                str = strZzd;
            } else {
                StringBuilder sb5 = new StringBuilder(String.valueOf(strZzd).length() + 122);
                sb5.append(ProtectedFastSSH.s("䌚"));
                sb5.append(strZzd);
                sb5.append(ProtectedFastSSH.s("䌛"));
                sb5.toString();
                strZzd = this.zzm;
                if (strZzd != null) {
                    str = strZzd;
                } else {
                    string = zzf().getString(ProtectedFastSSH.s("䌜"));
                    this.zzm = string;
                    if (!TextUtils.isEmpty(string)) {
                        ProtectedFastSSH.s("䌞");
                    } else if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, this.zzm) != null) {
                        str = this.zzm;
                    } else {
                        ProtectedFastSSH.s("䌝");
                    }
                    strZzd = ProtectedFastSSH.s("䌟");
                    if (ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, strZzd) == null) {
                        zzy$$ExternalSyntheticApiModelOutline0.m516m$1();
                        ComponentDialog$$ExternalSyntheticApiModelOutline0.m(notificationManager, ComponentDialog$$ExternalSyntheticApiModelOutline0.m(strZzd, this.zzl.getString(R.string.gcm_fallback_notification_channel_label), 3));
                    }
                    this.zzm = strZzd;
                    str = strZzd;
                }
            }
        }
        smallIcon = new NotificationCompat.Builder(this.zzl).setAutoCancel(true).setSmallIcon(identifier);
        if (!TextUtils.isEmpty(charSequenceZze)) {
            smallIcon.setContentTitle(charSequenceZze);
        }
        if (!TextUtils.isEmpty(strZze)) {
            smallIcon.setContentText(strZze);
            smallIcon.setStyle(new NotificationCompat.BigTextStyle().bigText(strZze));
        }
        if (!TextUtils.isEmpty(strZzd4)) {
            smallIcon.setColor(Color.parseColor(strZzd4));
        }
        if (defaultUri != null) {
            smallIcon.setSound(defaultUri);
        }
        if (activity != null) {
            smallIcon.setContentIntent(activity);
        }
        if (str != null) {
            smallIcon.setChannelId(str);
        }
        Notification notificationBuild2 = smallIcon.build();
        strZzd2 = zzd(bundle, ProtectedFastSSH.s("䌠"));
        if (Log.isLoggable(strS, 3)) {
            ProtectedFastSSH.s("䌡");
        }
        NotificationManager notificationManager3 = (NotificationManager) this.zzl.getSystemService(ProtectedFastSSH.s("䌢"));
        if (TextUtils.isEmpty(strZzd2)) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            StringBuilder sb6 = new StringBuilder(37);
            sb6.append(ProtectedFastSSH.s("䌣"));
            sb6.append(jUptimeMillis2);
            strZzd2 = sb6.toString();
        }
        notificationManager3.notify(strZzd2, 0, notificationBuild2);
        return true;
    }
}

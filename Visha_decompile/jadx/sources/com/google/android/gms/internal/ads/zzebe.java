package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.offline.buffering.zza;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzebe;
import defpackage.cye;
import defpackage.d0i;
import defpackage.ddg;
import defpackage.dwg;
import defpackage.fwg;
import defpackage.pqh;
import defpackage.qwg;
import defpackage.rmg;
import defpackage.smg;
import defpackage.svg;
import defpackage.wvg;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

public final class zzebe extends zzbsq {

    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final smg zzc;
    private final zzu zzd;
    private final dwg zze;
    private String zzf;
    private String zzg;

    @VisibleForTesting
    public zzebe(Context context, dwg dwgVar, zzu zzuVar, smg smgVar) {
        this.zzb = context;
        this.zzc = smgVar;
        this.zzd = zzuVar;
        this.zze = dwgVar;
    }

    public static void zzc(zzebe zzebeVar, zzm zzmVar, DialogInterface dialogInterface, int i) {
        zzebeVar.zze.d(zzebeVar.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzebeVar.zzw(zzebeVar.zzf, "rtsdc", map);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzd(zzebe zzebeVar, zzm zzmVar, DialogInterface dialogInterface) {
        zzebeVar.zze.d(zzebeVar.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzebeVar.zzw(zzebeVar.zzf, "rtsdc", map);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzk(zzebe zzebeVar, Activity activity, zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap map = new HashMap();
        map.put("dialog_action", "confirm");
        zzebeVar.zzw(zzebeVar.zzf, "rtsdc", map);
        activity.startActivity(zzv.zzr().zzf(activity));
        zzebeVar.zzx();
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzl(zzebe zzebeVar, zzm zzmVar, DialogInterface dialogInterface, int i) {
        zzebeVar.zze.d(zzebeVar.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzebeVar.zzw(zzebeVar.zzf, "dialog_click", map);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzm(zzebe zzebeVar, Activity activity, zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap map = new HashMap();
        map.put("dialog_action", "confirm");
        zzebeVar.zzw(zzebeVar.zzf, "dialog_click", map);
        zzebeVar.zzy(activity, zzmVar);
    }

    public static void zzn(zzebe zzebeVar, zzm zzmVar, DialogInterface dialogInterface) {
        zzebeVar.zze.d(zzebeVar.zzf);
        HashMap map = new HashMap();
        map.put("dialog_action", "dismiss");
        zzebeVar.zzw(zzebeVar.zzf, "dialog_click", map);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzo(Context context, smg smgVar, dwg dwgVar, String str, String str2) {
        zzp(context, smgVar, dwgVar, str, str2, new HashMap());
    }

    public static void zzp(Context context, smg smgVar, dwg dwgVar, String str, String str2, Map map) {
        String strE;
        String str3 = true != zzv.zzp().a(context) ? "offline" : "online";
        if (smgVar != null) {
            rmg rmgVarA = smgVar.a();
            rmgVarA.b("gqi", str);
            rmgVarA.b("action", str2);
            rmgVarA.b("device_connectivity", str3);
            rmgVarA.b("event_timestamp", String.valueOf(zzv.zzC().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                rmgVarA.b((String) entry.getKey(), (String) entry.getValue());
            }
            strE = rmgVarA.e();
        } else {
            strE = "";
        }
        dwgVar.e(new fwg(zzv.zzC().currentTimeMillis(), str, strE, 2));
    }

    @VisibleForTesting
    public static final PendingIntent zzr(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (str.equals("offline_notification_clicked")) {
            intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
            return d0i.a(context, 0, intent, 201326592);
        }
        intent.setClassName(context, AdService.CLASS_NAME);
        return d0i.b(context, 0, intent, 1140850688, 0);
    }

    private final AlertDialog zzs(Activity activity, @Nullable final zzm zzmVar) {
        zzv.zzq();
        AlertDialog.Builder onCancelListener = com.google.android.gms.ads.internal.util.zzs.zzL(activity).setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                zzm zzmVar2 = zzmVar;
                if (zzmVar2 != null) {
                    zzmVar2.zzb();
                }
            }
        });
        XmlResourceParser xmlResourceParserZzt = zzt(R.layout.offline_ads_dialog);
        if (xmlResourceParserZzt == null) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
        try {
            View viewInflate = activity.getLayoutInflater().inflate(xmlResourceParserZzt, (ViewGroup) null);
            onCancelListener.setView(viewInflate);
            String strZzu = zzu();
            if (!TextUtils.isEmpty(strZzu)) {
                TextView textView = (TextView) viewInflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(strZzu);
            }
            wvg wvgVar = (wvg) this.zza.get(this.zzf);
            Drawable drawableA = wvgVar != null ? wvgVar.a() : null;
            if (drawableA != null) {
                ((ImageView) viewInflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(drawableA);
            }
            AlertDialog alertDialogCreate = onCancelListener.create();
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            return alertDialogCreate;
        } catch (Resources.NotFoundException unused) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
    }

    @Nullable
    private static XmlResourceParser zzt(int i) {
        Resources resourcesF = zzv.zzp().f();
        if (resourcesF == null) {
            return null;
        }
        try {
            return resourcesF.getLayout(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    @Nullable
    private final String zzu() {
        wvg wvgVar = (wvg) this.zza.get(this.zzf);
        return wvgVar == null ? "" : wvgVar.b();
    }

    private static String zzv(int i, String str) {
        Resources resourcesF = zzv.zzp().f();
        if (resourcesF == null) {
            return str;
        }
        try {
            return resourcesF.getString(i);
        } catch (Resources.NotFoundException unused) {
            return str;
        }
    }

    private final void zzw(String str, String str2, Map map) {
        zzp(this.zzb, this.zzc, this.zze, str, str2, map);
    }

    private final void zzx() {
        boolean zZzg;
        boolean zZzf;
        try {
            zzv.zzq();
            Context context = this.zzb;
            zzbr zzbrVarZzA = com.google.android.gms.ads.internal.util.zzs.zzA(context);
            IObjectWrapper iObjectWrapperWrap = ObjectWrapper.wrap(context);
            String str = this.zzg;
            String str2 = this.zzf;
            wvg wvgVar = (wvg) this.zza.get(str2);
            zZzg = zzbrVarZzA.zzg(iObjectWrapperWrap, new zza(str, str2, wvgVar == null ? "" : wvgVar.c()));
            if (zZzg) {
                zZzf = true;
            } else {
                try {
                    zZzf = zzbrVarZzA.zzf(ObjectWrapper.wrap(context), this.zzg, this.zzf);
                } catch (RemoteException e) {
                    e = e;
                    int i = zze.zza;
                    zzo.zzh("Failed to schedule offline notification poster.", e);
                    zZzf = zZzg;
                }
            }
        } catch (RemoteException e2) {
            e = e2;
            zZzg = false;
        }
        if (zZzf) {
            return;
        }
        this.zze.d(this.zzf);
        zzw(this.zzf, "offline_notification_worker_not_scheduled", zzfwz.zzd());
    }

    private final void zzy(final Activity activity, @Nullable final zzm zzmVar) {
        zzv.zzq();
        if (NotificationManagerCompat.from(activity).areNotificationsEnabled()) {
            zzx();
            zzz(activity, zzmVar);
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
                zzw(this.zzf, "asnpdi", zzfwz.zzd());
                return;
            }
            zzv.zzq();
            AlertDialog.Builder builderZzL = com.google.android.gms.ads.internal.util.zzs.zzL(activity);
            builderZzL.setTitle(zzv(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(zzv(R.string.notifications_permission_confirm, RtspHeaders.ALLOW), new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzebe.zzk(this.b, activity, zzmVar, dialogInterface, i);
                }
            }).setNegativeButton(zzv(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzebe.zzc(this.b, zzmVar, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override
                public final void onCancel(DialogInterface dialogInterface) {
                    zzebe.zzd(this.b, zzmVar, dialogInterface);
                }
            });
            builderZzL.create().show();
            zzw(this.zzf, "rtsdi", zzfwz.zzd());
        }
    }

    private final void zzz(Activity activity, @Nullable zzm zzmVar) {
        AlertDialog alertDialogZzs = zzs(activity, zzmVar);
        alertDialogZzs.show();
        Timer timer = new Timer();
        timer.schedule(new zzebd(this, alertDialogZzs, timer, zzmVar), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    @Override
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra != null) {
            if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
                String stringExtra2 = intent.getStringExtra("gws_query_id");
                String stringExtra3 = intent.getStringExtra("uri");
                Context context = this.zzb;
                boolean zA = zzv.zzp().a(context);
                HashMap map = new HashMap();
                char c = 2;
                if (stringExtra.equals("offline_notification_clicked")) {
                    map.put("offline_notification_action", "offline_notification_clicked");
                    c = true == zA ? (char) 1 : (char) 2;
                    map.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                    map.put("olaih", String.valueOf(stringExtra3.startsWith(ProxyConfig.MATCH_HTTP)));
                    try {
                        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                        if (launchIntentForPackage == null) {
                            launchIntentForPackage = new Intent("android.intent.action.VIEW");
                            launchIntentForPackage.setData(Uri.parse(stringExtra3));
                        }
                        launchIntentForPackage.addFlags(268435456);
                        context.startActivity(launchIntentForPackage);
                        map.put("olaa", "olas");
                    } catch (ActivityNotFoundException unused) {
                        map.put("olaa", "olaf");
                    }
                } else {
                    map.put("offline_notification_action", "offline_notification_dismissed");
                }
                zzw(stringExtra2, "offline_notification_action", map);
                try {
                    SQLiteDatabase writableDatabase = this.zze.getWritableDatabase();
                    if (c == 1) {
                        this.zze.k(writableDatabase, this.zzd, stringExtra2);
                    } else {
                        dwg.o(writableDatabase, stringExtra2);
                    }
                } catch (SQLiteException e) {
                    String strConcat = "Failed to get writable offline buffering database: ".concat(e.toString());
                    int i = zze.zza;
                    zzo.zzg(strConcat);
                }
            }
        }
    }

    @Override
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                qwg qwgVar = (qwg) ObjectWrapper.unwrap(iObjectWrapper);
                Activity activityA = qwgVar.a();
                zzm zzmVarB = qwgVar.b();
                HashMap map = new HashMap();
                if (iArr[i] == 0) {
                    map.put("dialog_action", "confirm");
                    zzx();
                    zzz(activityA, zzmVarB);
                } else {
                    map.put("dialog_action", "dismiss");
                    if (zzmVarB != null) {
                        zzmVarB.zzb();
                    }
                }
                zzw(this.zzf, "asnpdc", map);
                return;
            }
        }
    }

    @Override
    public final void zzg(IObjectWrapper iObjectWrapper) {
        qwg qwgVar = (qwg) ObjectWrapper.unwrap(iObjectWrapper);
        final Activity activityA = qwgVar.a();
        final zzm zzmVarB = qwgVar.b();
        this.zzf = qwgVar.c();
        this.zzg = qwgVar.d();
        if (((Boolean) zzbd.zzc().b(cye.B8)).booleanValue()) {
            zzy(activityA, zzmVarB);
            return;
        }
        zzw(this.zzf, "dialog_impression", zzfwz.zzd());
        zzv.zzq();
        AlertDialog.Builder builderZzL = com.google.android.gms.ads.internal.util.zzs.zzL(activityA);
        builderZzL.setTitle(zzv(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(zzv(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(zzv(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzebe.zzm(this.b, activityA, zzmVarB, dialogInterface, i);
            }
        }).setNegativeButton(zzv(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzebe.zzl(this.b, zzmVarB, dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                zzebe.zzn(this.b, zzmVarB, dialogInterface);
            }
        });
        builderZzL.create().show();
    }

    @Override
    public final void zzh() {
        final zzu zzuVar = this.zzd;
        this.zze.g(new pqh() {
            @Override
            public final Object zza(Object obj) {
                dwg.b(zzuVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) {
        zzj(iObjectWrapper, new zza(str, str2, ""));
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper, zza zzaVar) {
        Bitmap bitmapDecodeStream;
        String str;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        String str2 = zzaVar.zza;
        String str3 = zzaVar.zzb;
        String str4 = zzaVar.zzc;
        String strZzu = zzu();
        zzv.zzr().zzh(context, "offline_notification_channel", "AdMob Offline Notifications");
        PendingIntent pendingIntentZzr = zzr(context, "offline_notification_clicked", str3, str2);
        PendingIntent pendingIntentZzr2 = zzr(context, "offline_notification_dismissed", str3, str2);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "offline_notification_channel");
        if (TextUtils.isEmpty(strZzu)) {
            builder.setContentTitle(zzv(R.string.offline_notification_title, "You are back online! Let's pick up where we left off"));
        } else {
            builder.setContentTitle(String.format(zzv(R.string.offline_notification_title_with_advertiser, "You are back online! Continue learning about %s"), strZzu));
        }
        builder.setAutoCancel(true).setDeleteIntent(pendingIntentZzr2).setContentIntent(pendingIntentZzr).setSmallIcon(context.getApplicationInfo().icon).setPriority(((Integer) zzbd.zzc().b(cye.C8)).intValue());
        if (!((Boolean) zzbd.zzc().b(cye.E8)).booleanValue() || str4.isEmpty()) {
            bitmapDecodeStream = null;
        } else {
            try {
                bitmapDecodeStream = BitmapFactory.decodeStream(new URL(str4).openConnection().getInputStream());
            } catch (IOException unused) {
                bitmapDecodeStream = null;
            }
        }
        if (bitmapDecodeStream != null) {
            try {
                builder.setLargeIcon(bitmapDecodeStream).setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmapDecodeStream).bigLargeIcon((Bitmap) null));
            } catch (Resources.NotFoundException unused2) {
            }
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        HashMap map = new HashMap();
        try {
            notificationManager.notify(str3, 54321, builder.build());
            str = "offline_notification_impression";
        } catch (IllegalArgumentException e) {
            map.put("notification_not_shown_reason", e.getMessage());
            str = "offline_notification_failed";
        }
        zzw(str3, str, map);
    }

    public final void zzq(String str, ddg ddgVar) {
        String strK0 = ddgVar.k0();
        String strB = ddgVar.b();
        String string = "";
        if (TextUtils.isEmpty(strK0)) {
            strK0 = strB != null ? strB : "";
        }
        zzbft zzbftVarZ = ddgVar.Z();
        if (zzbftVarZ != null) {
            try {
                string = zzbftVarZ.zze().toString();
            } catch (RemoteException unused) {
            }
        }
        zzbft zzbftVarA0 = ddgVar.a0();
        Drawable drawable = null;
        if (zzbftVarA0 != null) {
            try {
                IObjectWrapper iObjectWrapperZzf = zzbftVarA0.zzf();
                if (iObjectWrapperZzf != null) {
                    drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.zza.put(str, new svg(strK0, string, drawable));
    }
}

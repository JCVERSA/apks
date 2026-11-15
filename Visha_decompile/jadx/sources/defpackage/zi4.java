package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.C;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.ErrorDialogFragment;
import com.google.android.gms.common.SupportErrorDialogFragment;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.b;
import com.google.android.gms.internal.base.zao;

public class zi4 extends aj4 {
    public String c;
    public static final Object e = new Object();
    public static final zi4 f = new zi4();
    public static final int d = aj4.a;

    public static zi4 o() {
        return f;
    }

    @Override
    public Intent c(Context context, int i, String str) {
        return super.c(context, i, str);
    }

    @Override
    public PendingIntent d(Context context, int i, int i2) {
        return super.d(context, i, i2);
    }

    @Override
    public final String f(int i) {
        return super.f(i);
    }

    @Override
    public int h(Context context) {
        return super.h(context);
    }

    @Override
    public int i(Context context, int i) {
        return super.i(context, i);
    }

    @Override
    public final boolean k(int i) {
        return super.k(i);
    }

    public Dialog m(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return r(activity, i, s1e.b(activity, c(activity, i, "d"), i2), onCancelListener, null);
    }

    public PendingIntent n(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : d(context, connectionResult.getErrorCode(), 0);
    }

    public boolean p(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogM = m(activity, i, i2, onCancelListener);
        if (dialogM == null) {
            return false;
        }
        u(activity, dialogM, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public void q(Context context, int i) {
        v(context, i, null, e(context, i, 0, "n"));
    }

    public final Dialog r(Context context, int i, s1e s1eVar, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder;
        AlertDialog.Builder builder2 = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder2 == null) {
            builder2 = builder;
            builder2 = new AlertDialog.Builder(context);
        }
        builder2 = builder;
        builder2.setMessage(i0e.c(context, i));
        if (onCancelListener != null) {
            builder2.setOnCancelListener(onCancelListener);
        }
        String strB = i0e.b(context, i);
        DialogInterface.OnClickListener onClickListener2 = s1eVar;
        if (strB != null) {
            if (s1eVar == null) {
                onClickListener2 = onClickListener;
            }
            builder2.setPositiveButton(strB, onClickListener2);
        }
        String strF = i0e.f(context, i);
        if (strF != null) {
            builder2.setTitle(strF);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder2.create();
    }

    public final Dialog s(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(i0e.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        u(activity, alertDialogCreate, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return alertDialogCreate;
    }

    public final zabx t(Context context, g0e g0eVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabx zabxVar = new zabx(g0eVar);
        zao.a(context, zabxVar, intentFilter);
        zabxVar.a(context);
        if (j(context, "com.google.android.gms")) {
            return zabxVar;
        }
        g0eVar.a();
        zabxVar.b();
        return null;
    }

    public final void u(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                SupportErrorDialogFragment.u(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    public final void v(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            w(context);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = i0e.e(context, i);
        String strD = i0e.d(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) wd8.l(context.getSystemService("notification"));
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(strE).setStyle(new NotificationCompat.BigTextStyle().bigText(strD));
        if (ia2.f(context)) {
            wd8.o(d28.c());
            style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
            if (ia2.g(context)) {
                style.addAction(com.google.android.gms.base.R.drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R.string.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(R.drawable.stat_sys_warning).setTicker(resources.getString(com.google.android.gms.base.R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(strD);
        }
        if (d28.g()) {
            wd8.o(d28.g());
            synchronized (e) {
                str2 = this.c;
            }
            if (str2 == null) {
                str2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String string = context.getResources().getString(com.google.android.gms.base.R.string.common_google_play_services_notification_channel_name);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            style.setChannelId(str2);
        }
        Notification notificationBuild = style.build();
        if (i == 1 || i == 2 || i == 3) {
            b.b.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, notificationBuild);
    }

    public final void w(Context context) {
        new x0e(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean x(Activity activity, vk5 vk5Var, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogR = r(activity, i, s1e.c(vk5Var, c(activity, i, "d"), 2), onCancelListener, null);
        if (dialogR == null) {
            return false;
        }
        u(activity, dialogR, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public final boolean y(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent pendingIntentN;
        if (k15.a(context) || (pendingIntentN = n(context, connectionResult)) == null) {
            return false;
        }
        v(context, connectionResult.getErrorCode(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, pendingIntentN, i, true), k2e.a | C.BUFFER_FLAG_FIRST_SAMPLE));
        return true;
    }
}

package defpackage;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.util.Rational;
import android.view.SurfaceView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.dialog.d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class o18 {
    public static int c = 1234;
    public static int d = 1240;
    public static PictureInPictureParams.Builder e;
    public static WeakReference f;
    public static WeakReference g;
    public static int h;
    public SurfaceView a;
    public BroadcastReceiver b;

    public class a extends BroadcastReceiver {
        public final b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            b bVar;
            if (intent == null || !"media_control".equals(intent.getAction())) {
                Log.d("PipInPipView", "controlType intent:" + intent);
                return;
            }
            int intExtra = intent.getIntExtra("control_type", 0);
            try {
                LogUtils.i("PipInPipView", "controlType:" + intExtra);
                if (intExtra == 1 || intExtra == 2) {
                    b bVar2 = this.a;
                    if (bVar2 != null) {
                        bVar2.c();
                    }
                } else if (intExtra == 3) {
                    b bVar3 = this.a;
                    if (bVar3 != null) {
                        bVar3.b();
                    }
                } else if (intExtra == 4 && (bVar = this.a) != null) {
                    bVar.a();
                }
            } catch (Exception unused) {
                Log.e("PipInPipView", "");
            }
        }
    }

    public interface b {
        void a();

        void b();

        void c();
    }

    public static boolean c(Activity activity) {
        return Settings.canDrawOverlays(activity);
    }

    public static boolean d(Activity activity) {
        return ((AppOpsManager) activity.getSystemService("appops")).checkOpNoThrow("android:picture_in_picture", activity.getApplicationInfo().uid, activity.getPackageName()) == 0;
    }

    public static void e() {
        WeakReference weakReference = g;
        if (weakReference != null) {
            weakReference.clear();
            g = null;
        }
    }

    public static void f() {
        g();
    }

    public static void g() {
        WeakReference weakReference = f;
        if (weakReference != null) {
            weakReference.clear();
            f = null;
        }
        h = 0;
        Log.d("PipInPipView", "clearSystemInPip");
    }

    public static void h(Activity activity) {
        WeakReference weakReference;
        if (activity == null || (weakReference = f) == null) {
            return;
        }
        Activity activity2 = (Activity) weakReference.get();
        if (activity2 == null || activity2 == activity) {
            g();
        }
    }

    public static boolean i() {
        if (h != 2) {
            Log.d("PipInPipView", "exitOttSystemPip skip, owner=" + h);
            return false;
        }
        WeakReference weakReference = f;
        if (weakReference == null) {
            h = 0;
            return false;
        }
        Activity activity = (Activity) weakReference.get();
        if (activity == null) {
            g();
            return false;
        }
        try {
            activity.moveTaskToBack(true);
            activity.finish();
            g();
            return true;
        } catch (Exception e2) {
            Log.e("PipInPipView", "exitOttSystemPip error: " + e2);
            g();
            return false;
        }
    }

    public static void j(Activity activity) {
        activity.startActivityForResult(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + activity.getPackageName())), d);
    }

    public static int k() {
        return h;
    }

    public static void n(DialogInterface dialogInterface, int i) {
    }

    public static void p(Object obj) {
        g = new WeakReference(obj);
    }

    public static void q(Activity activity, int i) {
        WeakReference weakReference = f;
        if (weakReference != null) {
            weakReference.clear();
            f = null;
        }
        f = new WeakReference(activity);
        h = i;
        Log.d("PipInPipView", "setIsSystemInPip owner=" + i + ", activity=" + activity);
    }

    public static void t(final Activity activity) {
        new d.a(activity).k(activity.getResources().getString(R.string.enable_system_pip_mode_text)).u(R.string.allow, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                o18.j(activity);
            }
        }).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                o18.n(dialogInterface, i);
            }
        }).A(R.string.enable_pip_mode_title).a().show();
    }

    public final Rational l(int i, int i2) {
        if (i2 == 0) {
            return new Rational(16, 9);
        }
        float fRound = (float) (((double) Math.round((i * 100) / i2)) / 100.0d);
        Log.d("PipInPipView", "updateVideoRate origin_rate:" + fRound);
        double d2 = (double) fRound;
        if (d2 < 0.41841d) {
            i2 = (int) (i / 0.41841f);
        } else if (d2 > 2.39d) {
            i = (int) (i2 * 2.39f);
        }
        return new Rational(i, i2);
    }

    public void o(Activity activity, b bVar) {
        Log.d("PipInPipView", "registerController controller:" + bVar + StringUtils.COMMA + activity);
        if (this.b != null) {
            Log.e("PipInPipView", "registerController return");
            return;
        }
        Log.d("PipInPipView", "registerController " + activity);
        a aVar = new a(bVar);
        this.b = aVar;
        xb.b(activity, aVar, new IntentFilter("media_control"), true);
    }

    public void r(Activity activity, int i, String str, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        s(activity, i, str, i2, i3, i4, i5, z, z2, true);
    }

    public void s(Activity activity, int i, String str, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        int i6 = Build.VERSION.SDK_INT;
        if (e == null) {
            e = new PictureInPictureParams.Builder();
        }
        Rational rationalL = l(i4, i5);
        e.setAspectRatio(rationalL);
        ArrayList arrayList = new ArrayList();
        LogUtils.i("PipInPipView", "setPipParams controlType:" + i2, "Rational: " + rationalL);
        if (z3) {
            RemoteAction remoteAction = new RemoteAction(Icon.createWithResource(activity, R.drawable.ic_floating_previous), "", "", PendingIntent.getBroadcast(activity, 4, new Intent("media_control").putExtra("control_type", 3), 201326592));
            remoteAction.setEnabled(z);
            arrayList.add(remoteAction);
        }
        arrayList.add(new RemoteAction(Icon.createWithResource(activity, i), str, str, PendingIntent.getBroadcast(activity, i3, new Intent("media_control").putExtra("control_type", i2), 201326592)));
        if (z3) {
            RemoteAction remoteAction2 = new RemoteAction(Icon.createWithResource(activity, R.drawable.ic_floating_next), "", "", PendingIntent.getBroadcast(activity, 3, new Intent("media_control").putExtra("control_type", 4), 201326592));
            remoteAction2.setEnabled(z2);
            arrayList.add(remoteAction2);
        }
        e.setActions(arrayList);
        if (i6 >= 31) {
            e.setSeamlessResizeEnabled(true);
        }
        try {
            activity.setPictureInPictureParams(e.build());
        } catch (Exception e2) {
            LogUtils.l("PipInPipView", "updatePictureInPictureActions " + e2.getMessage());
        }
    }

    public void u(Activity activity, int i, String str, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        int i6 = Build.VERSION.SDK_INT;
        if (e == null) {
            e = new PictureInPictureParams.Builder();
        }
        e.setAspectRatio(l(i4, i5));
        ArrayList arrayList = new ArrayList();
        LogUtils.i("PipInPipView", "showPipView controlType:" + i2);
        if (z3) {
            RemoteAction remoteAction = new RemoteAction(Icon.createWithResource(activity, R.drawable.ic_floating_previous), "", activity.getString(R.string.talkback_previous), PendingIntent.getBroadcast(activity, 4, new Intent("media_control").putExtra("control_type", 3), 201326592));
            remoteAction.setEnabled(z);
            arrayList.add(remoteAction);
        }
        arrayList.add(new RemoteAction(Icon.createWithResource(activity, i), str, activity.getString(i3 == 1 ? R.string.talkback_pause : R.string.talkback_play), PendingIntent.getBroadcast(activity, i3, new Intent("media_control").putExtra("control_type", i2), 201326592)));
        if (z3) {
            RemoteAction remoteAction2 = new RemoteAction(Icon.createWithResource(activity, R.drawable.ic_floating_next), "", activity.getString(R.string.talkback_next), PendingIntent.getBroadcast(activity, 3, new Intent("media_control").putExtra("control_type", 4), 201326592));
            remoteAction2.setEnabled(z2);
            arrayList.add(remoteAction2);
        }
        if (this.a != null) {
            Rect rect = new Rect();
            this.a.getGlobalVisibleRect(rect);
            e.setSourceRectHint(rect);
        }
        e.setActions(arrayList);
        if (i6 >= 31) {
            e.setSeamlessResizeEnabled(true);
        }
        try {
            activity.enterPictureInPictureMode(e.build());
        } catch (Exception e2) {
            LogUtils.l("PipInPipView", "updatePictureInPictureActions " + e2.getMessage());
        }
    }

    public void v(Activity activity) {
        try {
            Log.d("PipInPipView", "unRegisterController " + this.b + StringUtils.COMMA + activity);
            BroadcastReceiver broadcastReceiver = this.b;
            if (broadcastReceiver != null) {
                activity.unregisterReceiver(broadcastReceiver);
                this.b = null;
            }
        } catch (Exception unused) {
        }
    }

    public void w(Activity activity, int i, String str, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        x(activity, i, str, i2, i3, i4, i5, z, z2, true);
    }

    public void x(Activity activity, int i, String str, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        activity.getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        if (d(activity)) {
            u(activity, i, str, i2, i3, i4, i5, z, z2, z3);
        } else {
            t(activity);
        }
    }
}

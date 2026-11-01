package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.widget.Toast;
import g0.y;
import h0.h;
import h1.g;
import java.lang.ref.WeakReference;
import ru.zdevs.zarchiver.R;
import v0.f;

public class InstallApksDlg extends Activity {

    public static final int f1575f = 0;

    public Handler f1576a;

    public y f1577b;

    public boolean f1578c;

    public h f1579d;

    public final e f1580e = new e();

    public class a implements Runnable {

        public final Intent f1581a;

        public a(Intent intent) {
            this.f1581a = intent;
        }

        @Override
        public final void run() {
            Uri data = this.f1581a.getData();
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            String strF = f.f(installApksDlg, data);
            if (strF == null) {
                int i2 = InstallApksDlg.f1575f;
                installApksDlg.a("Failed to get path to the APKS/XAPK file", false);
                return;
            }
            t0.b.m(installApksDlg, false, null);
            try {
                if (q0.a.j(new h(strF), InstallApksDlg.class)) {
                    return;
                }
                int i3 = InstallApksDlg.f1575f;
                installApksDlg.a(null, false);
            } catch (q0.a.b e2) {
                installApksDlg.startActivityForResult(e2.f1373a, 1203);
            }
        }
    }

    public class b implements Runnable {

        public final String f1583a;

        public b(String str) {
            this.f1583a = str;
        }

        @Override
        public final void run() {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            q0.a.a(installApksDlg);
            int i2 = InstallApksDlg.f1575f;
            installApksDlg.a(this.f1583a, false);
        }
    }

    public class c implements Runnable {

        public final h f1585a;

        public c(h hVar) {
            this.f1585a = hVar;
        }

        @Override
        public final void run() {
            try {
                q0.a.j(this.f1585a, InstallApksDlg.class);
            } catch (q0.a.b unused) {
                int i2 = InstallApksDlg.f1575f;
                InstallApksDlg.this.a(null, false);
            }
        }
    }

    public class d implements Runnable {

        public final String f1587a;

        public final boolean f1588b;

        public d(String str, boolean z2) {
            this.f1587a = str;
            this.f1588b = z2;
        }

        @Override
        public final void run() {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            String string = this.f1587a;
            if (string == null) {
                string = installApksDlg.getString(this.f1588b ? R.string.MES_INSTALL_APP_DONE : R.string.MES_INSTALL_APP_FAILED);
            }
            if (string != null) {
                Toast.makeText(installApksDlg, string, 1).show();
            }
            installApksDlg.finishAndRemoveTask();
        }
    }

    public class e implements ServiceConnection {
        public e() {
        }

        @Override
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallApksDlg installApksDlg = InstallApksDlg.this;
            installApksDlg.f1578c = true;
            installApksDlg.f1576a = null;
            ru.zdevs.zarchiver.service.c cVarAsInterface = ru.zdevs.zarchiver.service.c.a.asInterface(iBinder);
            try {
                cVarAsInterface.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
            } catch (Exception unused) {
            }
            ru.zdevs.zarchiver.c cVar = new ru.zdevs.zarchiver.c();
            cVar.f1675a = new WeakReference<>(cVarAsInterface);
            w0.c.f2212d.execute(new b0.d(installApksDlg, cVar, installApksDlg.f1579d));
        }

        @Override
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public final void a(String str, boolean z2) {
        runOnUiThread(new d(str, z2));
    }

    @Override
    public final void finishAndRemoveTask() {
        y yVar = this.f1577b;
        if (yVar != null) {
            yVar.e();
        }
        if (Build.VERSION.SDK_INT < 21) {
            finish();
        } else {
            super.finishAndRemoveTask();
        }
    }

    @Override
    public final void onActivityResult(int i2, int i3, Intent intent) {
        h hVar;
        if (i2 == 1203) {
            if (i3 != -1 || intent == null || (hVar = (h) intent.getParcelableExtra("apk_path")) == null) {
                a(null, false);
            } else {
                w0.c.f2212d.execute(new c(hVar));
            }
        }
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finishAndRemoveTask();
            return;
        }
        y yVar = new y((ru.zdevs.zarchiver.d) null, this, R.string.MENU_INSTALL, 0);
        this.f1577b = yVar;
        yVar.t();
        w0.c.f2212d.execute(new a(intent));
    }

    @Override
    public final void onNewIntent(Intent intent) {
        Bundle extras;
        y yVar;
        super.onNewIntent(intent);
        if (intent != null && "ru.zdevs.zarchiver.APP_INSTALL_RESULT".equals(intent.getAction()) && Build.VERSION.SDK_INT >= 21 && (extras = intent.getExtras()) != null) {
            int i2 = extras.getInt("android.content.pm.extra.STATUS", -1);
            String string = extras.getString("android.content.pm.extra.STATUS_MESSAGE");
            Uri data = intent.getData();
            h hVar = data == null ? null : new h(data);
            if ((hVar != null && hVar.f1108c.toLowerCase().endsWith(".xapk")) && i2 == 0) {
                w0.c.f2212d.execute(new b0.d(this, null, hVar));
                return;
            }
            if (i2 != -1 && (yVar = this.f1577b) != null) {
                yVar.e();
            }
            if (i2 != -1) {
                if (i2 == 0) {
                    a(null, true);
                    return;
                } else if (i2 != 3) {
                    w0.c.h(new b(string));
                    return;
                } else {
                    a(null, false);
                    return;
                }
            }
            Intent intent2 = (Intent) extras.get("android.intent.extra.INTENT");
            if (intent2 == null) {
                return;
            }
            ComponentName componentNameResolveActivity = intent2.resolveActivity(getPackageManager());
            if (componentNameResolveActivity != null && (componentNameResolveActivity.getPackageName().startsWith("ru.zdevs") || componentNameResolveActivity.getClassName().startsWith("ru.zdevs"))) {
                a("Incorrect confirm pending", false);
            } else if (a0.c.L(intent2.getFlags(), 3)) {
                a("Incorrect confirm pending", false);
            } else {
                w0.c.h(new g(this, intent2, 112, null));
            }
        }
    }

    @Override
    public final void onStop() {
        super.onStop();
        Handler handler = this.f1576a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1576a = null;
        }
        try {
            if (this.f1578c) {
                unbindService(this.f1580e);
            }
        } catch (Exception unused) {
        }
    }
}

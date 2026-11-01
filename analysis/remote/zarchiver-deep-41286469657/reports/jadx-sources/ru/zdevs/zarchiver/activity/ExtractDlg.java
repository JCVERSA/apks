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
import android.os.RemoteException;
import android.widget.Toast;
import h1.h;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.service.ZArchiverService;
import ru.zdevs.zarchiver.service.c;
import v0.f;

public class ExtractDlg extends Activity {

    public Handler f1564a;

    public String f1565b;

    public final b f1566c = new b();

    public class a implements Runnable {

        public final Intent f1567a;

        public class RunnableC0031a implements Runnable {

            public final Intent f1569a;

            public RunnableC0031a(Intent intent) {
                this.f1569a = intent;
            }

            @Override
            public final void run() {
                a aVar = a.this;
                ExtractDlg.this.startActivity(this.f1569a);
                Toast.makeText(ExtractDlg.this, R.string.MES_DONT_SUPPORT_EDIT, 0).show();
                ExtractDlg.this.finish();
            }
        }

        public a(Intent intent) {
            this.f1567a = intent;
        }

        @Override
        public final void run() {
            Intent intent = this.f1567a;
            Uri data = intent.getData();
            ExtractDlg extractDlg = ExtractDlg.this;
            String strF = f.f(extractDlg, data);
            extractDlg.f1565b = strF;
            if (strF != null) {
                t0.b.m(extractDlg, false, null);
                extractDlg.f1564a = h.f(extractDlg, new Intent(extractDlg, (Class<?>) ZArchiverService.class), extractDlg.f1566c);
            } else {
                Intent intent2 = new Intent(extractDlg, (Class<?>) ZArchiver.class);
                intent2.setAction("android.intent.action.VIEW");
                intent2.setData(intent.getData());
                extractDlg.runOnUiThread(new RunnableC0031a(intent2));
            }
        }
    }

    public class b implements ServiceConnection {

        public class a implements Runnable {

            public final c f1572a;

            public class RunnableC0032a implements Runnable {
                public RunnableC0032a() {
                }

                @Override
                public final void run() {
                    ExtractDlg.this.finishAndRemoveTask();
                }
            }

            public a(c cVar) {
                this.f1572a = cVar;
            }

            @Override
            public final void run() {
                b bVar = b.this;
                String strY = a0.c.y(ExtractDlg.this.f1565b);
                String strA = a0.c.A(ExtractDlg.this.f1565b);
                String str = (!a0.c.O(strY, false) || t0.b.a() <= 0) ? "" : "\\-mmt=" + t0.b.a();
                String strX = a0.c.X(strY);
                if (strY.equals(strX)) {
                    strX = a0.c.Z(strY);
                }
                h0.h hVar = new h0.h(a0.c.i(strA, strX));
                if (hVar.o()) {
                    for (int i2 = 1; i2 < 10; i2++) {
                        h0.f fVarU = h0.f.u(hVar);
                        if (!fVarU.d() || fVarU.k()) {
                            break;
                        }
                        hVar = new h0.h(a0.c.i(strA, strX + "~" + i2));
                    }
                }
                try {
                    this.f1572a.ArchiveExtract(strY, new h0.h(ExtractDlg.this.f1565b), str, "", hVar, 0);
                } catch (RemoteException unused) {
                }
                ExtractDlg.this.runOnUiThread(new RunnableC0032a());
            }
        }

        public b() {
        }

        @Override
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ExtractDlg.this.f1564a = null;
            c cVarAsInterface = c.a.asInterface(iBinder);
            try {
                cVarAsInterface.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
            } catch (Exception unused) {
            }
            w0.c.h(new a(cVarAsInterface));
        }

        @Override
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @Override
    public final void finishAndRemoveTask() {
        if (Build.VERSION.SDK_INT < 21) {
            finish();
        } else {
            super.finishAndRemoveTask();
        }
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finishAndRemoveTask();
        } else {
            w0.c.h(new a(intent));
        }
    }

    @Override
    public final void onStop() {
        super.onStop();
        Handler handler = this.f1564a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1564a = null;
        }
        try {
            unbindService(this.f1566c);
        } catch (Exception unused) {
        }
    }
}

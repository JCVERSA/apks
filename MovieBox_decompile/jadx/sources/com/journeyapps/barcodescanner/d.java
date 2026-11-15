package com.journeyapps.barcodescanner;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.google.android.gms.iid.InstanceID;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.client.android.R$string;
import id.e;
import id.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class d {

    private static final String f33175o = "d";

    private static int f33176p = 250;

    private Activity f33177a;

    private DecoratedBarcodeView f33178b;

    private h f33184h;

    private e f33185i;

    private Handler f33186j;

    private final CameraPreview.f f33189m;

    private boolean f33190n;

    private int f33179c = -1;

    private boolean f33180d = false;

    private boolean f33181e = true;

    private String f33182f = "";

    private boolean f33183g = false;

    private boolean f33187k = false;

    private af.a f33188l = new a();

    class a implements af.a {
        a() {
        }

        public void d(af.c cVar) {
            d.this.B(cVar);
        }

        @Override
        public void a(List list) {
        }

        @Override
        public void b(final af.c cVar) {
            d.this.f33178b.pause();
            d.this.f33185i.f();
            d.this.f33186j.post(new Runnable() {
                @Override
                public final void run() {
                    this.f33101a.d(cVar);
                }
            });
        }
    }

    class b implements CameraPreview.f {
        b() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            if (d.this.f33187k) {
                String unused = d.f33175o;
                d.this.s();
            }
        }

        @Override
        public void c(Exception exc) {
            d dVar = d.this;
            dVar.m(dVar.f33177a.getString(R$string.zxing_msg_camera_framework_bug));
        }

        @Override
        public void d() {
        }

        @Override
        public void e() {
        }
    }

    public d(Activity activity, DecoratedBarcodeView decoratedBarcodeView) {
        b bVar = new b();
        this.f33189m = bVar;
        this.f33190n = false;
        this.f33177a = activity;
        this.f33178b = decoratedBarcodeView;
        decoratedBarcodeView.getBarcodeView().addStateListener(bVar);
        this.f33186j = new Handler();
        this.f33184h = new h(activity, new Runnable() {
            @Override
            public final void run() {
                this.f304a.s();
            }
        });
        this.f33185i = new e(activity);
    }

    public static Intent A(af.c cVar, String str) {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.addFlags(524288);
        intent.putExtra("SCAN_RESULT", cVar.toString());
        intent.putExtra("SCAN_RESULT_FORMAT", cVar.a().toString());
        byte[] bArrC = cVar.c();
        if (bArrC != null && bArrC.length > 0) {
            intent.putExtra("SCAN_RESULT_BYTES", bArrC);
        }
        Map mapD = cVar.d();
        if (mapD != null) {
            ResultMetadataType resultMetadataType = ResultMetadataType.UPC_EAN_EXTENSION;
            if (mapD.containsKey(resultMetadataType)) {
                intent.putExtra("SCAN_RESULT_UPC_EAN_EXTENSION", mapD.get(resultMetadataType).toString());
            }
            Number number = (Number) mapD.get(ResultMetadataType.ORIENTATION);
            if (number != null) {
                intent.putExtra("SCAN_RESULT_ORIENTATION", number.intValue());
            }
            String str2 = (String) mapD.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
            if (str2 != null) {
                intent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str2);
            }
            Iterable iterable = (Iterable) mapD.get(ResultMetadataType.BYTE_SEGMENTS);
            if (iterable != null) {
                Iterator it = iterable.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    intent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i10, (byte[]) it.next());
                    i10++;
                }
            }
        }
        if (str != null) {
            intent.putExtra("SCAN_RESULT_IMAGE_PATH", str);
        }
        return intent;
    }

    private void D() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra("MISSING_CAMERA_PERMISSION", true);
        this.f33177a.setResult(0, intent);
    }

    public void s() {
        this.f33177a.finish();
    }

    private String o(af.c cVar) {
        if (this.f33180d) {
            Bitmap bitmapB = cVar.b();
            try {
                File fileCreateTempFile = File.createTempFile("barcodeimage", ".jpg", this.f33177a.getCacheDir());
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                bitmapB.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.close();
                return fileCreateTempFile.getAbsolutePath();
            } catch (IOException e10) {
                Log.w(f33175o, "Unable to create temporary file and store bitmap! " + e10);
            }
        }
        return null;
    }

    public void q(DialogInterface dialogInterface, int i10) {
        s();
    }

    public void r(DialogInterface dialogInterface) {
        s();
    }

    private void z() {
        if (androidx.core.content.b.checkSelfPermission(this.f33177a, "android.permission.CAMERA") == 0) {
            this.f33178b.resume();
        } else {
            if (this.f33190n) {
                return;
            }
            ActivityCompat.g(this.f33177a, new String[]{"android.permission.CAMERA"}, f33176p);
            this.f33190n = true;
        }
    }

    protected void B(af.c cVar) {
        this.f33177a.setResult(-1, A(cVar, o(cVar)));
        k();
    }

    protected void C() {
        Intent intent = new Intent("com.google.zxing.client.android.SCAN");
        intent.putExtra(InstanceID.ERROR_TIMEOUT, true);
        this.f33177a.setResult(0, intent);
        k();
    }

    public void E(boolean z10, String str) {
        this.f33181e = z10;
        if (str == null) {
            str = "";
        }
        this.f33182f = str;
    }

    protected void k() {
        if (this.f33178b.getBarcodeView().isCameraClosed()) {
            s();
        } else {
            this.f33187k = true;
        }
        this.f33178b.pause();
        this.f33184h.d();
    }

    public void l() {
        this.f33178b.decodeSingle(this.f33188l);
    }

    protected void m(String str) {
        if (this.f33177a.isFinishing() || this.f33183g || this.f33187k) {
            return;
        }
        if (str.isEmpty()) {
            str = this.f33177a.getString(R$string.zxing_msg_camera_framework_bug);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f33177a);
        builder.setTitle(this.f33177a.getString(R$string.zxing_app_name));
        builder.setMessage(str);
        builder.setPositiveButton(R$string.zxing_button_ok, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f305a.q(dialogInterface, i10);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.f306a.r(dialogInterface);
            }
        });
        builder.show();
    }

    public void p(Intent intent, Bundle bundle) {
        this.f33177a.getWindow().addFlags(128);
        if (bundle != null) {
            this.f33179c = bundle.getInt("SAVED_ORIENTATION_LOCK", -1);
        }
        if (intent != null) {
            if (intent.getBooleanExtra("SCAN_ORIENTATION_LOCKED", true)) {
                t();
            }
            if ("com.google.zxing.client.android.SCAN".equals(intent.getAction())) {
                this.f33178b.initializeFromIntent(intent);
            }
            if (!intent.getBooleanExtra("BEEP_ENABLED", true)) {
                this.f33185i.g(false);
            }
            if (intent.hasExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG")) {
                E(intent.getBooleanExtra("SHOW_MISSING_CAMERA_PERMISSION_DIALOG", true), intent.getStringExtra("MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"));
            }
            if (intent.hasExtra(InstanceID.ERROR_TIMEOUT)) {
                this.f33186j.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.f33100a.C();
                    }
                }, intent.getLongExtra(InstanceID.ERROR_TIMEOUT, 0L));
            }
            if (intent.getBooleanExtra("BARCODE_IMAGE_ENABLED", false)) {
                this.f33180d = true;
            }
        }
    }

    protected void t() {
        if (this.f33179c == -1) {
            int rotation = this.f33177a.getWindowManager().getDefaultDisplay().getRotation();
            int i10 = this.f33177a.getResources().getConfiguration().orientation;
            int i11 = 0;
            if (i10 == 2) {
                if (rotation != 0 && rotation != 1) {
                    i11 = 8;
                }
            } else if (i10 == 1) {
                i11 = (rotation == 0 || rotation == 3) ? 1 : 9;
            }
            this.f33179c = i11;
        }
        this.f33177a.setRequestedOrientation(this.f33179c);
    }

    public void u() {
        this.f33183g = true;
        this.f33184h.d();
        this.f33186j.removeCallbacksAndMessages(null);
    }

    public void v() {
        this.f33184h.d();
        this.f33178b.pauseAndWait();
    }

    public void w(int i10, String[] strArr, int[] iArr) {
        if (i10 == f33176p) {
            if (iArr.length > 0 && iArr[0] == 0) {
                this.f33178b.resume();
                return;
            }
            D();
            if (this.f33181e) {
                m(this.f33182f);
            } else {
                k();
            }
        }
    }

    public void x() {
        z();
        this.f33184h.h();
    }

    public void y(Bundle bundle) {
        bundle.putInt("SAVED_ORIENTATION_LOCK", this.f33179c);
    }
}

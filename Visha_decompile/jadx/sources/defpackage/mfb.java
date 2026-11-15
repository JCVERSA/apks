package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.hunantv.media.report.ReportParams;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.utils.ToastUtils;
import java.io.File;
import java.io.IOException;

public class mfb {
    public Uri a;
    public Context b;
    public boolean c;
    public d d;
    public File e;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                mfb.this.o();
            } else if (i == 1) {
                mfb.this.q();
            }
            d16.k(mfb.this.c ? "skin_diy_edit_ps_upload_pop_cl" : "skin_diy_edit_bg_upload_pop_cl", i);
        }
    }

    public class c implements MediaScannerConnection.OnScanCompletedListener {
        public c() {
        }

        @Override
        public void onScanCompleted(String str, Uri uri) {
            try {
                Intent intentPutExtra = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", uri);
                mfb.this.a = uri;
                intentPutExtra.setFlags(3);
                if (intentPutExtra.resolveActivity(mfb.this.b.getPackageManager()) != null) {
                    mfb.n();
                    ((Activity) mfb.this.b).startActivityForResult(intentPutExtra, 1000);
                } else {
                    Log.e("UcropUtils", "No camera app found");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public interface d {
        void a(Uri uri, Uri uri2);
    }

    public mfb(Context context, d dVar) {
        this.b = context;
        this.d = dVar;
        this.c = false;
    }

    public static void g() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                mfb.h();
            }
        });
    }

    public static void h() {
        try {
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "VishaPlayer/images");
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                boolean z = false;
                for (File file2 : fileArrListFiles) {
                    if (file2 != null && file2.isFile() && file2.getName().endsWith("VishaCropImage.png") && file2.delete()) {
                        z = true;
                    }
                }
                if (z) {
                    MediaScannerConnection.scanFile(se.a(), new String[]{file.getAbsolutePath()}, null, null);
                }
            }
        } catch (Exception e) {
            Log.w("UcropUtils", "cleanupLeakedCropTempImages " + e);
        }
    }

    public static boolean l(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                return context.getPackageManager().getApplicationInfo(str, 0).enabled;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static void n() {
        v34.i();
    }

    public final void i() {
        final File file = this.e;
        this.e = null;
        if (file == null || !file.exists()) {
            return;
        }
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                file.delete();
            }
        });
    }

    public void j(int i, int[] iArr) {
        if (iArr.length > 0 && iArr[0] == 0 && i == 1002) {
            o();
        }
    }

    public void k(int i, int i2, Intent intent) {
        if (i2 != -1) {
            if (i2 == 96) {
                ToastUtils.w(this.b.getResources().getString(R.string.crop_error));
            }
            File file = this.e;
            if (file == null || !file.exists()) {
                return;
            }
            i();
            return;
        }
        if (i != 69) {
            if (i == 1000) {
                p(this.a);
                return;
            }
            if (i == 1001 && intent != null) {
                Uri data = intent.getData();
                this.a = data;
                if (data != null) {
                    p(data);
                    return;
                }
                return;
            }
            return;
        }
        if (intent != null) {
            Uri uriC = com.yalantis.ucrop.a.c(intent);
            Uri uriA = com.yalantis.ucrop.a.a(intent);
            this.a = uriA;
            d dVar = this.d;
            if (dVar != null) {
                dVar.a(uriC, uriA);
            }
        }
        File file2 = this.e;
        if (file2 == null || !file2.exists()) {
            return;
        }
        i();
    }

    public void m() {
        new com.transsion.widgetslib.dialog.d.a(this.b).h(R.array.picture_chooser, new b()).m(R.string.cancel, new a()).F();
    }

    public final void o() {
        if (ContextCompat.checkSelfPermission(this.b, "android.permission.CAMERA") != 0) {
            ActivityCompat.requestPermissions((BaseActivity) this.b, new String[]{"android.permission.CAMERA"}, 1002);
            return;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "VishaPlayer/images");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, System.currentTimeMillis() + "VishaCropImage.png");
        this.e = file2;
        if (!file2.exists()) {
            try {
                this.e.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        MediaScannerConnection.scanFile(se.a(), new String[]{this.e.getAbsolutePath()}, new String[]{"image/*"}, new c());
    }

    public void p(Uri uri) {
        this.a = uri;
        int dimensionPixelOffset = this.c ? this.b.getResources().getDimensionPixelOffset(R.dimen.custom_theme_crop_thumb_width) : com.transsion.utils.a.d(this.b, 360.0f);
        int dimensionPixelOffset2 = this.c ? this.b.getResources().getDimensionPixelOffset(R.dimen.custom_theme_crop_thumb_width) : com.transsion.utils.a.d(this.b, 800.0f);
        if (!this.c && com.transsion.utils.a.D(this.b)) {
            dimensionPixelOffset = 856;
            dimensionPixelOffset2 = 535;
        } else if (maa.d("ro.os_foldable_screen_support").equals("1")) {
            dimensionPixelOffset = com.transsion.utils.a.d(this.b, 434.0f);
            dimensionPixelOffset2 = com.transsion.utils.a.d(this.b, 377.0f);
        }
        com.yalantis.ucrop.a.C0277a c0277a = new com.yalantis.ucrop.a.C0277a();
        c0277a.c(Bitmap.CompressFormat.JPEG);
        c0277a.d(70);
        c0277a.f(true);
        c0277a.b(1, 0, 1);
        c0277a.g(false);
        c0277a.h(false);
        c0277a.e(this.b.getResources().getColor(R.color.ucrop_color_crop_frame));
        com.yalantis.ucrop.a aVarI = com.yalantis.ucrop.a.d(uri, Uri.fromFile(new File(this.b.getCacheDir(), "VishaCropImage.png"))).g(dimensionPixelOffset, dimensionPixelOffset2).i(c0277a);
        if (this.c) {
            aVarI.h(dimensionPixelOffset, dimensionPixelOffset2);
        } else {
            int iMin = Math.min(com.transsion.utils.a.m(this.b), ReportParams.MAX_LEAVE_VALID_TIME);
            aVarI.h(iMin, Math.max(1, (com.transsion.utils.a.l(this.b) * iMin) / Math.max(1, com.transsion.utils.a.m(this.b))));
        }
        d16.f("skin_diy_edit_upload_clip_show", !this.c ? 1 : 0);
        aVarI.b(this.b).addFlags(3);
        aVarI.e((Activity) this.b);
    }

    public final void q() {
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        if (l(this.b, "com.gallery20")) {
            intent.setPackage("com.gallery20");
        }
        intent.setFlags(3);
        try {
            n();
            ((Activity) this.b).startActivityForResult(intent, 1001);
        } catch (Exception e) {
            Log.e("UcropUtils", "startGallery " + e);
        }
    }

    public mfb(Context context, d dVar, boolean z) {
        this.b = context;
        this.d = dVar;
        this.c = z;
    }

    public mfb(Context context, boolean z) {
        this.b = context;
        this.c = z;
    }
}

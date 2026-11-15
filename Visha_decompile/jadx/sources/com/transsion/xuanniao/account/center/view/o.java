package com.transsion.xuanniao.account.center.view;

import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import defpackage.hk7;
import defpackage.hs7;
import defpackage.is7;
import defpackage.jr7;
import defpackage.vl7;
import defpackage.xj;
import defpackage.yq7;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.BooleanUtils;

public class o {
    public String a;
    public Uri b;
    public File c;
    public BaseActivity d;
    public c e;

    public class a implements DialogInterface.OnClickListener {
        public a(o oVar) {
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
            File fileF;
            if (i != 0) {
                xj.U(o.this.d).c1("photo");
                o oVar = o.this;
                if (!jr7.j(oVar.d)) {
                    BaseActivity baseActivity = oVar.d;
                    baseActivity.y0(baseActivity.getString(R.string.sd_card_not));
                    return;
                }
                if (oVar.b == null) {
                    oVar.g();
                }
                if (oVar.b == null) {
                    BaseActivity baseActivity2 = oVar.d;
                    baseActivity2.y0(baseActivity2.getString(R.string.sd_card_not));
                    return;
                } else {
                    Intent intent = new Intent();
                    intent.setType("image/*");
                    intent.setAction("android.intent.action.GET_CONTENT");
                    oVar.d.startActivityForResult(Intent.createChooser(intent, "Select Image "), 6004);
                    return;
                }
            }
            xj.U(o.this.d).c1("camera");
            o oVar2 = o.this;
            if (!jr7.j(oVar2.d)) {
                BaseActivity baseActivity3 = oVar2.d;
                baseActivity3.y0(baseActivity3.getString(R.string.sd_card_not));
                return;
            }
            if (oVar2.b == null) {
                oVar2.g();
            }
            if (oVar2.b == null) {
                BaseActivity baseActivity4 = oVar2.d;
                baseActivity4.y0(baseActivity4.getString(R.string.sd_card_not));
                return;
            }
            Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
            intent2.setFlags(67108864);
            if (intent2.resolveActivity(oVar2.d.getPackageManager()) != null) {
                try {
                    fileF = oVar2.f();
                } catch (Exception e) {
                    e.printStackTrace();
                    fileF = null;
                }
                if (fileF != null) {
                    Uri uriB = jr7.b(oVar2.d, oVar2.d.getPackageName() + ".xn.fileProvider", fileF);
                    if (!vl7.e(oVar2.d)) {
                        intent2.putExtra("output", uriB);
                    }
                    oVar2.d.startActivityForResult(intent2, 6005);
                }
            }
        }
    }

    public interface c {
        void a(File file);
    }

    public o(BaseActivity baseActivity, c cVar) {
        this.d = baseActivity;
        this.e = cVar;
        File fileB = hk7.b(baseActivity);
        if (!fileB.exists() && fileB.mkdirs()) {
            yq7.a("avatar mkdirs");
        }
        if (jr7.j(baseActivity)) {
            g();
        }
    }

    public void a(int i, int i2, Intent intent) {
        int iIndexOf;
        String encodedPath;
        if (i == 6004 && i2 == -1) {
            if (!jr7.j(this.d)) {
                BaseActivity baseActivity = this.d;
                baseActivity.y0(baseActivity.getString(R.string.sd_card_not));
                return;
            }
            if (intent != null) {
                Uri data = intent.getData();
                if (data == null) {
                    Log.e("PortraitHelp:", new Gson().toJson(intent));
                    return;
                }
                if (data.toString().startsWith("file:///") && data.getScheme().equals("file") && (encodedPath = data.getEncodedPath()) != null) {
                    String strDecode = Uri.decode(encodedPath);
                    ContentResolver contentResolver = this.d.getContentResolver();
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("(");
                    stringBuffer.append("_data");
                    stringBuffer.append("=");
                    stringBuffer.append("'" + strDecode + "'");
                    stringBuffer.append(")");
                    Cursor cursorQuery = contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, stringBuffer.toString(), null, null);
                    cursorQuery.moveToFirst();
                    int i3 = 0;
                    while (!cursorQuery.isAfterLast()) {
                        i3 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                        cursorQuery.moveToNext();
                    }
                    if (i3 != 0) {
                        Uri uri = Uri.parse("content://media/external/images/media/" + i3);
                        if (uri != null) {
                            data = uri;
                        }
                    }
                }
                if (data.getAuthority().equals("com.google.android.apps.photos.contentprovider")) {
                    try {
                        String[] strArrSplit = data.toString().split("/1/");
                        if (strArrSplit.length > 1 && (iIndexOf = strArrSplit[1].indexOf("/")) != -1) {
                            data = Uri.parse(URLDecoder.decode(strArrSplit[1].substring(0, iIndexOf), "UTF-8"));
                        }
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
                c(data);
            }
        } else if (i == 6005 && i2 == -1) {
            if (!jr7.j(this.d)) {
                BaseActivity baseActivity2 = this.d;
                baseActivity2.y0(baseActivity2.getString(R.string.sd_card_not));
                return;
            }
            if (this.a != null) {
                File file = new File(this.a);
                if (file.exists()) {
                    c(jr7.b(this.d, this.d.getPackageName() + ".xn.fileProvider", file));
                } else if (intent != null && intent.hasExtra("data")) {
                    try {
                        Bitmap bitmap = (Bitmap) intent.getExtras().get("data");
                        if (bitmap != null && e(null, bitmap)) {
                            if (!jr7.j(this.d)) {
                                BaseActivity baseActivity3 = this.d;
                                baseActivity3.y0(baseActivity3.getString(R.string.sd_card_not));
                                return;
                            } else {
                                c cVar = this.e;
                                if (cVar != null) {
                                    cVar.a(this.c);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                    }
                }
            }
        } else if (i == 6006 && i2 == -1) {
            if (!jr7.j(this.d)) {
                BaseActivity baseActivity4 = this.d;
                baseActivity4.y0(baseActivity4.getString(R.string.sd_card_not));
                return;
            } else {
                c cVar2 = this.e;
                if (cVar2 != null) {
                    cVar2.a(this.c);
                }
            }
        }
        Log.d("com.palm.id.log", "PortraitHelp requestCode: " + i + " resultCode: " + i2);
    }

    public void b(int i, int[] iArr) {
        if (i == 6007) {
            if (iArr.length != 0) {
                for (int i2 : iArr) {
                    if (i2 == 0) {
                    }
                }
                h();
                return;
            }
            new com.transsion.widgetslib.dialog.d.a(this.d, R.style.dialog_soft_input).k(this.d.getString(R.string.xn_authorization_note)).f(false).w(this.d.getString(R.string.xn_set), new is7(this)).n(this.d.getString(R.string.xn_cancel), new hs7(this)).F();
        }
    }

    public final void c(Uri uri) {
        if (vl7.e(this.d) && e(uri, null)) {
            if (!jr7.j(this.d)) {
                BaseActivity baseActivity = this.d;
                baseActivity.y0(baseActivity.getString(R.string.sd_card_not));
                return;
            } else {
                c cVar = this.e;
                if (cVar != null) {
                    cVar.a(this.c);
                    return;
                }
                return;
            }
        }
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.addFlags(1);
        intent.putExtra("crop", BooleanUtils.TRUE);
        intent.putExtra("scale", true);
        BaseActivity baseActivity2 = this.d;
        Uri uri2 = this.b;
        try {
            List<ResolveInfo> listQueryIntentActivities = baseActivity2.getPackageManager().queryIntentActivities(intent, 65536);
            if (!listQueryIntentActivities.isEmpty()) {
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (it.hasNext()) {
                    baseActivity2.grantUriPermission(it.next().activityInfo.packageName, uri2, 3);
                }
            }
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("outputX", 300);
        intent.putExtra("outputY", 300);
        intent.putExtra("return-data", false);
        intent.putExtra("output", this.b);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        try {
            if (intent.resolveActivity(this.d.getPackageManager()) != null) {
                this.d.startActivityForResult(intent, 6006);
            }
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    public boolean d() {
        String[] strArr = Build.VERSION.SDK_INT >= 33 ? new String[]{"android.permission.CAMERA", "android.permission.READ_MEDIA_IMAGES"} : new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE"};
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(this.d, str) != 0) {
                ActivityCompat.requestPermissions(this.d, strArr, 6007);
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0036 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    public final boolean e(Uri uri, Bitmap bitmap) {
        FileOutputStream fileOutputStream = null;
        if (bitmap == null) {
            try {
                bitmap = MediaStore.Images.Media.getBitmap(this.d.getContentResolver(), uri);
            } catch (Throwable th) {
                th = th;
                try {
                    Log.d("com.palm.id.log", Log.getStackTraceString(th));
                    if (fileOutputStream == null) {
                        return false;
                    }
                    try {
                        return false;
                    } catch (Exception unused) {
                        return false;
                    }
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        }
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmap, 300, 300);
        FileOutputStream fileOutputStream2 = new FileOutputStream(this.c);
        try {
            bitmapExtractThumbnail.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
            try {
                fileOutputStream2.close();
                return true;
            } catch (Exception unused3) {
                return true;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
            Log.d("com.palm.id.log", Log.getStackTraceString(th));
            if (fileOutputStream == null) {
                return false;
            }
            return false;
        }
    }

    public final File f() {
        String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        File file = new File(hk7.b(this.d), "JPEG_" + str + ".jpg");
        this.a = file.getAbsolutePath();
        return file;
    }

    public final void g() {
        this.c = new File(hk7.b(this.d), "pic.jpg");
        this.b = jr7.b(this.d, this.d.getPackageName() + ".xn.fileProvider", this.c);
    }

    public void h() {
        String[] strArr = {this.d.getString(R.string.xn_change_avatar_list_1), this.d.getString(R.string.xn_change_avatar_list_2)};
        xj.U(this.d).d1();
        new com.transsion.widgetslib.dialog.d.a(this.d, R.style.dialog_soft_input).i(strArr, new b()).m(R.string.xn_cancel, new a(this)).F();
    }
}

package com.transsnet.downloader.viewmodel;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsnet.downloader.R$string;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

public final class a0 {

    public static final a0 f57862a = new a0();

    private static final ContentResolver f57863b = Utils.a().getContentResolver();

    private a0() {
    }

    private final boolean b(File file) {
        boolean z10 = true;
        if (file == null || file.exists()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            return b(parentFile);
        }
        if (!file.mkdirs() && !file.exists()) {
            z10 = false;
        }
        if (!z10) {
            Log.e("FileUtil", "createFileDir fail " + file);
        }
        return z10;
    }

    private final void c(File file) {
        b(file);
        if (file.exists() && file.isDirectory()) {
            file.delete();
        }
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile()) {
                return;
            }
            t("create file failure --> file.path = " + file.getAbsolutePath());
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    private final File g(Context context) {
        File filesDir = Utils.a().getFilesDir();
        if (filesDir == null) {
            return null;
        }
        File file = new File(filesDir, "outside");
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    private final File h(String str) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        File fileG = g(applicationA);
        File file = new File(i(fileG != null ? fileG.getAbsolutePath() : null, str));
        c(file);
        return file;
    }

    private final String i(String str, String str2) {
        return str + File.separator + str2 + ".jpg";
    }

    private final String[] l() {
        return Build.VERSION.SDK_INT < 33 ? new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"} : new String[]{"android.permission.READ_MEDIA_VIDEO"};
    }

    private final boolean q(long j10, String str) {
        Date date = new Date(j10);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        String str2 = simpleDateFormat.format(date);
        Intrinsics.g(str2, "format(...)");
        String str3 = simpleDateFormat.format(new Date());
        Intrinsics.g(str3, "format(...)");
        return Intrinsics.c(str2, str3);
    }

    private final boolean r(long j10) {
        return q(j10, "yyyy-MM-dd");
    }

    private final boolean s(long j10) throws ParseException {
        Date dateK = com.blankj.utilcode.util.c0.k(com.blankj.utilcode.util.c0.h(j10));
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date2 = simpleDateFormat.parse(simpleDateFormat.format(date));
        if (date2 == null) {
            return false;
        }
        long time = date2.getTime() - dateK.getTime();
        return 1 <= time && time < 86400000;
    }

    private final String v(String str) {
        int iHashCode = str.hashCode();
        switch (iHashCode) {
            case 1537:
                return !str.equals("01") ? str : "Jan";
            case 1538:
                return !str.equals("02") ? str : "Feb";
            case 1539:
                return !str.equals("03") ? str : "Mar";
            case 1540:
                return !str.equals("04") ? str : "Apr";
            case 1541:
                return !str.equals("05") ? str : "May";
            case 1542:
                return !str.equals("06") ? str : "Jun";
            case 1543:
                return !str.equals("07") ? str : "Jul";
            case 1544:
                return !str.equals("08") ? str : "Aug";
            case 1545:
                return !str.equals("09") ? str : "Sept";
            default:
                switch (iHashCode) {
                    case 1567:
                        return !str.equals("10") ? str : "Oct";
                    case 1568:
                        return !str.equals(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY) ? str : "Nov";
                    case 1569:
                        return !str.equals("12") ? str : "Dec";
                    default:
                        return str;
                }
        }
    }

    public final boolean a() {
        return (Build.VERSION.SDK_INT < 33 ? androidx.core.content.f.b(Utils.a(), "android.permission.WRITE_EXTERNAL_STORAGE") : androidx.core.content.b.checkSelfPermission(Utils.a(), "android.permission.READ_MEDIA_VIDEO")) == 0;
    }

    public final Bitmap d(String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return BitmapFactory.decodeFile(path);
    }

    public final long e(String filePath) {
        Intrinsics.h(filePath, "filePath");
        return com.blankj.utilcode.util.c0.a(new Date(new File(filePath).lastModified()));
    }

    public final long f(String path) {
        Intrinsics.h(path, "path");
        return new File(path).length();
    }

    public final String j(j0 video) {
        Intrinsics.h(video, "video");
        try {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            File fileG = g(applicationA);
            String absolutePath = fileG != null ? fileG.getAbsolutePath() : null;
            String strE = video.e();
            if (strE == null) {
                strE = "";
            }
            File file = new File(i(absolutePath, k(strE)));
            if (file.exists() && file.isFile()) {
                String absolutePath2 = file.getAbsolutePath();
                Intrinsics.g(absolutePath2, "getAbsolutePath(...)");
                return absolutePath2;
            }
        } catch (Exception e10) {
            t("getLocalVideoCover e = " + Log.getStackTraceString(e10));
        }
        return "";
    }

    public final String k(String filePath) {
        Intrinsics.h(filePath, "filePath");
        if (TextUtils.isEmpty(filePath)) {
            return "";
        }
        String name = new File(filePath).getName();
        Intrinsics.g(name, "getName(...)");
        return name;
    }

    public final Bitmap m(j0 video) {
        Intrinsics.h(video, "video");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDither = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap thumbnail = MediaStore.Video.Thumbnails.getThumbnail(f57863b, video.c(), 1, options);
        u("getVideoThumbnail --- name = " + video.d() + " ----  bitmap = " + thumbnail);
        return thumbnail;
    }

    public final List n() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = f57863b.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, null, null, null, CampaignEx.JSON_KEY_TITLE);
                while (true) {
                    Intrinsics.e(cursorQuery);
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                    if (o(string)) {
                        int i10 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("_id"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_display_name"));
                        String string3 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("resolution"));
                        long j10 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_size"));
                        long j11 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("duration"));
                        arrayList.add(new j0(i10, string, string2, string3, Long.valueOf(j10), Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("date_modified"))), Long.valueOf(j11), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("width")), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("height"))));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                u("出问题了 --- " + Log.getStackTraceString(e10));
                if (cursorQuery != null) {
                    break;
                }
                return arrayList;
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th2;
        }
    }

    public final boolean o(String str) {
        if (str != null) {
            return new File(str).exists();
        }
        return false;
    }

    public final boolean p(Activity activity) {
        Intrinsics.h(activity, "activity");
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (bVar.b().getBoolean("download_local_permission_first", true)) {
            bVar.b().putBoolean("download_local_permission_first", false);
            return false;
        }
        boolean z10 = false;
        for (String str : l()) {
            if (!ActivityCompat.j(activity, str)) {
                z10 = true;
            }
        }
        return z10;
    }

    public final void t(String msg) {
        Intrinsics.h(msg, "msg");
    }

    public final void u(String msg) {
        Intrinsics.h(msg, "msg");
        Log.e("zxb_log_historical", msg);
    }

    public final String w(String str, Bitmap bm2) {
        Intrinsics.h(bm2, "bm");
        String str2 = "";
        File fileH = h(str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileH);
            bm2.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            String absolutePath = fileH.getAbsolutePath();
            Intrinsics.g(absolutePath, "getAbsolutePath(...)");
            try {
                t("the picture is save to your phone! --- coverPath = " + absolutePath);
                return absolutePath;
            } catch (IOException e10) {
                e = e10;
                str2 = absolutePath;
                e.printStackTrace();
                t("保存图片出现了异常 --- ex = " + Log.getStackTraceString(e));
                return str2;
            }
        } catch (IOException e11) {
            e = e11;
        }
    }

    public final void x() {
        try {
            Intent intent = new Intent(Utils.a().getPackageName());
            intent.setFlags(ASTNode.DEOP);
            intent.setComponent(new ComponentName("com.google.android.permissioncontroller", "com.android.permissioncontroller.permission.ui.ManagePermissionsActivity"));
            Utils.a().startActivity(intent);
        } catch (Exception e10) {
            u("跳转应用权限设置界面失败 e = " + Log.getStackTraceString(e10));
            y();
        }
    }

    public final void y() {
        Intent intent = new Intent();
        intent.addFlags(ASTNode.DEOP);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", Utils.a().getPackageName(), null));
        Utils.a().startActivity(intent);
    }

    public final String z(long j10) {
        if (r(j10)) {
            String string = Utils.a().getString(R$string.download_today);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (s(j10)) {
            String string2 = Utils.a().getString(R$string.download_yesterday);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        String strL = TimeUtilKt.l(j10);
        if (strL.length() != 5) {
            return strL;
        }
        List listS0 = StringsKt.S0(strL, new String[]{"-"}, false, 0, 6, null);
        return v((String) listS0.get(0)) + "." + listS0.get(1);
    }
}

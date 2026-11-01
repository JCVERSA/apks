package app.fast.ssh.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.content.ContextCompat;
import app.fast.ssh.ProtectedFastSSH;
import com.hatunnel.plus.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApkInfoExtractor {
    public static int compareVersion(String str, String str2) {
        String strS = ProtectedFastSSH.s("ㆊ");
        String[] strArrSplit = str.split(strS);
        String[] strArrSplit2 = str2.split(strS);
        int i = 0;
        while (true) {
            if (i >= strArrSplit.length && i >= strArrSplit2.length) {
                return 0;
            }
            if (i >= strArrSplit.length || i >= strArrSplit2.length) {
                if (i < strArrSplit.length) {
                    if (Integer.parseInt(strArrSplit[i]) != 0) {
                        return 1;
                    }
                } else if (Integer.parseInt(strArrSplit2[i]) != 0) {
                    return -1;
                }
            } else {
                if (Integer.parseInt(strArrSplit[i]) < Integer.parseInt(strArrSplit2[i])) {
                    return -1;
                }
                if (Integer.parseInt(strArrSplit[i]) > Integer.parseInt(strArrSplit2[i])) {
                    return 1;
                }
            }
            i++;
        }
    }

    public static Drawable getAppIcon(String str, Context context) {
        try {
            return context.getPackageManager().getApplicationIcon(str);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return ContextCompat.getDrawable(context, R.mipmap.ic_launcher);
        }
    }

    public static String getAppName(String str, Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static Bitmap getBitmap(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap getGreyBitmap(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        for (int i = 0; i < width; i++) {
            for (int i2 = 0; i2 < height; i2++) {
                int pixel = bitmap.getPixel(i, i2);
                int iAlpha = Color.alpha(pixel);
                int iRed = (int) ((((double) Color.red(pixel)) * 0.299d) + (((double) Color.green(pixel)) * 0.587d) + (((double) Color.blue(pixel)) * 0.114d));
                bitmapCreateBitmap.setPixel(i, i2, Color.argb(iAlpha, iRed, iRed, iRed));
            }
        }
        return bitmapCreateBitmap;
    }

    public static List<String> getPackages(Context context) {
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent(ProtectedFastSSH.s("ㆋ"), (Uri) null);
        intent.addCategory(ProtectedFastSSH.s("ㆌ"));
        intent.setFlags(270532608);
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.applicationInfo.packageName;
            if (!str.equals(context.getPackageName())) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static Bitmap toGrayscale(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    public boolean isSystemPackage(ResolveInfo resolveInfo) {
        return (resolveInfo.activityInfo.applicationInfo.flags & 1) != 0;
    }
}

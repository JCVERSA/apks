package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.Drawable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public abstract class mf0 {
    public static Bitmap a(int i) {
        if (i == 0) {
            return null;
        }
        Drawable drawableA = zt8.a(i);
        drawableA.setFilterBitmap(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableA.getIntrinsicWidth(), drawableA.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        drawableA.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawableA.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static String b(String str, Bitmap bitmap, Context context, Bitmap.CompressFormat compressFormat) {
        String str2 = context.getFilesDir() + "/images/";
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str2, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(compressFormat, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file2.getPath();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String c(String str, Bitmap bitmap, Integer num, Context context, Bitmap.CompressFormat compressFormat) {
        String str2 = context.getFilesDir() + "/cover/";
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str2, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(compressFormat, num.intValue(), fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file2.getPath();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }
}

package com.hunantv.media.utils;

import android.graphics.Bitmap;
import com.hunantv.media.report.c.f;
import java.io.FileOutputStream;

public class BitmapUtil {
    public static boolean saveJpeg(Bitmap bitmap, String str) throws Throwable {
        if (bitmap == null || com.hunantv.media.player.utils.StringUtil.isEmpty(str)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
                    f.a(fileOutputStream2);
                    return true;
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    f.a(fileOutputStream);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    f.a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}

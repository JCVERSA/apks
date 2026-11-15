package qo;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class a {
    public static Bitmap a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        for (int i10 = 90; byteArrayOutputStream.toByteArray().length / 1024 > 100 && i10 > 50; i10 -= 10) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.PNG, i10, byteArrayOutputStream);
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0038 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    public static Bitmap b(String str) {
        int i10;
        float f10;
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        if (i11 <= i12 || i11 <= 480.0f) {
            if (i11 >= i12 || i12 <= 800.0f) {
                i10 = 1;
            } else {
                f10 = i12 / 800.0f;
            }
            options.inSampleSize = i10 > 0 ? i10 : 1;
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            if (bitmapDecodeFile == null) {
                return null;
            }
            return a(bitmapDecodeFile);
        }
        f10 = i11 / 480.0f;
        i10 = (int) f10;
        options.inSampleSize = i10 > 0 ? i10 : 1;
        bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        if (bitmapDecodeFile == null) {
            return null;
        }
        return a(bitmapDecodeFile);
    }

    public static void c(Bitmap bitmap, File file, int i10) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        try {
                            bitmap.compress(Bitmap.CompressFormat.JPEG, i10, fileOutputStream2);
                            try {
                                fileOutputStream2.flush();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                            fileOutputStream2.close();
                        } catch (FileNotFoundException e11) {
                            e = e11;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            bitmap.recycle();
                        }
                        bitmap.recycle();
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
            } catch (FileNotFoundException e14) {
                e = e14;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

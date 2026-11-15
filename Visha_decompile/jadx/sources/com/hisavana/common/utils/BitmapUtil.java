package com.hisavana.common.utils;

import android.graphics.Bitmap;
import com.hisavana.common.constant.ComConstants;

public class BitmapUtil {
    public static void recycle(Bitmap bitmap) {
        if (bitmap == null || !ComConstants.LITE) {
            return;
        }
        bitmap.recycle();
    }
}

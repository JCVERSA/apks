package com.cloud.hisavana.sdk.common.util;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.cloud.hisavana.sdk.b4;
import java.lang.reflect.Array;

public class f {
    public static Bitmap a(Bitmap bitmap, int i10, boolean z10) {
        Bitmap bitmapCopy;
        int i11 = i10;
        if (z10) {
            bitmapCopy = bitmap;
        } else {
            try {
                bitmapCopy = bitmap.copy(bitmap.getConfig(), true);
            } catch (Throwable th2) {
                b4.b().e(Log.getStackTraceString(th2));
                return null;
            }
        }
        if (i11 < 1) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i12 = width * height;
        int[] iArr = new int[i12];
        bitmapCopy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i13 = width - 1;
        int i14 = height - 1;
        int i15 = i11 + i11;
        int i16 = i15 + 1;
        int[] iArr2 = new int[i12];
        int[] iArr3 = new int[i12];
        int[] iArr4 = new int[i12];
        int[] iArr5 = new int[Math.max(width, height)];
        int i17 = (i15 + 2) >> 1;
        int i18 = i17 * i17;
        int i19 = i18 * 256;
        int[] iArr6 = new int[i19];
        for (int i20 = 0; i20 < i19; i20++) {
            iArr6[i20] = i20 / i18;
        }
        int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i16, 3);
        int i21 = i11 + 1;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        while (i22 < height) {
            Bitmap bitmap2 = bitmapCopy;
            int i25 = height;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            int i31 = 0;
            int i32 = 0;
            int i33 = 0;
            int i34 = -i11;
            int i35 = 0;
            while (i34 <= i11) {
                int i36 = i14;
                int[] iArr8 = iArr5;
                int i37 = iArr[i23 + Math.min(i13, Math.max(i34, 0))];
                int[] iArr9 = iArr7[i34 + i11];
                iArr9[0] = (i37 & 16711680) >> 16;
                iArr9[1] = (i37 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i37 & 255;
                int iAbs = i21 - Math.abs(i34);
                int i38 = iArr9[0];
                i27 += i38 * iAbs;
                int i39 = iArr9[1];
                i26 += i39 * iAbs;
                int i40 = iArr9[2];
                i35 += iAbs * i40;
                if (i34 > 0) {
                    i31 += i38;
                    i33 += i39;
                    i32 += i40;
                } else {
                    i30 += i38;
                    i29 += i39;
                    i28 += i40;
                }
                i34++;
                i14 = i36;
                iArr5 = iArr8;
            }
            int i41 = i14;
            int[] iArr10 = iArr5;
            int i42 = i11;
            int i43 = i35;
            int i44 = 0;
            while (i44 < width) {
                iArr2[i23] = iArr6[i27];
                iArr3[i23] = iArr6[i26];
                iArr4[i23] = iArr6[i43];
                int i45 = i27 - i30;
                int i46 = i26 - i29;
                int i47 = i43 - i28;
                int[] iArr11 = iArr7[((i42 - i11) + i16) % i16];
                int i48 = i30 - iArr11[0];
                int i49 = i29 - iArr11[1];
                int i50 = i28 - iArr11[2];
                if (i22 == 0) {
                    iArr10[i44] = Math.min(i44 + i11 + 1, i13);
                }
                int i51 = iArr[i24 + iArr10[i44]];
                int i52 = (i51 & 16711680) >> 16;
                iArr11[0] = i52;
                int i53 = (i51 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr11[1] = i53;
                int i54 = i51 & 255;
                iArr11[2] = i54;
                int i55 = i31 + i52;
                int i56 = i33 + i53;
                int i57 = i32 + i54;
                i27 = i45 + i55;
                i26 = i46 + i56;
                i43 = i47 + i57;
                i42 = (i42 + 1) % i16;
                int[] iArr12 = iArr7[i42 % i16];
                int i58 = iArr12[0];
                i30 = i48 + i58;
                int i59 = iArr12[1];
                i29 = i49 + i59;
                int i60 = iArr12[2];
                i28 = i50 + i60;
                i31 = i55 - i58;
                i33 = i56 - i59;
                i32 = i57 - i60;
                i23++;
                i44++;
                iArr6 = iArr6;
            }
            i24 += width;
            i22++;
            bitmapCopy = bitmap2;
            height = i25;
            i14 = i41;
            iArr5 = iArr10;
        }
        int[] iArr13 = iArr6;
        Bitmap bitmap3 = bitmapCopy;
        int i61 = i14;
        int[] iArr14 = iArr5;
        int i62 = height;
        int i63 = 0;
        while (i63 < width) {
            int i64 = -i11;
            int i65 = i16;
            int[] iArr15 = iArr;
            int i66 = 0;
            int i67 = 0;
            int i68 = 0;
            int i69 = 0;
            int i70 = 0;
            int i71 = 0;
            int i72 = 0;
            int i73 = i64;
            int i74 = i64 * width;
            int i75 = 0;
            int i76 = 0;
            while (i73 <= i11) {
                int i77 = width;
                int iMax = Math.max(0, i74) + i63;
                int[] iArr16 = iArr7[i73 + i11];
                iArr16[0] = iArr2[iMax];
                iArr16[1] = iArr3[iMax];
                iArr16[2] = iArr4[iMax];
                int iAbs2 = i21 - Math.abs(i73);
                i66 += iArr2[iMax] * iAbs2;
                i76 += iArr3[iMax] * iAbs2;
                i75 += iArr4[iMax] * iAbs2;
                if (i73 > 0) {
                    i72 += iArr16[0];
                    i71 += iArr16[1];
                    i70 += iArr16[2];
                } else {
                    i69 += iArr16[0];
                    i68 += iArr16[1];
                    i67 += iArr16[2];
                }
                int i78 = i61;
                if (i73 < i78) {
                    i74 += i77;
                }
                i73++;
                i61 = i78;
                width = i77;
            }
            int i79 = width;
            int i80 = i61;
            int i81 = i11;
            int i82 = i63;
            int i83 = i66;
            int i84 = i62;
            int i85 = i76;
            int i86 = i75;
            int i87 = 0;
            while (i87 < i84) {
                iArr15[i82] = (iArr15[i82] & ViewCompat.MEASURED_STATE_MASK) | (iArr13[i83] << 16) | (iArr13[i85] << 8) | iArr13[i86];
                int i88 = i83 - i69;
                int i89 = i85 - i68;
                int i90 = i86 - i67;
                int[] iArr17 = iArr7[((i81 - i11) + i65) % i65];
                int i91 = i69 - iArr17[0];
                int i92 = i68 - iArr17[1];
                int i93 = i67 - iArr17[2];
                if (i63 == 0) {
                    iArr14[i87] = Math.min(i87 + i21, i80) * i79;
                }
                int i94 = iArr14[i87] + i63;
                int i95 = iArr2[i94];
                iArr17[0] = i95;
                int i96 = iArr3[i94];
                iArr17[1] = i96;
                int i97 = iArr4[i94];
                iArr17[2] = i97;
                int i98 = i72 + i95;
                int i99 = i71 + i96;
                int i100 = i70 + i97;
                i83 = i88 + i98;
                i85 = i89 + i99;
                i86 = i90 + i100;
                i81 = (i81 + 1) % i65;
                int[] iArr18 = iArr7[i81];
                int i101 = iArr18[0];
                i69 = i91 + i101;
                int i102 = iArr18[1];
                i68 = i92 + i102;
                int i103 = iArr18[2];
                i67 = i93 + i103;
                i72 = i98 - i101;
                i71 = i99 - i102;
                i70 = i100 - i103;
                i82 += i79;
                i87++;
                i11 = i10;
            }
            i63++;
            i11 = i10;
            i61 = i80;
            i62 = i84;
            i16 = i65;
            iArr = iArr15;
            width = i79;
        }
        int i104 = width;
        bitmap3.setPixels(iArr, 0, i104, 0, 0, i104, i62);
        return bitmap3;
    }
}

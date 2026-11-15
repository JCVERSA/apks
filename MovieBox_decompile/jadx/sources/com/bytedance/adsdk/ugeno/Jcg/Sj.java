package com.bytedance.adsdk.ugeno.Jcg;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.transsion.gslb.Utils;

public class Sj {

    public static class C0179Sj {
        public GradientDrawable.Orientation Sj;
        public float[] TKC;
        public int[] sP;
    }

    public static GradientDrawable.Orientation EjP(String str) {
        try {
            int i10 = str.contains("deg") ? Integer.parseInt(str.substring(0, str.length() - 3).trim()) : Integer.parseInt(str);
            if (i10 == 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (i10 == 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (i10 == 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            if (i10 == 135) {
                return GradientDrawable.Orientation.TL_BR;
            }
            return i10 == 45 ? GradientDrawable.Orientation.BL_TR : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    public static int Sj(String str) {
        return Sj(str, ViewCompat.MEASURED_STATE_MASK);
    }

    public static boolean TKC(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("linear-gradient");
    }

    public static C0179Sj sP(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String strSubstring = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")"));
            if (TextUtils.isEmpty(strSubstring)) {
                return null;
            }
            int iSj = Sj(strSubstring, '%');
            int iIndexOf = strSubstring.indexOf(",");
            String strSubstring2 = strSubstring.substring(0, iIndexOf);
            C0179Sj c0179Sj = new C0179Sj();
            c0179Sj.Sj = EjP(strSubstring2);
            String strSubstring3 = strSubstring.substring(iIndexOf + 1);
            int[] iArr = new int[iSj];
            float[] fArr = new float[iSj];
            for (int i10 = 0; i10 < iSj; i10++) {
                int iIndexOf2 = strSubstring3.indexOf("%");
                String strTrim = strSubstring3.substring(0, iIndexOf2 + 1).trim();
                int iIndexOf3 = (strTrim.contains("rgba") ? strTrim.indexOf(")") : strTrim.indexOf(" ")) + 1;
                iArr[i10] = Sj(strTrim.substring(0, iIndexOf3).trim());
                fArr[i10] = TKC.Sj(strTrim.substring(iIndexOf3, strTrim.indexOf("%")).trim(), 0.0f) / 100.0f;
                int i11 = iIndexOf2 + 2;
                if (strSubstring3.length() <= i11) {
                    break;
                }
                strSubstring3 = strSubstring3.substring(i11);
            }
            if (iSj < 2) {
                return null;
            }
            c0179Sj.sP = iArr;
            c0179Sj.TKC = fArr;
            return c0179Sj;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int Sj(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        if (str.equals(TmcStartParams.KEY_TRANSPARENT)) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 4) {
            StringBuilder sb2 = new StringBuilder(Utils.SEPARATOR);
            char[] charArray = str.toCharArray();
            for (int i11 = 1; i11 < charArray.length; i11++) {
                sb2.append(charArray[i11]);
                sb2.append(charArray[i11]);
            }
            return Color.parseColor(sb2.toString());
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (!str.startsWith("rgba")) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        if (strArrSplit == null || strArrSplit.length != 4) {
            return i10;
        }
        return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2]));
    }

    public static int Sj(String str, char c10) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < str.length(); i11++) {
            if (str.charAt(i11) == c10) {
                i10++;
            }
        }
        return i10;
    }

    public static int Sj(int i10, int i11) {
        if (i11 < 0 || i11 > 255) {
            Log.e("ColorUtils", "alpha must be between 0 and 255. ");
            i11 = 255;
        }
        return (i10 & 16777215) | (i11 << 24);
    }
}

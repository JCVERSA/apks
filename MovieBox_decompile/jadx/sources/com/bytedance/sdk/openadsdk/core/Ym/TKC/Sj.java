package com.bytedance.sdk.openadsdk.core.Ym.TKC;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.HashSet;
import java.util.Set;

public class Sj {
    public static final Set<String> Sj = new HashSet<String>() {
        {
            add("image/jpeg");
            add("image/png");
            add("image/bmp");
            add("image/gif");
            add("image/jpg");
        }
    };
    public static Set<String> sP = new HashSet<String>() {
        {
            add("application/x-javascript");
        }
    };

    public enum EnumC0247Sj {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    public enum sP {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE
    }

    @NonNull
    public static Point Sj(Context context, int i10, int i11, sP sPVar) {
        if (context == null) {
            context = dNu.Sj();
        }
        Point point = new Point(i10, i11);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int iSP = FPG.sP(context, i10);
        int iSP2 = FPG.sP(context, i11);
        if (iSP <= width && iSP2 <= height) {
            return point;
        }
        Point point2 = new Point();
        if (sP.HTML_RESOURCE == sPVar) {
            point2.x = Math.min(width, iSP);
            point2.y = Math.min(height, iSP2);
        } else {
            float f10 = iSP;
            float f11 = f10 / width;
            float f12 = iSP2;
            float f13 = f12 / height;
            if (f11 >= f13) {
                point2.x = width;
                point2.y = (int) (f12 / f11);
            } else {
                point2.x = (int) (f10 / f13);
                point2.y = height;
            }
        }
        int i12 = point2.x;
        if (i12 < 0 || point2.y < 0) {
            return point;
        }
        point2.x = FPG.TKC(context, i12);
        point2.y = FPG.TKC(context, point2.y);
        return point2;
    }
}

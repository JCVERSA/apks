package com.bytedance.adsdk.sP.vS;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.sP.TKC.sP.sef;

public class HiB {
    private static final PointF Sj = new PointF();

    public static float Sj(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static boolean TKC(float f10, float f11, float f12) {
        return f10 >= f11 && f10 <= f12;
    }

    private static int sP(int i10, int i11) {
        int i12 = i10 / i11;
        return (((i10 ^ i11) >= 0) || i10 % i11 == 0) ? i12 : i12 - 1;
    }

    public static int Sj(int i10, int i11, float f10) {
        return (int) (i10 + (f10 * (i11 - i10)));
    }

    public static PointF Sj(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float sP(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f12, f10));
    }

    public static void Sj(sef sefVar, Path path) {
        path.reset();
        PointF pointFSj = sefVar.Sj();
        path.moveTo(pointFSj.x, pointFSj.y);
        Sj.set(pointFSj.x, pointFSj.y);
        for (int i10 = 0; i10 < sefVar.TKC().size(); i10++) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = sefVar.TKC().get(i10);
            PointF pointFSj2 = sj2.Sj();
            PointF pointFSP = sj2.sP();
            PointF pointFTKC = sj2.TKC();
            PointF pointF = Sj;
            if (pointFSj2.equals(pointF) && pointFSP.equals(pointFTKC)) {
                path.lineTo(pointFTKC.x, pointFTKC.y);
            } else {
                path.cubicTo(pointFSj2.x, pointFSj2.y, pointFSP.x, pointFSP.y, pointFTKC.x, pointFTKC.y);
            }
            pointF.set(pointFTKC.x, pointFTKC.y);
        }
        if (sefVar.sP()) {
            path.close();
        }
    }

    static int Sj(float f10, float f11) {
        return Sj((int) f10, (int) f11);
    }

    private static int Sj(int i10, int i11) {
        return i10 - (i11 * sP(i10, i11));
    }

    public static int Sj(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i12, i10));
    }
}

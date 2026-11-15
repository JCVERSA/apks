package com.bytedance.adsdk.sP.TKC.TKC;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.LongSparseArray;
import com.bytedance.adsdk.sP.Sj.sP.Zq;
import com.bytedance.adsdk.sP.TKC.Sj.Ym;
import com.bytedance.adsdk.sP.TKC.sP.uvD;
import com.bytedance.adsdk.sP.sU;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class uA extends com.bytedance.adsdk.sP.TKC.TKC.Sj {
    private final RectF Dq;
    private final LongSparseArray<String> Fmk;
    private final StringBuilder Jcg;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> RiZ;
    private final Paint TEQ;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> TzV;
    private final Paint Ym;
    private final Zq Zq;

    private final Map<com.bytedance.adsdk.sP.TKC.EjP, List<com.bytedance.adsdk.sP.Sj.Sj.EjP>> f20171aa;
    private final com.bytedance.adsdk.sP.Jcg dNu;

    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> f20172dx;

    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> f20173ib;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> kF;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Typeface, Typeface> ley;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sU;
    private final List<Sj> sef;
    private final Matrix uA;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> uP;
    private final com.bytedance.adsdk.sP.uA uvD;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> wE;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> zR;

    static class AnonymousClass3 {
        static final int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.Sj.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.Sj.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.Sj.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.Sj.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static class Sj {
        private String Sj;
        private float sP;

        private Sj() {
            this.Sj = "";
            this.sP = 0.0f;
        }

        void Sj(String str, float f10) {
            this.Sj = str;
            this.sP = f10;
        }
    }

    uA(com.bytedance.adsdk.sP.uA uAVar, HiB hiB) {
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sj2;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sj3;
        super(uAVar, hiB);
        this.Jcg = new StringBuilder(2);
        this.Dq = new RectF();
        this.uA = new Matrix();
        int i10 = 1;
        this.TEQ = new Paint(i10) {
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.Ym = new Paint(i10) {
            {
                setStyle(Paint.Style.STROKE);
            }
        };
        this.f20171aa = new HashMap();
        this.Fmk = new LongSparseArray<>();
        this.sef = new ArrayList();
        this.uvD = uAVar;
        this.dNu = hiB.Sj();
        Zq zqSj = hiB.RiZ().Sj();
        this.Zq = zqSj;
        zqSj.Sj(this);
        Sj(zqSj);
        Ym ymSU = hiB.sU();
        if (ymSU != null && (sj3 = ymSU.Sj) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj2 = sj3.Sj();
            this.TzV = Sj2;
            Sj2.Sj(this);
            Sj(this.TzV);
        }
        if (ymSU != null && (sj2 = ymSU.sP) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj3 = sj2.Sj();
            this.sU = Sj3;
            Sj3.Sj(this);
            Sj(this.sU);
        }
        if (ymSU != null && (sPVar2 = ymSU.TKC) != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj4 = sPVar2.Sj();
            this.zR = Sj4;
            Sj4.Sj(this);
            Sj(this.zR);
        }
        if (ymSU == null || (sPVar = ymSU.EjP) == null) {
            return;
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj5 = sPVar.Sj();
        this.kF = Sj5;
        Sj5.Sj(this);
        Sj(this.kF);
    }

    private boolean TKC(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    @Override
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        super.Sj(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.dNu.EjP().width(), this.dNu.EjP().height());
    }

    @Override
    public void sP(Canvas canvas, Matrix matrix, int i10) {
        super.sP(canvas, matrix, i10);
        com.bytedance.adsdk.sP.TKC.sP sPVarJcg = this.Zq.Jcg();
        com.bytedance.adsdk.sP.TKC.TKC tkc = this.dNu.Zq().get(sPVarJcg.sP);
        if (tkc == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Sj(sPVarJcg, matrix);
        if (this.uvD.uP()) {
            Sj(sPVarJcg, matrix, tkc, canvas);
        } else {
            Sj(sPVarJcg, tkc, canvas);
        }
        canvas.restore();
    }

    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, Matrix matrix) {
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj2 = this.RiZ;
        if (sj2 != null) {
            this.TEQ.setColor(sj2.Jcg().intValue());
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3 = this.TzV;
            if (sj3 != null) {
                this.TEQ.setColor(sj3.Jcg().intValue());
            } else {
                this.TEQ.setColor(sPVar.Dq);
            }
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj4 = this.f20172dx;
        if (sj4 != null) {
            this.Ym.setColor(sj4.Jcg().intValue());
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj5 = this.sU;
            if (sj5 != null) {
                this.Ym.setColor(sj5.Jcg().intValue());
            } else {
                this.Ym.setColor(sPVar.uA);
            }
        }
        int iIntValue = ((this.EjP.Sj() == null ? 100 : this.EjP.Sj().Jcg().intValue()) * 255) / 100;
        this.TEQ.setAlpha(iIntValue);
        this.Ym.setAlpha(iIntValue);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj6 = this.f20173ib;
        if (sj6 != null) {
            this.Ym.setStrokeWidth(sj6.Jcg().floatValue());
            return;
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj7 = this.zR;
        if (sj7 != null) {
            this.Ym.setStrokeWidth(sj7.Jcg().floatValue());
        } else {
            this.Ym.setStrokeWidth(sPVar.TEQ * com.bytedance.adsdk.sP.vS.vS.Sj());
        }
    }

    private Sj sP(int i10) {
        for (int size = this.sef.size(); size < i10; size++) {
            this.sef.add(new Sj());
        }
        return this.sef.get(i10 - 1);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x007b A[LOOP:1: B:22:0x0075->B:24:0x007b, LOOP_END] */
    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, Matrix matrix, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas) {
        float fFloatValue;
        float fFloatValue2;
        float f10;
        int i10;
        int i11;
        PointF pointF;
        float f11;
        List<Sj> listSj;
        int i12;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj2 = this.wE;
        if (sj2 != null) {
            fFloatValue = sj2.Jcg().floatValue();
        } else {
            fFloatValue = sPVar.TKC;
        }
        float f12 = fFloatValue / 100.0f;
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj(matrix);
        List<String> listSj2 = Sj(sPVar.Sj);
        int size = listSj2.size();
        float f13 = sPVar.HiB / 10.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.uP;
        if (sj3 != null) {
            fFloatValue2 = sj3.Jcg().floatValue();
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj4 = this.kF;
            if (sj4 != null) {
                fFloatValue2 = sj4.Jcg().floatValue();
            }
            f10 = f13;
            i10 = -1;
            i11 = 0;
            while (i11 < size) {
                String str = listSj2.get(i11);
                pointF = sPVar.Fmk;
                if (pointF == null) {
                    f11 = 0.0f;
                } else {
                    f11 = pointF.x;
                }
                int i13 = i11;
                listSj = Sj(str, f11, tkc, f12, f10, true);
                i12 = 0;
                while (i12 < listSj.size()) {
                    Sj sj5 = listSj.get(i12);
                    int i14 = i10 + 1;
                    canvas.save();
                    Sj(canvas, sPVar, i14, sj5.sP);
                    Sj(sj5.Sj, sPVar, tkc, canvas, fSj, f12, f10);
                    canvas.restore();
                    i12++;
                    listSj = listSj;
                    i10 = i14;
                }
                i11 = i13 + 1;
            }
        }
        f13 += fFloatValue2;
        f10 = f13;
        i10 = -1;
        i11 = 0;
        while (i11 < size) {
            String str2 = listSj2.get(i11);
            pointF = sPVar.Fmk;
            if (pointF == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF.x;
            }
            int i15 = i11;
            listSj = Sj(str2, f11, tkc, f12, f10, true);
            i12 = 0;
            while (i12 < listSj.size()) {
                Sj sj6 = listSj.get(i12);
                int i16 = i10 + 1;
                canvas.save();
                Sj(canvas, sPVar, i16, sj6.sP);
                Sj(sj6.Sj, sPVar, tkc, canvas, fSj, f12, f10);
                canvas.restore();
                i12++;
                listSj = listSj;
                i10 = i16;
            }
            i11 = i15 + 1;
        }
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            com.bytedance.adsdk.sP.TKC.EjP ejP = this.dNu.sef().get(com.bytedance.adsdk.sP.TKC.EjP.Sj(str.charAt(i10), tkc.Sj(), tkc.TKC()));
            if (ejP != null) {
                Sj(ejP, f11, sPVar, canvas);
                canvas.translate((((float) ejP.sP()) * f11 * com.bytedance.adsdk.sP.vS.vS.Sj()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0094  */
    /* JADX WARN: Code duplicated, block: B:23:0x009f  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bc A[LOOP:1: B:27:0x00b6->B:29:0x00bc, LOOP_END] */
    private void Sj(com.bytedance.adsdk.sP.TKC.sP sPVar, com.bytedance.adsdk.sP.TKC.TKC tkc, Canvas canvas) {
        float fFloatValue;
        float fFloatValue2;
        float fSj;
        List<String> listSj;
        int size;
        int i10;
        int i11;
        PointF pointF;
        float f10;
        List<Sj> listSj2;
        int i12;
        Typeface typefaceSj = Sj(tkc);
        if (typefaceSj == null) {
            return;
        }
        String strSP = sPVar.Sj;
        sU sUVarKF = this.uvD.kF();
        if (sUVarKF != null) {
            strSP = sUVarKF.sP(uA(), strSP);
        }
        this.TEQ.setTypeface(typefaceSj);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj2 = this.wE;
        if (sj2 != null) {
            fFloatValue = sj2.Jcg().floatValue();
        } else {
            fFloatValue = sPVar.TKC;
        }
        this.TEQ.setTextSize(com.bytedance.adsdk.sP.vS.vS.Sj() * fFloatValue);
        this.Ym.setTypeface(this.TEQ.getTypeface());
        this.Ym.setTextSize(this.TEQ.getTextSize());
        float f11 = sPVar.HiB / 10.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.uP;
        if (sj3 != null) {
            fFloatValue2 = sj3.Jcg().floatValue();
        } else {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj4 = this.kF;
            if (sj4 != null) {
                fFloatValue2 = sj4.Jcg().floatValue();
            }
            fSj = ((f11 * com.bytedance.adsdk.sP.vS.vS.Sj()) * fFloatValue) / 100.0f;
            listSj = Sj(strSP);
            size = listSj.size();
            i10 = -1;
            i11 = 0;
            while (i11 < size) {
                String str = listSj.get(i11);
                pointF = sPVar.Fmk;
                if (pointF == null) {
                    f10 = 0.0f;
                } else {
                    f10 = pointF.x;
                }
                int i13 = i11;
                listSj2 = Sj(str, f10, tkc, 0.0f, fSj, false);
                for (i12 = 0; i12 < listSj2.size(); i12++) {
                    Sj sj5 = listSj2.get(i12);
                    i10++;
                    canvas.save();
                    Sj(canvas, sPVar, i10, sj5.sP);
                    Sj(sj5.Sj, sPVar, canvas, fSj);
                    canvas.restore();
                }
                i11 = i13 + 1;
            }
        }
        f11 += fFloatValue2;
        fSj = ((f11 * com.bytedance.adsdk.sP.vS.vS.Sj()) * fFloatValue) / 100.0f;
        listSj = Sj(strSP);
        size = listSj.size();
        i10 = -1;
        i11 = 0;
        while (i11 < size) {
            String str2 = listSj.get(i11);
            pointF = sPVar.Fmk;
            if (pointF == null) {
                f10 = 0.0f;
            } else {
                f10 = pointF.x;
            }
            int i14 = i11;
            listSj2 = Sj(str2, f10, tkc, 0.0f, fSj, false);
            while (i12 < listSj2.size()) {
                Sj sj6 = listSj2.get(i12);
                i10++;
                canvas.save();
                Sj(canvas, sPVar, i10, sj6.sP);
                Sj(sj6.Sj, sPVar, canvas, fSj);
                canvas.restore();
            }
            i11 = i14 + 1;
        }
    }

    private void Sj(Canvas canvas, com.bytedance.adsdk.sP.TKC.sP sPVar, int i10, float f10) {
        PointF pointF = sPVar.f20174aa;
        PointF pointF2 = sPVar.Fmk;
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        float f11 = (i10 * sPVar.vS * fSj) + (pointF == null ? 0.0f : (sPVar.vS * 0.6f * fSj) + pointF.y);
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = AnonymousClass3.Sj[sPVar.EjP.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else {
            if (i11 != 3) {
                return;
            }
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
    }

    private Typeface Sj(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        Typeface typefaceJcg;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Typeface, Typeface> sj2 = this.ley;
        if (sj2 != null && (typefaceJcg = sj2.Jcg()) != null) {
            return typefaceJcg;
        }
        Typeface typefaceSj = this.uvD.Sj(tkc);
        return typefaceSj != null ? typefaceSj : tkc.EjP();
    }

    private List<String> Sj(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas, float f10) {
        int length = 0;
        while (length < str.length()) {
            String strSj = Sj(str, length);
            length += strSj.length();
            Sj(strSj, sPVar, canvas);
            canvas.translate(this.TEQ.measureText(strSj) + f10, 0.0f);
        }
    }

    private List<Sj> Sj(String str, float f10, com.bytedance.adsdk.sP.TKC.TKC tkc, float f11, float f12, boolean z10) {
        float fMeasureText;
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        int i12 = 0;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char cCharAt = str.charAt(i13);
            if (z10) {
                com.bytedance.adsdk.sP.TKC.EjP ejP = this.dNu.sef().get(com.bytedance.adsdk.sP.TKC.EjP.Sj(cCharAt, tkc.Sj(), tkc.TKC()));
                if (ejP != null) {
                    fMeasureText = ((float) ejP.sP()) * f11 * com.bytedance.adsdk.sP.vS.vS.Sj();
                }
            } else {
                fMeasureText = this.TEQ.measureText(str.substring(i13, i13 + 1));
            }
            float f16 = fMeasureText + f12;
            if (cCharAt == ' ') {
                z11 = true;
                f15 = f16;
            } else if (z11) {
                z11 = false;
                i12 = i13;
                f14 = f16;
            } else {
                f14 += f16;
            }
            f13 += f16;
            if (f10 > 0.0f && f13 >= f10 && cCharAt != ' ') {
                i10++;
                Sj sjSP = sP(i10);
                if (i12 == i11) {
                    String strSubstring = str.substring(i11, i13);
                    String strTrim = strSubstring.trim();
                    sjSP.Sj(strTrim, (f13 - f16) - ((strTrim.length() - strSubstring.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    String strSubstring2 = str.substring(i11, i12 - 1);
                    String strTrim2 = strSubstring2.trim();
                    sjSP.Sj(strTrim2, ((f13 - f14) - ((strSubstring2.length() - strTrim2.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            sP(i10).Sj(str.substring(i11), f13);
        }
        return this.sef.subList(0, i10);
    }

    private void Sj(com.bytedance.adsdk.sP.TKC.EjP ejP, float f10, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas) {
        List<com.bytedance.adsdk.sP.Sj.Sj.EjP> listSj = Sj(ejP);
        for (int i10 = 0; i10 < listSj.size(); i10++) {
            Path pathEjP = listSj.get(i10).EjP();
            pathEjP.computeBounds(this.Dq, false);
            this.uA.reset();
            this.uA.preTranslate(0.0f, (-sPVar.Jcg) * com.bytedance.adsdk.sP.vS.vS.Sj());
            this.uA.preScale(f10, f10);
            pathEjP.transform(this.uA);
            if (sPVar.Ym) {
                Sj(pathEjP, this.TEQ, canvas);
                Sj(pathEjP, this.Ym, canvas);
            } else {
                Sj(pathEjP, this.Ym, canvas);
                Sj(pathEjP, this.TEQ, canvas);
            }
        }
    }

    private void Sj(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void Sj(String str, com.bytedance.adsdk.sP.TKC.sP sPVar, Canvas canvas) {
        if (sPVar.Ym) {
            Sj(str, this.TEQ, canvas);
            Sj(str, this.Ym, canvas);
        } else {
            Sj(str, this.Ym, canvas);
            Sj(str, this.TEQ, canvas);
        }
    }

    private void Sj(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private List<com.bytedance.adsdk.sP.Sj.Sj.EjP> Sj(com.bytedance.adsdk.sP.TKC.EjP ejP) {
        if (this.f20171aa.containsKey(ejP)) {
            return this.f20171aa.get(ejP);
        }
        List<uvD> listSj = ejP.Sj();
        int size = listSj.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new com.bytedance.adsdk.sP.Sj.Sj.EjP(this.uvD, this, listSj.get(i10), this.dNu));
        }
        this.f20171aa.put(ejP, arrayList);
        return arrayList;
    }

    private String Sj(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!TKC(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j10 = iCodePointAt;
        if (this.Fmk.indexOfKey(j10) >= 0) {
            return this.Fmk.get(j10);
        }
        this.Jcg.setLength(0);
        while (i10 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i10);
            this.Jcg.appendCodePoint(iCodePointAt3);
            i10 += Character.charCount(iCodePointAt3);
        }
        String string = this.Jcg.toString();
        this.Fmk.put(j10, string);
        return string;
    }
}

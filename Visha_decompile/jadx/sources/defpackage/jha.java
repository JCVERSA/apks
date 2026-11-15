package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.model.layer.Layer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

public class jha extends com.airbnb.lottie.model.layer.a {
    public final StringBuilder E;
    public final RectF F;
    public final Matrix G;
    public final Paint H;
    public final Paint I;
    public final Map J;
    public final LongSparseArray K;
    public final List L;
    public final iha M;
    public final LottieDrawable N;
    public final ur5 O;
    public TextRangeUnits P;
    public ab0 Q;
    public ab0 R;
    public ab0 S;
    public ab0 T;
    public ab0 U;
    public ab0 V;
    public ab0 W;
    public ab0 X;
    public ab0 Y;
    public ab0 Z;
    public ab0 a0;
    public ab0 b0;
    public ab0 c0;
    public ab0 d0;

    public class a extends Paint {
        public a(int i) {
            super(i);
            setStyle(Paint.Style.FILL);
        }
    }

    public class b extends Paint {
        public b(int i) {
            super(i);
            setStyle(Paint.Style.STROKE);
        }
    }

    public static class c {
        public static final int[] a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public jha(LottieDrawable lottieDrawable, Layer layer) {
        pc pcVar;
        pc pcVar2;
        fc fcVar;
        pc pcVar3;
        fc fcVar2;
        pc pcVar4;
        fc fcVar3;
        qc qcVar;
        fc fcVar4;
        qc qcVar2;
        dc dcVar;
        qc qcVar3;
        dc dcVar2;
        qc qcVar4;
        cc ccVar;
        qc qcVar5;
        cc ccVar2;
        super(lottieDrawable, layer);
        this.E = new StringBuilder(2);
        this.F = new RectF();
        this.G = new Matrix();
        this.H = new a(1);
        this.I = new b(1);
        this.J = new HashMap();
        this.K = new LongSparseArray();
        this.L = new ArrayList();
        this.P = TextRangeUnits.INDEX;
        this.N = lottieDrawable;
        this.O = layer.c();
        iha ihaVarH = layer.t().h();
        this.M = ihaVarH;
        ihaVarH.a(this);
        i(ihaVarH);
        nc ncVarU = layer.u();
        if (ncVarU != null && (qcVar5 = ncVarU.a) != null && (ccVar2 = qcVar5.a) != null) {
            ab0 ab0VarH = ccVar2.h();
            this.Q = ab0VarH;
            ab0VarH.a(this);
            i(this.Q);
        }
        if (ncVarU != null && (qcVar4 = ncVarU.a) != null && (ccVar = qcVar4.b) != null) {
            ab0 ab0VarH2 = ccVar.h();
            this.S = ab0VarH2;
            ab0VarH2.a(this);
            i(this.S);
        }
        if (ncVarU != null && (qcVar3 = ncVarU.a) != null && (dcVar2 = qcVar3.c) != null) {
            xy3 xy3VarH = dcVar2.h();
            this.U = xy3VarH;
            xy3VarH.a(this);
            i(this.U);
        }
        if (ncVarU != null && (qcVar2 = ncVarU.a) != null && (dcVar = qcVar2.d) != null) {
            xy3 xy3VarH2 = dcVar.h();
            this.W = xy3VarH2;
            xy3VarH2.a(this);
            i(this.W);
        }
        if (ncVarU != null && (qcVar = ncVarU.a) != null && (fcVar4 = qcVar.e) != null) {
            ab0 ab0VarH3 = fcVar4.h();
            this.Y = ab0VarH3;
            ab0VarH3.a(this);
            i(this.Y);
        }
        if (ncVarU != null && (pcVar4 = ncVarU.b) != null && (fcVar3 = pcVar4.a) != null) {
            ab0 ab0VarH4 = fcVar3.h();
            this.b0 = ab0VarH4;
            ab0VarH4.a(this);
            i(this.b0);
        }
        if (ncVarU != null && (pcVar3 = ncVarU.b) != null && (fcVar2 = pcVar3.b) != null) {
            ab0 ab0VarH5 = fcVar2.h();
            this.c0 = ab0VarH5;
            ab0VarH5.a(this);
            i(this.c0);
        }
        if (ncVarU != null && (pcVar2 = ncVarU.b) != null && (fcVar = pcVar2.c) != null) {
            ab0 ab0VarH6 = fcVar.h();
            this.d0 = ab0VarH6;
            ab0VarH6.a(this);
            i(this.d0);
        }
        if (ncVarU == null || (pcVar = ncVarU.b) == null) {
            return;
        }
        this.P = pcVar.d;
    }

    public final String P(String str, int i) {
        int iCodePointAt = str.codePointAt(i);
        int iCharCount = Character.charCount(iCodePointAt) + i;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!e0(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j = iCodePointAt;
        if (this.K.containsKey(j)) {
            return (String) this.K.get(j);
        }
        this.E.setLength(0);
        while (i < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i);
            this.E.appendCodePoint(iCodePointAt3);
            i += Character.charCount(iCodePointAt3);
        }
        String string = this.E.toString();
        this.K.put(j, string);
        return string;
    }

    public final void Q(DocumentData documentData, int i, int i2) {
        ab0 ab0Var = this.R;
        if (ab0Var != null) {
            this.H.setColor(((Integer) ab0Var.h()).intValue());
        } else if (this.Q == null || !d0(i2)) {
            this.H.setColor(documentData.h);
        } else {
            this.H.setColor(((Integer) this.Q.h()).intValue());
        }
        ab0 ab0Var2 = this.T;
        if (ab0Var2 != null) {
            this.I.setColor(((Integer) ab0Var2.h()).intValue());
        } else if (this.S == null || !d0(i2)) {
            this.I.setColor(documentData.i);
        } else {
            this.I.setColor(((Integer) this.S.h()).intValue());
        }
        int iIntValue = 100;
        int iIntValue2 = this.x.h() == null ? 100 : ((Integer) this.x.h().h()).intValue();
        if (this.Y != null && d0(i2)) {
            iIntValue = ((Integer) this.Y.h()).intValue();
        }
        int iRound = Math.round(((((iIntValue2 * 255.0f) / 100.0f) * (iIntValue / 100.0f)) * i) / 255.0f);
        this.H.setAlpha(iRound);
        this.I.setAlpha(iRound);
        ab0 ab0Var3 = this.V;
        if (ab0Var3 != null) {
            this.I.setStrokeWidth(((Float) ab0Var3.h()).floatValue());
        } else if (this.U == null || !d0(i2)) {
            this.I.setStrokeWidth(documentData.j * plb.e());
        } else {
            this.I.setStrokeWidth(((Float) this.U.h()).floatValue());
        }
    }

    public final void R(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public final void S(t24 t24Var, float f, DocumentData documentData, Canvas canvas, int i, int i2) {
        Q(documentData, i2, i);
        List listA0 = a0(t24Var);
        for (int i3 = 0; i3 < listA0.size(); i3++) {
            Path path = ((cg1) listA0.get(i3)).getPath();
            path.computeBounds(this.F, false);
            this.G.reset();
            this.G.preTranslate(0.0f, (-documentData.g) * plb.e());
            this.G.preScale(f, f);
            path.transform(this.G);
            if (documentData.k) {
                V(path, this.H, canvas);
                V(path, this.I, canvas);
            } else {
                V(path, this.I, canvas);
                V(path, this.H, canvas);
            }
        }
    }

    public final void T(String str, DocumentData documentData, Canvas canvas, int i, int i2) {
        Q(documentData, i2, i);
        if (documentData.k) {
            R(str, this.H, canvas);
            R(str, this.I, canvas);
        } else {
            R(str, this.I, canvas);
            R(str, this.H, canvas);
        }
    }

    public final void U(String str, DocumentData documentData, Canvas canvas, float f, int i, int i2) {
        int length = 0;
        while (length < str.length()) {
            String strP = P(str, length);
            T(strP, documentData, canvas, i + length, i2);
            canvas.translate(this.H.measureText(strP) + f, 0.0f);
            length += strP.length();
        }
    }

    public final void V(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public final void W(String str, DocumentData documentData, q24 q24Var, Canvas canvas, float f, float f2, float f3, int i) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            t24 t24Var = (t24) this.O.c().get(t24.c(str.charAt(i2), q24Var.a(), q24Var.c()));
            if (t24Var != null) {
                S(t24Var, f2, documentData, canvas, i2, i);
                canvas.translate((((float) t24Var.b()) * f2 * plb.e()) + f3, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0089  */
    /* JADX WARN: Code duplicated, block: B:20:0x0094  */
    /* JADX WARN: Code duplicated, block: B:22:0x0097  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dc  */
    public final void X(DocumentData documentData, q24 q24Var, Canvas canvas, int i) {
        float fFloatValue;
        float fE;
        List listB0;
        int size;
        int i2;
        int i3;
        int length;
        PointF pointF;
        float f;
        List listG0;
        int i4;
        d dVar;
        Typeface typefaceC0 = c0(q24Var);
        if (typefaceC0 == null) {
            return;
        }
        String str = documentData.a;
        this.N.f0();
        this.H.setTypeface(typefaceC0);
        ab0 ab0Var = this.Z;
        float fFloatValue2 = ab0Var != null ? ((Float) ab0Var.h()).floatValue() : documentData.c;
        this.H.setTextSize(plb.e() * fFloatValue2);
        this.I.setTypeface(this.H.getTypeface());
        this.I.setTextSize(this.H.getTextSize());
        float f2 = documentData.e / 10.0f;
        ab0 ab0Var2 = this.X;
        if (ab0Var2 == null) {
            ab0 ab0Var3 = this.W;
            if (ab0Var3 != null) {
                fFloatValue = ((Float) ab0Var3.h()).floatValue();
            }
            fE = ((f2 * plb.e()) * fFloatValue2) / 100.0f;
            listB0 = b0(str);
            size = listB0.size();
            i2 = -1;
            length = 0;
            for (i3 = 0; i3 < size; i3++) {
                String str2 = (String) listB0.get(i3);
                pointF = documentData.m;
                if (pointF == null) {
                    f = 0.0f;
                } else {
                    f = pointF.x;
                }
                i4 = 0;
                for (listG0 = g0(str2, f, q24Var, 0.0f, fE, false); i4 < listG0.size(); listG0 = listG0) {
                    dVar = (d) listG0.get(i4);
                    i2++;
                    canvas.save();
                    if (f0(canvas, documentData, i2, dVar.b)) {
                        U(dVar.a, documentData, canvas, fE, length, i);
                    }
                    length += dVar.a.length();
                    canvas.restore();
                    i4++;
                }
            }
        }
        fFloatValue = ((Float) ab0Var2.h()).floatValue();
        f2 += fFloatValue;
        fE = ((f2 * plb.e()) * fFloatValue2) / 100.0f;
        listB0 = b0(str);
        size = listB0.size();
        i2 = -1;
        length = 0;
        while (i3 < size) {
            String str3 = (String) listB0.get(i3);
            pointF = documentData.m;
            if (pointF == null) {
                f = 0.0f;
            } else {
                f = pointF.x;
            }
            i4 = 0;
            while (i4 < listG0.size()) {
                dVar = (d) listG0.get(i4);
                i2++;
                canvas.save();
                if (f0(canvas, documentData, i2, dVar.b)) {
                    U(dVar.a, documentData, canvas, fE, length, i);
                }
                length += dVar.a.length();
                canvas.restore();
                i4++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0055  */
    /* JADX WARN: Code duplicated, block: B:18:0x0060  */
    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0090  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ad  */
    public final void Y(DocumentData documentData, Matrix matrix, q24 q24Var, Canvas canvas, int i) {
        float fFloatValue;
        float f;
        int i2;
        int i3;
        PointF pointF;
        float f2;
        List listG0;
        int i4;
        d dVar;
        int i5;
        ab0 ab0Var = this.Z;
        float fFloatValue2 = (ab0Var != null ? ((Float) ab0Var.h()).floatValue() : documentData.c) / 100.0f;
        float fG = plb.g(matrix);
        List listB0 = b0(documentData.a);
        int size = listB0.size();
        float f3 = documentData.e / 10.0f;
        ab0 ab0Var2 = this.X;
        if (ab0Var2 == null) {
            ab0 ab0Var3 = this.W;
            if (ab0Var3 != null) {
                fFloatValue = ((Float) ab0Var3.h()).floatValue();
            }
            f = f3;
            i2 = -1;
            i3 = 0;
            while (i3 < size) {
                String str = (String) listB0.get(i3);
                pointF = documentData.m;
                if (pointF == null) {
                    f2 = 0.0f;
                } else {
                    f2 = pointF.x;
                }
                listG0 = g0(str, f2, q24Var, fFloatValue2, f, true);
                i4 = 0;
                while (i4 < listG0.size()) {
                    dVar = (d) listG0.get(i4);
                    i5 = i2 + 1;
                    canvas.save();
                    if (f0(canvas, documentData, i5, dVar.b)) {
                        W(dVar.a, documentData, q24Var, canvas, fG, fFloatValue2, f, i);
                    }
                    canvas.restore();
                    i4++;
                    listG0 = listG0;
                    i2 = i5;
                    i3 = i3;
                }
                i3++;
            }
        }
        fFloatValue = ((Float) ab0Var2.h()).floatValue();
        f3 += fFloatValue;
        f = f3;
        i2 = -1;
        i3 = 0;
        while (i3 < size) {
            String str2 = (String) listB0.get(i3);
            pointF = documentData.m;
            if (pointF == null) {
                f2 = 0.0f;
            } else {
                f2 = pointF.x;
            }
            listG0 = g0(str2, f2, q24Var, fFloatValue2, f, true);
            i4 = 0;
            while (i4 < listG0.size()) {
                dVar = (d) listG0.get(i4);
                i5 = i2 + 1;
                canvas.save();
                if (f0(canvas, documentData, i5, dVar.b)) {
                    W(dVar.a, documentData, q24Var, canvas, fG, fFloatValue2, f, i);
                }
                canvas.restore();
                i4++;
                listG0 = listG0;
                i2 = i5;
                i3 = i3;
            }
            i3++;
        }
    }

    public final d Z(int i) {
        for (int size = this.L.size(); size < i; size++) {
            this.L.add(new d(null));
        }
        return (d) this.L.get(i - 1);
    }

    @Override
    public void a(RectF rectF, Matrix matrix, boolean z) {
        super.a(rectF, matrix, z);
        rectF.set(0.0f, 0.0f, this.O.b().width(), this.O.b().height());
    }

    public final List a0(t24 t24Var) {
        if (this.J.containsKey(t24Var)) {
            return (List) this.J.get(t24Var);
        }
        List listA = t24Var.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new cg1(this.N, this, (wf9) listA.get(i), this.O));
        }
        this.J.put(t24Var, arrayList);
        return arrayList;
    }

    public final List b0(String str) {
        return Arrays.asList(str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, StringUtils.CR).replaceAll("\u0003", StringUtils.CR).replaceAll("\n", StringUtils.CR).split(StringUtils.CR));
    }

    public final Typeface c0(q24 q24Var) {
        Typeface typeface;
        ab0 ab0Var = this.a0;
        if (ab0Var != null && (typeface = (Typeface) ab0Var.h()) != null) {
            return typeface;
        }
        Typeface typefaceG0 = this.N.g0(q24Var);
        return typefaceG0 != null ? typefaceG0 : q24Var.d();
    }

    public final boolean d0(int i) {
        int length = ((DocumentData) this.M.h()).a.length();
        ab0 ab0Var = this.b0;
        if (ab0Var == null || this.c0 == null) {
            return true;
        }
        int iMin = Math.min(((Integer) ab0Var.h()).intValue(), ((Integer) this.c0.h()).intValue());
        int iMax = Math.max(((Integer) this.b0.h()).intValue(), ((Integer) this.c0.h()).intValue());
        ab0 ab0Var2 = this.d0;
        if (ab0Var2 != null) {
            int iIntValue = ((Integer) ab0Var2.h()).intValue();
            iMin += iIntValue;
            iMax += iIntValue;
        }
        if (this.P == TextRangeUnits.INDEX) {
            return i >= iMin && i < iMax;
        }
        float f = (i / length) * 100.0f;
        return f >= ((float) iMin) && f < ((float) iMax);
    }

    public final boolean e0(int i) {
        return Character.getType(i) == 16 || Character.getType(i) == 27 || Character.getType(i) == 6 || Character.getType(i) == 28 || Character.getType(i) == 8 || Character.getType(i) == 19;
    }

    public final boolean f0(Canvas canvas, DocumentData documentData, int i, float f) {
        PointF pointF = documentData.l;
        PointF pointF2 = documentData.m;
        float fE = plb.e();
        float f2 = (i * documentData.f * fE) + (pointF == null ? 0.0f : (documentData.f * fE) + pointF.y);
        if (this.N.M() && pointF2 != null && pointF != null && f2 >= pointF.y + pointF2.y + documentData.c) {
            return false;
        }
        float f3 = pointF == null ? 0.0f : pointF.x;
        float f4 = pointF2 != null ? pointF2.x : 0.0f;
        int i2 = c.a[documentData.d.ordinal()];
        if (i2 == 1) {
            canvas.translate(f3, f2);
        } else if (i2 == 2) {
            canvas.translate((f3 + f4) - f, f2);
        } else if (i2 == 3) {
            canvas.translate((f3 + (f4 / 2.0f)) - (f / 2.0f), f2);
        }
        return true;
    }

    public final List g0(String str, float f, q24 q24Var, float f2, float f3, boolean z) {
        float fMeasureText;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (z) {
                t24 t24Var = (t24) this.O.c().get(t24.c(cCharAt, q24Var.a(), q24Var.c()));
                if (t24Var != null) {
                    fMeasureText = ((float) t24Var.b()) * f2 * plb.e();
                }
            } else {
                fMeasureText = this.H.measureText(str.substring(i4, i4 + 1));
            }
            float f7 = fMeasureText + f3;
            if (cCharAt == ' ') {
                z2 = true;
                f6 = f7;
            } else if (z2) {
                z2 = false;
                i3 = i4;
                f5 = f7;
            } else {
                f5 += f7;
            }
            f4 += f7;
            if (f > 0.0f && f4 >= f && cCharAt != ' ') {
                i++;
                d dVarZ = Z(i);
                if (i3 == i2) {
                    String strSubstring = str.substring(i2, i4);
                    String strTrim = strSubstring.trim();
                    dVarZ.c(strTrim, (f4 - f7) - ((strTrim.length() - strSubstring.length()) * f6));
                    i2 = i4;
                    i3 = i2;
                    f4 = f7;
                    f5 = f4;
                } else {
                    String strSubstring2 = str.substring(i2, i3 - 1);
                    String strTrim2 = strSubstring2.trim();
                    dVarZ.c(strTrim2, ((f4 - f5) - ((strSubstring2.length() - strTrim2.length()) * f6)) - f6);
                    f4 = f5;
                    i2 = i3;
                }
            }
        }
        if (f4 > 0.0f) {
            i++;
            Z(i).c(str.substring(i2), f4);
        }
        return this.L.subList(0, i);
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        super.h(obj, iu5Var);
        if (obj == it5.a) {
            ab0 ab0Var = this.R;
            if (ab0Var != null) {
                H(ab0Var);
            }
            if (iu5Var == null) {
                this.R = null;
                return;
            }
            hnb hnbVar = new hnb(iu5Var);
            this.R = hnbVar;
            hnbVar.a(this);
            i(this.R);
            return;
        }
        if (obj == it5.b) {
            ab0 ab0Var2 = this.T;
            if (ab0Var2 != null) {
                H(ab0Var2);
            }
            if (iu5Var == null) {
                this.T = null;
                return;
            }
            hnb hnbVar2 = new hnb(iu5Var);
            this.T = hnbVar2;
            hnbVar2.a(this);
            i(this.T);
            return;
        }
        if (obj == it5.s) {
            ab0 ab0Var3 = this.V;
            if (ab0Var3 != null) {
                H(ab0Var3);
            }
            if (iu5Var == null) {
                this.V = null;
                return;
            }
            hnb hnbVar3 = new hnb(iu5Var);
            this.V = hnbVar3;
            hnbVar3.a(this);
            i(this.V);
            return;
        }
        if (obj == it5.t) {
            ab0 ab0Var4 = this.X;
            if (ab0Var4 != null) {
                H(ab0Var4);
            }
            if (iu5Var == null) {
                this.X = null;
                return;
            }
            hnb hnbVar4 = new hnb(iu5Var);
            this.X = hnbVar4;
            hnbVar4.a(this);
            i(this.X);
            return;
        }
        if (obj == it5.F) {
            ab0 ab0Var5 = this.Z;
            if (ab0Var5 != null) {
                H(ab0Var5);
            }
            if (iu5Var == null) {
                this.Z = null;
                return;
            }
            hnb hnbVar5 = new hnb(iu5Var);
            this.Z = hnbVar5;
            hnbVar5.a(this);
            i(this.Z);
            return;
        }
        if (obj != it5.M) {
            if (obj == it5.O) {
                this.M.r(iu5Var);
                return;
            }
            return;
        }
        ab0 ab0Var6 = this.a0;
        if (ab0Var6 != null) {
            H(ab0Var6);
        }
        if (iu5Var == null) {
            this.a0 = null;
            return;
        }
        hnb hnbVar6 = new hnb(iu5Var);
        this.a0 = hnbVar6;
        hnbVar6.a(this);
        i(this.a0);
    }

    @Override
    public void t(Canvas canvas, Matrix matrix, int i) {
        DocumentData documentData = (DocumentData) this.M.h();
        q24 q24Var = (q24) this.O.g().get(documentData.b);
        if (q24Var == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Q(documentData, i, 0);
        if (this.N.B1()) {
            Y(documentData, matrix, q24Var, canvas, i);
        } else {
            X(documentData, q24Var, canvas, i);
        }
        canvas.restore();
    }

    public static class d {
        public String a;
        public float b;

        public d() {
            this.a = "";
            this.b = 0.0f;
        }

        public void c(String str, float f) {
            this.a = str;
            this.b = f;
        }

        public d(a aVar) {
            this();
        }
    }
}

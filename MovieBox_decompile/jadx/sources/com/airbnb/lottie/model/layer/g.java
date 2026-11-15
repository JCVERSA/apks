package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p4.o;
import p4.q;
import s4.k;
import s4.l;
import s4.m;

public class g extends com.airbnb.lottie.model.layer.a {
    private final StringBuilder E;
    private final RectF F;
    private final Matrix G;
    private final Paint H;
    private final Paint I;
    private final Map J;
    private final x K;
    private final List L;
    private final o M;
    private final LottieDrawable N;
    private final h O;
    private TextRangeUnits P;
    private p4.a Q;
    private p4.a R;
    private p4.a S;
    private p4.a T;
    private p4.a U;
    private p4.a V;
    private p4.a W;
    private p4.a X;
    private p4.a Y;
    private p4.a Z;

    private p4.a f17270a0;

    private p4.a f17271b0;

    private p4.a f17272c0;

    private p4.a f17273d0;

    class a extends Paint {
        a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    class b extends Paint {
        b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    static class c {

        static final int[] f17276a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f17276a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17276a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17276a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    g(LottieDrawable lottieDrawable, Layer layer) {
        l lVar;
        l lVar2;
        s4.d dVar;
        l lVar3;
        s4.d dVar2;
        l lVar4;
        s4.d dVar3;
        m mVar;
        s4.d dVar4;
        m mVar2;
        s4.b bVar;
        m mVar3;
        s4.b bVar2;
        m mVar4;
        s4.a aVar;
        m mVar5;
        s4.a aVar2;
        super(lottieDrawable, layer);
        this.E = new StringBuilder(2);
        this.F = new RectF();
        this.G = new Matrix();
        this.H = new a(1);
        this.I = new b(1);
        this.J = new HashMap();
        this.K = new x();
        this.L = new ArrayList();
        this.P = TextRangeUnits.INDEX;
        this.N = lottieDrawable;
        this.O = layer.c();
        o oVarA = layer.t().a();
        this.M = oVarA;
        oVarA.a(this);
        i(oVarA);
        k kVarU = layer.u();
        if (kVarU != null && (mVar5 = kVarU.f71529a) != null && (aVar2 = mVar5.f71535a) != null) {
            p4.a aVarA = aVar2.a();
            this.Q = aVarA;
            aVarA.a(this);
            i(this.Q);
        }
        if (kVarU != null && (mVar4 = kVarU.f71529a) != null && (aVar = mVar4.f71536b) != null) {
            p4.a aVarA2 = aVar.a();
            this.S = aVarA2;
            aVarA2.a(this);
            i(this.S);
        }
        if (kVarU != null && (mVar3 = kVarU.f71529a) != null && (bVar2 = mVar3.f71537c) != null) {
            p4.d dVarA = bVar2.a();
            this.U = dVarA;
            dVarA.a(this);
            i(this.U);
        }
        if (kVarU != null && (mVar2 = kVarU.f71529a) != null && (bVar = mVar2.f71538d) != null) {
            p4.d dVarA2 = bVar.a();
            this.W = dVarA2;
            dVarA2.a(this);
            i(this.W);
        }
        if (kVarU != null && (mVar = kVarU.f71529a) != null && (dVar4 = mVar.f71539e) != null) {
            p4.a aVarA3 = dVar4.a();
            this.Y = aVarA3;
            aVarA3.a(this);
            i(this.Y);
        }
        if (kVarU != null && (lVar4 = kVarU.f71530b) != null && (dVar3 = lVar4.f71531a) != null) {
            p4.a aVarA4 = dVar3.a();
            this.f17271b0 = aVarA4;
            aVarA4.a(this);
            i(this.f17271b0);
        }
        if (kVarU != null && (lVar3 = kVarU.f71530b) != null && (dVar2 = lVar3.f71532b) != null) {
            p4.a aVarA5 = dVar2.a();
            this.f17272c0 = aVarA5;
            aVarA5.a(this);
            i(this.f17272c0);
        }
        if (kVarU != null && (lVar2 = kVarU.f71530b) != null && (dVar = lVar2.f71533c) != null) {
            p4.a aVarA6 = dVar.a();
            this.f17273d0 = aVarA6;
            aVarA6.a(this);
            i(this.f17273d0);
        }
        if (kVarU == null || (lVar = kVarU.f71530b) == null) {
            return;
        }
        this.P = lVar.f71534d;
    }

    private String P(String str, int i10) {
        int iCodePointAt = str.codePointAt(i10);
        int iCharCount = Character.charCount(iCodePointAt) + i10;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!e0(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        long j10 = iCodePointAt;
        if (this.K.d(j10)) {
            return (String) this.K.e(j10);
        }
        this.E.setLength(0);
        while (i10 < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i10);
            this.E.appendCodePoint(iCodePointAt3);
            i10 += Character.charCount(iCodePointAt3);
        }
        String string = this.E.toString();
        this.K.k(j10, string);
        return string;
    }

    private void Q(DocumentData documentData, int i10, int i11) {
        p4.a aVar = this.R;
        if (aVar != null) {
            this.H.setColor(((Integer) aVar.h()).intValue());
        } else if (this.Q == null || !d0(i11)) {
            this.H.setColor(documentData.f17160h);
        } else {
            this.H.setColor(((Integer) this.Q.h()).intValue());
        }
        p4.a aVar2 = this.T;
        if (aVar2 != null) {
            this.I.setColor(((Integer) aVar2.h()).intValue());
        } else if (this.S == null || !d0(i11)) {
            this.I.setColor(documentData.f17161i);
        } else {
            this.I.setColor(((Integer) this.S.h()).intValue());
        }
        int iIntValue = 100;
        int iIntValue2 = this.f17264x.h() == null ? 100 : ((Integer) this.f17264x.h().h()).intValue();
        if (this.Y != null && d0(i11)) {
            iIntValue = ((Integer) this.Y.h()).intValue();
        }
        int iRound = Math.round(((((iIntValue2 * 255.0f) / 100.0f) * (iIntValue / 100.0f)) * i10) / 255.0f);
        this.H.setAlpha(iRound);
        this.I.setAlpha(iRound);
        p4.a aVar3 = this.V;
        if (aVar3 != null) {
            this.I.setStrokeWidth(((Float) aVar3.h()).floatValue());
        } else if (this.U == null || !d0(i11)) {
            this.I.setStrokeWidth(documentData.f17162j * x4.l.e());
        } else {
            this.I.setStrokeWidth(((Float) this.U.h()).floatValue());
        }
    }

    private void R(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void S(r4.c cVar, float f10, DocumentData documentData, Canvas canvas, int i10, int i11) {
        Q(documentData, i11, i10);
        List listA0 = a0(cVar);
        for (int i12 = 0; i12 < listA0.size(); i12++) {
            Path path = ((o4.d) listA0.get(i12)).getPath();
            path.computeBounds(this.F, false);
            this.G.reset();
            this.G.preTranslate(0.0f, (-documentData.f17159g) * x4.l.e());
            this.G.preScale(f10, f10);
            path.transform(this.G);
            if (documentData.f17163k) {
                V(path, this.H, canvas);
                V(path, this.I, canvas);
            } else {
                V(path, this.I, canvas);
                V(path, this.H, canvas);
            }
        }
    }

    private void T(String str, DocumentData documentData, Canvas canvas, int i10, int i11) {
        Q(documentData, i11, i10);
        if (documentData.f17163k) {
            R(str, this.H, canvas);
            R(str, this.I, canvas);
        } else {
            R(str, this.I, canvas);
            R(str, this.H, canvas);
        }
    }

    private void U(String str, DocumentData documentData, Canvas canvas, float f10, int i10, int i11) {
        int length = 0;
        while (length < str.length()) {
            String strP = P(str, length);
            T(strP, documentData, canvas, i10 + length, i11);
            canvas.translate(this.H.measureText(strP) + f10, 0.0f);
            length += strP.length();
        }
    }

    private void V(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void W(String str, DocumentData documentData, r4.b bVar, Canvas canvas, float f10, float f11, float f12, int i10) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            r4.c cVar = (r4.c) this.O.c().g(r4.c.c(str.charAt(i11), bVar.a(), bVar.c()));
            if (cVar != null) {
                S(cVar, f11, documentData, canvas, i11, i10);
                canvas.translate((((float) cVar.b()) * f11 * x4.l.e()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0089  */
    /* JADX WARN: Code duplicated, block: B:20:0x0094  */
    /* JADX WARN: Code duplicated, block: B:22:0x0097  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dc  */
    private void X(DocumentData documentData, r4.b bVar, Canvas canvas, int i10) {
        float fFloatValue;
        float fE;
        List listB0;
        int size;
        int i11;
        int i12;
        int length;
        PointF pointF;
        float f10;
        List listG0;
        int i13;
        d dVar;
        Typeface typefaceC0 = c0(bVar);
        if (typefaceC0 == null) {
            return;
        }
        String str = documentData.f17153a;
        this.N.f0();
        this.H.setTypeface(typefaceC0);
        p4.a aVar = this.Z;
        float fFloatValue2 = aVar != null ? ((Float) aVar.h()).floatValue() : documentData.f17155c;
        this.H.setTextSize(x4.l.e() * fFloatValue2);
        this.I.setTypeface(this.H.getTypeface());
        this.I.setTextSize(this.H.getTextSize());
        float f11 = documentData.f17157e / 10.0f;
        p4.a aVar2 = this.X;
        if (aVar2 == null) {
            p4.a aVar3 = this.W;
            if (aVar3 != null) {
                fFloatValue = ((Float) aVar3.h()).floatValue();
            }
            fE = ((f11 * x4.l.e()) * fFloatValue2) / 100.0f;
            listB0 = b0(str);
            size = listB0.size();
            i11 = -1;
            length = 0;
            for (i12 = 0; i12 < size; i12++) {
                String str2 = (String) listB0.get(i12);
                pointF = documentData.f17165m;
                if (pointF == null) {
                    f10 = 0.0f;
                } else {
                    f10 = pointF.x;
                }
                i13 = 0;
                for (listG0 = g0(str2, f10, bVar, 0.0f, fE, false); i13 < listG0.size(); listG0 = listG0) {
                    dVar = (d) listG0.get(i13);
                    i11++;
                    canvas.save();
                    if (f0(canvas, documentData, i11, dVar.f17278b)) {
                        U(dVar.f17277a, documentData, canvas, fE, length, i10);
                    }
                    length += dVar.f17277a.length();
                    canvas.restore();
                    i13++;
                }
            }
        }
        fFloatValue = ((Float) aVar2.h()).floatValue();
        f11 += fFloatValue;
        fE = ((f11 * x4.l.e()) * fFloatValue2) / 100.0f;
        listB0 = b0(str);
        size = listB0.size();
        i11 = -1;
        length = 0;
        while (i12 < size) {
            String str3 = (String) listB0.get(i12);
            pointF = documentData.f17165m;
            if (pointF == null) {
                f10 = 0.0f;
            } else {
                f10 = pointF.x;
            }
            i13 = 0;
            while (i13 < listG0.size()) {
                dVar = (d) listG0.get(i13);
                i11++;
                canvas.save();
                if (f0(canvas, documentData, i11, dVar.f17278b)) {
                    U(dVar.f17277a, documentData, canvas, fE, length, i10);
                }
                length += dVar.f17277a.length();
                canvas.restore();
                i13++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0055  */
    /* JADX WARN: Code duplicated, block: B:18:0x0060  */
    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0090  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ad  */
    private void Y(DocumentData documentData, Matrix matrix, r4.b bVar, Canvas canvas, int i10) {
        float fFloatValue;
        float f10;
        int i11;
        int i12;
        PointF pointF;
        float f11;
        List listG0;
        int i13;
        d dVar;
        int i14;
        p4.a aVar = this.Z;
        float fFloatValue2 = (aVar != null ? ((Float) aVar.h()).floatValue() : documentData.f17155c) / 100.0f;
        float fG = x4.l.g(matrix);
        List listB0 = b0(documentData.f17153a);
        int size = listB0.size();
        float f12 = documentData.f17157e / 10.0f;
        p4.a aVar2 = this.X;
        if (aVar2 == null) {
            p4.a aVar3 = this.W;
            if (aVar3 != null) {
                fFloatValue = ((Float) aVar3.h()).floatValue();
            }
            f10 = f12;
            i11 = -1;
            i12 = 0;
            while (i12 < size) {
                String str = (String) listB0.get(i12);
                pointF = documentData.f17165m;
                if (pointF == null) {
                    f11 = 0.0f;
                } else {
                    f11 = pointF.x;
                }
                listG0 = g0(str, f11, bVar, fFloatValue2, f10, true);
                i13 = 0;
                while (i13 < listG0.size()) {
                    dVar = (d) listG0.get(i13);
                    i14 = i11 + 1;
                    canvas.save();
                    if (f0(canvas, documentData, i14, dVar.f17278b)) {
                        W(dVar.f17277a, documentData, bVar, canvas, fG, fFloatValue2, f10, i10);
                    }
                    canvas.restore();
                    i13++;
                    listG0 = listG0;
                    i11 = i14;
                    i12 = i12;
                }
                i12++;
            }
        }
        fFloatValue = ((Float) aVar2.h()).floatValue();
        f12 += fFloatValue;
        f10 = f12;
        i11 = -1;
        i12 = 0;
        while (i12 < size) {
            String str2 = (String) listB0.get(i12);
            pointF = documentData.f17165m;
            if (pointF == null) {
                f11 = 0.0f;
            } else {
                f11 = pointF.x;
            }
            listG0 = g0(str2, f11, bVar, fFloatValue2, f10, true);
            i13 = 0;
            while (i13 < listG0.size()) {
                dVar = (d) listG0.get(i13);
                i14 = i11 + 1;
                canvas.save();
                if (f0(canvas, documentData, i14, dVar.f17278b)) {
                    W(dVar.f17277a, documentData, bVar, canvas, fG, fFloatValue2, f10, i10);
                }
                canvas.restore();
                i13++;
                listG0 = listG0;
                i11 = i14;
                i12 = i12;
            }
            i12++;
        }
    }

    private d Z(int i10) {
        for (int size = this.L.size(); size < i10; size++) {
            this.L.add(new d(null));
        }
        return (d) this.L.get(i10 - 1);
    }

    private List a0(r4.c cVar) {
        if (this.J.containsKey(cVar)) {
            return (List) this.J.get(cVar);
        }
        List listA = cVar.a();
        int size = listA.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new o4.d(this.N, this, (t4.k) listA.get(i10), this.O));
        }
        this.J.put(cVar, arrayList);
        return arrayList;
    }

    private List b0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private Typeface c0(r4.b bVar) {
        Typeface typeface;
        p4.a aVar = this.f17270a0;
        if (aVar != null && (typeface = (Typeface) aVar.h()) != null) {
            return typeface;
        }
        Typeface typefaceG0 = this.N.g0(bVar);
        return typefaceG0 != null ? typefaceG0 : bVar.d();
    }

    private boolean d0(int i10) {
        int length = ((DocumentData) this.M.h()).f17153a.length();
        p4.a aVar = this.f17271b0;
        if (aVar == null || this.f17272c0 == null) {
            return true;
        }
        int iMin = Math.min(((Integer) aVar.h()).intValue(), ((Integer) this.f17272c0.h()).intValue());
        int iMax = Math.max(((Integer) this.f17271b0.h()).intValue(), ((Integer) this.f17272c0.h()).intValue());
        p4.a aVar2 = this.f17273d0;
        if (aVar2 != null) {
            int iIntValue = ((Integer) aVar2.h()).intValue();
            iMin += iIntValue;
            iMax += iIntValue;
        }
        if (this.P == TextRangeUnits.INDEX) {
            return i10 >= iMin && i10 < iMax;
        }
        float f10 = (i10 / length) * 100.0f;
        return f10 >= ((float) iMin) && f10 < ((float) iMax);
    }

    private boolean e0(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 8 || Character.getType(i10) == 19;
    }

    private boolean f0(Canvas canvas, DocumentData documentData, int i10, float f10) {
        PointF pointF = documentData.f17164l;
        PointF pointF2 = documentData.f17165m;
        float fE = x4.l.e();
        float f11 = (i10 * documentData.f17158f * fE) + (pointF == null ? 0.0f : (documentData.f17158f * fE) + pointF.y);
        if (this.N.M() && pointF2 != null && pointF != null && f11 >= pointF.y + pointF2.y + documentData.f17155c) {
            return false;
        }
        float f12 = pointF == null ? 0.0f : pointF.x;
        float f13 = pointF2 != null ? pointF2.x : 0.0f;
        int i11 = c.f17276a[documentData.f17156d.ordinal()];
        if (i11 == 1) {
            canvas.translate(f12, f11);
        } else if (i11 == 2) {
            canvas.translate((f12 + f13) - f10, f11);
        } else if (i11 == 3) {
            canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f11);
        }
        return true;
    }

    private List g0(String str, float f10, r4.b bVar, float f11, float f12, boolean z10) {
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
                r4.c cVar = (r4.c) this.O.c().g(r4.c.c(cCharAt, bVar.a(), bVar.c()));
                if (cVar != null) {
                    fMeasureText = ((float) cVar.b()) * f11 * x4.l.e();
                }
            } else {
                fMeasureText = this.H.measureText(str.substring(i13, i13 + 1));
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
                d dVarZ = Z(i10);
                if (i12 == i11) {
                    String strSubstring = str.substring(i11, i13);
                    String strTrim = strSubstring.trim();
                    dVarZ.c(strTrim, (f13 - f16) - ((strTrim.length() - strSubstring.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    String strSubstring2 = str.substring(i11, i12 - 1);
                    String strTrim2 = strSubstring2.trim();
                    dVarZ.c(strTrim2, ((f13 - f14) - ((strSubstring2.length() - strTrim2.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            Z(i10).c(str.substring(i11), f13);
        }
        return this.L.subList(0, i10);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        super.d(obj, cVar);
        if (obj == p0.f17286a) {
            p4.a aVar = this.R;
            if (aVar != null) {
                H(aVar);
            }
            if (cVar == null) {
                this.R = null;
                return;
            }
            q qVar = new q(cVar);
            this.R = qVar;
            qVar.a(this);
            i(this.R);
            return;
        }
        if (obj == p0.f17287b) {
            p4.a aVar2 = this.T;
            if (aVar2 != null) {
                H(aVar2);
            }
            if (cVar == null) {
                this.T = null;
                return;
            }
            q qVar2 = new q(cVar);
            this.T = qVar2;
            qVar2.a(this);
            i(this.T);
            return;
        }
        if (obj == p0.f17304s) {
            p4.a aVar3 = this.V;
            if (aVar3 != null) {
                H(aVar3);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            q qVar3 = new q(cVar);
            this.V = qVar3;
            qVar3.a(this);
            i(this.V);
            return;
        }
        if (obj == p0.f17305t) {
            p4.a aVar4 = this.X;
            if (aVar4 != null) {
                H(aVar4);
            }
            if (cVar == null) {
                this.X = null;
                return;
            }
            q qVar4 = new q(cVar);
            this.X = qVar4;
            qVar4.a(this);
            i(this.X);
            return;
        }
        if (obj == p0.F) {
            p4.a aVar5 = this.Z;
            if (aVar5 != null) {
                H(aVar5);
            }
            if (cVar == null) {
                this.Z = null;
                return;
            }
            q qVar5 = new q(cVar);
            this.Z = qVar5;
            qVar5.a(this);
            i(this.Z);
            return;
        }
        if (obj != p0.M) {
            if (obj == p0.O) {
                this.M.r(cVar);
                return;
            }
            return;
        }
        p4.a aVar6 = this.f17270a0;
        if (aVar6 != null) {
            H(aVar6);
        }
        if (cVar == null) {
            this.f17270a0 = null;
            return;
        }
        q qVar6 = new q(cVar);
        this.f17270a0 = qVar6;
        qVar6.a(this);
        i(this.f17270a0);
    }

    @Override
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.O.b().width(), this.O.b().height());
    }

    @Override
    void t(Canvas canvas, Matrix matrix, int i10) {
        DocumentData documentData = (DocumentData) this.M.h();
        r4.b bVar = (r4.b) this.O.g().get(documentData.f17154b);
        if (bVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        Q(documentData, i10, 0);
        if (this.N.C1()) {
            Y(documentData, matrix, bVar, canvas, i10);
        } else {
            X(documentData, bVar, canvas, i10);
        }
        canvas.restore();
    }

    private static class d {

        private String f17277a;

        private float f17278b;

        private d() {
            this.f17277a = "";
            this.f17278b = 0.0f;
        }

        void c(String str, float f10) {
            this.f17277a = str;
            this.f17278b = f10;
        }

        d(a aVar) {
            this();
        }
    }
}

package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import java.util.ArrayList;

public class QV {
    public SparseArray<QU> A00 = new SparseArray<>();
    public int A01 = 0;

    private final long A00(long j, long j2) {
        if (j == 0) {
            return j2;
        }
        return ((j / 4) * 3) + (j2 / 4);
    }

    private QU A01(int i) {
        QU qu = this.A00.get(i);
        if (qu == null) {
            QU qu2 = new QU();
            this.A00.put(i, qu2);
            return qu2;
        }
        return qu;
    }

    private final void A02() {
        for (int i = 0; i < i; i++) {
            this.A00.valueAt(i).A03.clear();
        }
    }

    public final AbstractC1182Qg A03(int i) {
        QU qu = this.A00.get(i);
        if (qu != null && !qu.A03.isEmpty()) {
            ArrayList<AbstractC1182Qg> arrayList = qu.A03;
            return arrayList.remove(arrayList.size() - 1);
        }
        return null;
    }

    public final void A04() {
        this.A01--;
    }

    public final void A05(int i, long j) {
        QU quA01 = A01(i);
        quA01.A01 = A00(quA01.A01, j);
    }

    public final void A06(int i, long j) {
        QU quA01 = A01(i);
        quA01.A02 = A00(quA01.A02, j);
    }

    public final void A07(QC qc) {
        this.A01++;
    }

    public final void A08(QC qc, QC qc2, boolean z) {
        if (qc != null) {
            A04();
        }
        if (!z && this.A01 == 0) {
            A02();
        }
        if (qc2 != null) {
            A07(qc2);
        }
    }

    public final void A09(AbstractC1182Qg abstractC1182Qg) {
        int iA0N = abstractC1182Qg.A0N();
        ArrayList<AbstractC1182Qg> arrayList = A01(iA0N).A03;
        int i = this.A00.get(iA0N).A00;
        int viewType = arrayList.size();
        if (i <= viewType) {
            return;
        }
        abstractC1182Qg.A0W();
        arrayList.add(abstractC1182Qg);
    }

    public final boolean A0A(int i, long j, long j2) {
        long j3 = A01(i).A01;
        return j3 == 0 || j + j3 < j2;
    }

    public final boolean A0B(int i, long j, long j2) {
        long j3 = A01(i).A02;
        return j3 == 0 || j + j3 < j2;
    }
}

package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C2036k8 implements J7 {
    public static String[] A02 = {"HEj97KvUnOVi99GyCemBfj1IlRVMCYKa", "bKpF78P6yplIZiN4oLHJNmT5FnU1SEKu", "7Sc49g8U0pFUCwWrHEqt4gm3cHokAbZL", "cD1aak7SOkYBFQ5WYMuE6fCzYSMr5rzP", "nFSB3U7GisPQJq8UC8oIR6SGnDGaOjWF", "F8IIvOctPHFdHQL4x7ywQ6I9IFbldSVz", "cjwMlxT4uAsHz8zserTiMsrkd8r9G7hR", "hk7t5bmYHUtAqM49rcYSiap2RmT4cwS9"};
    public final List<Long> A00;
    public final List<List<C2263o2>> A01;

    public C2036k8(List<List<C2263o2>> list, List<Long> cueTimesUs) {
        this.A01 = list;
        this.A00 = cueTimesUs;
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        int iA0H = AbstractC06244a.A0H(this.A00, Long.valueOf(j), true, false);
        if (iA0H == -1) {
            return Collections.emptyList();
        }
        List<C2263o2> list = this.A01.get(iA0H);
        if (A02[7].charAt(14) == 'Q') {
            throw new RuntimeException();
        }
        A02[7] = "T22AU4Idz2xqABMljk02WspyVqHPQCmG";
        return list;
    }

    @Override
    public final long A7v(int i) {
        boolean z = true;
        C3M.A07(i >= 0);
        if (i >= this.A00.size()) {
            z = false;
        }
        C3M.A07(z);
        return this.A00.get(i).longValue();
    }

    @Override
    public final int A7w() {
        return this.A00.size();
    }

    @Override
    public final int A8S(long j) {
        int iA0G = AbstractC06244a.A0G(this.A00, Long.valueOf(j), false, false);
        int index = this.A00.size();
        if (iA0G < index) {
            return iA0G;
        }
        return -1;
    }
}

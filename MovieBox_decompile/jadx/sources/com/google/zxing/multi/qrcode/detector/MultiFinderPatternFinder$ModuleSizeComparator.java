package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.qrcode.detector.d;
import java.io.Serializable;
import java.util.Comparator;

final class MultiFinderPatternFinder$ModuleSizeComparator implements Comparator<d>, Serializable {
    private MultiFinderPatternFinder$ModuleSizeComparator() {
    }

    @Override
    public int compare(d dVar, d dVar2) {
        double dI = dVar2.i() - dVar.i();
        if (dI < 0.0d) {
            return -1;
        }
        return dI > 0.0d ? 1 : 0;
    }
}

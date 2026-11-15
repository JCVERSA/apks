package com.journeyapps.barcodescanner.camera;

import af.q;
import android.graphics.Rect;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class LegacyPreviewScalingStrategy extends PreviewScalingStrategy {
    public static q e(q qVar, q qVar2) {
        q qVarE;
        if (qVar2.b(qVar)) {
            while (true) {
                qVarE = qVar.e(2, 3);
                q qVarE2 = qVar.e(1, 2);
                if (!qVar2.b(qVarE2)) {
                    break;
                }
                qVar = qVarE2;
            }
            return qVar2.b(qVarE) ? qVarE : qVar;
        }
        do {
            q qVarE3 = qVar.e(3, 2);
            qVar = qVar.e(2, 1);
            if (qVar2.b(qVarE3)) {
                return qVarE3;
            }
        } while (!qVar2.b(qVar));
        return qVar;
    }

    @Override
    public q b(List list, final q qVar) {
        if (qVar == null) {
            return (q) list.get(0);
        }
        Collections.sort(list, new Comparator<q>() {
            @Override
            public int compare(q qVar2, q qVar3) {
                int i10 = LegacyPreviewScalingStrategy.e(qVar2, qVar).f336a - qVar2.f336a;
                int i11 = LegacyPreviewScalingStrategy.e(qVar3, qVar).f336a - qVar3.f336a;
                if (i10 == 0 && i11 == 0) {
                    return qVar2.compareTo(qVar3);
                }
                if (i10 == 0) {
                    return -1;
                }
                if (i11 == 0) {
                    return 1;
                }
                if (i10 < 0 && i11 < 0) {
                    return qVar2.compareTo(qVar3);
                }
                if (i10 <= 0 || i11 <= 0) {
                    return i10 < 0 ? -1 : 1;
                }
                return -qVar2.compareTo(qVar3);
            }
        });
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Viewfinder size: ");
        sb2.append(qVar);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Preview in order of preference: ");
        sb3.append(list);
        return (q) list.get(0);
    }

    @Override
    public Rect d(q qVar, q qVar2) {
        q qVarE = e(qVar, qVar2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Preview: ");
        sb2.append(qVar);
        sb2.append("; Scaled: ");
        sb2.append(qVarE);
        sb2.append("; Want: ");
        sb2.append(qVar2);
        int i10 = (qVarE.f336a - qVar2.f336a) / 2;
        int i11 = (qVarE.f337b - qVar2.f337b) / 2;
        return new Rect(-i10, -i11, qVarE.f336a - i10, qVarE.f337b - i11);
    }
}

package com.google.zxing.pdf417.decoder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

final class b {

    private final Map f32132a = new HashMap();

    b() {
    }

    int[] a() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map.Entry entry : this.f32132a.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > iIntValue) {
                iIntValue = ((Integer) entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add((Integer) entry.getKey());
            } else if (((Integer) entry.getValue()).intValue() == iIntValue) {
                arrayList.add((Integer) entry.getKey());
            }
        }
        return vd.a.b(arrayList);
    }

    void b(int i10) {
        Integer num = (Integer) this.f32132a.get(Integer.valueOf(i10));
        if (num == null) {
            num = 0;
        }
        this.f32132a.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() + 1));
    }
}

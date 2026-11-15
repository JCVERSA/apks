package org.apache.commons.text.similarity;

import java.util.HashMap;
import java.util.Map;

final class Counter {
    private Counter() {
    }

    public static Map<CharSequence, Integer> of(CharSequence[] charSequenceArr) {
        HashMap map = new HashMap();
        for (CharSequence charSequence : charSequenceArr) {
            int iIntValue = 1;
            if (map.containsKey(charSequence)) {
                iIntValue = 1 + ((Integer) map.get(charSequence)).intValue();
            }
            map.put(charSequence, Integer.valueOf(iIntValue));
        }
        return map;
    }
}

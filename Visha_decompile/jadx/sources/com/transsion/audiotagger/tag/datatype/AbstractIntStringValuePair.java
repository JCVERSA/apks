package com.transsion.audiotagger.tag.datatype;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

public class AbstractIntStringValuePair extends AbstractValuePair<Integer, String> {
    protected Integer key = null;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void createMaps() {
        for (Map.Entry entry : this.idToValue.entrySet()) {
            this.valueToId.put((V) ((String) entry.getValue()), (I) ((Integer) entry.getKey()));
        }
        this.valueList.addAll((Collection<? extends V>) this.idToValue.values());
        Collections.sort(this.valueList);
    }

    public Integer getIdForValue(String str) {
        return (Integer) this.valueToId.get(str);
    }

    public String getValueForId(int i) {
        return (String) this.idToValue.get(Integer.valueOf(i));
    }
}

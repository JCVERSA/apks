package com.transsion.audiotagger.tag.datatype;

import java.util.Collections;

public class AbstractStringStringValuePair extends AbstractValuePair<String, String> {
    protected String lkey = null;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void createMaps() {
        this.iterator = this.idToValue.keySet().iterator();
        while (this.iterator.hasNext()) {
            String str = (String) this.iterator.next();
            this.lkey = str;
            String str2 = (String) this.idToValue.get(str);
            this.value = str2;
            this.valueToId.put((V) str2, (I) this.lkey);
        }
        this.iterator = this.idToValue.keySet().iterator();
        while (this.iterator.hasNext()) {
            this.valueList.add((V) ((String) this.idToValue.get(this.iterator.next())));
        }
        Collections.sort(this.valueList);
    }

    public String getIdForValue(String str) {
        return (String) this.valueToId.get(str);
    }

    public String getValueForId(String str) {
        return (String) this.idToValue.get(str);
    }
}

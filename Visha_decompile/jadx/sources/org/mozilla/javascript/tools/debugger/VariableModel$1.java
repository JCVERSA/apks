package org.mozilla.javascript.tools.debugger;

import java.util.Comparator;

class VariableModel$1 implements Comparator<Object> {
    final d this$0;

    public VariableModel$1(d dVar) {
        this.this$0 = dVar;
    }

    @Override
    public int compare(Object obj, Object obj2) {
        if (obj instanceof String) {
            if (obj2 instanceof Integer) {
                return -1;
            }
            return ((String) obj).compareToIgnoreCase((String) obj2);
        }
        if (obj2 instanceof String) {
            return 1;
        }
        return ((Integer) obj).intValue() - ((Integer) obj2).intValue();
    }
}

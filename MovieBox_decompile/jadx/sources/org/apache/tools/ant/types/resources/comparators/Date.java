package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.types.t;

public class Date extends ResourceComparator {
    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        long jG = tVar.g() - tVar2.g();
        if (jG > 0) {
            return 1;
        }
        return jG < 0 ? -1 : 0;
    }
}

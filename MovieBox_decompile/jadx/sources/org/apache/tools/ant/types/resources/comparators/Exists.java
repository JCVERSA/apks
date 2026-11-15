package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.types.t;

public class Exists extends ResourceComparator {
    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        boolean zK = tVar.k();
        if (zK == tVar2.k()) {
            return 0;
        }
        return zK ? 1 : -1;
    }
}

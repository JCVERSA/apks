package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.types.t;

public class Type extends ResourceComparator {
    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        boolean zJ = tVar.j();
        if (zJ == tVar2.j()) {
            return 0;
        }
        return zJ ? 1 : -1;
    }
}

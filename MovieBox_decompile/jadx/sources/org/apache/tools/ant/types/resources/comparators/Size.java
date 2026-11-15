package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.types.t;

public class Size extends ResourceComparator {
    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        return (int) (tVar.i() - tVar2.i());
    }
}

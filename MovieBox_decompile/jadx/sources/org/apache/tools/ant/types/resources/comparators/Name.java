package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.types.t;

public class Name extends ResourceComparator {
    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        return tVar.getName().compareTo(tVar2.getName());
    }
}

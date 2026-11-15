package org.apache.tools.ant.types.resources.comparators;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.t;

public class Reverse extends ResourceComparator {
    private static final String ONE_NESTED = "You must not nest more than one ResourceComparator for reversal.";
    private ResourceComparator nested;

    public Reverse() {
    }

    public void add(ResourceComparator resourceComparator) {
        if (this.nested != null) {
            throw new BuildException(ONE_NESTED);
        }
        this.nested = resourceComparator;
    }

    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        ResourceComparator resourceComparator = this.nested;
        return (resourceComparator == null ? tVar.compareTo(tVar2) : resourceComparator.compare(tVar, tVar2)) * (-1);
    }

    public Reverse(ResourceComparator resourceComparator) {
        add(resourceComparator);
    }
}

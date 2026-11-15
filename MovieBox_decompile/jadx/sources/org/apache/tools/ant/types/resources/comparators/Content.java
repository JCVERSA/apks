package org.apache.tools.ant.types.resources.comparators;

import java.io.IOException;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.t;
import org.apache.tools.ant.util.o;

public class Content extends ResourceComparator {
    private boolean binary = true;

    public boolean isBinary() {
        return this.binary;
    }

    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        try {
            return o.b(tVar, tVar2, !this.binary);
        } catch (IOException e10) {
            throw new BuildException(e10);
        }
    }

    public void setBinary(boolean z10) {
        this.binary = z10;
    }
}

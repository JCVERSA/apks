package org.apache.tools.ant.types.resources.comparators;

import java.io.File;
import mz.c;
import org.apache.tools.ant.types.t;
import org.apache.tools.ant.util.d;

public class FileSystem extends ResourceComparator {
    private static final d FILE_UTILS = d.k();

    @Override
    protected int resourceCompare(t tVar, t tVar2) {
        File fileR = ((c) tVar).r();
        File fileR2 = ((c) tVar2).r();
        if (fileR.equals(fileR2)) {
            return 0;
        }
        d dVar = FILE_UTILS;
        if (dVar.n(fileR, fileR2)) {
            return -1;
        }
        return dVar.o(fileR.getAbsolutePath()).compareTo(dVar.o(fileR2.getAbsolutePath()));
    }
}

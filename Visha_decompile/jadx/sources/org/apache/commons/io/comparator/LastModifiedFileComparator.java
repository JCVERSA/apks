package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

public class LastModifiedFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> LASTMODIFIED_COMPARATOR;
    public static final Comparator<File> LASTMODIFIED_REVERSE;
    private static final long serialVersionUID = 7372168004395734046L;

    static {
        LastModifiedFileComparator lastModifiedFileComparator = new LastModifiedFileComparator();
        LASTMODIFIED_COMPARATOR = lastModifiedFileComparator;
        LASTMODIFIED_REVERSE = new ReverseComparator(lastModifiedFileComparator);
    }

    @Override
    public List sort(List list) {
        return super.sort((List<File>) list);
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public int compare(File file, File file2) {
        long jLastModified = file.lastModified() - file2.lastModified();
        if (jLastModified < 0) {
            return -1;
        }
        return jLastModified > 0 ? 1 : 0;
    }

    @Override
    public File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }
}

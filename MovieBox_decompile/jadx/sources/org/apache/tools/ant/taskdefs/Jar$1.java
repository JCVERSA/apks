package org.apache.tools.ant.taskdefs;

import java.util.Comparator;

final class Jar$1 implements Comparator {
    Jar$1() {
    }

    @Override
    public int compare(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof String)) {
            return ((String) obj2).length() - ((String) obj).length();
        }
        return 0;
    }
}

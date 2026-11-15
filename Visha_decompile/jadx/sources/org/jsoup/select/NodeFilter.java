package org.jsoup.select;

import org.jsoup.nodes.g;

public interface NodeFilter {

    public enum FilterResult {
        CONTINUE,
        SKIP_CHILDREN,
        SKIP_ENTIRELY,
        REMOVE,
        STOP
    }

    FilterResult a(g gVar, int i);

    FilterResult b(g gVar, int i);
}

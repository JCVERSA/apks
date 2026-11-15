package org.schabi.newpipe.extractor.search;

import defpackage.tl5;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;

public abstract class SearchExtractor extends tl5 {

    public static class NothingFoundException extends ExtractionException {
        public NothingFoundException(String str) {
            super(str);
        }
    }

    public SearchExtractor(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
    }

    public SearchQueryHandler u() {
        return (SearchQueryHandler) super.s();
    }

    public abstract List v();

    public String w() {
        return u().getSearchString();
    }

    public abstract String x();

    public abstract boolean y();
}

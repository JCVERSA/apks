package org.schabi.newpipe.extractor.search;

import defpackage.ok3;
import defpackage.tl5;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;

public class SearchInfo extends ListInfo<InfoItem> {
    private boolean isCorrectedSearch;
    private List<MetaInfo> metaInfo;
    private final String searchString;
    private String searchSuggestion;

    public SearchInfo(int i, SearchQueryHandler searchQueryHandler, String str) {
        super(i, searchQueryHandler, "Search");
        this.metaInfo = Collections.emptyList();
        this.searchString = str;
    }

    public static SearchInfo getInfo(StreamingService streamingService, SearchQueryHandler searchQueryHandler) throws IOException, ExtractionException {
        SearchExtractor searchExtractorP = streamingService.p(searchQueryHandler);
        searchExtractorP.b();
        return getInfo(searchExtractorP);
    }

    public static tl5.a getMoreItems(StreamingService streamingService, SearchQueryHandler searchQueryHandler, Page page) throws IOException, ExtractionException {
        return streamingService.p(searchQueryHandler).t(page);
    }

    public List<MetaInfo> getMetaInfo() {
        return this.metaInfo;
    }

    public String getSearchString() {
        return this.searchString;
    }

    public String getSearchSuggestion() {
        return this.searchSuggestion;
    }

    public boolean isCorrectedSearch() {
        return this.isCorrectedSearch;
    }

    public void setIsCorrectedSearch(boolean z) {
        this.isCorrectedSearch = z;
    }

    public void setMetaInfo(List<MetaInfo> list) {
        this.metaInfo = list;
    }

    public void setSearchSuggestion(String str) {
        this.searchSuggestion = str;
    }

    public static SearchInfo getInfo(SearchExtractor searchExtractor) throws IOException, ExtractionException {
        SearchInfo searchInfo = new SearchInfo(searchExtractor.n(), searchExtractor.u(), searchExtractor.w());
        try {
            searchInfo.setOriginalUrl(searchExtractor.l());
        } catch (Exception e) {
            searchInfo.addError(e);
        }
        try {
            searchInfo.setSearchSuggestion(searchExtractor.x());
        } catch (Exception e2) {
            searchInfo.addError(e2);
        }
        try {
            searchInfo.setIsCorrectedSearch(searchExtractor.y());
        } catch (Exception e3) {
            searchInfo.addError(e3);
        }
        try {
            searchInfo.setMetaInfo(searchExtractor.v());
        } catch (Exception e4) {
            searchInfo.addError(e4);
        }
        tl5.a aVarA = ok3.a(searchInfo, searchExtractor);
        searchInfo.setRelatedItems(aVarA.c());
        searchInfo.setNextPage(aVarA.d());
        return searchInfo;
    }
}

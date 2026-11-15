package com.transsion.search_pugc.widget;

import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import java.util.LinkedHashMap;
import java.util.Map;

public class BoundaryLinkedHashMap extends LinkedHashMap<String, UGCSearchSuggestData> {
    private static final int MAX_SIZE = 30;

    @Override
    protected boolean removeEldestEntry(Map.Entry<String, UGCSearchSuggestData> entry) {
        return size() > 30;
    }
}

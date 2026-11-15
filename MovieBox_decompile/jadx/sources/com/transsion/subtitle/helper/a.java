package com.transsion.subtitle.helper;

import java.util.HashSet;

public final class a implements cm.g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add("subtitle_language");
        hashSet.add("subtitle_search_opensub");
        hashSet.add("sa_show_no_subtitle_tips");
        return hashSet;
    }
}

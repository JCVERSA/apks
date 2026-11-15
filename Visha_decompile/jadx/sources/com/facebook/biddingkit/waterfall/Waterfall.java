package com.facebook.biddingkit.waterfall;

import com.facebook.biddingkit.gen.Bid;

public interface Waterfall {
    Waterfall createWaterfallCopy();

    Iterable<WaterfallEntry> entries();

    void insert(Bid bid);

    void insert(WaterfallEntry waterfallEntry);
}

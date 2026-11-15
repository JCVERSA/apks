package com.facebook.biddingkit.waterfall;

import androidx.annotation.Nullable;
import com.facebook.biddingkit.gen.Bid;

public interface WaterfallEntry {
    @Nullable
    Bid getBid();

    double getCPMCents();

    String getEntryName();
}

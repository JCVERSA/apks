package com.facebook.biddingkit.gen;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

public class biddingConstants {
    public static final String APPLOVIN_BIDDER = "APPLOVIN_BIDDER";
    public static final String CHARTBOOST_BIDDER = "CHARTBOOST_BIDDER";
    public static final String FACEBOOK_BIDDER = "FACEBOOK_BIDDER";
    public static final String REMOTE_BIDDER = "REMOTE_BIDDER";
    public static final String TAPJOY_BIDDER = "TAPJOY_BIDDER";
    private static final Map<String, String> localToRemoteName;
    private static final Map<String, String> remoteToLocalName;

    static {
        HashMap map = new HashMap();
        localToRemoteName = map;
        HashMap map2 = new HashMap();
        remoteToLocalName = map2;
        map.put(FACEBOOK_BIDDER, "facebook");
        map2.put("facebook", FACEBOOK_BIDDER);
        map.put(APPLOVIN_BIDDER, "applovin");
        map2.put("applovin", APPLOVIN_BIDDER);
        map.put(TAPJOY_BIDDER, "tapjoy");
        map2.put("tapjoy", TAPJOY_BIDDER);
    }

    @Nullable
    public static String bidderNameFromRemoteName(String str) {
        return remoteToLocalName.get(str);
    }

    public static boolean isBidder(String str) {
        return FACEBOOK_BIDDER.equals(str) || APPLOVIN_BIDDER.equals(str) || TAPJOY_BIDDER.equals(str) || CHARTBOOST_BIDDER.equals(str);
    }

    @Nullable
    public static String remoteNameFromBidderName(String str) {
        return localToRemoteName.get(str);
    }
}

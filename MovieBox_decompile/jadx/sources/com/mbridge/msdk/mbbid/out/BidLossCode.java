package com.mbridge.msdk.mbbid.out;

public class BidLossCode {

    private static int f35389a;

    private BidLossCode(int i10) {
        f35389a = i10;
    }

    public static BidLossCode bidPriceNotHighest() {
        return new BidLossCode(102);
    }

    public static BidLossCode bidTimeOut() {
        return new BidLossCode(2);
    }

    public static BidLossCode bidWinButNotShow() {
        return new BidLossCode(3001);
    }

    public int getCurrentCode() {
        return f35389a;
    }
}

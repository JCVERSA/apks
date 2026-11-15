package com.facebook.biddingkit.tapjoy;

import android.text.TextUtils;
import com.facebook.biddingkit.bidders.LossCode;
import com.facebook.biddingkit.bidders.Notifier;
import com.facebook.biddingkit.http.client.HttpResponse;
import com.facebook.biddingkit.http.util.RequestSender;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;

class TapjoyNotifier implements Notifier {
    private static final String AUCTION_ID = "${AUCTION_ID}";
    private static final String AUCTION_LOSS_CODE = "${AUCTION_LOSS}";
    private static final String AUCTION_PRICE = "${AUCTION_PRICE}";
    private static final String TAG = "TapjoyNotifier";
    private final int DEFAULT_TIMEOUT_MS = 2000;
    private String mAuctionID;
    private TapjoyBid mBid;

    public TapjoyNotifier(String str) {
        this.mAuctionID = str;
    }

    private int getTimeout() {
        return 2000;
    }

    @Override
    public void notifyBidderWinner(String str, Waterfall waterfall) {
    }

    @Override
    public void notifyDisplayWinner(String str, WaterfallEntry waterfallEntry) {
        String strProcessUrl = processUrl(waterfallEntry);
        if (TextUtils.isEmpty(strProcessUrl)) {
            return;
        }
        HttpResponse httpResponse = RequestSender.get(strProcessUrl, getTimeout());
        StringBuilder sb = new StringBuilder();
        sb.append("Tapjoy notified with http status ");
        sb.append(httpResponse == null ? "null" : String.valueOf(httpResponse.getStatus()));
        BkLog.d(TAG, sb.toString());
    }

    public String processUrl(WaterfallEntry waterfallEntry) {
        if (this.mBid == null) {
            return "";
        }
        return ((waterfallEntry == null || !TapjoyBidder.NAME.equals(waterfallEntry.getEntryName())) ? this.mBid.getLurl().replace(AUCTION_LOSS_CODE, LossCode.OUTBID.getStringValue()) : this.mBid.getNurl()).replace(AUCTION_PRICE, Double.toString(waterfallEntry.getCPMCents() / 100.0d)).replace(AUCTION_ID, this.mAuctionID);
    }

    public void setBid(TapjoyBid tapjoyBid) {
        this.mBid = tapjoyBid;
    }
}

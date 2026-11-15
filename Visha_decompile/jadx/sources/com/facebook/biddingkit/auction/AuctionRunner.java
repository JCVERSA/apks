package com.facebook.biddingkit.auction;

import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.facebook.biddingkit.bidders.Bidder;
import com.facebook.biddingkit.bidders.InternalAuctionBidderWithNotifier;
import com.facebook.biddingkit.gen.Bid;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.logging.EventLog;
import com.facebook.biddingkit.utils.MultiAsyncTaskExecutor;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

class AuctionRunner {
    private static final String TAG = "AuctionRunner";

    public static void addErrorEventLog(EventLog eventLog, String str, String str2, String str3) {
        eventLog.addError(str2, str3);
        addExtraData(eventLog, str, str2, "error");
        BkLog.d(TAG, str2 + " failed to get bid.");
    }

    public static void addExceptionEventLog(EventLog eventLog, String str, String str2, Exception exc) {
        eventLog.addError(str2, exc.getMessage());
        addExtraData(eventLog, str, str2, "error");
        BkLog.e(TAG, str2 + " failed to get bid. Got exception", exc);
    }

    public static void addExtraData(EventLog eventLog, String str, String str2, String str3) {
        eventLog.addAuctionId(str);
        eventLog.addResultData(str2, str3);
    }

    public static void addSuccessEventLog(EventLog eventLog, String str, String str2, double d, long j) {
        eventLog.addCpmCentsData(str2, d);
        eventLog.addLatencyMs(str2, j);
        addExtraData(eventLog, str, str2, "success");
        BkLog.d(TAG, str2 + " succeeded to get a bid. CPM cents: " + d);
    }

    public static void addTimeoutEventLog(EventLog eventLog, String str, String str2) {
        addExtraData(eventLog, str, str2, "timeout");
        BkLog.d(TAG, str2 + " timed out while getting a bid.");
    }

    public static List<Bid> getBids(String str, List<Bidder> list, AuctionConfig auctionConfig) {
        Collections.shuffle(list);
        return getBidsFromFuture(getPendingBiddingRequestsMap(list, str, auctionConfig), str);
    }

    @WorkerThread
    private static List<Bid> getBidsFromFuture(HashMap<Bidder, Future<Pair<Bid, Long>>> map, String str) {
        LinkedList linkedList = new LinkedList();
        EventLog eventLog = new EventLog();
        for (Map.Entry<Bidder, Future<Pair<Bid, Long>>> entry : map.entrySet()) {
            Bidder key = entry.getKey();
            Future<Pair<Bid, Long>> value = entry.getValue();
            if (value.isDone()) {
                try {
                    Bid bid = (Bid) value.get().first;
                    if (bid != null) {
                        linkedList.add(bid);
                        addSuccessEventLog(eventLog, str, key.getBidderName(), bid.getPrice(), ((Long) value.get().second).longValue());
                    } else {
                        addErrorEventLog(eventLog, str, key.getBidderName(), "No bid");
                    }
                } catch (Exception e) {
                    addExceptionEventLog(eventLog, str, key.getBidderName(), e);
                }
            } else {
                addTimeoutEventLog(eventLog, str, key.getBidderName());
                value.cancel(true);
            }
        }
        eventLog.saveEvent();
        return linkedList;
    }

    private static HashMap<Bidder, Future<Pair<Bid, Long>>> getPendingBiddingRequestsMap(List<Bidder> list, final String str, AuctionConfig auctionConfig) {
        HashMap<Bidder, Future<Pair<Bid, Long>>> map = new HashMap<>();
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        for (final Bidder bidder : list) {
            map.put(bidder, MultiAsyncTaskExecutor.SCHEDULED_EXECUTOR.submit(new Callable<Pair<Bid, Long>>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Pair<Bid, Long> call() {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    Bidder bidder2 = bidder;
                    if (!(bidder2 instanceof InternalAuctionBidderWithNotifier)) {
                        return null;
                    }
                    Bid bidRequestBid = ((InternalAuctionBidderWithNotifier) bidder2).requestBid(str);
                    countDownLatch.countDown();
                    return new Pair<>(bidRequestBid, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                }
            }));
        }
        try {
            countDownLatch.await(auctionConfig.getTimeoutMs(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            BkLog.d(TAG, "Auction ID: " + str + " timed out after " + auctionConfig.getTimeoutMs() + "ms");
        }
        return map;
    }
}

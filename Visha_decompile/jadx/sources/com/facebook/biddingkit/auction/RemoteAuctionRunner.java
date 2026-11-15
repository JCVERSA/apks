package com.facebook.biddingkit.auction;

import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.logging.EventLog;
import com.facebook.biddingkit.remote.RemoteAuctionResult;
import com.facebook.biddingkit.remote.RemoteBid;
import com.facebook.biddingkit.remote.RemoteBidder;
import com.facebook.biddingkit.utils.MultiAsyncTaskExecutor;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class RemoteAuctionRunner extends AuctionRunner {
    private static final String TAG = "RemoteAuctionRunner";

    public static List<RemoteBid> getRemoteBids(final String str, final RemoteBidder remoteBidder, AuctionConfig auctionConfig) {
        RemoteAuctionResult remoteAuctionResult;
        Future futureSubmit = MultiAsyncTaskExecutor.SCHEDULED_EXECUTOR.submit(new Callable<RemoteAuctionResult>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public RemoteAuctionResult call() {
                return remoteBidder.requestBids(str);
            }
        });
        EventLog eventLog = new EventLog();
        try {
            remoteAuctionResult = (RemoteAuctionResult) futureSubmit.get(auctionConfig.getTimeoutMs(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException e) {
            BkLog.e(TAG, "An exception occurred when requesting remote bids for auction " + str, e);
            AuctionRunner.addExceptionEventLog(eventLog, str, remoteBidder.getBidderName(), e);
            remoteAuctionResult = null;
        } catch (TimeoutException unused) {
            futureSubmit.cancel(true);
            AuctionRunner.addTimeoutEventLog(eventLog, str, remoteBidder.getBidderName());
            BkLog.d(TAG, "Auction ID: " + str + " timed out after " + auctionConfig.getTimeoutMs() + "ms");
            remoteAuctionResult = null;
        }
        RemoteAuctionResult remoteAuctionResult2 = remoteAuctionResult;
        if (remoteAuctionResult2 == null) {
            eventLog.saveEvent();
            return new LinkedList();
        }
        for (RemoteBid remoteBid : remoteAuctionResult2.getBids()) {
            AuctionRunner.addSuccessEventLog(eventLog, str, remoteBid.getBidderName(), remoteBid.getPrice(), remoteAuctionResult2.getLatency());
        }
        eventLog.saveEvent();
        return remoteAuctionResult2.getBids();
    }
}

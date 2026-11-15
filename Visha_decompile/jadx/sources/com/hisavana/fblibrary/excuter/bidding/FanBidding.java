package com.hisavana.fblibrary.excuter.bidding;

import android.content.Context;
import android.os.Looper;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.facebook.biddingkit.bidders.BidResponseCallback;
import com.facebook.biddingkit.bidders.BidderWithNotifier;
import com.facebook.biddingkit.facebook.bidder.FacebookBidder;
import com.facebook.biddingkit.gen.BidWithNotification;
import com.facebook.biddingkit.gen.FacebookAdBidFormat;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBidWithNotify;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import java.util.ArrayList;

public class FanBidding extends BaseQueryPrice {
    public int a;

    public static class BidWithNotify implements IBidWithNotify {
        public final BidWithNotification a;
        public boolean b = false;
        public long c = System.currentTimeMillis();

        public BidWithNotify(BidWithNotification bidWithNotification) {
            this.a = bidWithNotification;
        }

        @Override
        public String getPayload() {
            BidWithNotification bidWithNotification = this.a;
            if (bidWithNotification != null) {
                return bidWithNotification.getPayload();
            }
            return null;
        }

        @Override
        public boolean isExpired() {
            return Math.abs(System.currentTimeMillis() - this.c) > ((long) ComConstants.BID_PRICE_CACHE_TIME);
        }

        @Override
        public void notifyLoss() {
            if (this.b) {
                return;
            }
            AdLogUtil.Log().d("FanBidding", "notify fan bidding failed");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public void run() {
                        if (BidWithNotify.this.a != null) {
                            BidWithNotify.this.a.notifyLoss();
                        }
                    }
                });
                return;
            }
            BidWithNotification bidWithNotification = this.a;
            if (bidWithNotification != null) {
                bidWithNotification.notifyLoss();
            }
        }

        @Override
        public void notifyWin() {
            AdLogUtil.Log().d("FanBidding", "notify fan bidding win");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public void run() {
                        if (BidWithNotify.this.a != null) {
                            BidWithNotify.this.a.notifyWin();
                        }
                        BidWithNotify.this.b = true;
                    }
                });
                return;
            }
            BidWithNotification bidWithNotification = this.a;
            if (bidWithNotification != null) {
                bidWithNotification.notifyWin();
                this.b = true;
            }
        }
    }

    public class a implements BidResponseCallback {
        public final Network a;
        public final long b;

        public class C0119a implements Preconditions.a {
            public C0119a() {
            }

            @Override
            public void onRun() {
                if (((BaseQueryPrice) FanBidding.this).mQueryPriceListener != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a.this.a);
                    ((BaseQueryPrice) FanBidding.this).mQueryPriceListener.onQueryPriceSuccess(arrayList);
                }
            }
        }

        public class b implements Preconditions.a {
            public b() {
            }

            @Override
            public void onRun() {
                if (((BaseQueryPrice) FanBidding.this).mQueryPriceListener != null) {
                    ((BaseQueryPrice) FanBidding.this).mQueryPriceListener.onQueryPriceFailed();
                }
            }
        }

        public a(Network network, long j) {
            this.a = network;
            this.b = j;
        }

        @Override
        public void handleBidResponse(BidWithNotification bidWithNotification) {
            if (bidWithNotification == null || this.a == null) {
                return;
            }
            double price = bidWithNotification.getPrice();
            FanBidding.this.trackingBiddingSuccess(price);
            this.a.setPrice(Double.valueOf(price));
            this.a.setBidInfo(new BidWithNotify(bidWithNotification));
            AdLogUtil.Log().d("FanBidding", "*----> fan bidding success ---,price is:" + price + ",id:" + this.a.getCodeSeatId());
            Preconditions.d(new C0119a());
        }

        @Override
        public void handleBidResponseFailure(String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.b;
            AdLogUtil.Log().d("FanBidding", "*----> bidding request fail --- :" + str + ",time use:" + jCurrentTimeMillis);
            if (this.a == null) {
                return;
            }
            FanBidding.this.trackingBiddingFailed(TAdErrorCode.CODE_REQUEST_BIDDING_FAILED, str);
            Preconditions.d(new b());
        }
    }

    public final FacebookAdBidFormat a(int i) {
        if (i == 0) {
            return FacebookAdBidFormat.BANNER_HEIGHT_50;
        }
        if (i == 3 || i == 1) {
            return FacebookAdBidFormat.BANNER_HEIGHT_90;
        }
        if (i == 2) {
            return FacebookAdBidFormat.BANNER_HEIGHT_250;
        }
        return null;
    }

    public final void c(Network network, FacebookAdBidFormat facebookAdBidFormat) {
        AdLogUtil.Log().d("FanBidding", "fbtoken is : " + ComConstants.fbBidToken);
        BidderWithNotifier bidderWithNotifierBuildWithNotifier = new FacebookBidder.Builder(network.getApplicationId(), network.getCodeSeatId(), facebookAdBidFormat, ComConstants.fbBidToken).setTestMode(ExistsCheck.isIsTestDevice()).buildWithNotifier();
        long jCurrentTimeMillis = System.currentTimeMillis();
        trackingBiddingStart();
        bidderWithNotifierBuildWithNotifier.retrieveBidWithNotificationCompleted(new a(network, jCurrentTimeMillis));
    }

    @Override
    public void destroy() {
        this.mQueryPriceListener = null;
    }

    @Override
    public void queryPrice(Context context, final Network network) {
        final FacebookAdBidFormat facebookAdBidFormatA;
        if (network == null) {
            return;
        }
        int adt = network.getAdt();
        if (adt == 1) {
            facebookAdBidFormatA = FacebookAdBidFormat.NATIVE;
        } else if (adt == 2) {
            facebookAdBidFormatA = a(this.a);
        } else if (adt == 3) {
            facebookAdBidFormatA = FacebookAdBidFormat.INTERSTITIAL;
        } else if (adt == 5) {
            facebookAdBidFormatA = FacebookAdBidFormat.REWARDED_VIDEO;
        } else {
            if (adt != 10) {
                network.setPrice(Double.valueOf(0.0d));
                QueryPriceListener queryPriceListener = this.mQueryPriceListener;
                if (queryPriceListener != null) {
                    queryPriceListener.onQueryPriceFailed();
                    return;
                }
                return;
            }
            facebookAdBidFormatA = FacebookAdBidFormat.NATIVE_BANNER;
        }
        ExistsCheck.takeFbBidToken(context, new ExistsCheck.a() {
            @Override
            public final void a() {
                this.a.c(network, facebookAdBidFormatA);
            }
        });
    }

    @Override
    public void setBannerSize(int i) {
        this.a = i;
    }
}

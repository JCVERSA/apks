package com.hisavana.mintegral.bidding;

import android.content.Context;
import android.os.Looper;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBidWithNotify;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.check.MBridgeSDKManager;
import com.mbridge.msdk.mbbid.out.BannerBidRequestParams;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidLossCode;
import com.mbridge.msdk.mbbid.out.BidManager;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.mbbid.out.SplashBidRequestParams;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;

public class MintegralBidding extends BaseQueryPrice {

    private int f32457a;

    int f32458b;

    int f32459c;

    class AnonymousClass2 implements BidListennning {

        final long f32463a;

        final Network f32464b;

        AnonymousClass2(long j10, Network network) {
            this.f32463a = j10;
            this.f32464b = network;
        }

        public void c() {
            if (((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener != null) {
                ((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener.onQueryPriceFailed();
            }
        }

        public void d(Network network) {
            if (((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(network);
                ((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener.onQueryPriceSuccess(arrayList);
            }
        }

        @Override
        public void onFailed(String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f32463a;
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*---->mintegral bidding request fail --- : " + this.f32464b.getCodeSeatId() + " | " + str + ",time use:" + jCurrentTimeMillis);
            if (this.f32464b == null) {
                return;
            }
            MintegralBidding.this.trackingBiddingFailed(TAdErrorCode.CODE_REQUEST_BIDDING_FAILED, str);
            Preconditions.d(new Preconditions.a() {
                @Override
                public final void onRun() {
                    this.f32471a.c();
                }
            });
        }

        @Override
        public void onSuccessed(BidResponsed bidResponsed) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f32463a;
            if (bidResponsed == null || this.f32464b == null) {
                return;
            }
            Double dValueOf = Double.valueOf(0.0d);
            try {
                dValueOf = Double.valueOf(Double.parseDouble(bidResponsed.getPrice()) * 100.0d);
            } catch (Exception unused) {
                AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "*----> mintegral bidding success ---,price is:" + dValueOf + ",id:" + this.f32464b.getCodeSeatId() + ",time use:" + jCurrentTimeMillis);
            }
            MintegralBidding.this.trackingBiddingSuccess(dValueOf.doubleValue());
            this.f32464b.setPrice(dValueOf);
            this.f32464b.setBidInfo(new BidWithNotify(bidResponsed));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*----> mintegral bidding success ---,price is:" + dValueOf + ",id:" + this.f32464b.getCodeSeatId());
            final Network network = this.f32464b;
            Preconditions.d(new Preconditions.a() {
                @Override
                public final void onRun() {
                    this.f32469a.d(network);
                }
            });
        }
    }

    static class BidWithNotify implements IBidWithNotify {

        private final BidResponsed f32466a;

        private boolean f32467b = false;

        private long f32468c = System.currentTimeMillis();

        BidWithNotify(BidResponsed bidResponsed) {
            this.f32466a = bidResponsed;
        }

        public void c() {
            this.f32466a.sendLossNotice(e.a(), BidLossCode.bidPriceNotHighest());
        }

        public void d() {
            this.f32466a.sendWinNotice(e.a());
            this.f32467b = true;
        }

        @Override
        public String getPayload() {
            if (this.f32466a == null) {
                return "";
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "mintegral getPayload" + this.f32466a.getBidToken());
            return this.f32466a.getBidToken();
        }

        @Override
        public boolean isExpired() {
            return Math.abs(System.currentTimeMillis() - this.f32468c) > ((long) ComConstants.BID_PRICE_CACHE_TIME);
        }

        @Override
        public void notifyLoss() {
            if (this.f32467b || this.f32466a == null) {
                return;
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "notify mintegral bidding failed");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f22503a.g(new Runnable() {
                    @Override
                    public final void run() {
                        this.f32472a.c();
                    }
                });
            } else {
                this.f32466a.sendLossNotice(e.a(), BidLossCode.bidPriceNotHighest());
            }
        }

        @Override
        public void notifyWin() {
            if (this.f32466a == null) {
                return;
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "notify mintegral bidding win");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f22503a.g(new Runnable() {
                    @Override
                    public final void run() {
                        this.f32473a.d();
                    }
                });
            } else {
                this.f32466a.sendWinNotice(e.a());
                this.f32467b = true;
            }
        }
    }

    private void b() {
        int i10 = this.f32457a;
        if (i10 == 1) {
            this.f32458b = 100;
            this.f32459c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else if (i10 == 2) {
            this.f32458b = 250;
            this.f32459c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else if (i10 != 3) {
            this.f32458b = 50;
            this.f32459c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else {
            this.f32458b = 90;
            this.f32459c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        }
    }

    @Override
    public void destroy() {
        this.mQueryPriceListener = null;
    }

    @Override
    public void queryPrice(Context context, final Network network) {
        if (network == null || context == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ExistsCheck.initAdSource(network.getApplicationId(), network.getApplicationKey(), new MBridgeSDKManager.MBridgeSDKInitializeListener() {
            @Override
            public void onInitializeFailure(String str) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "init onError message：" + str);
            }

            @Override
            public void onInitializeSuccess(String str, String str2) {
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onInitializeSuccess，init time " + jCurrentTimeMillis2);
                MintegralBidding.this.startQueryPrice(network);
            }
        });
    }

    @Override
    public void setBannerSize(int i10) {
        this.f32457a = i10;
    }

    public void startQueryPrice(Network network) {
        BidManager bidManager;
        if (network == null) {
            return;
        }
        int adt = network.getAdt();
        if (adt == 2) {
            b();
            bidManager = new BidManager(new BannerBidRequestParams("", network.getCodeSeatId(), this.f32459c, this.f32458b));
        } else if (adt != 4) {
            bidManager = new BidManager("", network.getCodeSeatId());
        } else {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*---->mintegral bidding getOrientation() --- :" + getOrientation());
            bidManager = new BidManager(new SplashBidRequestParams("", network.getCodeSeatId(), true, getOrientation(), 30, 30));
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        trackingBiddingStart();
        bidManager.setBidListener(new AnonymousClass2(jCurrentTimeMillis, network));
        bidManager.bid();
    }
}

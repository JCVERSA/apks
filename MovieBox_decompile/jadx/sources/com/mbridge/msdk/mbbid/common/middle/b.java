package com.mbridge.msdk.mbbid.common.middle;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.lang.reflect.Method;

public class b {

    private String f35370a;

    private String f35371b;

    private String f35372c;

    private BidListennning f35374e;

    private BidResponsedEx f35375f;

    private int f35376g;

    private long f35378i;

    private long f35379j;

    private boolean f35380k;

    private int f35381l;

    private boolean f35377h = false;

    private Context f35373d = com.mbridge.msdk.foundation.controller.c.m().d();

    public b(String str, String str2, String str3) {
        this.f35370a = str;
        this.f35371b = str2;
        this.f35372c = str3;
    }

    public void b(boolean z10) {
        this.f35380k = z10;
    }

    public void b(int i10) {
        this.f35381l = i10;
    }

    class a extends com.mbridge.msdk.mbbid.common.middle.a {

        final String f35382b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, String str2, String str3) {
            super(str, str2);
            this.f35382b = str3;
        }

        @Override
        public void a(BidResponsedEx bidResponsedEx) {
            b.this.f35377h = false;
            b.this.f35375f = bidResponsedEx;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f35373d, b.this.f35371b, bidResponsedEx.getBidId(), this.f35382b, bidResponsedEx.getBidToken());
            b.this.a(bidResponsedEx);
        }

        @Override
        public void a(int i10, String str) {
            b.this.f35377h = false;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f35373d, b.this.f35371b, str, this.f35382b);
            b.this.a(str);
        }
    }

    public void b(long j10) {
        this.f35379j = j10;
    }

    public void a(int i10) {
        this.f35376g = i10;
    }

    public void a(long j10) {
        this.f35378i = j10;
    }

    public void a(boolean z10) {
        try {
            if (!this.f35377h) {
                this.f35377h = true;
                if (this.f35373d == null) {
                    a("context is null");
                }
                com.mbridge.msdk.mbbid.common.net.a aVar = new com.mbridge.msdk.mbbid.common.net.a(this.f35373d);
                e eVar = new e();
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                eVar.a("app_id", strB);
                eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(strB + com.mbridge.msdk.foundation.controller.c.m().c()));
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f35371b);
                if (TextUtils.isEmpty(this.f35370a)) {
                    this.f35370a = "";
                }
                eVar.a("placement_id", this.f35370a);
                if (com.mbridge.msdk.util.b.a()) {
                    eVar.a("install_ids", c.a());
                }
                eVar.a("bid_floor", this.f35372c);
                eVar.a(e.f34669h, t0.a(this.f35373d, this.f35371b));
                eVar.a(e.f34668g, com.mbridge.msdk.foundation.same.buffer.b.a(this.f35371b, ""));
                String str = "1";
                eVar.a("req_type", this.f35380k ? "1" : "2");
                eVar.a("orientation", k0.F(this.f35373d) + "");
                int i10 = this.f35376g;
                if (i10 == 296) {
                    if (this.f35378i > 0 && this.f35379j > 0) {
                        eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f35379j + "x" + this.f35378i);
                        try {
                            int i11 = BannerUtils.f35316a;
                            Method method = BannerUtils.class.getMethod("getCloseIds", String.class);
                            if (method.invoke(null, this.f35371b) instanceof String) {
                                eVar.a("close_id", method.invoke(null, this.f35371b).toString());
                            }
                        } catch (Exception unused) {
                            a("banner module is miss");
                            return;
                        }
                    } else {
                        a("bid required param is missing or error");
                        return;
                    }
                } else if (i10 == 297) {
                    if (this.f35378i > 0 && this.f35379j > 0) {
                        eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f35379j + "x" + this.f35378i);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.f35381l);
                        sb2.append("");
                        eVar.a("orientation", sb2.toString());
                    } else {
                        a("ad display area is too small");
                        return;
                    }
                } else if (i10 != 298) {
                    if (!z10) {
                        str = "0";
                    }
                    eVar.a("rw_plus", str);
                } else if (this.f35378i > 0 && this.f35379j > 0) {
                    eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f35379j + "x" + this.f35378i);
                } else {
                    a("bid required param is missing or error");
                    return;
                }
                String md5 = SameMD5.getMD5(t0.d());
                eVar.a(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
                a aVar2 = new a(this.f35370a, this.f35371b, md5);
                aVar2.setUnitId(this.f35371b);
                aVar2.setPlacementId(this.f35370a);
                aVar.get(1, d.h().a(false, ""), eVar, aVar2, "bid_request", 30000L);
                return;
            }
            a("current unit is biding");
        } catch (Throwable th2) {
            a(th2.getMessage());
        }
    }

    public void a(BidListennning bidListennning) {
        this.f35374e = bidListennning;
    }

    public void a(String str) {
        BidListennning bidListennning = this.f35374e;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public void a(BidResponsed bidResponsed) {
        BidListennning bidListennning = this.f35374e;
        if (bidListennning != null) {
            bidListennning.onSuccessed(bidResponsed);
        }
    }
}

package com.mgtv.thirdsdk.config;

import android.content.Context;
import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.net.entity.MobileConfigEntity;
import com.hunantv.imgo.util.PreferencesUtil;
import com.mgtv.task.m;

public class b {
    private static b a;
    private Context b;

    private b(Context context) {
        this.b = context;
    }

    public void a(MobileConfigEntity mobileConfigEntity) {
        MobileConfigEntity.Data data;
        if (mobileConfigEntity == null || (data = mobileConfigEntity.data) == null) {
            return;
        }
        PreferencesUtil.a("player_merge", data.play_merge);
        PreferencesUtil.a("p2p_delay", !TextUtils.isEmpty(mobileConfigEntity.data.huawei_p2p_lazy) && mobileConfigEntity.data.huawei_p2p_lazy.equals("1"));
        PreferencesUtil.a("tcp_alive", !TextUtils.isEmpty(mobileConfigEntity.data.tcp_keeplive) && mobileConfigEntity.data.tcp_keeplive.equals("1"));
        MobileConfigEntity.P2P p2p = mobileConfigEntity.data.p2p;
        if (p2p != null) {
            PreferencesUtil.a("p2p_open", p2p.wifi == 1);
            PreferencesUtil.a("p2p_open_cn", mobileConfigEntity.data.p2p.f15cn == 1);
        }
    }

    public static b a(Context context) {
        if (a == null) {
            a = new b(context);
        }
        return a;
    }

    public void a() {
        m mVar = new m(this.b);
        ImgoHttpParams imgoHttpParams = new ImgoHttpParams();
        imgoHttpParams.put(TrackingKey.CODE, "rootSwitch,p2pSwitch,play_merge,tcp_keeplive");
        imgoHttpParams.put("cxid", com.hunantv.imgo.util.b.A());
        mVar.b(1000).a(true).a(com.hunantv.imgo.net.b.q(), imgoHttpParams, new ImgoHttpCallBack<MobileConfigEntity>() {
            @Override
            public void b(MobileConfigEntity mobileConfigEntity) {
            }

            @Override
            public void a(MobileConfigEntity mobileConfigEntity) {
                if (mobileConfigEntity == null || mobileConfigEntity.data == null) {
                    return;
                }
                b.this.a(mobileConfigEntity);
            }
        });
    }
}

package com.transsion.upgradesdk.manager;

import android.app.Application;
import com.google.gson.Gson;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import pu.a;
import tu.i;
import tu.l;

public final class g extends Lambda implements Function1 {

    public final qu.f f54521a;

    public final int f54522b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(qu.f fVar, int i10) {
        super(1);
        this.f54521a = fVar;
        this.f54522b = i10;
    }

    @Override
    public final Object invoke(Object obj) {
        List obj2 = (List) obj;
        tu.g.b("UpgradeSdkManager", "requestCdnConfig 请求CDN配置完成:  " + obj2);
        if (obj2 == null) {
            qu.f fVar = this.f54521a;
            if (fVar.f70273m != null) {
                tu.g.b("UpgradeSdkManager", "requestCdnConfig 加载过期缓存");
                qu.f fVar2 = this.f54521a;
                fVar2.c(fVar2.f70273m);
            } else {
                UpgradeInfoCallback upgradeInfoCallback = fVar.f70266f;
                if (upgradeInfoCallback != null) {
                    upgradeInfoCallback.onRequestFail("CDN_ERROR");
                }
            }
        } else {
            l.c(2, 2, null, "1", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            tu.h hVar = i.f72841b;
            Application application = a.f69263a;
            Application application2 = null;
            if (application == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            i iVarA = hVar.a(application);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Intrinsics.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", "key");
            MMKV mmkv = iVarA.f72843a;
            if (mmkv != null) {
                mmkv.t("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", jCurrentTimeMillis);
            }
            qu.f fVar3 = this.f54521a;
            fVar3.f70272l = true;
            if (this.f54522b == 1) {
                fVar3.c(obj2);
            } else {
                Application application3 = a.f69263a;
                if (application3 != null) {
                    application2 = application3;
                } else {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                }
                i iVarA2 = hVar.a(application2);
                Gson gson = tu.f.f72838a;
                Intrinsics.h(obj2, "obj");
                String json = tu.f.f72838a.toJson(obj2);
                Intrinsics.g(json, "toJson(...)");
                iVarA2.b("KV_UPGRADE_LOCAL_CDN_DATA", json);
            }
        }
        return Unit.f64096a;
    }
}

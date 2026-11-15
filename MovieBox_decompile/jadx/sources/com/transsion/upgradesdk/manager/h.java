package com.transsion.upgradesdk.manager;

import android.app.Application;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.bean.UpgradeStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import pu.a;
import tu.i;
import tu.l;

public final class h extends Lambda implements Function1 {

    public final qu.f f54523a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(qu.f fVar) {
        super(1);
        this.f54523a = fVar;
    }

    @Override
    public final Object invoke(Object obj) {
        UpgradeStatus upgradeStatus = (UpgradeStatus) obj;
        tu.g.b("UpgradeSdkManager", "请求服务端接口  请求成功 - : " + upgradeStatus);
        if (upgradeStatus == null || this.f54523a.f70262b == null) {
            UpgradeInfoCallback upgradeInfoCallback = this.f54523a.f70266f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("INTERNET_ERROR");
            }
        } else {
            boolean z10 = false;
            if (upgradeStatus.getCode() == 0) {
                qu.f fVar = this.f54523a;
                Integer data = upgradeStatus.getData();
                fVar.f70263c = data != null && data.intValue() == 1;
                qu.f fVar2 = this.f54523a;
                if (fVar2.f70263c) {
                    UpgradeData upgradeData = fVar2.f70262b;
                    Intrinsics.e(upgradeData);
                    if (upgradeData.isForceUpdate()) {
                        tu.g.b("UpgradeSdkManager", "请求服务端接口 请求成功- 标记当前强更弹窗");
                        this.f54523a.f70265e = true;
                        tu.h hVar = i.f72841b;
                        Application application = a.f69263a;
                        if (application == null) {
                            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                            application = null;
                        }
                        i iVarA = hVar.a(application);
                        Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                        MMKV mmkv = iVarA.f72843a;
                        if (mmkv != null) {
                            mmkv.x("KV_UPGRADE_IS_FORCE", true);
                        }
                    }
                }
                tu.h hVar2 = i.f72841b;
                Application application2 = a.f69263a;
                if (application2 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application2 = null;
                }
                i iVarA2 = hVar2.a(application2);
                boolean z11 = this.f54523a.f70263c;
                Intrinsics.h("KV_UPGRADE_LAST_POP", "key");
                MMKV mmkv2 = iVarA2.f72843a;
                if (mmkv2 != null) {
                    mmkv2.x("KV_UPGRADE_LAST_POP", z11);
                }
                this.f54523a.f70271k = System.currentTimeMillis();
                Application application3 = a.f69263a;
                if (application3 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                i iVarA3 = hVar2.a(application3);
                long j10 = this.f54523a.f70271k;
                Intrinsics.h("KV_UPGRADE_LAST_REQUEST_SERVER", "key");
                MMKV mmkv3 = iVarA3.f72843a;
                if (mmkv3 != null) {
                    mmkv3.t("KV_UPGRADE_LAST_REQUEST_SERVER", j10);
                }
                qu.f fVar3 = this.f54523a;
                if (fVar3.f70263c) {
                    UpgradeData upgradeData2 = fVar3.f70262b;
                    Intrinsics.e(upgradeData2);
                    if (ou.a.a(upgradeData2)) {
                        z10 = true;
                    }
                }
                Integer data2 = upgradeStatus.getData();
                String string = data2 != null ? data2.toString() : null;
                UpgradeData upgradeData3 = this.f54523a.f70262b;
                Intrinsics.e(upgradeData3);
                l.c(2, 2, string, "2", null, Boolean.valueOf(upgradeData3.isForceUpdate()), Boolean.valueOf(z10), 16);
                tu.g.b("UpgradeSdkManager", "请求服务端接口 请求成功- 是否有新版本： " + this.f54523a.f70263c + "  是否弹窗： " + z10);
                qu.f fVar4 = this.f54523a;
                UpgradeInfoCallback upgradeInfoCallback2 = fVar4.f70266f;
                if (upgradeInfoCallback2 != null) {
                    boolean z12 = fVar4.f70263c;
                    boolean z13 = fVar4.f70265e;
                    UpgradeData upgradeData4 = fVar4.f70262b;
                    upgradeInfoCallback2.onRequestSuccess(new UpgradeInfo(z12, z10, z13, upgradeData4 != null ? upgradeData4.getPkgVersionName() : null));
                }
            } else {
                UpgradeInfoCallback upgradeInfoCallback3 = this.f54523a.f70266f;
                if (upgradeInfoCallback3 != null) {
                    upgradeInfoCallback3.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                }
            }
        }
        return Unit.f64096a;
    }
}

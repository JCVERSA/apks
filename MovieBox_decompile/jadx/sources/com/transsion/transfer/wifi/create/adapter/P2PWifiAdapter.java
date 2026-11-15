package com.transsion.transfer.wifi.create.adapter;

import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import java.lang.reflect.Method;
import java.net.InetAddress;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

public final class P2PWifiAdapter extends b {

    private int f53815e;

    private int f53816f;

    private WifiP2pManager.Channel f53818h;

    private final int f53814d = 10;

    private final Lazy f53817g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return P2PWifiAdapter.G();
        }
    });

    public static final class a implements WifiP2pManager.ActionListener {
        a() {
        }

        @Override
        public void onFailure(int i10) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, P2PWifiAdapter.this.b() + " --> setDeviceName() --> 反射创建 --> onFailure() --> reason = " + com.transsion.transfer.wifi.util.i.f53899a.b(i10) + " --> 失败重试", false, 2, null);
            P2PWifiAdapter.this.E();
        }

        @Override
        public void onSuccess() {
            String string = Settings.Global.getString(Utils.a().getApplicationContext().getContentResolver(), "wifi_p2p_device_name");
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, P2PWifiAdapter.this.b() + " --> setDeviceName() --> 反射创建 --> onSuccess() --> deviceName = " + string, false, 2, null);
            P2PWifiAdapter.this.s();
        }
    }

    public static final void A(P2PWifiAdapter p2PWifiAdapter, WifiP2pGroup wifiP2pGroup, WifiP2pInfo wifiP2pInfo) {
        if (wifiP2pInfo == null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 获取可连接信息失败 (p2pInfo == null)", false, 2, null);
            p2PWifiAdapter.D();
            return;
        }
        InetAddress inetAddress = wifiP2pInfo.groupOwnerAddress;
        com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f53898a;
        com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> Group Owner Address = " + inetAddress, false, 2, null);
        String strV = p2PWifiAdapter.v(inetAddress);
        if (TextUtils.isEmpty(strV)) {
            com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 获取可连接Ip失败 --> correctIp 为空", false, 2, null);
            p2PWifiAdapter.D();
            return;
        }
        du.a aVarE = p2PWifiAdapter.e();
        if (aVarE != null) {
            aVarE.H(wifiP2pGroup.getNetworkName());
        }
        du.a aVarE2 = p2PWifiAdapter.e();
        if (aVarE2 != null) {
            aVarE2.G(wifiP2pGroup.getPassphrase());
        }
        du.a aVarE3 = p2PWifiAdapter.e();
        if (aVarE3 != null) {
            aVarE3.F(strV);
        }
        com.transsion.transfer.wifi.util.g.b(gVar, p2PWifiAdapter.b() + " --> requestConnectionInfo() --> 最终ip为 correctIp = " + strV, false, 2, null);
        n0 n0VarC = p2PWifiAdapter.c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$requestConnectionInfo$1$1$1(p2PWifiAdapter, null), 3, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x008e, please report this as an issue */
    public final Object B(Continuation continuation) {
        P2PWifiAdapter$requestGroupInfo$1 p2PWifiAdapter$requestGroupInfo$1;
        Unit unit;
        if (continuation instanceof P2PWifiAdapter$requestGroupInfo$1) {
            p2PWifiAdapter$requestGroupInfo$1 = (P2PWifiAdapter$requestGroupInfo$1) continuation;
            int i10 = p2PWifiAdapter$requestGroupInfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                p2PWifiAdapter$requestGroupInfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                p2PWifiAdapter$requestGroupInfo$1 = new P2PWifiAdapter$requestGroupInfo$1(this, continuation);
            }
        } else {
            p2PWifiAdapter$requestGroupInfo$1 = new P2PWifiAdapter$requestGroupInfo$1(this, continuation);
        }
        Object obj = p2PWifiAdapter$requestGroupInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = p2PWifiAdapter$requestGroupInfo$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.f53816f >= this.f53814d) {
                x(101);
                return Unit.f64096a;
            }
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> requestGroupInfo() --> Wi-Fi P2P 创建成功之后，将自己添加到群组 --> 第" + this.f53816f + " 次获取热点相关信息", false, 2, null);
            p2PWifiAdapter$requestGroupInfo$1.label = 1;
            if (u0.a(300L, p2PWifiAdapter$requestGroupInfo$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (this.f53818h == null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> requestGroupInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
            E();
        } else {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.requestGroupInfo(this.f53818h, new WifiP2pManager.GroupInfoListener() {
                    @Override
                    public final void onGroupInfoAvailable(WifiP2pGroup wifiP2pGroup) {
                        P2PWifiAdapter.C(this.f53825a, wifiP2pGroup);
                    }
                });
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit == null) {
                com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> requestGroupInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
                E();
            }
        }
        return Unit.f64096a;
    }

    public static final void C(P2PWifiAdapter p2PWifiAdapter, WifiP2pGroup wifiP2pGroup) {
        if (wifiP2pGroup != null) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, p2PWifiAdapter.b() + " --> requestGroupInfo() --> requestGroupInfo() --> 获取Group信息成功,开始获取连接信息", false, 2, null);
            p2PWifiAdapter.z(wifiP2pGroup);
            return;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, p2PWifiAdapter.b() + " --> requestGroupInfo() --> 获取Group信息失败 --> wifiP2pGroup == null", false, 2, null);
        p2PWifiAdapter.D();
    }

    private final void D() {
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$retry$1(this, null), 3, null);
        }
    }

    public final void E() {
        int i10 = this.f53815e + 1;
        this.f53815e = i10;
        if (i10 > this.f53814d) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> retryCreate() --> 重试次数 = " + this.f53815e + "，判定创建热点失败", false, 2, null);
            x(102);
            return;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> retryCreate() --> 重新创建热点 -- 失败次数 = " + this.f53815e, false, 2, null);
        int i11 = this.f53815e;
        if (i11 <= 1 || i11 == 5) {
            r();
            return;
        }
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$retryCreate$1(this, null), 3, null);
        }
    }

    private final void F() {
        Object objM453constructorimpl;
        a aVar = new a();
        try {
            Result.Companion companion = Result.INSTANCE;
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                Method declaredMethod = wifiP2pManagerW.getClass().getDeclaredMethod("setDeviceName", WifiP2pManager.Channel.class, String.class, WifiP2pManager.ActionListener.class);
                com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f53898a;
                String strB = b();
                int i10 = Build.VERSION.SDK_INT;
                du.a aVarE = e();
                String strP = aVarE != null ? aVarE.p() : null;
                du.a aVarE2 = e();
                com.transsion.transfer.wifi.util.g.b(gVar, strB + " --> setDeviceName() --> API < 29 -- Android" + i10 + "设备(Q以上下) 创建 --> WIFI名称 = " + strP + " -- WIFI频段 = " + (aVarE2 != null ? aVarE2.m() : null), false, 2, null);
                WifiP2pManager wifiP2pManagerW2 = w();
                WifiP2pManager.Channel channel = this.f53818h;
                du.a aVarE3 = e();
                declaredMethod.invoke(wifiP2pManagerW2, channel, aVarE3 != null ? aVarE3.p() : null, aVar);
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> setDeviceName() --> Build.VERSION.SDK_INT < Q --> 反射创建失败 -->exception = " + thM456exceptionOrNullimpl + " --> 失败重试", false, 2, null);
        E();
    }

    public static final WifiP2pManager G() {
        Object systemService = Utils.a().getApplicationContext().getSystemService("wifip2p");
        if (systemService instanceof WifiP2pManager) {
            return (WifiP2pManager) systemService;
        }
        return null;
    }

    private final void r() {
        Ref.IntRef intRef = new Ref.IntRef();
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, y0.b(), null, new P2PWifiAdapter$closeWifiAndReCreateHot$1(intRef, this, null), 2, null);
        }
    }

    public final void s() {
        Unit unit;
        WifiP2pManager.Channel channel = this.f53818h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.createGroup(channel, new WifiP2pManager.ActionListener() {
                    @Override
                    public void onFailure(int i10) {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, this.f53820a.b() + " --> setDeviceName() --> createGroup() --> onFailure() --> reason = " + com.transsion.transfer.wifi.util.i.f53899a.b(i10) + " --> 失败重试", false, 2, null);
                        this.f53820a.E();
                    }

                    @Override
                    public void onSuccess() {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, this.f53820a.b() + " --> setDeviceName() --> createGroup() --> onSuccess()", false, 2, null);
                        n0 n0VarC = this.f53820a.c();
                        if (n0VarC != null) {
                            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$createGroup$1$1$onSuccess$1(this.f53820a, null), 3, null);
                        }
                    }
                });
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> createGroup() --> p2pChannel == null --> 失败重试", false, 2, null);
        E();
    }

    private final void t(WifiP2pConfig.Builder builder) {
        Unit unit;
        WifiP2pManager.Channel channel = this.f53818h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.createGroup(channel, builder.build(), new WifiP2pManager.ActionListener() {
                    @Override
                    public void onFailure(int i10) {
                        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f53898a, this.f53821a.b() + " --> createWifiP2pGroup() --> createGroup() --> 创建群组失败 -- reason = " + com.transsion.transfer.wifi.util.i.f53899a.b(i10) + " --> 失败重试", false, 2, null);
                        this.f53821a.E();
                    }

                    @Override
                    public void onSuccess() {
                        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, this.f53821a.b() + " --> createWifiP2pGroup() --> createGroup() --> onSuccess() --> 创建群组成功", false, 2, null);
                        n0 n0VarC = this.f53821a.c();
                        if (n0VarC != null) {
                            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$createGroupQ$1$1$onSuccess$1(this.f53821a, null), 3, null);
                        }
                    }
                });
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> createGroupQ() --> p2pChannel == null --> 失败重试", false, 2, null);
        E();
    }

    private final void u() {
        String strP;
        Object objM453constructorimpl;
        String str;
        du.a aVarE = e();
        if (aVarE == null || (strP = aVarE.p()) == null) {
            strP = "";
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String strSubstring = com.transsion.transfer.wifi.util.b.f53891a.a(strP).substring(0, 8);
            Intrinsics.g(strSubstring, "substring(...)");
            objM453constructorimpl = Result.m453constructorimpl(strSubstring);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        String str2 = (String) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : "");
        WifiP2pConfig.Builder passphrase = d.a().setNetworkName(strP).setPassphrase(str2);
        Intrinsics.g(passphrase, "setPassphrase(...)");
        du.a aVarE2 = e();
        if (aVarE2 == null || !aVarE2.a()) {
            passphrase.setGroupOperatingBand(1);
            str = "2.4G";
        } else {
            passphrase.setGroupOperatingBand(2);
            str = NetworkUtil.NETWORK_TYPE_5G;
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> createWifiP2pGroup() --> API >= 29 -- Android" + Build.VERSION.SDK_INT + "设备(Q及其以上) 创建 --> WIFI名称 = " + strP + " -- 密码 = " + str2 + " -- WIFI频段 = " + str, false, 2, null);
        t(passphrase);
    }

    private final String v(InetAddress inetAddress) {
        WifiUtils wifiUtils = WifiUtils.f53888a;
        String strG = wifiUtils.g(inetAddress);
        if (!TextUtils.isEmpty(strG)) {
            com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> getCorrectIp() --> ip --> getCorrectOwnerAddress() = " + strG, false, 2, null);
            return strG;
        }
        String strL = wifiUtils.l();
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> getCorrectIp() --> ip --> localIP() = " + strL, false, 2, null);
        return strL;
    }

    private final WifiP2pManager w() {
        return (WifiP2pManager) this.f53817g.getValue();
    }

    private final void x(int i10) {
        n0 n0VarC = c();
        if (n0VarC != null) {
            kotlinx.coroutines.k.d(n0VarC, null, null, new P2PWifiAdapter$onFail$1(this, i10, null), 3, null);
        }
    }

    private final void z(final WifiP2pGroup wifiP2pGroup) {
        Unit unit;
        WifiP2pManager.Channel channel = this.f53818h;
        if (channel != null) {
            WifiP2pManager wifiP2pManagerW = w();
            if (wifiP2pManagerW != null) {
                wifiP2pManagerW.requestConnectionInfo(channel, new WifiP2pManager.ConnectionInfoListener() {
                    @Override
                    public final void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                        P2PWifiAdapter.A(this.f53826a, wifiP2pGroup, wifiP2pInfo);
                    }
                });
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        com.transsion.transfer.wifi.util.g.b(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> requestConnectionInfo() --> p2pChannel == null --> 失败重试 --> retryCreate()", false, 2, null);
        E();
    }

    @Override
    public Object a(Continuation continuation) {
        com.transsion.transfer.wifi.util.g gVar = com.transsion.transfer.wifi.util.g.f53898a;
        com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> start", false, 2, null);
        WifiP2pManager wifiP2pManagerW = w();
        this.f53818h = wifiP2pManagerW != null ? wifiP2pManagerW.initialize(Utils.a().getApplicationContext(), Looper.getMainLooper(), null) : null;
        int i10 = Build.VERSION.SDK_INT;
        if (WifiUtils.f53888a.s()) {
            com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> Android" + i10 + "设备(Q以下) 开始创建P2P WIFI热点", false, 2, null);
            F();
        } else {
            com.transsion.transfer.wifi.util.g.b(gVar, b() + " --> createWifiHot() --> Android" + i10 + "设备(Q及其以上) 开始创建P2P WIFI热点", false, 2, null);
            u();
        }
        return Unit.f64096a;
    }

    @Override
    public void f() {
        y();
        g(null);
        h(null);
        this.f53818h = null;
    }

    public void y() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.transfer.wifi.util.i.f53899a.d(w(), this.f53818h, true, false, false, true);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return;
        }
        com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f53898a, b() + " --> releaseWifiP2P() --> 关闭P2P频段异常 -- it = " + thM456exceptionOrNullimpl, false, 2, null);
    }
}

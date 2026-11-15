package com.transsion.onlinevideo.web;

import android.text.TextUtils;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.repackaged.com.google.common.collect.Lists;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.VipOrder;
import com.transsion.onlinevideo.web.OrderManager;
import com.transsion.playercommon.data.OrderCallbackRequest;
import defpackage.fi1;
import defpackage.kfc;
import defpackage.wz5;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class OrderManager {
    public static List c;
    public static VipViewModel e;
    public static Map a = new HashMap();
    public static Map b = new HashMap();
    public static int d = -3;

    public static class a {
        public boolean a;
        public boolean b;

        public void a(boolean z) {
            this.a = z;
        }

        public void b(boolean z) {
            this.b = z;
        }
    }

    public static void b(final ViewModelStoreOwner viewModelStoreOwner) {
        if (c == null) {
            c = c();
        }
        List list = c;
        if (list == null || list.size() <= 0) {
            return;
        }
        if (d == -3) {
            d = c.size() - 1;
        }
        if (d < 0) {
            return;
        }
        if (e == null) {
            e = (VipViewModel) new ViewModelProvider(viewModelStoreOwner, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VipViewModel.class);
        }
        e.c(new OrderCallbackRequest(((VipOrder) c.get(d)).getProductId(), ((VipOrder) c.get(d)).getObfuscatedProfileId(), LanguageUtils.b().getLanguage(), ((VipOrder) c.get(d)).getPackageName(), ((VipOrder) c.get(d)).getIsSubscribe()));
        if (e.f().hasObservers()) {
            return;
        }
        e.f().observe((LifecycleOwner) viewModelStoreOwner, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                OrderManager.d(viewModelStoreOwner, (Integer) obj);
            }
        });
    }

    public static List c() {
        String string = MMKV.p().getString("vip_order", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return Lists.newArrayList(((Map) fi1.c(string, new TypeToken<Map<String, VipOrder>>() {
        }.getType())).values());
    }

    public static void d(ViewModelStoreOwner viewModelStoreOwner, Integer num) {
        if (d < 0) {
            return;
        }
        if (num.intValue() == 1) {
            f(((VipOrder) c.get(d)).getPurchaseToken());
            kfc.k(true, null);
            LogUtils.w("[VishaUserDebug]", "Pay Consume Server check success" + ((VipOrder) c.get(d)).getObfuscatedAccountId());
            wz5.G("vd_ott_vip_buy_c_order_confirm", ((VipOrder) c.get(d)).getObfuscatedAccountId(), "Pay Consume Server check success", 1);
        } else {
            wz5.G("vd_ott_vip_buy_c_order_confirm", ((VipOrder) c.get(d)).getObfuscatedProfileId(), "Pay Consume Server check fail", 0);
            LogUtils.w("[VishaUserDebug]", "Pay Consume Server check error" + ((VipOrder) c.get(d)).getObfuscatedProfileId());
        }
        d--;
        b(viewModelStoreOwner);
    }

    public static VipOrder e(Purchase purchase, String str) {
        if (!str.equals(BillingClient.ProductType.SUBS)) {
            return (VipOrder) fi1.b(purchase.getOriginalJson(), VipOrder.class);
        }
        VipOrder vipOrder = new VipOrder();
        vipOrder.setIsSubscribe(1);
        vipOrder.setAcknowledged(Boolean.valueOf(purchase.isAcknowledged()));
        vipOrder.setAutoRenewing(Boolean.valueOf(purchase.isAutoRenewing()));
        vipOrder.setOrderId(purchase.getOrderId());
        vipOrder.setPackageName(purchase.getPackageName());
        vipOrder.setPurchaseToken(purchase.getPurchaseToken());
        vipOrder.setPurchaseState(Integer.valueOf(purchase.getPurchaseState()));
        vipOrder.setPurchaseTime(Long.valueOf(purchase.getPurchaseTime()));
        vipOrder.setQuantity(Integer.valueOf(purchase.getQuantity()));
        vipOrder.setProductId(purchase.getProducts().get(0));
        return vipOrder;
    }

    public static void f(String str) {
        String string = MMKV.p().getString("vip_order", "");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        Map map = (Map) fi1.c(string, new TypeToken<Map<String, VipOrder>>() {
        }.getType());
        map.remove(str);
        MMKV.p().w("vip_order", fi1.e(map));
    }

    public static void g(VipOrder vipOrder) {
        if (vipOrder == null) {
            return;
        }
        String string = MMKV.p().getString("vip_order", "");
        Map map = !TextUtils.isEmpty(string) ? (Map) fi1.c(string, new TypeToken<Map<String, VipOrder>>() {
        }.getType()) : new HashMap();
        map.put(vipOrder.getPurchaseToken(), vipOrder);
        MMKV.p().w("vip_order", fi1.e(map));
    }

    public static void h(String str, boolean z) {
        a aVar = (a) b.get(str);
        if (b.get(str) == null) {
            aVar = new a();
        }
        aVar.a(z);
        b.put(str, aVar);
    }

    public static void i(String str, boolean z) {
        a aVar = (a) b.get(str);
        if (b.get(str) == null) {
            aVar = new a();
        }
        aVar.b(z);
        b.put(str, aVar);
    }
}

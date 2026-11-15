package com.transsion.onlinevideo.promotion;

import android.content.Context;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.onlinevideo.PromotionBean;
import com.transsion.onlinevideo.promotion.PromotionManager;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.iia;
import defpackage.it1;
import defpackage.li9;
import java.util.Map;

public class PromotionManager {
    public static volatile PromotionManager a = new PromotionManager();
    public static boolean b;

    public static PromotionManager c() {
        return a;
    }

    public static void d(int i, PromotionBean promotionBean, Context context) {
        PromotionDialog.H(i, promotionBean).showListDialog(context, "promotionDialog");
    }

    public static void g(PromotionBean promotionBean) throws Throwable {
        String cache = CacheManager.getInstance().getCache("visha_cache_promotion");
        if (TextUtils.isEmpty(cache)) {
            return;
        }
        Map map = (Map) fi1.c(cache, new TypeToken<Map<Long, PromotionBean>>() {
        }.getType());
        map.put(promotionBean.getId(), promotionBean);
        CacheManager.getInstance().lambda$setCache$0("visha_cache_promotion", fi1.e(map));
    }

    public final void e(final int i, int i2, final Context context, li9 li9Var) throws Throwable {
        String cache = CacheManager.getInstance().getCache("visha_cache_promotion");
        if (TextUtils.isEmpty(cache)) {
            return;
        }
        Map map = (Map) fi1.c(cache, new TypeToken<Map<Long, PromotionBean>>() {
        }.getType());
        boolean z = false;
        for (final PromotionBean promotionBean : map.values()) {
            if (promotionBean.getType().intValue() == 2) {
                if (promotionBean.getDisplayPage().intValue() == i && (i == 2 || (i == 1 && promotionBean.getCpId().intValue() == i2))) {
                    if (!promotionBean.isHaveDone() && promotionBean.getDate().equals(it1.d()) && promotionBean.getCount() < promotionBean.getFrequency().intValue() && System.currentTimeMillis() - promotionBean.getLastShowTime() > 7200000) {
                        promotionBean.setCount(promotionBean.getCount() + 1);
                        if (promotionBean.getCount() >= promotionBean.getFrequency().intValue()) {
                            promotionBean.setHaveDone(true);
                        }
                        promotionBean.setLastShowTime(System.currentTimeMillis());
                        ThreadUtils.o().post(new Runnable() {
                            @Override
                            public final void run() {
                                PromotionManager.d(i, promotionBean, context);
                            }
                        });
                        z = true;
                    }
                }
            } else if (i == 1 && promotionBean.getCpId().intValue() == i2 && li9Var != null) {
                li9Var.a(promotionBean);
            }
        }
        if (z) {
            CacheManager.getInstance().lambda$setCache$0("visha_cache_promotion", fi1.e(map));
        }
    }

    public void f(final Context context, final int i, final int i2, final li9 li9Var) {
        if (b) {
            return;
        }
        iia.a(new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.e(i, i2, context, li9Var);
            }
        });
    }
}

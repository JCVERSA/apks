package com.transsion.onlinevideo.promotion;

import android.app.Application;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.onlinevideo.PromotionBean;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.fi1;
import defpackage.it1;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PromotionModel extends AndroidViewModel {
    public MutableLiveData a;

    public PromotionModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
    }

    public void a() {
        PromotionManager.c();
        PromotionManager.b = true;
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getPromotions(CountryInfoUtil.m()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onNext(BaseResponse baseResponse) throws Throwable {
                if (baseResponse.isSuccess()) {
                    List<PromotionBean> list = (List) baseResponse.getData();
                    HashMap map = new HashMap();
                    if (list == null && list.size() == 0) {
                        CacheManager.getInstance().lambda$setCache$0("visha_cache_promotion", "");
                    } else {
                        String cache = CacheManager.getInstance().getCache("visha_cache_promotion");
                        if (TextUtils.isEmpty(cache)) {
                            for (PromotionBean promotionBean : list) {
                                promotionBean.setDate(it1.d());
                                map.put(promotionBean.getId(), promotionBean);
                            }
                            CacheManager.getInstance().lambda$setCache$0("visha_cache_promotion", fi1.e(map));
                        } else {
                            Map map2 = (Map) fi1.c(cache, new TypeToken<Map<Long, PromotionBean>>() {
                            }.getType());
                            for (PromotionBean promotionBean2 : list) {
                                PromotionBean promotionBean3 = (PromotionBean) map2.get(promotionBean2.getId());
                                if (promotionBean3 == null || !promotionBean3.getDate().equals(it1.d())) {
                                    promotionBean2.setDate(it1.d());
                                } else {
                                    promotionBean2.setDate(it1.d());
                                    promotionBean2.setCount(promotionBean3.getCount());
                                    promotionBean2.setHaveDone(promotionBean3.isHaveDone());
                                    promotionBean2.setLastShowTime(promotionBean2.getLastShowTime());
                                }
                                map.put(promotionBean2.getId(), promotionBean2);
                            }
                            CacheManager.getInstance().lambda$setCache$0("visha_cache_promotion", fi1.e(map));
                        }
                        PromotionModel.this.a.postValue(1);
                    }
                }
                PromotionManager.c();
                PromotionManager.b = false;
            }

            @Override
            public void onComplete() {
                PromotionManager.c();
                PromotionManager.b = false;
            }

            @Override
            public void onError(Throwable th) {
                PromotionManager.c();
                PromotionManager.b = false;
                th.printStackTrace();
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }
        });
    }

    public MutableLiveData getLoadStatus() {
        return this.a;
    }
}

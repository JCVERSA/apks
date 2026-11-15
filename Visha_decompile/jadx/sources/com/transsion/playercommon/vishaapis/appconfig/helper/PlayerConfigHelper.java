package com.transsion.playercommon.vishaapis.appconfig.helper;

import android.content.Context;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.DownloadVideoRecommend;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.appconfig.helper.PlayerConfigHelper;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.t74;
import defpackage.vb;
import java.util.Collections;

public class PlayerConfigHelper {
    public static final String RECOMMEND_CACHE = "recommend_cache";

    private static DownloadVideoRecommend getRecommendCache() {
        try {
            return (DownloadVideoRecommend) fi1.b(CacheManager.getInstance().getCache(RECOMMEND_CACHE), DownloadVideoRecommend.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void lambda$requestPlayCompleteRecommend$0() {
        MainApp.B = getRecommendCache();
    }

    public static String lambda$setRecommendCache$1(DownloadVideoRecommend downloadVideoRecommend, Context context) throws Exception {
        String strE = fi1.e(downloadVideoRecommend);
        CacheManager.getInstance().setCache(RECOMMEND_CACHE, strE);
        return strE;
    }

    public static void requestPlayCompleteRecommend(final Context context) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                PlayerConfigHelper.lambda$requestPlayCompleteRecommend$0();
            }
        });
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getRecommendVideo(CountryInfoUtil.m()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(BaseResponse<DownloadVideoRecommend> baseResponse) {
                if (baseResponse.getCode() == 0 && baseResponse.isSuccess()) {
                    DownloadVideoRecommend data = baseResponse.getData();
                    PlayerConfigHelper.setRecommendCache(data, context);
                    if (data == null || data.getContent_recommend_info_list() == null || data.getContent_recommend_info_list().size() <= 0) {
                        return;
                    }
                    Collections.shuffle(data.getContent_recommend_info_list());
                    MainApp.B = data;
                }
            }
        });
    }

    public static void setRecommendCache(final DownloadVideoRecommend downloadVideoRecommend, Context context) {
        mc7.K(context).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayerConfigHelper.lambda$setRecommendCache$1(downloadVideoRecommend, (Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }
}

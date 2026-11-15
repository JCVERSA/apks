package com.transsion.onlinevideo.viewmodel;

import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.onlinevideo.RecommendBean;
import com.transsion.dbdata.beans.onlinevideo.RecommendResultBean;
import com.transsion.dbdata.beans.onlinevideo.SimpleMediaBeans;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import com.transsion.dbdata.beans.onlinevideo.YoutubeData;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiConfig;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.playercommon.vishaapis.onlinevideo.RecommendManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.trello.rxlifecycle3.components.support.RxAppCompatActivity;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class RecommendViewModel<T extends TypeBean> extends ViewModel {
    public final MutableLiveData a = new MutableLiveData();
    public final Set b = ConcurrentHashMap.newKeySet();

    public class a implements RecommendManager.ResultCallBack {
        public a() {
        }

        @Override
        public void onSucess(RecommendResultBean.MangoResult mangoResult) {
            SimpleMediaBeans simpleMediaBean = mangoResult.getSimpleMediaBean();
            if (simpleMediaBean.resultState != SimpleMediaBeans.State.ERROR) {
                RecommendViewModel.this.a.postValue(simpleMediaBean.data);
                return;
            }
            LogUtils.j("visha_RecommendViewModel", "request mango recommend data error:" + simpleMediaBean.errMsg);
            RecommendViewModel.this.a.postValue(null);
        }

        @Override
        public void onFailed(Throwable th) {
            LogUtils.j("visha_RecommendViewModel", "request mango recommend data failed:" + th.toString());
            RecommendViewModel.this.a.postValue(null);
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess()) {
                RecommendViewModel.this.a.postValue(new ArrayList());
            } else {
                RecommendViewModel.this.a.postValue((List) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_RecommendViewModel", "request smash recommend data failed:" + th.toString());
            RecommendViewModel.this.a.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements pd7 {
        public c() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null || ((YoutubeData) baseResponse.getData()).getResults() == null) {
                RecommendViewModel.this.a.postValue(new ArrayList());
            } else {
                RecommendViewModel.this.a.postValue(((YoutubeData) baseResponse.getData()).getResults());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_RecommendViewModel", "request smash recommend data failed:" + th.toString());
            RecommendViewModel.this.a.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class d implements pd7 {
        public d() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess()) {
                RecommendViewModel.this.a.postValue(new ArrayList());
            } else {
                RecommendViewModel.this.a.postValue((List) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_RecommendViewModel", "request smash recommend data failed:" + th.toString());
            RecommendViewModel.this.a.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public final void b(RxAppCompatActivity rxAppCompatActivity, long j) {
        RecommendManager.postRecommendContent(rxAppCompatActivity, OnlineVideoApiConfig.RECOMMEND_MANGO_URL, new RecommendBean.Mango().create(j + "", CountryInfoUtil.k()), RecommendResultBean.MangoResult.class, new a());
    }

    public final void c(long j, int i) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getRecommend(j, i).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public void d(String str, int i, String str2) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getVkRecommend(str, i, 15, str2).d0(k29.c()).M(vb.a()).subscribe(new d());
    }

    public void e(String str) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getYoutubeRecommend(str, LanguageUtils.b().getLanguage(), LanguageUtils.b().getCountry()).d0(k29.c()).M(vb.a()).subscribe(new c());
    }

    public void f(LifecycleOwner lifecycleOwner, Observer observer) {
        if (this.b.contains(lifecycleOwner)) {
            return;
        }
        this.b.add(lifecycleOwner);
        this.a.observe(lifecycleOwner, observer);
    }

    public void g(RxAppCompatActivity rxAppCompatActivity, long j, String str) {
        if (TranVideoDetail.isMgTVVideo(str)) {
            b(rxAppCompatActivity, j);
        } else if (TranVideoDetail.isSmashiVideo(str)) {
            c(j, 0);
        } else {
            LogUtils.m("visha_RecommendViewModel", "unknown video source type,so no recommend");
        }
    }
}

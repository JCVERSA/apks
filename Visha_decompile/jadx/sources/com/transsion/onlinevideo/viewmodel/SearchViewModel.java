package com.transsion.onlinevideo.viewmodel;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LanguageUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.YoutubeData;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.b06;
import defpackage.fi1;
import defpackage.hb0;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import defpackage.wz5;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class SearchViewModel extends AndroidViewModel {
    public final MutableLiveData a;
    public final MutableLiveData b;
    public final MutableLiveData c;
    public final MutableLiveData d;
    public final MutableLiveData e;
    public final MutableLiveData f;
    public final MutableLiveData g;
    public final MutableLiveData h;
    public final MutableLiveData i;

    public class a implements pd7 {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            List arrayList = (List) SearchViewModel.this.b.getValue();
            if (arrayList == null || this.b == 1) {
                arrayList = new ArrayList();
            }
            List list = (List) baseResponse.getData();
            if (list == null || list.size() == 0) {
                SearchViewModel.this.i.postValue(1);
                return;
            }
            arrayList.addAll(list);
            SearchViewModel.this.b.postValue(arrayList);
            SearchViewModel.this.i.postValue(0);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            SearchViewModel.this.e.postValue((List) baseResponse.getData());
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchViewModel.this.e.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class c implements pd7 {
        public final int b;
        public final int c;
        public final String d;

        public c(int i, int i2, String str) {
            this.b = i;
            this.c = i2;
            this.d = str;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            long jCurrentTimeMillis = System.currentTimeMillis() - b06.a;
            List arrayList = (List) SearchViewModel.this.g.getValue();
            if (arrayList == null || this.b == 1) {
                arrayList = new ArrayList();
            }
            List list = (List) baseResponse.getRecords();
            if (list == null || list.size() == 0) {
                SearchViewModel.this.g.postValue(arrayList);
                SearchViewModel.this.h.postValue(1);
                hb0.markTrackThree("vd_ott_search_completed", "duration", Long.valueOf(jCurrentTimeMillis), "keyword", this.d, "error_type", "no_results");
                return;
            }
            arrayList.addAll((Collection) baseResponse.getRecords());
            int total = baseResponse.getTotal();
            int iCeil = (int) Math.ceil(total / this.c);
            int i = this.b;
            if (i >= iCeil) {
                if (i == iCeil && total % this.c > 0) {
                    SearchViewModel.this.g.postValue(arrayList);
                }
                SearchViewModel.this.h.postValue(1);
            } else {
                SearchViewModel.this.g.postValue(arrayList);
                SearchViewModel.this.h.postValue(0);
            }
            hb0.markTrackTwo("vd_ott_search_completed", "duration", Long.valueOf(jCurrentTimeMillis), "keyword", this.d);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchViewModel.this.g.postValue(new ArrayList());
            SearchViewModel.this.h.postValue(1);
            hb0.markTrackThree("vd_ott_search_completed", "duration", Long.valueOf(System.currentTimeMillis() - b06.a), "keyword", this.d, "error_type", th instanceof SocketTimeoutException ? " timeout" : " no_network");
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
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null || ((List) baseResponse.getData()).size() <= 0) {
                SearchViewModel.this.c.postValue(null);
            } else {
                SearchViewModel.this.c.postValue((List) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchViewModel.this.c.postValue(null);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class e implements pd7 {
        public e() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null || ((YoutubeData) baseResponse.getData()).getResults() == null || ((YoutubeData) baseResponse.getData()).getResults().size() <= 0) {
                SearchViewModel.this.d.postValue(new ArrayList());
            } else {
                SearchViewModel.this.d.postValue(((YoutubeData) baseResponse.getData()).getResults());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchViewModel.this.d.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class f implements pd7 {
        public f() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null) {
                SearchViewModel.this.f.postValue(new ArrayList());
            } else {
                SearchViewModel.this.f.postValue((List) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            SearchViewModel.this.h.postValue(2);
            SearchViewModel.this.f.postValue(new ArrayList());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public SearchViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
        this.f = new MutableLiveData();
        this.g = new MutableLiveData();
        this.h = new MutableLiveData();
        this.i = new MutableLiveData();
    }

    public void i(String str) {
        List arrayList = (List) this.a.getValue();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        arrayList.remove(str);
        arrayList.add(str);
        MMKV.p().w("search history", fi1.e(arrayList));
        this.a.postValue(arrayList);
    }

    public void j() {
        MMKV.p().J("search history");
        this.a.postValue(new ArrayList());
    }

    public void k() {
        ArrayList arrayList = (ArrayList) fi1.c(MMKV.p().l("search history"), new TypeToken<List<String>>() {
        }.getType());
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        this.a.postValue(arrayList);
    }

    public void l(Context context, int i, int i2) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getHotSearch(i, LanguageUtils.b().getLanguage(), i2).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new a(i));
    }

    public MutableLiveData m() {
        return this.b;
    }

    public MutableLiveData n() {
        return this.i;
    }

    public MutableLiveData o() {
        return this.c;
    }

    public MutableLiveData p() {
        return this.a;
    }

    public MutableLiveData q() {
        return this.d;
    }

    public void r(String str, int i, int i2) {
        if (i == 1) {
            hb0.markTrackSingle("vd_ott_search_launch", "keyword", str);
            b06.a = System.currentTimeMillis();
        }
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).searchVideo(str, LanguageUtils.b().getLanguage(), CountryInfoUtil.i(), i, i2).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new c(i, i2, str));
        wz5.V(false);
    }

    public MutableLiveData s() {
        return this.g;
    }

    public MutableLiveData t() {
        return this.h;
    }

    public void u(String str) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).searchWord(str, LanguageUtils.b().getLanguage()).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public MutableLiveData v() {
        return this.e;
    }

    public void w() {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getYoutubeHotRecommend(LanguageUtils.b().getLanguage(), LanguageUtils.b().getCountry()).d0(k29.c()).M(vb.a()).subscribe(new d());
    }

    public MutableLiveData x() {
        return this.f;
    }

    public void y(String str) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getYoutubeWords(LanguageUtils.b().getLanguage(), LanguageUtils.b().getCountry(), str).d0(k29.c()).M(vb.a()).subscribe(new f());
    }

    public void z(String str) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).searchYoutubeByKey(LanguageUtils.b().getLanguage(), LanguageUtils.b().getCountry(), str).d0(k29.c()).M(vb.a()).subscribe(new e());
        wz5.V(true);
    }
}

package com.transsion.onlinevideo.viewmodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LanguageUtils;
import com.transsion.dbdata.beans.onlinevideo.GetVideoByTag;
import com.transsion.dbdata.beans.onlinevideo.TopicDetailBean;
import com.transsion.dbdata.beans.onlinevideo.VideoTag;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class TopicViewModel extends AndroidViewModel {
    public static List e;
    public final MutableLiveData a;
    public final MutableLiveData b;
    public final MutableLiveData c;
    public Locale d;

    public class a implements pd7 {
        public final boolean b;
        public final int c;
        public final int d;

        public a(boolean z, int i, int i2) {
            this.b = z;
            this.c = i;
            this.d = i2;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                TopicViewModel.this.a.postValue(2);
                return;
            }
            TopicDetailBean topicDetailBean = (TopicDetailBean) baseResponse.getData();
            List arrayList = (List) TopicViewModel.this.b.getValue();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (topicDetailBean == null) {
                TopicViewModel.this.a.postValue(0);
                return;
            }
            topicDetailBean.jsonToTypeList();
            if (this.b) {
                arrayList.clear();
            }
            arrayList.addAll(topicDetailBean.getMediaBeanList());
            TopicViewModel.this.b.postValue(arrayList);
            int total = baseResponse.getTotal();
            int i = this.c;
            if ((total / i) + (total % i == 0 ? 0 : 1) <= this.d) {
                TopicViewModel.this.a.postValue(1);
            } else {
                TopicViewModel.this.a.postValue(0);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            TopicViewModel.this.a.postValue(2);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public final boolean b;
        public final int c;
        public final int d;

        public b(boolean z, int i, int i2) {
            this.b = z;
            this.c = i;
            this.d = i2;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                TopicViewModel.this.a.postValue(2);
                return;
            }
            List list = (List) baseResponse.getRecords();
            List arrayList = (List) TopicViewModel.this.b.getValue();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (list == null) {
                TopicViewModel.this.a.postValue(0);
                return;
            }
            if (this.b) {
                arrayList.clear();
            }
            arrayList.addAll(list);
            TopicViewModel.this.b.postValue(arrayList);
            int total = baseResponse.getTotal();
            int i = this.c;
            if ((total / i) + (total % i == 0 ? 0 : 1) <= this.d) {
                TopicViewModel.this.a.postValue(1);
            } else {
                TopicViewModel.this.a.postValue(0);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            TopicViewModel.this.a.postValue(2);
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
            if (baseResponse.getCode() == 0 && baseResponse.isSuccess()) {
                List list = (List) baseResponse.getData();
                TopicViewModel.this.c.postValue(list);
                TopicViewModel.e = list;
            }
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

    public TopicViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
    }

    public void d(long j, int i, int i2, boolean z) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getMediasByTopic(j, i, i2).d0(k29.c()).M(vb.a()).subscribe(new a(z, i2, i));
    }

    public void e(VideoTag[] videoTagArr, int i, int i2, boolean z) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getVideoByTag(new GetVideoByTag(videoTagArr, i, i2)).d0(k29.c()).M(vb.a()).subscribe(new b(z, i2, i));
    }

    public MutableLiveData f() {
        return this.b;
    }

    public MutableLiveData g() {
        return this.c;
    }

    public MutableLiveData getLoadStatus() {
        return this.a;
    }

    public void h() {
        List list;
        if (this.d != null && LanguageUtils.b().equals(this.d) && (list = e) != null && list.size() > 0) {
            this.c.postValue(e);
        } else {
            this.d = LanguageUtils.b();
            ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getVideoTag().d0(k29.c()).M(vb.a()).subscribe(new c());
        }
    }
}

package com.transsion.onlinevideo.web;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.onlinevideo.SubscribeDetail;
import com.transsion.dbdata.beans.onlinevideo.VipPayResult;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.OrderCallbackRequest;
import com.transsion.playercommon.data.OrderCancelCallbackRequest;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import defpackage.k29;
import defpackage.kfc;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;

public class VipViewModel extends AndroidViewModel {
    public MutableLiveData a;
    public MutableLiveData b;
    public MutableLiveData c;
    public MutableLiveData d;

    public class a implements pd7 {
        public a() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() == 0) {
                VipViewModel.this.a.postValue(Integer.valueOf(((VipPayResult) baseResponse.getData()).getType()));
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            VipViewModel.this.a.postValue(-1);
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
            if (baseResponse.getCode() != 0) {
                VipViewModel.this.b.postValue(-1);
            } else {
                VipViewModel.this.b.postValue(1);
                kfc.k(true, null);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            VipViewModel.this.b.postValue(-1);
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
            if (baseResponse.getCode() != 0) {
                VipViewModel.this.c.postValue(-1);
                ToastUtils.s(R.string.subscribe_cancel_failed);
            } else {
                VipViewModel.this.c.postValue(1);
                ToastUtils.s(R.string.subscribe__cancel_success);
                kfc.k(false, null);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            VipViewModel.this.c.postValue(-1);
            ToastUtils.s(R.string.subscribe_cancel_failed);
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
            if (baseResponse.getCode() != 0 || baseResponse.getData() == null) {
                VipViewModel.this.d.postValue(null);
            } else {
                VipViewModel.this.d.postValue((SubscribeDetail) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            VipViewModel.this.d.postValue(null);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public VipViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
    }

    public void a(Context context, long j) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).cancelSubscribe(j).d0(k29.c()).M(vb.a()).subscribe(new c());
    }

    public void b(OrderCancelCallbackRequest orderCancelCallbackRequest) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).confirmPayCancel(orderCancelCallbackRequest).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public void c(OrderCallbackRequest orderCallbackRequest) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).confirmPayOk(orderCallbackRequest).d0(k29.c()).M(vb.a()).subscribe(new a());
    }

    public MutableLiveData d() {
        return this.b;
    }

    public MutableLiveData e() {
        return this.c;
    }

    public MutableLiveData f() {
        return this.a;
    }

    public void g(long j) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getSubscribeDetail(j).d0(k29.c()).M(vb.a()).subscribe(new d());
    }

    public MutableLiveData h() {
        return this.d;
    }
}

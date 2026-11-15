package com.transsion.onlinevideo.viewmodel;

import android.app.Application;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import defpackage.h27;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.List;

public class CollectViewModel extends AndroidViewModel {
    public static final String b = "visha_" + CollectViewModel.class.getSimpleName();
    public MutableLiveData a;

    public class a implements pd7 {
        public final CollectItem[] b;
        public final ImageView c;
        public final int d;

        public a(CollectItem[] collectItemArr, ImageView imageView, int i) {
            this.b = collectItemArr;
            this.c = imageView;
            this.d = i;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess()) {
                ImageView imageView = this.c;
                if (imageView != null) {
                    imageView.setImageResource(this.d == 0 ? R.drawable.ic_ott_collect_enter : R.drawable.ic_farvorite_w);
                }
            } else {
                for (CollectItem collectItem : this.b) {
                    OnlineCollectDataManager.d().b(collectItem);
                }
                ImageView imageView2 = this.c;
                if (imageView2 != null) {
                    imageView2.setImageResource(R.drawable.ic_farvorited_on);
                }
                h27.c().e(1078, new Object[0]);
            }
            ToastUtils.s((baseResponse == null || !baseResponse.isSuccess()) ? R.string.collect_fail : R.string.collect_suc);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
            ImageView imageView = this.c;
            if (imageView != null) {
                imageView.setImageResource(this.d == 0 ? R.drawable.ic_ott_collect_enter : R.drawable.ic_farvorite_w);
            }
            ToastUtils.s(R.string.collect_fail);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public final long[] b;
        public final ImageView c;
        public final int d;

        public b(long[] jArr, ImageView imageView, int i) {
            this.b = jArr;
            this.c = imageView;
            this.d = i;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess()) {
                ImageView imageView = this.c;
                if (imageView != null) {
                    imageView.setImageResource(R.drawable.ic_farvorited_on);
                }
            } else {
                for (long j : this.b) {
                    OnlineCollectDataManager.d().i(String.valueOf(j));
                }
                ImageView imageView2 = this.c;
                if (imageView2 != null) {
                    imageView2.setImageResource(this.d == 0 ? R.drawable.ic_ott_collect_enter : R.drawable.ic_farvorite_w);
                }
                h27.c().e(1078, new Object[0]);
            }
            ToastUtils.s((baseResponse == null || !baseResponse.isSuccess()) ? R.string.collect_cancel_fail : R.string.collect_cancel_suc);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
            ToastUtils.s(R.string.collect_cancel_fail);
            ImageView imageView = this.c;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_farvorited_on);
            }
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
            if (baseResponse == null || baseResponse.getRecords() == null || ((List) baseResponse.getRecords()).isEmpty()) {
                OnlineCollectDataManager.d().a();
                CollectViewModel.this.a.postValue(null);
            } else {
                CollectViewModel.this.a.postValue((List) baseResponse.getRecords());
                OnlineCollectDataManager.d().c((List) baseResponse.getRecords());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
            CollectViewModel.this.a.postValue(null);
            ToastUtils.s(R.string.collect_getdata_fail);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public CollectViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
    }

    public static void a(CollectItem[] collectItemArr, ImageView imageView, int i) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).collect(collectItemArr).d0(k29.c()).M(vb.a()).subscribe(new a(collectItemArr, imageView, i));
    }

    public static void d(long[] jArr, ImageView imageView, int i) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).unCollect(jArr).d0(k29.c()).M(vb.a()).subscribe(new b(jArr, imageView, i));
    }

    public void b(int i) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getCollectList(i).d0(k29.c()).M(vb.a()).subscribe(new c());
    }

    public MutableLiveData c() {
        return this.a;
    }
}

package com.transsion.onlinevideo.mangotv;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.data.EpisodesComparator;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PlayerDatailViewModel extends AndroidViewModel {
    public MutableLiveData a;
    public MutableLiveData b;
    public MutableLiveData c;

    public class a implements pd7 {
        public a() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null) {
                ToastUtils.s(R.string.loading_error);
                if (baseResponse == null || baseResponse.getCode() != -1) {
                    PlayerDatailViewModel.this.c.postValue(501);
                    return;
                } else {
                    PlayerDatailViewModel.this.c.postValue(-1);
                    return;
                }
            }
            PlayerDatailViewModel.this.c.postValue(200);
            if (((TranVideoDetail) baseResponse.getData()).getVideoSerials() == null) {
                ((TranVideoDetail) baseResponse.getData()).setVideoSerials(new ArrayList());
            }
            if (((TranVideoDetail) baseResponse.getData()).getVideoSeries() == null) {
                ((TranVideoDetail) baseResponse.getData()).setVideoSeries(new ArrayList());
            }
            if (((TranVideoDetail) baseResponse.getData()).getVideoSerialsNotIntact() == null) {
                ((TranVideoDetail) baseResponse.getData()).setVideoSerialsNotIntact(new ArrayList());
            }
            if (((TranVideoDetail) baseResponse.getData()).getVideoSerials() != null) {
                Collections.sort(((TranVideoDetail) baseResponse.getData()).getVideoSerials(), new EpisodesComparator());
                PlayDetailDataManger.clear();
                PlayDetailDataManger.parseData((TranVideoDetail) baseResponse.getData());
                PlayerDatailViewModel.this.a.postValue((TranVideoDetail) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
            PlayerDatailViewModel.this.c.postValue(403);
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
            LogUtils.j("visha_PlayerDatailViewModel", "getShortVideoSketch onNext");
            if (baseResponse == null || !baseResponse.isSuccess() || baseResponse.getData() == null) {
                if (baseResponse == null || baseResponse.getCode() != -1) {
                    return;
                }
                LogUtils.m("visha_PlayerDatailViewModel", "getShortVideoSketch ERROR_VIDEO_OFFLINE");
                return;
            }
            if (baseResponse.getData() == null || !baseResponse.isSuccess()) {
                PlayerDatailViewModel.this.b.postValue(new ArrayList());
            } else {
                PlayerDatailViewModel.this.b.postValue((List) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
            LogUtils.j("visha_PlayerDatailViewModel", "getShortVideoSketch complete");
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("visha_PlayerDatailViewModel", "getShortVideoSketch failed:" + th.toString());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public PlayerDatailViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
    }

    public MutableLiveData a() {
        return this.c;
    }

    public MutableLiveData b() {
        return this.b;
    }

    public void c(String str, int i, int i2) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getShortVideoSketch(str, i, i2).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public MutableLiveData d() {
        return this.a;
    }

    public void e(String str) {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getVideoInfo(str).d0(k29.c()).M(vb.a()).subscribe(new a());
    }
}

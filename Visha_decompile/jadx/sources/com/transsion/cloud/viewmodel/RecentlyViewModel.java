package com.transsion.cloud.viewmodel;

import android.app.Application;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.netdisk.R;
import com.transsion.playercommon.data.CloudHistoryRequestDataForDelete;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import defpackage.el0;
import defpackage.gec;
import defpackage.h27;
import defpackage.k29;
import defpackage.mc2;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.sf0;
import defpackage.vb;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/cloud/viewmodel/RecentlyViewModel;", "Lcom/transsion/cloud/viewmodel/CloudViewModel;", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, MethodDecl.initName, "(Landroid/app/Application;)V", "", "Lcom/transsion/dbdata/beans/VideoCloudData;", "videoCloudDataList", "Lzfb;", "s0", "(Ljava/util/List;)V", "", "pageNo", "t0", "(I)V", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecentlyViewModel extends CloudViewModel {

    public static final class a extends sf0 {
        public final List e;

        public static final class C0212a implements gec.d {
            public final RecentlyViewModel a;
            public final List b;

            public C0212a(RecentlyViewModel recentlyViewModel, List list) {
                this.a = recentlyViewModel;
                this.b = list;
            }

            @Override
            public void a(VishaOauthData vishaOauthData) {
                this.a.n0(true);
                Log.d("RecentlyViewModel", "clearRecentlyVideoDataList refreshToken success");
                this.a.s0(this.b);
            }
        }

        public a(List list) {
            this.e = list;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            y45.j(baseResponse, "voidBaseResponse");
            if (baseResponse.isSuccess()) {
                RecentlyViewModel.this.n0(false);
                h27.c().e(1131, new Object[0]);
            } else if (!gec.c().o(baseResponse.getCode()) || RecentlyViewModel.this.getMRetryRefreshToken()) {
                h27.c().e(1129, new Object[0]);
            } else {
                gec.c().k(new C0212a(RecentlyViewModel.this, this.e));
            }
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            ToastUtils.s(R.string.network_error);
            h27.c().e(1129, new Object[0]);
            Log.d("RecentlyViewModel", "clearRecentlyVideoDataList onError " + th.getMessage());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentlyViewModel(Application application) {
        super(application);
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
    }

    public static void u0(RecentlyViewModel recentlyViewModel, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = recentlyViewModel.getMCurrentPage();
        }
        recentlyViewModel.t0(i);
    }

    public final void s0(List videoCloudDataList) {
        if (videoCloudDataList != null) {
            List list = videoCloudDataList;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((VideoCloudData) it.next()).getFileId());
            }
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).deletePlayRecord(new CloudHistoryRequestDataForDelete(arrayList)).d0(k29.c()).M(vb.a()).subscribe(new a(videoCloudDataList));
        }
    }

    public final void t0(final int pageNo) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getRecentPlayDataList(pageNo, 10, CloudFeaturesConfigHelper.INSTANCE.isSupportMIMediaLibrary()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {

            public static final class a implements gec.d {
                public final RecentlyViewModel a;
                public final int b;

                public a(RecentlyViewModel recentlyViewModel, int i) {
                    this.a = recentlyViewModel;
                    this.b = i;
                }

                @Override
                public void a(VishaOauthData vishaOauthData) {
                    this.a.n0(true);
                    Log.e("RecentlyViewModel", "getCloudRecentlyVideoDataList refreshToken success");
                    this.a.t0(this.b);
                }
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                y45.j(baseResponse, "response");
                Log.i("CloudViewModel", "getRecentPlayList onNext  " + baseResponse.getMessage() + " " + baseResponse);
                if (!baseResponse.isSuccess()) {
                    if (!gec.c().o(baseResponse.getCode()) || this.b.getMRetryRefreshToken()) {
                        return;
                    }
                    gec.c().k(new a(this.b, pageNo));
                    return;
                }
                this.b.n0(false);
                Log.d("CloudViewModel", "response.isSuccess");
                List list = (List) baseResponse.getRecords();
                if (list != null) {
                    RecentlyViewModel recentlyViewModel = this.b;
                    el0.d(recentlyViewModel.getMCoroutineScope(), mc2.c(), null, new RecentlyViewModel$getCloudRecentlyVideoDataList$1$onNext$1$1(list, recentlyViewModel, null), 2, null);
                }
            }

            @Override
            public void onComplete() {
                Log.d("RecentlyViewModel", "getRecentPlayList onComplete");
            }

            @Override
            public void onError(Throwable th) {
                y45.j(th, "e");
                Log.e("RecentlyViewModel", "getRecentPlayList onError " + th.getMessage());
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                y45.j(rc2Var, "d");
                Log.d("CloudViewModel", "getRecentPlayList onSubscribe");
            }
        });
    }
}

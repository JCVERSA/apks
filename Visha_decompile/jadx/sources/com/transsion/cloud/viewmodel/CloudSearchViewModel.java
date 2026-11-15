package com.transsion.cloud.viewmodel;

import android.app.Application;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.netdisk.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import defpackage.a41;
import defpackage.apb;
import defpackage.cl0;
import defpackage.el0;
import defpackage.gec;
import defpackage.hk1;
import defpackage.k29;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.v6a;
import defpackage.vb;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\bJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\bJ\u0017\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u001b\u0010\u001cJ5\u0010\"\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\b\u0002\u0010 \u001a\u00020\t2\b\b\u0002\u0010!\u001a\u00020\t¢\u0006\u0004\b\"\u0010#J \u0010%\u001a\u00020\u00062\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000eH\u0086@¢\u0006\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R#\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0/8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0014\u00107\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00020\u000f088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R#\u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u000e0/8\u0006¢\u0006\f\n\u0004\b<\u00101\u001a\u0004\b=\u00103R\u0016\u0010@\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00106R\u001a\u0010C\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0015\u00106\u001a\u0004\bA\u0010BR3\u0010F\u001a\u001e\u0012\u001a\u0012\u0018\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010D0/8\u0006¢\u0006\f\n\u0004\b\u0018\u00101\u001a\u0004\bE\u00103R\u001d\u0010H\u001a\b\u0012\u0004\u0012\u00020\u001e0/8\u0006¢\u0006\f\n\u0004\b\u0010\u00101\u001a\u0004\bG\u00103R$\u0010M\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010\u0019R\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020O\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0018\u0010U\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010TR\u001d\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u000f0V8\u0006¢\u0006\f\n\u0004\bE\u0010W\u001a\u0004\bP\u0010XR\u0016\u0010[\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010Z¨\u0006\\"}, d2 = {"Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, MethodDecl.initName, "(Landroid/app/Application;)V", "Lzfb;", "u", "()V", "", "page", "w", "(I)V", "t", "", "", "j", "()Ljava/util/List;", "newHistory", "x", "(Ljava/lang/String;)V", CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "videoCloudData", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V", "nameFileName", "v", "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/lang/String;)V", "searchName", "", "mediaLibraryFlag", "pageNo", "pageSize", "r", "(Ljava/lang/String;Ljava/lang/Boolean;II)V", "videoList", "z", "(Ljava/util/List;Lwh1;)Ljava/lang/Object;", "Lhk1;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lhk1;", "coroutineExceptionHandler", "Lnk1;", "b", "Lnk1;", "mCoroutineScope", "Landroidx/lifecycle/MutableLiveData;", "c", "Landroidx/lifecycle/MutableLiveData;", "o", "()Landroidx/lifecycle/MutableLiveData;", "mSearchHistory", "d", "I", "mMaxCount", "", "e", "Ljava/util/List;", "mHistoryCache", "f", "k", "mCloudDataListClear", GslbInterceptor.HEADER_KEY_GSLB, "mCurrentPage", CmcdData.OBJECT_TYPE_MANIFEST, "()I", "mPageSize", "Lkotlin/Pair;", "n", "mSearchCloudDataList", TtmlNode.TAG_P, "mSearchLoadingLiveData", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "q", "()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "y", "mSelectedItemData", "Lxy0;", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", CmcdData.STREAM_TYPE_LIVE, "Lxy0;", "mCloudManager", "Lapb;", "Lapb;", "mVideoCloudData", "", "Ljava/util/Set;", "()Ljava/util/Set;", "mExposedItems", "Z", "mRetryRefreshToken", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudSearchViewModel extends AndroidViewModel {

    public final hk1 coroutineExceptionHandler;

    public final nk1 mCoroutineScope;

    public final MutableLiveData mSearchHistory;

    public final int mMaxCount;

    public final List mHistoryCache;

    public final MutableLiveData mCloudDataListClear;

    public int mCurrentPage;

    public final int mPageSize;

    public final MutableLiveData mSearchCloudDataList;

    public final MutableLiveData mSearchLoadingLiveData;

    public SearchResponseData mSelectedItemData;

    public xy0 mCloudManager;

    public apb mVideoCloudData;

    public final Set mExposedItems;

    public boolean mRetryRefreshToken;

    public static final class a extends kotlin.coroutines.a implements hk1 {
        public a(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(kotlin.coroutines.d dVar, Throwable th) {
            Log.e("CloudSearchViewModel", "Coroutine Exception: " + th.getMessage());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel(Application application) {
        super(application);
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        a aVar = new a(hk1.w1);
        this.coroutineExceptionHandler = aVar;
        this.mCoroutineScope = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(aVar));
        this.mSearchHistory = new MutableLiveData();
        this.mMaxCount = 10;
        this.mHistoryCache = new ArrayList();
        this.mCloudDataListClear = new MutableLiveData();
        this.mCurrentPage = 1;
        this.mPageSize = 10;
        this.mSearchCloudDataList = new MutableLiveData();
        this.mSearchLoadingLiveData = new MutableLiveData();
        this.mExposedItems = new LinkedHashSet();
        try {
            this.mCloudManager = a41.a.c(application);
            this.mVideoCloudData = CloudTaskDatabase.getInstance().videoCloudCacheDao();
        } catch (Exception unused) {
        }
    }

    public static void s(CloudSearchViewModel cloudSearchViewModel, String str, Boolean bool, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = cloudSearchViewModel.mCurrentPage;
        }
        if ((i3 & 8) != 0) {
            i2 = cloudSearchViewModel.mPageSize;
        }
        cloudSearchViewModel.r(str, bool, i, i2);
    }

    public final void h() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudSearchViewModel$clearHistory$1(this, null), 2, null);
    }

    public final void i(SearchResponseData videoCloudData) {
        if (MainApp.p()) {
            el0.d(this.mCoroutineScope, mc2.b(), null, new CloudSearchViewModel$deleteFile$1(videoCloudData, this, null), 2, null);
        } else {
            ToastUtils.s(R.string.net_not_connect);
        }
    }

    public final List getMHistoryCache() {
        return this.mHistoryCache;
    }

    public final MutableLiveData getMCloudDataListClear() {
        return this.mCloudDataListClear;
    }

    public final Set getMExposedItems() {
        return this.mExposedItems;
    }

    public final int getMPageSize() {
        return this.mPageSize;
    }

    public final MutableLiveData getMSearchCloudDataList() {
        return this.mSearchCloudDataList;
    }

    public final MutableLiveData getMSearchHistory() {
        return this.mSearchHistory;
    }

    public final MutableLiveData getMSearchLoadingLiveData() {
        return this.mSearchLoadingLiveData;
    }

    public final SearchResponseData getMSelectedItemData() {
        return this.mSelectedItemData;
    }

    public final void r(final String searchName, final Boolean mediaLibraryFlag, final int pageNo, final int pageSize) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getSearchData(searchName, mediaLibraryFlag, pageNo, pageSize).d0(k29.c()).M(vb.a()).subscribe(new pd7() {

            public static final class a implements gec.d {
                public final CloudSearchViewModel a;
                public final String b;
                public final Boolean c;
                public final int d;
                public final int e;

                public a(CloudSearchViewModel cloudSearchViewModel, String str, Boolean bool, int i, int i2) {
                    this.a = cloudSearchViewModel;
                    this.b = str;
                    this.c = bool;
                    this.d = i;
                    this.e = i2;
                }

                @Override
                public void a(VishaOauthData vishaOauthData) {
                    this.a.mRetryRefreshToken = true;
                    Log.d("CloudSearchViewModel", "getSearchData refreshToken success");
                    this.a.r(this.b, this.c, this.d, this.e);
                }
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                y45.j(baseResponse, "response");
                this.b.getMSearchLoadingLiveData().setValue(Boolean.FALSE);
                if (!baseResponse.isSuccess()) {
                    if (!gec.c().o(baseResponse.getCode()) || this.b.mRetryRefreshToken) {
                        Log.e("CloudSearchViewModel", "!isSuccess");
                        return;
                    } else {
                        gec.c().k(new a(this.b, searchName, mediaLibraryFlag, pageNo, pageSize));
                        return;
                    }
                }
                this.b.mRetryRefreshToken = false;
                Log.d("CloudSearchViewModel", "response.isSuccess");
                List list = (List) baseResponse.getRecords();
                if (list != null) {
                    CloudSearchViewModel cloudSearchViewModel = this.b;
                    el0.d(cloudSearchViewModel.mCoroutineScope, mc2.c(), null, new CloudSearchViewModel$getSearchData$1$onNext$1$1(cloudSearchViewModel, list, list, pageNo, null), 2, null);
                }
            }

            @Override
            public void onComplete() {
                Log.e("CloudSearchViewModel", "onComplete");
            }

            @Override
            public void onError(Throwable th) {
                y45.j(th, "e");
                Log.e("CloudSearchViewModel", "onError");
                this.b.getMSearchLoadingLiveData().setValue(Boolean.FALSE);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                y45.j(rc2Var, "d");
                Log.e("CloudSearchViewModel", "onSubscribe");
            }
        });
    }

    public final void t() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudSearchViewModel$getSearchHistory$1(this, null), 2, null);
    }

    public final void u() {
        this.mCurrentPage++;
    }

    public final void v(SearchResponseData videoCloudData, String nameFileName) {
        if (MainApp.p()) {
            el0.d(this.mCoroutineScope, mc2.b(), null, new CloudSearchViewModel$renameFile$1(this, videoCloudData, nameFileName, null), 2, null);
        } else {
            ToastUtils.s(R.string.net_not_connect);
        }
    }

    public final void w(int page) {
        this.mCurrentPage = page;
    }

    public final void x(String newHistory) {
        y45.j(newHistory, "newHistory");
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudSearchViewModel$setHistoryList$1(newHistory, this, null), 2, null);
    }

    public final void y(SearchResponseData searchResponseData) {
        this.mSelectedItemData = searchResponseData;
    }

    public final Object z(List list, wh1 wh1Var) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return zfb.a;
        }
        Object objG = cl0.g(mc2.b(), new CloudSearchViewModel$updateVideoCovers$2(list, this, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }
}

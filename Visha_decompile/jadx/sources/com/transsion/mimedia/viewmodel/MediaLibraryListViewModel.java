package com.transsion.mimedia.viewmodel;

import android.app.Application;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.el0;
import defpackage.hk1;
import defpackage.hw5;
import defpackage.i81;
import defpackage.k29;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.v6a;
import defpackage.vb;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.a;
import kotlin.coroutines.d;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0011J\r\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b\u0014\u0010\rR\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010 R\"\u0010'\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010\u0011R\u001a\u0010*\u001a\u00020\u000e8\u0006X\u0086D¢\u0006\f\n\u0004\b(\u0010#\u001a\u0004\b)\u0010%R#\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060+8\u0006¢\u0006\f\n\u0004\b)\u0010,\u001a\u0004\b(\u0010-R\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000e0+8\u0006¢\u0006\f\n\u0004\b\u0013\u0010,\u001a\u0004\b\"\u0010-¨\u00061"}, d2 = {"Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, MethodDecl.initName, "(Landroid/app/Application;)V", "", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "list", "Lzfb;", "j", "(Ljava/util/List;)V", "k", "()V", "", "page", CmcdData.STREAM_TYPE_LIVE, "(I)V", "pageNo", GslbInterceptor.HEADER_KEY_GSLB, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lhk1;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lhk1;", "coroutineExceptionHandler", "Lnk1;", "b", "Lnk1;", "c", "()Lnk1;", "mCoroutineScope", "Lhw5;", "Lhw5;", "mFavoriteDao", "d", "I", "getMCurrentPage", "()I", "setMCurrentPage", "mCurrentPage", "e", "f", "mPageSize", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "()Landroidx/lifecycle/MutableLiveData;", "mMediaLibraryList", "mLoadStatus", CmcdData.STREAMING_FORMAT_HLS, "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryListViewModel extends AndroidViewModel {

    public final hk1 coroutineExceptionHandler;

    public final nk1 mCoroutineScope;

    public hw5 mFavoriteDao;

    public int mCurrentPage;

    public final int mPageSize;

    public final MutableLiveData mMediaLibraryList;

    public final MutableLiveData mLoadStatus;

    public static final class b implements pd7 {
        public final int c;

        public b(int i) {
            this.c = i;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            List arrayList;
            y45.j(baseResponse, "response");
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                MediaLibraryListViewModel.this.getMLoadStatus().postValue(2);
                return;
            }
            List list = (List) baseResponse.getRecords();
            if (list == null) {
                MediaLibraryListViewModel.this.getMLoadStatus().postValue(1);
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((MIMediaLibraryData) it.next()).setMediaLibraryCollectFlag(true);
            }
            if (this.c == 1) {
                MediaLibraryListViewModel.this.getMMediaLibraryList().setValue(list);
                MediaLibraryListViewModel.this.j(list);
            } else {
                List list2 = (List) MediaLibraryListViewModel.this.getMMediaLibraryList().getValue();
                if (list2 == null || (arrayList = i81.e1(list2)) == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(list);
                MediaLibraryListViewModel.this.getMMediaLibraryList().setValue(arrayList);
            }
            if (list.size() < MediaLibraryListViewModel.this.getMPageSize()) {
                MediaLibraryListViewModel.this.getMLoadStatus().postValue(1);
                return;
            }
            List list3 = (List) MediaLibraryListViewModel.this.getMMediaLibraryList().getValue();
            if (list3 == null || baseResponse.getTotal() != list3.size()) {
                MediaLibraryListViewModel.this.getMLoadStatus().postValue(0);
            } else {
                MediaLibraryListViewModel.this.getMLoadStatus().postValue(1);
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            MediaLibraryListViewModel.this.getMLoadStatus().postValue(2);
            Log.e("MediaLibraryListViewModel", "getMediaLibraryCollectList onError " + th.getMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            y45.j(rc2Var, "d");
        }
    }

    public static final class c extends a implements hk1 {
        public c(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(d dVar, Throwable th) {
            Log.e("MediaLibraryListViewModel", "Coroutine Exception: " + th.getMessage());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaLibraryListViewModel(Application application) {
        super(application);
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        c cVar = new c(hk1.w1);
        this.coroutineExceptionHandler = cVar;
        this.mCoroutineScope = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(cVar));
        this.mCurrentPage = 1;
        this.mPageSize = 6;
        this.mMediaLibraryList = new MutableLiveData();
        this.mLoadStatus = new MutableLiveData();
        try {
            this.mFavoriteDao = CloudTaskDatabase.getInstance().miMediaLibraryCacheDao();
        } catch (Exception unused) {
        }
    }

    public static void h(MediaLibraryListViewModel mediaLibraryListViewModel, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mediaLibraryListViewModel.mCurrentPage;
        }
        mediaLibraryListViewModel.g(i);
    }

    public final void j(List list) {
        el0.d(this.mCoroutineScope, mc2.b(), null, new MediaLibraryListViewModel$insertFavoriteToCache$1(this, list, null), 2, null);
    }

    public final nk1 getMCoroutineScope() {
        return this.mCoroutineScope;
    }

    public final MutableLiveData getMLoadStatus() {
        return this.mLoadStatus;
    }

    public final MutableLiveData getMMediaLibraryList() {
        return this.mMediaLibraryList;
    }

    public final int getMPageSize() {
        return this.mPageSize;
    }

    public final void g(int pageNo) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getUserCollectDataList(pageNo, this.mPageSize).d0(k29.c()).M(vb.a()).subscribe(new b(pageNo));
    }

    public final void i() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new MediaLibraryListViewModel$getMediaLibraryFromCache$1(this, null), 2, null);
    }

    public final void k() {
        this.mCurrentPage++;
    }

    public final void l(int page) {
        this.mCurrentPage = page;
    }
}

package com.transsion.mimedia.viewmodel;

import android.app.Application;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.playercommon.data.MIMediaLibraryCollectAddRequest;
import com.transsion.playercommon.data.MIMediaLibraryCollectCancelRequest;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import defpackage.y45;
import java.util.Collection;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 *2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\t¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\fR\u001a\u0010\u001e\u001a\u00020\t8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0013\u0010\u0018\u001a\u0004\b\u001d\u0010\u001aR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\r0\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001f\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u001f8\u0006¢\u0006\f\n\u0004\b\"\u0010!\u001a\u0004\b \u0010#R\u001f\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u001f8\u0006¢\u0006\f\n\u0004\b(\u0010!\u001a\u0004\b(\u0010#R\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\t0\u001f8\u0006¢\u0006\f\n\u0004\b\u0019\u0010!\u001a\u0004\b*\u0010#R\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020,0\u001f8\u0006¢\u0006\f\n\u0004\b-\u0010!\u001a\u0004\b-\u0010#¨\u0006/"}, d2 = {"Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, MethodDecl.initName, "(Landroid/app/Application;)V", "Lzfb;", CmcdData.STREAM_TYPE_LIVE, "()V", "", "page", CmcdData.OBJECT_TYPE_MANIFEST, "(I)V", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "mediaLibrary", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V", "", "mediaLibraryId", "b", "(Ljava/lang/String;)V", "pageNo", "j", "(Ljava/lang/String;I)V", "I", "f", "()I", "setMCurrentPage", "mCurrentPage", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "mPageSize", "Landroidx/lifecycle/MutableLiveData;", "c", "Landroidx/lifecycle/MutableLiveData;", "d", "()Landroidx/lifecycle/MutableLiveData;", "mAllMediaLibraryList", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectAdd;", "mAddCollectResult", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectCancel;", "e", "mCancleCollectResult", CmcdData.STREAMING_FORMAT_HLS, "mLoadStatus", "", GslbInterceptor.HEADER_KEY_GSLB, "mIsLimitMaxed", "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryVideoViewModel extends AndroidViewModel {

    public int mCurrentPage;

    public final int mPageSize;

    public final MutableLiveData mAllMediaLibraryList;

    public final MutableLiveData mAddCollectResult;

    public final MutableLiveData mCancleCollectResult;

    public final MutableLiveData mLoadStatus;

    public final MutableLiveData mIsLimitMaxed;

    public static final class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            y45.j(baseResponse, "response");
            Log.d("MediaLibraryVideoViewModel", "addCollectMediaLibrary response: " + baseResponse);
            if (baseResponse.isSuccess() && baseResponse.getData() != null) {
                MediaLibraryVideoViewModel.this.getMAddCollectResult().postValue(baseResponse.getData());
                return;
            }
            if (baseResponse.getCode() == 60004) {
                MediaLibraryVideoViewModel.this.getMIsLimitMaxed().setValue(Boolean.TRUE);
            }
            MediaLibraryVideoViewModel.this.getMAddCollectResult().postValue(null);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            MediaLibraryVideoViewModel.this.getMAddCollectResult().postValue(null);
            Log.e("MediaLibraryVideoViewModel", "addCollectMediaLibrary onError " + th.getMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            y45.j(rc2Var, "d");
        }
    }

    public static final class c implements pd7 {
        public c() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            y45.j(baseResponse, "response");
            Log.d("MediaLibraryVideoViewModel", "cancelCollectMediaLibrary response: " + baseResponse);
            if (!baseResponse.isSuccess() || baseResponse.getData() == null) {
                MediaLibraryVideoViewModel.this.getMCancleCollectResult().postValue(null);
            } else {
                MediaLibraryVideoViewModel.this.getMCancleCollectResult().postValue(baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            MediaLibraryVideoViewModel.this.getMCancleCollectResult().postValue(null);
            Log.e("MediaLibraryVideoViewModel", "cancelCollectMediaLibrary onError " + th.getMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            y45.j(rc2Var, "d");
        }
    }

    public static final class d implements pd7 {
        public d() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            y45.j(baseResponse, "response");
            Log.d("MediaLibraryVideoViewModel", "getMediaLibraryVideoList response " + baseResponse);
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                MediaLibraryVideoViewModel.this.getMLoadStatus().postValue(2);
                return;
            }
            if (baseResponse.getRecords() != null) {
                Object records = baseResponse.getRecords();
                y45.i(records, "getRecords(...)");
                if (!((Collection) records).isEmpty()) {
                    MediaLibraryVideoViewModel.this.getMAllMediaLibraryList().setValue(((List) baseResponse.getRecords()).get(0));
                    List<MIMediaVideoData> videoList = ((MIMediaLibraryData) ((List) baseResponse.getRecords()).get(0)).getVideoList();
                    if (videoList == null || videoList.size() < MediaLibraryVideoViewModel.this.getMPageSize()) {
                        MediaLibraryVideoViewModel.this.getMLoadStatus().postValue(1);
                        return;
                    } else {
                        MediaLibraryVideoViewModel.this.getMLoadStatus().postValue(0);
                        return;
                    }
                }
            }
            MediaLibraryVideoViewModel.this.getMLoadStatus().postValue(1);
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            y45.j(th, "e");
            MediaLibraryVideoViewModel.this.getMLoadStatus().postValue(2);
            Log.e("MediaLibraryVideoViewModel", "getMediaLibraryVideoList onError " + th.getMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            y45.j(rc2Var, "d");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaLibraryVideoViewModel(Application application) {
        super(application);
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        this.mCurrentPage = 1;
        this.mPageSize = 9;
        this.mAllMediaLibraryList = new MutableLiveData();
        this.mAddCollectResult = new MutableLiveData();
        this.mCancleCollectResult = new MutableLiveData();
        this.mLoadStatus = new MutableLiveData();
        this.mIsLimitMaxed = new MutableLiveData();
    }

    public static void k(MediaLibraryVideoViewModel mediaLibraryVideoViewModel, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = mediaLibraryVideoViewModel.mCurrentPage;
        }
        mediaLibraryVideoViewModel.j(str, i);
    }

    public final void a(MIMediaLibraryData mediaLibrary) {
        y45.j(mediaLibrary, "mediaLibrary");
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getMICollectAdd(new MIMediaLibraryCollectAddRequest(mediaLibrary.getMediaLibraryId(), mediaLibrary.getVirtualPersonName(), mediaLibrary.getVirtualPersonPhoto())).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public final void b(String mediaLibraryId) {
        y45.j(mediaLibraryId, "mediaLibraryId");
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getMICollectCancel(new MIMediaLibraryCollectCancelRequest(mediaLibraryId)).d0(k29.c()).M(vb.a()).subscribe(new c());
    }

    public final MutableLiveData getMAddCollectResult() {
        return this.mAddCollectResult;
    }

    public final MutableLiveData getMAllMediaLibraryList() {
        return this.mAllMediaLibraryList;
    }

    public final MutableLiveData getMCancleCollectResult() {
        return this.mCancleCollectResult;
    }

    public final int getMCurrentPage() {
        return this.mCurrentPage;
    }

    public final MutableLiveData getMIsLimitMaxed() {
        return this.mIsLimitMaxed;
    }

    public final MutableLiveData getMLoadStatus() {
        return this.mLoadStatus;
    }

    public final int getMPageSize() {
        return this.mPageSize;
    }

    public final void j(String mediaLibraryId, int pageNo) {
        y45.j(mediaLibraryId, "mediaLibraryId");
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getMIVideoDataList(mediaLibraryId, pageNo, this.mPageSize).d0(k29.c()).M(vb.a()).subscribe(new d());
    }

    public final void l() {
        this.mCurrentPage++;
    }

    public final void m(int page) {
        this.mCurrentPage = page;
    }
}

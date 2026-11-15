package com.transsion.cloud.updownload.viewmodel;

import android.app.Application;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.clouddownload.DownloadHeaderTask;
import com.transsion.cloud.updownload.livedata.SmartTaskLiveData;
import com.transsion.cloud.upload.task.UploadHeaderTask;
import com.transsion.cloudcore.db.CloudTaskDao;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.sniffer_load.GlobalDownloadManger;
import defpackage.a41;
import defpackage.cl0;
import defpackage.el0;
import defpackage.eu9;
import defpackage.f81;
import defpackage.hk1;
import defpackage.i81;
import defpackage.mc2;
import defpackage.mq3;
import defpackage.nk1;
import defpackage.ri4;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.d;

@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0082@¢\u0006\u0004\b\n\u0010\u000bJ/\u0010\u0012\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0016\u0010\u0010\u001a\u0012\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0003J/\u0010\u0018\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0016\u0010\u0010\u001a\u0012\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0018\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0019\u0010\u0015J'\u0010\u001b\u001a\u00020\u00112\b\u0010\u001a\u001a\u0004\u0018\u00010\f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e¢\u0006\u0004\b\u001b\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u001c\u0010\u0015J\r\u0010\u001d\u001a\u00020\u0011¢\u0006\u0004\b\u001d\u0010\u0003J/\u0010\u001f\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0016\u0010\u0010\u001a\u0012\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u001f\u0010\u0013J\u0017\u0010 \u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b \u0010\u0015J-\u0010!\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0014\u0010\u0010\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0004\u0018\u00010\u000e¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010\"\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\"\u0010\u0015J\r\u0010#\u001a\u00020\u0011¢\u0006\u0004\b#\u0010\u0003J\r\u0010$\u001a\u00020\u0011¢\u0006\u0004\b$\u0010\u0003J'\u0010%\u001a\u00020\u00112\b\u0010\u001a\u001a\u0004\u0018\u00010\f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e¢\u0006\u0004\b%\u0010\u0013J\u0017\u0010&\u001a\u00020\u00112\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b&\u0010\u0015J\r\u0010'\u001a\u00020\u0011¢\u0006\u0004\b'\u0010\u0003J\r\u0010(\u001a\u00020\u0011¢\u0006\u0004\b(\u0010\u0003J\u0013\u0010+\u001a\b\u0012\u0004\u0012\u00020*0)¢\u0006\u0004\b+\u0010,J#\u0010.\u001a\u00020\u00112\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010-\u001a\u00020\t¢\u0006\u0004\b.\u0010/R\u001d\u00106\u001a\b\u0012\u0004\u0012\u000201008\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\"\u00109\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00040)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\"\u0010;\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00040)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00108R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020\t0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u00108R \u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00040)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00108R \u0010@\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00040)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u00108R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00020\t0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u00108R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010FR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020*0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u00108R\u0014\u0010K\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010JR\u0014\u0010N\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010PR#\u0010S\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004008\u0006¢\u0006\f\n\u0004\b+\u00103\u001a\u0004\bR\u00105R#\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004008\u0006¢\u0006\f\n\u0004\bR\u00103\u001a\u0004\bT\u00105¨\u0006V"}, d2 = {"Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;", "Landroidx/lifecycle/ViewModel;", MethodDecl.initName, "()V", "", "Lcom/transsion/cloudcore/db/CloudTaskEntity;", "taskList", "", "", "", "q", "(Ljava/util/List;Lwh1;)Ljava/lang/Object;", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "Landroidx/lifecycle/Observer;", "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;", "observer", "Lzfb;", GslbInterceptor.HEADER_KEY_GSLB, "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V", "z", "(Landroidx/lifecycle/LifecycleOwner;)V", "j", "k", "f", "y", "owner", "t", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "v", "Lcom/transsion/cloud/upload/task/NewUploadTask;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "x", CmcdData.STREAMING_FORMAT_HLS, "C", CmcdData.OBJECT_TYPE_MANIFEST, CmcdData.STREAM_TYPE_LIVE, "u", "B", "w", "r", "Landroidx/lifecycle/MutableLiveData;", "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", "n", "()Landroidx/lifecycle/MutableLiveData;", "isUploaded", "s", "(Ljava/util/List;Z)V", "Landroidx/lifecycle/LiveData;", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroidx/lifecycle/LiveData;", "getTaskCountLiveData", "()Landroidx/lifecycle/LiveData;", "taskCountLiveData", "b", "Landroidx/lifecycle/MutableLiveData;", "downloadingTasks", "c", "downloadingGroupTasks", "d", "hasDownloadTaskLoading", "e", "uploadingTasks", "uploadingGroupTasks", "hasUploadTaskLoading", "Lmq3;", "Lmq3;", "mCloudFileManager", "Leu9;", "Leu9;", "mSpaceManager", "mCloudStorageInfo", "Lcom/transsion/cloudcore/db/CloudTaskDao;", "Lcom/transsion/cloudcore/db/CloudTaskDao;", "mCloudTaskDao", "Lhk1;", "Lhk1;", "coroutineExceptionHandler", "Lnk1;", "Lnk1;", "mCoroutineScope", "o", "smartDownloadedTaskLiveData", TtmlNode.TAG_P, "smartUploadedTaskLiveData", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransferDataViewModel extends ViewModel {

    public final LiveData taskCountLiveData;

    public mq3 mCloudFileManager;

    public eu9 mSpaceManager;

    public final CloudTaskDao mCloudTaskDao;

    public final hk1 coroutineExceptionHandler;

    public final nk1 mCoroutineScope;

    public final LiveData smartDownloadedTaskLiveData;

    public final LiveData smartUploadedTaskLiveData;

    public final MutableLiveData downloadingTasks = new MutableLiveData();

    public final MutableLiveData downloadingGroupTasks = new MutableLiveData();

    public final MutableLiveData hasDownloadTaskLoading = new MutableLiveData();

    public final MutableLiveData uploadingTasks = new MutableLiveData();

    public final MutableLiveData uploadingGroupTasks = new MutableLiveData();

    public final MutableLiveData hasUploadTaskLoading = new MutableLiveData();

    public final MutableLiveData mCloudStorageInfo = new MutableLiveData();

    public static final class a extends kotlin.coroutines.a implements hk1 {
        public a(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(d dVar, Throwable th) {
            Log.e("CloudManagerImpl", "Coroutine Exception: " + th.getMessage());
        }
    }

    public TransferDataViewModel() {
        CloudTaskDao cloudTaskDao = CloudTaskDatabase.getInstance().cloudTaskDao();
        y45.i(cloudTaskDao, "cloudTaskDao(...)");
        this.mCloudTaskDao = cloudTaskDao;
        a aVar = new a(hk1.w1);
        this.coroutineExceptionHandler = aVar;
        this.mCoroutineScope = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(aVar));
        this.smartDownloadedTaskLiveData = new SmartTaskLiveData(cloudTaskDao, SmartTaskLiveData.TaskType.DOWNLOADED);
        this.smartUploadedTaskLiveData = new SmartTaskLiveData(cloudTaskDao, SmartTaskLiveData.TaskType.UPLOADED);
        this.taskCountLiveData = cloudTaskDao.getTaskCountLiveData();
        try {
            a41 a41Var = a41.a;
            Application applicationF = MainApp.f();
            y45.i(applicationF, "getApp(...)");
            this.mCloudFileManager = a41Var.b(applicationF);
            Application applicationF2 = MainApp.f();
            y45.i(applicationF2, "getApp(...)");
            this.mSpaceManager = a41Var.e(applicationF2);
        } catch (Exception unused) {
            LogUtils.m("TransferDataViewModel", "CloudTransferFactory getCloudFileManager error");
        }
    }

    public final void A(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.hasDownloadTaskLoading;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }

    public final void B(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.hasUploadTaskLoading;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }

    public final void C(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.uploadingGroupTasks;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }

    public final void f(LifecycleOwner lifecycleOwner, Observer observer) {
        MutableLiveData mutableLiveData = this.downloadingGroupTasks;
        y45.g(lifecycleOwner);
        y45.g(observer);
        mutableLiveData.observe(lifecycleOwner, observer);
    }

    public final void g(LifecycleOwner lifecycleOwner, Observer observer) {
        MutableLiveData mutableLiveData = this.downloadingTasks;
        y45.g(lifecycleOwner);
        y45.g(observer);
        mutableLiveData.observe(lifecycleOwner, observer);
    }

    public final void h(LifecycleOwner lifecycleOwner, Observer observer) {
        MutableLiveData mutableLiveData = this.uploadingGroupTasks;
        y45.g(lifecycleOwner);
        y45.g(observer);
        mutableLiveData.observe(lifecycleOwner, observer);
    }

    public final void i(LifecycleOwner lifecycleOwner, Observer observer) {
        MutableLiveData mutableLiveData = this.uploadingTasks;
        y45.g(lifecycleOwner);
        y45.g(observer);
        mutableLiveData.observe(lifecycleOwner, observer);
    }

    public final void j() {
        List listT = GlobalDownloadManger.B().t();
        Log.e("TransferDataViewModel", "flushDownLoadingTasks:" + listT.size() + StringUtils.COMMA + GlobalDownloadManger.B().e().size() + StringUtils.COMMA + GlobalDownloadManger.B().x().size() + ")");
        this.downloadingTasks.postValue(listT);
        k();
    }

    public final void k() {
        List listE = GlobalDownloadManger.B().e();
        y45.g(listE);
        f81.X(listE);
        List list = listE;
        if (!list.isEmpty()) {
            listE.add(0, new DownloadHeaderTask(UploadHeaderTask.HeaderType.FAILED));
        }
        List listX = GlobalDownloadManger.B().x();
        y45.g(listX);
        f81.X(listX);
        if (!listX.isEmpty()) {
            listX.add(0, new DownloadHeaderTask(UploadHeaderTask.HeaderType.NOT_FAILED));
        }
        this.downloadingGroupTasks.postValue(i81.J0(list, listX));
    }

    public final void l() {
        List listD = ri4.e().d();
        y45.g(listD);
        f81.X(listD);
        List list = listD;
        if (!list.isEmpty()) {
            listD.add(0, new UploadHeaderTask(UploadHeaderTask.HeaderType.FAILED));
        }
        List listF = ri4.e().f();
        y45.g(listF);
        f81.X(listF);
        if (!listF.isEmpty()) {
            listF.add(0, new UploadHeaderTask(UploadHeaderTask.HeaderType.NOT_FAILED));
        }
        this.uploadingGroupTasks.postValue(i81.J0(list, listF));
    }

    public final void m() {
        List listB = ri4.e().b();
        Log.e("TransferDataViewModel", "flushUploadingTasks:" + listB.size() + StringUtils.COMMA + ri4.e().d().size() + StringUtils.COMMA + ri4.e().f().size() + ")");
        this.uploadingTasks.postValue(listB);
        l();
    }

    public final MutableLiveData getMCloudStorageInfo() {
        return this.mCloudStorageInfo;
    }

    public final LiveData getSmartDownloadedTaskLiveData() {
        return this.smartDownloadedTaskLiveData;
    }

    public final LiveData getSmartUploadedTaskLiveData() {
        return this.smartUploadedTaskLiveData;
    }

    public final Object q(List list, wh1 wh1Var) {
        return cl0.g(mc2.b(), new TransferDataViewModel$handleCloudFileStatus$2(list, this, null), wh1Var);
    }

    public final void r() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new TransferDataViewModel$loadCloudStorageInfo$1(this, null), 2, null);
    }

    public final void s(List taskList, boolean isUploaded) {
        y45.j(taskList, "taskList");
        el0.d(this.mCoroutineScope, mc2.b(), null, new TransferDataViewModel$loadFinishedTask$1(taskList, this, null), 2, null);
    }

    public final void t(LifecycleOwner owner, Observer observer) {
        MutableLiveData mutableLiveData = this.hasDownloadTaskLoading;
        y45.g(owner);
        y45.g(observer);
        mutableLiveData.observe(owner, observer);
    }

    public final void u(LifecycleOwner owner, Observer observer) {
        MutableLiveData mutableLiveData = this.hasUploadTaskLoading;
        y45.g(owner);
        y45.g(observer);
        mutableLiveData.observe(owner, observer);
    }

    public final void v() {
        this.hasDownloadTaskLoading.postValue(Boolean.TRUE);
    }

    public final void w() {
        this.hasUploadTaskLoading.postValue(Boolean.TRUE);
    }

    public final void x(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.uploadingTasks;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }

    public final void y(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.downloadingGroupTasks;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }

    public final void z(LifecycleOwner lifecycleOwner) {
        MutableLiveData mutableLiveData = this.downloadingTasks;
        y45.g(lifecycleOwner);
        mutableLiveData.removeObservers(lifecycleOwner);
    }
}

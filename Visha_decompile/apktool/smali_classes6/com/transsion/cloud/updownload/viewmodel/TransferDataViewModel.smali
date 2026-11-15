.class public final Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0082@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0012\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0016\u0010\u0010\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J/\u0010\u0018\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0016\u0010\u0010\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0019\u0010\u0015J\'\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\r\u0010\u001d\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J/\u0010\u001f\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0016\u0010\u0010\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u001f\u0010\u0013J\u0017\u0010 \u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008 \u0010\u0015J-\u0010!\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0014\u0010\u0010\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008!\u0010\u0013J\u0017\u0010\"\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\"\u0010\u0015J\r\u0010#\u001a\u00020\u0011\u00a2\u0006\u0004\u0008#\u0010\u0003J\r\u0010$\u001a\u00020\u0011\u00a2\u0006\u0004\u0008$\u0010\u0003J\'\u0010%\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u000e\u00a2\u0006\u0004\u0008%\u0010\u0013J\u0017\u0010&\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008&\u0010\u0015J\r\u0010\'\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\'\u0010\u0003J\r\u0010(\u001a\u00020\u0011\u00a2\u0006\u0004\u0008(\u0010\u0003J\u0013\u0010+\u001a\u0008\u0012\u0004\u0012\u00020*0)\u00a2\u0006\u0004\u0008+\u0010,J#\u0010.\u001a\u00020\u00112\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010-\u001a\u00020\t\u00a2\u0006\u0004\u0008.\u0010/R\u001d\u00106\u001a\u0008\u0012\u0004\u0012\u000201008\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\"\u00109\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00040)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\"\u0010;\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00040)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00108R\u001a\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\t0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u00108R \u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00040)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00108R \u0010@\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00040)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00108R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\t0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u00108R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010FR\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00020*0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00108R\u0014\u0010K\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010JR\u0014\u0010N\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010PR#\u0010S\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004008\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u00103\u001a\u0004\u0008R\u00105R#\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004008\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u00103\u001a\u0004\u0008T\u00105\u00a8\u0006V"
    }
    d2 = {
        "Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
        "taskList",
        "",
        "",
        "",
        "q",
        "(Ljava/util/List;Lwh1;)Ljava/lang/Object;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycleOwner",
        "Landroidx/lifecycle/Observer;",
        "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
        "observer",
        "Lzfb;",
        "g",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V",
        "z",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "j",
        "k",
        "f",
        "y",
        "owner",
        "t",
        "A",
        "v",
        "Lcom/transsion/cloud/upload/task/NewUploadTask;",
        "i",
        "x",
        "h",
        "C",
        "m",
        "l",
        "u",
        "B",
        "w",
        "r",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "n",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isUploaded",
        "s",
        "(Ljava/util/List;Z)V",
        "Landroidx/lifecycle/LiveData;",
        "",
        "a",
        "Landroidx/lifecycle/LiveData;",
        "getTaskCountLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "taskCountLiveData",
        "b",
        "Landroidx/lifecycle/MutableLiveData;",
        "downloadingTasks",
        "c",
        "downloadingGroupTasks",
        "d",
        "hasDownloadTaskLoading",
        "e",
        "uploadingTasks",
        "uploadingGroupTasks",
        "hasUploadTaskLoading",
        "Lmq3;",
        "Lmq3;",
        "mCloudFileManager",
        "Leu9;",
        "Leu9;",
        "mSpaceManager",
        "mCloudStorageInfo",
        "Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "Lcom/transsion/cloudcore/db/CloudTaskDao;",
        "mCloudTaskDao",
        "Lhk1;",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lnk1;",
        "Lnk1;",
        "mCoroutineScope",
        "o",
        "smartDownloadedTaskLiveData",
        "p",
        "smartUploadedTaskLiveData",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/LiveData;

.field public final b:Landroidx/lifecycle/MutableLiveData;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public h:Lmq3;

.field public i:Leu9;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public final k:Lcom/transsion/cloudcore/db/CloudTaskDao;

.field public final l:Lhk1;

.field public final m:Lnk1;

.field public final n:Landroidx/lifecycle/LiveData;

.field public final o:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "getApp(...)"

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->cloudTaskDao()Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object v1

    const-string v2, "cloudTaskDao(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->k:Lcom/transsion/cloudcore/db/CloudTaskDao;

    sget-object v2, Lhk1;->w1:Lhk1$b;

    new-instance v3, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$a;

    invoke-direct {v3, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$a;-><init>(Lhk1$b;)V

    iput-object v3, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->l:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5, v4}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v2

    invoke-interface {v2, v3}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m:Lnk1;

    new-instance v2, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    sget-object v3, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;->DOWNLOADED:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-direct {v2, v1, v3}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V

    iput-object v2, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->n:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    sget-object v3, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;->UPLOADED:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    invoke-direct {v2, v1, v3}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V

    iput-object v2, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->o:Landroidx/lifecycle/LiveData;

    invoke-interface {v1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getTaskCountLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->a:Landroidx/lifecycle/LiveData;

    :try_start_0
    sget-object v1, La41;->a:La41;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, La41;->b(Landroid/content/Context;)Lmq3;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->h:Lmq3;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, La41;->e(Landroid/content/Context;)Leu9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->i:Leu9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CloudTransferFactory getCloudFileManager error"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TransferDataViewModel"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)Lmq3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->h:Lmq3;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)Lcom/transsion/cloudcore/db/CloudTaskDao;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->k:Lcom/transsion/cloudcore/db/CloudTaskDao;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)Leu9;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->i:Leu9;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->q(Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final B(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final C(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final g(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final h(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final j()V
    .locals 6

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushDownLoadingTasks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransferDataViewModel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->k()V

    return-void
.end method

.method public final k()V
    .locals 5

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lf81;->X(Ljava/util/List;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;

    sget-object v4, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-direct {v2, v4}, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->x()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lf81;->X(Ljava/util/List;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;

    sget-object v4, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->NOT_FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-direct {v2, v4}, Lcom/transsion/cloud/clouddownload/DownloadHeaderTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 5

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lf81;->X(Ljava/util/List;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/cloud/upload/task/UploadHeaderTask;

    sget-object v4, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-direct {v2, v4}, Lcom/transsion/cloud/upload/task/UploadHeaderTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lf81;->X(Ljava/util/List;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/cloud/upload/task/UploadHeaderTask;

    sget-object v4, Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;->NOT_FAILED:Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;

    invoke-direct {v2, v4}, Lcom/transsion/cloud/upload/task/UploadHeaderTask;-><init>(Lcom/transsion/cloud/upload/task/UploadHeaderTask$HeaderType;)V

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 6

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v2

    invoke-virtual {v2}, Lri4;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v3

    invoke-virtual {v3}, Lri4;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushUploadingTasks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransferDataViewModel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->l()V

    return-void
.end method

.method public final n()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->n:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final p()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->o:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final q(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$handleCloudFileStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$handleCloudFileStatus$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadCloudStorageInfo$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadCloudStorageInfo$1;-><init>(Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final s(Ljava/util/List;Z)V
    .locals 6

    const-string p2, "taskList"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel$loadFinishedTask$1;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final t(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final u(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final x(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final y(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final z(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

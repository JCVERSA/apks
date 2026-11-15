.class public final Lcom/transsion/cloud/viewmodel/RecentlyViewModel;
.super Lcom/transsion/cloud/viewmodel/CloudViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/cloud/viewmodel/RecentlyViewModel;",
        "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "videoCloudDataList",
        "Lzfb;",
        "s0",
        "(Ljava/util/List;)V",
        "",
        "pageNo",
        "t0",
        "(I)V",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->G()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel;->t0(I)V

    return-void
.end method


# virtual methods
.method public final s0(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->deletePlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$a;-><init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    :cond_1
    return-void
.end method

.method public final t0(I)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    sget-object v1, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->isSupportMIMediaLibrary()Z

    move-result v1

    const/16 v2, 0xa

    invoke-interface {v0, p1, v2, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getRecentPlayDataList(IIZ)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/cloud/viewmodel/RecentlyViewModel$getCloudRecentlyVideoDataList$1;-><init>(Lcom/transsion/cloud/viewmodel/RecentlyViewModel;I)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

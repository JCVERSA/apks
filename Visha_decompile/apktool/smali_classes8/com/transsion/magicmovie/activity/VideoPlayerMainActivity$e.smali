.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->handleAppFootActionBarClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;->b(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->b2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lm4c;

    invoke-direct {p2}, Lm4c;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;

    invoke-direct {p2, p1}, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p1

    const-class v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {p1, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->deletePlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e$a;-><init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$e;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

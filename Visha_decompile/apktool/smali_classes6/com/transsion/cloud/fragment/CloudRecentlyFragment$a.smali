.class public final Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;->b:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Le74;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;->d(Le74;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;->c(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/transsion/dbdata/beans/VideoCloudData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Le74;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a;->b:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ll31;

    invoke-direct {p1}, Ll31;-><init>()V

    new-instance p2, Lm31;

    invoke-direct {p2, p1}, Lm31;-><init>(Le74;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "collect(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    new-instance p1, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p0

    const-class p2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {p0, p2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->deletePlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a$a;

    invoke-direct {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$a$a;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

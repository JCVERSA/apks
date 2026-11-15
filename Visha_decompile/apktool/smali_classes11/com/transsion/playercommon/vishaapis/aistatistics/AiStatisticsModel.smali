.class public Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static markAlgorithmRecommend(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisicsApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisicsApiService;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsProvider;->AlgorithmMark(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisicsApiService;->markRecommend(Ljava/lang/String;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel$1;

    invoke-direct {p1}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel$1;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

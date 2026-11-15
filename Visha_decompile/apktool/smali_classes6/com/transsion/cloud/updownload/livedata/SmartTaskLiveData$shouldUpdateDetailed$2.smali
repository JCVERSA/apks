.class final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->p(Ljava/util/List;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "",
        "<anonymous>",
        "(Lnk1;)Z"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$shouldUpdateDetailed$2"
    f = "SmartTaskLiveData.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;",
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->$newList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->$newList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->label:I

    const/4 v2, 0x0

    const-string v3, "visha_cloud_SmartTaskLiveData"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->$newList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->$newList:Ljava/util/List;

    iput v4, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->e(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " No previous signature, should update"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v2, v4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c()Ljava/util/Set;

    move-result-object v5

    invoke-static {v1, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Task IDs combination changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " File exist status changed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b()J

    move-result-wide v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Latest update time changed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->d(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Task list became empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    :goto_3
    move v4, v2

    goto :goto_5

    :goto_4
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error in detailed update check: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$shouldUpdateDetailed$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Detailed update check cancelled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {v4}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

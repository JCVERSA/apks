.class final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;-><init>(Lcom/transsion/cloudcore/db/CloudTaskDao;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$1$2"
    f = "SmartTaskLiveData.kt"
    l = {
        0x5f,
        0x61,
        0x63,
        0x64
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
.method public constructor <init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->$newList:Ljava/util/List;

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

    new-instance p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->$newList:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "visha_cloud_SmartTaskLiveData"

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Task count unchanged, checking detailed changes in IO thread..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->label:I

    const-wide/16 v7, 0x32

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->b(JLwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->$newList:Ljava/util/List;

    iput v4, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->m(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Task details changed, updating..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->$newList:Ljava/util/List;

    iput v3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->n(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2$1;

    iget-object v3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v4, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->$newList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2$1;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V

    iput v2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Task list not changed, skip update"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  Error in background processing: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$1$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  Task comparison cancelled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.class final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->o(Ljava/util/List;Lwh1;)Ljava/lang/Object;
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
        "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;",
        "<anonymous>",
        "(Lnk1;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$calculateTaskSignature$2"
    f = "SmartTaskLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

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
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->$taskList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
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

    new-instance v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->$taskList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-direct {v0, v1, p0, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lwh1;)V

    iput-object p1, v0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "visha_cloud_SmartTaskLiveData"

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->label:I

    if-nez v1, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->$taskList:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {p1}, Lkotlinx/coroutines/d;->h(Lnk1;)V

    iget-object v9, v8, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    const-string v10, "taskId"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v10, Lkotlin/Pair;

    iget-boolean v11, v8, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    invoke-static {v11}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v8, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    invoke-static {v12}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v8, v8, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    iget-wide v10, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v10, v8, v10

    if-lez v10, :cond_0

    iput-wide v8, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Found task with empty taskId, skipping"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lmk0;->b(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    iget-wide v3, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;-><init>(Ljava/util/Set;Ljava/util/Map;J)V

    return-object p0

    :goto_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error calculating task signature: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;-><init>(Ljava/util/Set;Ljava/util/Map;J)V

    return-object p0

    :catch_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$calculateTaskSignature$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Task signature calculation cancelled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;-><init>(Ljava/util/Set;Ljava/util/Map;J)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->r(Ljava/util/List;Lwh1;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "",
        "<anonymous>",
        "(Lnk1;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.updownload.livedata.SmartTaskLiveData$updateLastValues$2"
    f = "SmartTaskLiveData.kt"
    l = {
        0xcf
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
            "+",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->h(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v2, v3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    new-instance p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;-><init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, ""

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->label:I

    const/4 v3, 0x1

    const-string v4, "visha_cloud_SmartTaskLiveData"

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->l(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->g(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;I)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->$newList:Ljava/util/List;

    iput v3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->label:I

    invoke-static {p1, v0, p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->c(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {v0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->i(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c()Ljava/util/Set;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    const-string v6, ","

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->j(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    const-string v6, ","

    new-instance v11, Lcom/transsion/cloud/updownload/livedata/a;

    invoke-direct {v11}, Lcom/transsion/cloud/updownload/livedata/a;-><init>()V

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v13}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->h(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->k(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;J)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->i(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1, v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->j(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1, v0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->h(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->k(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;J)V

    :goto_3
    iget-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Last values updated successfully"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error updating last values: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5

    :catch_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$updateLastValues$2;->this$0:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->f(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$TaskType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Update last values cancelled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_5
    return-object p0
.end method

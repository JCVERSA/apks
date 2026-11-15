.class final Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->fetchData()V
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
    c = "com.transsion.dbdata.source.data.cache.MediaCombineCacheManager$fetchData$1"
    f = "MediaCombineCacheManager.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;",
            "Lwh1<",
            "-",
            "Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    new-instance v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    invoke-direct {v0, p0, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    iput-object p1, v0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    :try_start_1
    new-instance v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$1;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    const/4 v8, 0x0

    invoke-direct {v5, v2, v8}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$1;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v9

    new-instance v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$2;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    invoke-direct {v5, v2, v8}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$2;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v10

    new-instance v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$3;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    invoke-direct {v5, v2, v8}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$3;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v11

    new-instance v5, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$4;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->this$0:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    invoke-direct {v5, v2, v8}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1$4;-><init>(Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ld72;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    aput-object v10, v2, v0

    const/4 v3, 0x2

    aput-object v11, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput v0, p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$fetchData$1;->label:I

    invoke-static {p1, p0}, Lx30;->a(Ljava/util/Collection;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v1, :cond_2

    return-object v1

    :goto_0
    const-string p1, "MediaCombineCacheManager"

    const-string v0, "Failed to fetch data"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.class final Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllAudioList(Z)Lkotlin/Pair;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lnk1;",
        "Lkotlin/Pair;",
        "",
        "",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "<anonymous>",
        "(Lnk1;)Lkotlin/Pair;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate$queryAllAudioList$1"
    f = "AudioRepositoryDelegate.kt"
    l = {
        0xc4,
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $combineMVList:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lwh1<",
            "-",
            "Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->$combineMVList:Z

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

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->$combineMVList:Z

    invoke-direct {v0, p0, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;-><init>(ZLwh1;)V

    iput-object p1, v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ld72;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v5

    new-instance v7, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1$audioDeferred$1;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1$audioDeferred$1;-><init>(Lwh1;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v10

    iget-boolean v4, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->$combineMVList:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v5

    new-instance v7, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1;

    invoke-direct {v7, v1}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1;-><init>(Lwh1;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object p1

    move-object v1, p1

    :cond_3
    iput-object v1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->label:I

    invoke-interface {v10, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lkotlin/Pair;

    if-eqz v1, :cond_6

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate$queryAllAudioList$1;->label:I

    invoke-interface {v1, p0}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :goto_1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lmk0;->b(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :cond_6
    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->access$processRecentAddedItems(Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;Ljava/util/List;)V

    return-object p1
.end method

.class final Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2"
    f = "DownloadMultiListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $positionStart:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $size:I

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$positionStart:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$size:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$positionStart:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$size:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$positionStart:Lkotlin/jvm/internal/Ref$IntRef;

    .line 20
    .line 21
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 22
    .line 23
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$1$2;->$size:I

    .line 24
    .line 25
    sub-int/2addr v1, v0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

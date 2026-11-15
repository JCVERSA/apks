.class final Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsion.home.adapter.suboperate.provider.SubFeedsSingleImageProvider$convert$2$1$1$1"
    f = "SubFeedsSingleImageProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/home/bean/OperateItem;

.field final synthetic $subject:Lcom/transsion/moviedetailapi/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;",
            "Lcom/transsion/home/bean/OperateItem;",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$item:Lcom/transsion/home/bean/OperateItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

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

.method public static synthetic a(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->d(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    const-string p3, "opt_sub_feeds"

    .line 4
    .line 5
    invoke-static {p0, p3}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-interface {p3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, -0x1

    .line 26
    :goto_0
    const/4 p3, 0x0

    .line 27
    invoke-static {p1, p2, p0, p3}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;ILcom/transsion/moviedetailapi/bean/Subject;Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 32
    .line 33
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
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
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$item:Lcom/transsion/home/bean/OperateItem;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;->F()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$item:Lcom/transsion/home/bean/OperateItem;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider$convert$2$1$1$1;->$item:Lcom/transsion/home/bean/OperateItem;

    .line 36
    .line 37
    new-instance v4, Lcom/transsion/home/adapter/suboperate/provider/u;

    .line 38
    .line 39
    invoke-direct {v4, v1, v2, v3}, Lcom/transsion/home/adapter/suboperate/provider/u;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/provider/SubFeedsSingleImageProvider;Lcom/transsion/home/bean/OperateItem;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v4}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->F(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

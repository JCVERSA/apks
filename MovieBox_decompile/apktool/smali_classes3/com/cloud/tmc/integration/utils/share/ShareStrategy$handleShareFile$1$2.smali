.class final Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.integration.utils.share.ShareStrategy$handleShareFile$1$2"
    f = "ShareStrategy.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/cloud/tmc/integration/utils/share/ShareStrategy;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
            "Lcom/cloud/tmc/integration/utils/share/ShareStrategy;",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->this$0:Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$file:Ljava/io/File;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$block:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->this$0:Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$file:Ljava/io/File;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$block:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->this$0:Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$context:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$file:Ljava/io/File;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    iput v2, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->label:I

    .line 42
    .line 43
    invoke-static {v1, v3, v4, p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->access$getFileUriByCursor(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-ne v1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    move-object v0, p1

    .line 51
    move-object p1, v1

    .line 52
    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->setFileUri(Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->access$getHANDLER$cp()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;->$block:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    new-instance v1, Lcom/cloud/tmc/integration/utils/share/c;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/utils/share/c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

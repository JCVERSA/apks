.class final Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/version/update/UpdateVersionRequest;->q(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.version.update.UpdateVersionRequest$startCheckUpdate$3"
    f = "UpdateVersionRequest.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $fromPage:Ljava/lang/String;

.field final synthetic $manual:Z

.field final synthetic $remoteVersionInfo:Lcom/transsion/version/update/RemoteVersionInfo;

.field label:I

.field final synthetic this$0:Lcom/transsion/version/update/UpdateVersionRequest;


# direct methods
.method constructor <init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/version/update/UpdateVersionRequest;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/transsion/version/update/RemoteVersionInfo;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->this$0:Lcom/transsion/version/update/UpdateVersionRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$fromPage:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$remoteVersionInfo:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$manual:Z

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
    new-instance p1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->this$0:Lcom/transsion/version/update/UpdateVersionRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$fromPage:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$remoteVersionInfo:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$manual:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;-><init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->this$0:Lcom/transsion/version/update/UpdateVersionRequest;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$activity:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$fromPage:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$remoteVersionInfo:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;->$manual:Z

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/version/update/UpdateVersionRequest;->e(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

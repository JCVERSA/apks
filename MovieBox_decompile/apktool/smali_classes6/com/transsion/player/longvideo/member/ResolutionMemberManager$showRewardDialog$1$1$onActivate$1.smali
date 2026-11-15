.class final Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->a(Z)V
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
    c = "com.transsion.player.longvideo.member.ResolutionMemberManager$showRewardDialog$1$1$onActivate$1"
    f = "ResolutionMemberManager.kt"
    l = {
        0x9c,
        0x9f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isActivate:Z

.field final synthetic $listener:Lnw/e;

.field final synthetic $longVdPlayerBean:Lln/a;

.field label:I


# direct methods
.method constructor <init>(ZLln/a;Lnw/e;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lln/a;",
            "Lnw/e;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$isActivate:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$longVdPlayerBean:Lln/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$listener:Lnw/e;

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
    new-instance p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$isActivate:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$longVdPlayerBean:Lln/a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$listener:Lnw/e;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;-><init>(ZLln/a;Lnw/e;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$isActivate:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    sget-object p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$longVdPlayerBean:Lln/a;

    .line 41
    .line 42
    iput v3, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->label:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->j(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    iput v2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->label:I

    .line 52
    .line 53
    const-wide/16 v1, 0x1f4

    .line 54
    .line 55
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$listener:Lnw/e;

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;->$isActivate:Z

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lnw/e;->a(Z)V

    .line 69
    .line 70
    .line 71
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

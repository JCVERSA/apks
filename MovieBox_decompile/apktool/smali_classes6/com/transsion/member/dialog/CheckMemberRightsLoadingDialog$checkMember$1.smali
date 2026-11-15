.class final Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->t0()V
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
    c = "com.transsion.member.dialog.CheckMemberRightsLoadingDialog$checkMember$1"
    f = "CheckMemberRightsLoadingDialog.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->d(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->p0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;-><init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    new-array p1, p1, [Ljava/lang/Object;

    .line 29
    .line 30
    const-class v1, Lim/b;

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lim/b;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->r0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)Lcom/transsion/memberapi/MemberSceneType;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v3, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 47
    .line 48
    invoke-static {v3}, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;->q0(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->this$0:Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;

    .line 53
    .line 54
    new-instance v5, Lcom/transsion/member/dialog/a;

    .line 55
    .line 56
    invoke-direct {v5, v4}, Lcom/transsion/member/dialog/a;-><init>(Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lcom/transsion/member/dialog/CheckMemberRightsLoadingDialog$checkMember$1;->label:I

    .line 60
    .line 61
    invoke-interface {p1, v1, v3, v5, p0}, Lim/b;->b(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method

.class final Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->j(Ljava/lang/String;)V
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
    c = "com.transsion.usercenter.profile.viewmodel.UserProfileViewModel$fetchUserProfileV3$1"
    f = "UserProfileViewModel.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $userId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->$userId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->$userId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

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
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1$dto$1;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->$userId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v1, v4, v5, v3}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1$dto$1;-><init>(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->label:I

    .line 44
    .line 45
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "0"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "fetchUserProfileV3 error: "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 v1, 0x0

    .line 120
    const-string v2, "UserProfileVM"

    .line 121
    .line 122
    invoke-virtual {v0, v2, p1, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel$fetchUserProfileV3$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;->h(Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;)Landroidx/lifecycle/b0;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method

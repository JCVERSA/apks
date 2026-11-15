.class final Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/tn/lib/net/bean/BaseDto<",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/tn/lib/net/bean/BaseDto;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.usercenter.profile.viewmodel.UserProfileVideoViewModel$requestPage$1$dto$1"
    f = "UserProfileVideoViewModel.kt"
    l = {
        0x84,
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSelf:Z

.field final synthetic $pageToken:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$isSelf:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$pageToken:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$uid:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$isSelf:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$pageToken:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$uid:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;-><init>(ZLcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->label:I

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
    iget-boolean p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$isSelf:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->e(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Lhv/c;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$pageToken:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->g(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iput v3, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->label:I

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    move-object v8, p0

    .line 62
    invoke-static/range {v4 .. v10}, Lhv/c$a;->a(Lhv/c;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->e(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)Lhv/c;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$uid:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v5, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->$pageToken:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->this$0:Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;->g(Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iput v2, p0, Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel$requestPage$1$dto$1;->label:I

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    const/16 v9, 0x8

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    move-object v8, p0

    .line 99
    invoke-static/range {v3 .. v10}, Lhv/c$a;->b(Lhv/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v0, :cond_5

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_5
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 107
    .line 108
    :goto_2
    return-object p1
.end method

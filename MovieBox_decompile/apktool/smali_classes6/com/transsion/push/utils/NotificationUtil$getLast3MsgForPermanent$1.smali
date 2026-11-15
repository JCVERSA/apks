.class final Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/NotificationUtil;->z(Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Z)V
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
    c = "com.transsion.push.utils.NotificationUtil$getLast3MsgForPermanent$1"
    f = "NotificationUtil.kt"
    l = {
        0x265,
        0x268,
        0x26a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $messageId:Ljava/lang/String;

.field final synthetic $needDelay:Z

.field final synthetic $showOrder:Lcom/transsion/push/bean/ShowOrder;

.field label:I


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lcom/transsion/push/bean/ShowOrder;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$needDelay:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$showOrder:Lcom/transsion/push/bean/ShowOrder;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$messageId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$needDelay:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$showOrder:Lcom/transsion/push/bean/ShowOrder;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$messageId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;-><init>(ZLandroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$needDelay:Z

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iput v4, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->label:I

    .line 46
    .line 47
    const-wide/16 v4, 0x1f4

    .line 48
    .line 49
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_4

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    :goto_0
    sget-object p1, Lcom/transsion/push/helper/RoomHelper;->a:Lcom/transsion/push/helper/RoomHelper;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$context:Landroid/content/Context;

    .line 59
    .line 60
    iput v3, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p1, v1, p0}, Lcom/transsion/push/helper/RoomHelper;->f(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_5

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_8

    .line 76
    .line 77
    sget-object p1, Lcom/transsion/push/helper/RoomHelper;->a:Lcom/transsion/push/helper/RoomHelper;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$context:Landroid/content/Context;

    .line 80
    .line 81
    iput v2, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->label:I

    .line 82
    .line 83
    invoke-virtual {p1, v1, p0}, Lcom/transsion/push/helper/RoomHelper;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_6

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_6
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$context:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$showOrder:Lcom/transsion/push/bean/ShowOrder;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;->$messageId:Ljava/lang/String;

    .line 99
    .line 100
    sget-object v3, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 101
    .line 102
    invoke-static {v3, v0, p1, v1, v2}, Lcom/transsion/push/utils/NotificationUtil;->k(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 106
    .line 107
    const/4 v8, 0x4

    .line 108
    const/4 v9, 0x0

    .line 109
    const-string v5, "NotificationUtil"

    .line 110
    .line 111
    const-string v6, " show notification from db"

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1
.end method

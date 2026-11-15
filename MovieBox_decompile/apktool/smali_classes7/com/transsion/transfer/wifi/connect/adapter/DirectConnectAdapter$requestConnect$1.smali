.class final Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->F()V
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
    c = "com.transsion.transfer.wifi.connect.adapter.DirectConnectAdapter$requestConnect$1"
    f = "DirectConnectAdapter.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

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
    new-instance p1, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->label:I

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
    sget-object v3, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->s(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)Landroid/net/wifi/p2p/WifiP2pManager;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->r(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v10, 0x3c

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-static/range {v3 .. v11}, Lcom/transsion/transfer/wifi/util/i;->e(Lcom/transsion/transfer/wifi/util/i;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->label:I

    .line 52
    .line 53
    const-wide/16 v1, 0x3e8

    .line 54
    .line 55
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->q(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->t(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, " --> requestConnect() --> connectRetry = "

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " --> retryCount = "

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " --> delay 500"

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x2

    .line 116
    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-static {p1, v0, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter$requestConnect$1;->this$0:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->p(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V

    .line 124
    .line 125
    .line 126
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p1
.end method

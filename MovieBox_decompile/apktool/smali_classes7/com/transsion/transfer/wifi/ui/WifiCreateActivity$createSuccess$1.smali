.class final Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->P0(Ldu/a;J)V
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
    c = "com.transsion.transfer.wifi.ui.WifiCreateActivity$createSuccess$1"
    f = "WifiCreateActivity.kt"
    l = {
        0x112,
        0x11a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $wifiInfoModel:Ldu/a;

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;


# direct methods
.method constructor <init>(Ldu/a;Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu/a;",
            "Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Ldu/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Ldu/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;-><init>(Ldu/a;Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;JLkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
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
    iget-wide v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->J$0:J

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    sget-object v6, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->a:Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$wifiInfoModel:Ldu/a;

    .line 44
    .line 45
    invoke-virtual {v6, p1}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->b(Ldu/a;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iput-wide v4, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->J$0:J

    .line 50
    .line 51
    iput v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v11, 0x6

    .line 56
    const/4 v12, 0x0

    .line 57
    move-object v10, p0

    .line 58
    invoke-static/range {v6 .. v12}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->g(Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;Ljava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    move-wide v1, v4

    .line 66
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object v6, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 73
    .line 74
    iget-wide v7, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    .line 75
    .line 76
    sget v9, Lcom/transsion/transfer/R$id;->ivTransWifiQrCode:I

    .line 77
    .line 78
    invoke-virtual {v6, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .line 84
    invoke-virtual {v9, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v5}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->N0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Z)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lcu/c;->a:Lcu/c;

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    sub-long/2addr v9, v1

    .line 97
    invoke-virtual {p1, v7, v8, v9, v10}, Lcu/c;->j(JJ)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1$1$1;

    .line 105
    .line 106
    invoke-direct {v1, v6, v4}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1$1$1;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lkotlin/coroutines/Continuation;)V

    .line 107
    .line 108
    .line 109
    iput v3, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->label:I

    .line 110
    .line 111
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, v0, :cond_5

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->this$0:Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;

    .line 119
    .line 120
    iget-wide v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;->$duration:J

    .line 121
    .line 122
    sget-object v2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v6, " --> createSuccess() --> syncEncodeQRCode() --> \u521b\u5efa\u4e8c\u7ef4\u7801\u5931\u8d25\u4e86"

    .line 137
    .line 138
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v2, v6, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const/16 v2, 0x67

    .line 149
    .line 150
    invoke-static {p1, v2, v0, v1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->L0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;IJ)V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1
.end method

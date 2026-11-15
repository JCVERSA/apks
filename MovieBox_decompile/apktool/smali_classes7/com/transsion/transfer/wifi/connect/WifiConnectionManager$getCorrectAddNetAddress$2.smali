.class final Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.transfer.wifi.connect.WifiConnectionManager$getCorrectAddNetAddress$2"
    f = "WifiConnectionManager.kt"
    l = {
        0x168,
        0x172
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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
    new-instance p1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
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
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->I$1:I

    .line 31
    .line 32
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->I$0:I

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->i()Landroid/net/NetworkInfo$DetailedState;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    move v1, v4

    .line 48
    move v6, v1

    .line 49
    :goto_0
    if-nez v1, :cond_7

    .line 50
    .line 51
    const/16 v7, 0x19

    .line 52
    .line 53
    if-gt v6, v7, :cond_7

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 58
    .line 59
    if-eq p1, v7, :cond_7

    .line 60
    .line 61
    :cond_3
    sget-object v7, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 62
    .line 63
    sget-object v8, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 64
    .line 65
    invoke-static {v8}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, " --> getCorrectAddNetAddress() --> \u7b2c"

    .line 78
    .line 79
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v8, "\u6b21addNet\u8fde\u63a5 ip\u4fe1\u606f wifiStatus = "

    .line 86
    .line 87
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-static {v7, v8, v4, v5, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 103
    .line 104
    if-eq p1, v7, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move v1, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    iput v6, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->I$0:I

    .line 112
    .line 113
    iput v1, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->I$1:I

    .line 114
    .line 115
    iput v3, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->label:I

    .line 116
    .line 117
    const-wide/16 v7, 0x190

    .line 118
    .line 119
    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v0, :cond_6

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_6
    :goto_2
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->i()Landroid/net/NetworkInfo$DetailedState;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    sget-object p1, Lcu/a;->a:Lcu/a;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcu/a;->c()Z

    .line 136
    .line 137
    .line 138
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 139
    .line 140
    iput v5, p0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager$getCorrectAddNetAddress$2;->label:I

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_8

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_8
    :goto_3
    check-cast p1, Ljava/lang/String;

    .line 150
    .line 151
    const-string v0, "0.0.0.0"

    .line 152
    .line 153
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->k()J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 166
    .line 167
    sget-object v6, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 168
    .line 169
    invoke-static {v6}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, " --> getCorrectAddNetAddress() --> \u7ecf\u8fc7\u591a\u6b21\u83b7\u53d6\uff0cip\u4ecd\u7136\u4e3a0.0.0.0\uff0c\u6700\u540e\u518d\u83b7\u53d6\u4e00\u6b21 gateway = "

    .line 182
    .line 183
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v3, v6, v4, v5, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0, v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->t(J)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    return-object p1

    .line 201
    :cond_9
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 202
    .line 203
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 204
    .line 205
    invoke-static {v1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->f(Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, " --> getCorrectAddNetAddress() --> \u5df2\u83b7\u53d6\u5230\u6b63\u786e\u7684ip\u5730\u5740\uff0cip = "

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v0, v1, v4, v5, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-object p1
.end method

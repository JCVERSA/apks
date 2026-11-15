.class final Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/GoogleStrategy;->C()V
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
    c = "com.transsion.payment.lib.strategy.GoogleStrategy$orderCheck$1$1"
    f = "GoogleStrategy.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $purchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->$purchaseList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

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
    new-instance p1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->$purchaseList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;-><init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->label:I

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
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Iterator;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->$purchaseList:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast p1, Ljava/lang/Iterable;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v3, v1

    .line 49
    move-object v1, p1

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    .line 61
    .line 62
    sget-object v4, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v10, "fetch purchase result: state "

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v5, " "

    .line 90
    .line 91
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, " result size: "

    .line 98
    .line 99
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v4, v7}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eq v7, v2, :cond_2

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->f()J

    .line 127
    .line 128
    .line 129
    move-result-wide v9

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v12, "\u9047\u5230\u672a\u53d1\u8d27\u8ba2\u5355 fetch purchase result: state "

    .line 136
    .line 137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Lcom/transsion/payment/lib/d;->c(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->a()Lcom/android/billingclient/api/a;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const/4 v5, 0x0

    .line 167
    if-eqz v4, :cond_3

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    move-object v9, v4

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    move-object v9, v5

    .line 176
    :goto_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const-string v4, "getPurchaseToken(...)"

    .line 181
    .line 182
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-eqz p1, :cond_4

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    move-object v5, p1

    .line 201
    check-cast v5, Ljava/lang/String;

    .line 202
    .line 203
    :cond_4
    move-object v7, v5

    .line 204
    invoke-static {v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/PaymentService;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    iput-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->L$0:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->L$1:Ljava/lang/Object;

    .line 211
    .line 212
    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;->label:I

    .line 213
    .line 214
    move-object v11, p0

    .line 215
    invoke-virtual/range {v6 .. v11}, Lcom/transsion/payment/lib/PaymentService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-ne p1, v0, :cond_2

    .line 220
    .line 221
    return-object v0

    .line 222
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 223
    .line 224
    return-object p1
.end method

.class final Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.viewmodel.PaymentViewModel$query$1$1"
    f = "PaymentViewModel.kt"
    l = {
        0x18d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $txnId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->$txnId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->$txnId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->label:I

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
    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->$txnId:Ljava/lang/String;

    .line 30
    .line 31
    iput v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->label:I

    .line 32
    .line 33
    invoke-static {p1, v1, p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->e(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/tranpay/bean/QueryOrderResultContent;

    .line 41
    .line 42
    sget-object v0, Llh/a;->a:Llh/a;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "QueryOrder result = "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x2

    .line 63
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_a

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/QueryOrderResultContent;->getStatus()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v7, "QueryOrder.content =  "

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", "

    .line 94
    .line 95
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/QueryOrderResultContent;->getStatus()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_9

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/16 v5, 0x30

    .line 125
    .line 126
    if-eq v4, v5, :cond_7

    .line 127
    .line 128
    const/16 v5, 0x31

    .line 129
    .line 130
    if-eq v4, v5, :cond_5

    .line 131
    .line 132
    const/16 v5, 0x5a4

    .line 133
    .line 134
    if-eq v4, v5, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    const-string v4, "-1"

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    .line 147
    .line 148
    const-string v0, "Order still processing"

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_5
    const-string v4, "1"

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_6

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    const-string v1, "QueryOrder.content success"

    .line 164
    .line 165
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Ljh/b;

    .line 175
    .line 176
    sget-object v2, Lcom/tn/tranpay/bean/QueryStatus;->SUCCESS:Lcom/tn/tranpay/bean/QueryStatus;

    .line 177
    .line 178
    invoke-direct {v1, p1, v2}, Ljh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_7
    const-string v4, "0"

    .line 188
    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_8
    const-string v1, "QueryOrder.content fail"

    .line 197
    .line 198
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v1, Ljh/b;

    .line 208
    .line 209
    sget-object v2, Lcom/tn/tranpay/bean/QueryStatus;->FAILURE:Lcom/tn/tranpay/bean/QueryStatus;

    .line 210
    .line 211
    invoke-direct {v1, p1, v2}, Ljh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 218
    .line 219
    return-object p1

    .line 220
    :cond_9
    :goto_1
    const-string v1, "Unknown status"

    .line 221
    .line 222
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v1, Ljh/b;

    .line 232
    .line 233
    sget-object v2, Lcom/tn/tranpay/bean/QueryStatus;->FAILURE:Lcom/tn/tranpay/bean/QueryStatus;

    .line 234
    .line 235
    invoke-direct {v1, p1, v2}, Ljh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 242
    .line 243
    return-object p1

    .line 244
    :cond_a
    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->z()Landroidx/lifecycle/b0;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    new-instance v0, Ljh/b;

    .line 251
    .line 252
    sget-object v1, Lcom/tn/tranpay/bean/QueryStatus;->ERROR:Lcom/tn/tranpay/bean/QueryStatus;

    .line 253
    .line 254
    invoke-direct {v0, v2, v1}, Ljh/b;-><init>(Lcom/tn/tranpay/bean/QueryOrderResultContent;Lcom/tn/tranpay/bean/QueryStatus;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 261
    .line 262
    return-object p1
.end method

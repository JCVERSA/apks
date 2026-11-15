.class final Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/viewmodel/PaymentViewModel;->E(Lcom/tn/tranpay/BillingParams;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.viewmodel.PaymentViewModel$loadConfig$1"
    f = "PaymentViewModel.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $params:Lcom/tn/tranpay/BillingParams;

.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lcom/tn/tranpay/BillingParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
            "Lcom/tn/tranpay/BillingParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->$params:Lcom/tn/tranpay/BillingParams;

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
    new-instance p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->$params:Lcom/tn/tranpay/BillingParams;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lcom/tn/tranpay/BillingParams;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->label:I

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
    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->$params:Lcom/tn/tranpay/BillingParams;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->$params:Lcom/tn/tranpay/BillingParams;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/tn/tranpay/BillingParams;->getLanguage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->label:I

    .line 42
    .line 43
    invoke-static {p1, v1, v3, p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->f(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 51
    .line 52
    sget-object v0, Llh/a;->a:Llh/a;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b(Lcom/tn/tranpay/viewmodel/PaymentViewModel;)Lcom/google/gson/Gson;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "GetPaymentMethods result = "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x2

    .line 83
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getLanguagePackage()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_4
    if-eqz p1, :cond_a

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getMedium()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_a

    .line 105
    .line 106
    check-cast v1, Ljava/lang/Iterable;

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/tn/tranpay/bean/MediumInputBean;

    .line 123
    .line 124
    sget-object v5, Llh/a;->a:Llh/a;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/tn/tranpay/bean/MediumInputBean;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v4}, Lcom/tn/tranpay/bean/MediumInputBean;->getCode()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v9, "The medium.name: "

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v6, ", "

    .line 148
    .line 149
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v5, v6, v2, v3, v2}, Llh/a;->c(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/tn/tranpay/bean/MediumInputBean;->getInputs()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    check-cast v4, Ljava/lang/Iterable;

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/tn/tranpay/bean/InputInfoBean;

    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getTips()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getHint()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    check-cast v7, Ljava/lang/String;

    .line 205
    .line 206
    sget-object v8, Llh/a;->a:Llh/a;

    .line 207
    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v10, "InputTip: "

    .line 214
    .line 215
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v10, ", hint: "

    .line 222
    .line 223
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-static {v8, v9, v2, v3, v2}, Llh/a;->c(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getRealHint()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    if-nez v8, :cond_6

    .line 241
    .line 242
    if-nez v7, :cond_7

    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getHint()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    goto :goto_2

    .line 249
    :cond_6
    move-object v7, v8

    .line 250
    :cond_7
    :goto_2
    invoke-virtual {v5, v7}, Lcom/tn/tranpay/bean/InputInfoBean;->setRealHint(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getRealTips()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    if-nez v7, :cond_8

    .line 258
    .line 259
    if-nez v6, :cond_9

    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/tn/tranpay/bean/InputInfoBean;->getTips()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    goto :goto_3

    .line 266
    :cond_8
    move-object v6, v7

    .line 267
    :cond_9
    :goto_3
    invoke-virtual {v5, v6}, Lcom/tn/tranpay/bean/InputInfoBean;->setRealTips(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_a
    if-eqz p1, :cond_b

    .line 272
    .line 273
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_b
    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->q()Landroidx/lifecycle/b0;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 293
    .line 294
    return-object p1
.end method

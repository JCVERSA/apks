.class final Lcom/cloud/hisavana/sdk/manager/a$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->r(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;)V
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
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1"
    f = "CustomTabsManager.kt"
    l = {
        0x27a,
        0x27d,
        0x284,
        0x28a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/hisavana/sdk/manager/a$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

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
.method public final a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a$f;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/cloud/hisavana/sdk/manager/a$f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/manager/a$f;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a$f;->a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 54
    .line 55
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 62
    .line 63
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :try_start_4
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 71
    .line 72
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 p1, -0x1

    .line 76
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 77
    .line 78
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->v(Lcom/cloud/hisavana/sdk/manager/a;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    invoke-static {v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->p(J)V

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v7, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 93
    .line 94
    invoke-virtual {p1, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->a(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_b

    .line 99
    .line 100
    invoke-static {p1, v5}, Lcom/cloud/hisavana/sdk/manager/a;->D(Lcom/cloud/hisavana/sdk/manager/a;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_9

    .line 105
    .line 106
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 109
    .line 110
    iput v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-static {p1, v3, v5, p0}, Lcom/cloud/hisavana/sdk/manager/a;->l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_5

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    const/16 v3, 0x1b5e

    .line 129
    .line 130
    if-eq p1, v3, :cond_6

    .line 131
    .line 132
    const/16 v3, 0x1b5f

    .line 133
    .line 134
    if-eq p1, v3, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 145
    .line 146
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    .line 151
    .line 152
    iput v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    .line 153
    .line 154
    invoke-static {p1, v3, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-ne p1, v0, :cond_8

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_8
    move-object v3, v1

    .line 162
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 169
    .line 170
    :goto_2
    move-object v1, v3

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->d:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 175
    .line 176
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->f:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    .line 181
    .line 182
    iput v3, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    .line 183
    .line 184
    invoke-static {p1, v4, v5, v6, p0}, Lcom/cloud/hisavana/sdk/manager/a;->i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v0, :cond_a

    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_a
    move-object v3, v1

    .line 192
    :goto_3
    check-cast p1, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_b
    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 202
    .line 203
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    new-instance v3, Lcom/cloud/hisavana/sdk/manager/a$f$a;

    .line 208
    .line 209
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->g:Lkotlin/jvm/functions/Function1;

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-direct {v3, v4, v1, v5}, Lcom/cloud/hisavana/sdk/manager/a$f$a;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    .line 213
    .line 214
    .line 215
    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->a:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v5, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->b:Ljava/lang/Object;

    .line 218
    .line 219
    iput v2, p0, Lcom/cloud/hisavana/sdk/manager/a$f;->c:I

    .line 220
    .line 221
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    if-ne p1, v0, :cond_c

    .line 226
    .line 227
    return-object v0

    .line 228
    :catchall_0
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1
.end method

.class final Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/lottery/LotteryTipView;->getLotteryUserInfoEntity()V
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
    c = "com.transsnet.downloader.lottery.LotteryTipView$getLotteryUserInfoEntity$1"
    f = "LotteryTipView.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/lottery/LotteryTipView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

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
    new-instance p1, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;-><init>(Lcom/transsnet/downloader/lottery/LotteryTipView;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

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
    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 34
    .line 35
    const-class v1, Lwj/f;

    .line 36
    .line 37
    new-array v5, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v1, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lwj/f;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iput-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    iput v2, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->label:I

    .line 50
    .line 51
    invoke-interface {v1, p0}, Lwj/f;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-ne v1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    move-object v0, p1

    .line 59
    move-object p1, v1

    .line 60
    :goto_0
    check-cast p1, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 61
    .line 62
    move-object v6, v0

    .line 63
    move-object v0, p1

    .line 64
    move-object p1, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v0, v3

    .line 67
    :goto_1
    invoke-static {p1, v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/bean/lottery/LotteryUserInfoEntity;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 71
    .line 72
    invoke-static {p1, v4}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setRequesting$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_9

    .line 82
    .line 83
    iget-object v0, p0, Lcom/transsnet/downloader/lottery/LotteryTipView$getLotteryUserInfoEntity$1;->this$0:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getPriceItems()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v1, v4

    .line 103
    :goto_2
    if-lez v1, :cond_5

    .line 104
    .line 105
    sget v2, Lcom/transsnet/downloader/R$string;->lottery_unclaimed_rewards:I

    .line 106
    .line 107
    invoke-static {p1, v2}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v2, "getString(...)"

    .line 112
    .line 113
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lbx/i1;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v2, v2, Lbx/i1;->d:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getBinding$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lbx/i1;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-object v2, v2, Lbx/i1;->d:Landroid/widget/TextView;

    .line 146
    .line 147
    sget v5, Lcom/transsnet/downloader/R$string;->lottery_win_big_prizes:I

    .line 148
    .line 149
    invoke-static {p1, v5}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getInfo()Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;->getActivityId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move-object p1, v3

    .line 174
    :goto_4
    const-string v2, "0"

    .line 175
    .line 176
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_7

    .line 181
    .line 182
    invoke-static {v0, v4}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$setCountryEnable$p(Lcom/transsnet/downloader/lottery/LotteryTipView;Z)V

    .line 183
    .line 184
    .line 185
    const/16 p1, 0x8

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :goto_5
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getClassTag(Lcom/transsnet/downloader/lottery/LotteryTipView;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->access$getLotteryUserInfoEntity$p(Lcom/transsnet/downloader/lottery/LotteryTipView;)Lcom/transsion/bean/lottery/LotteryUserInfoEntity;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoEntity;->getInfo()Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;->getActivityId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, " --> getLotteryUserInfoEntity() --> size = "

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, " --> activityId = "

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 248
    .line 249
    return-object p1
.end method

.class final Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)V
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
    c = "com.transsion.ad.monopoly.intercept.NonAdShowedTimesManager$saveShowedTimes$3"
    f = "NonAdShowedTimesManager.kt"
    l = {
        0x7e,
        0x82,
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

.field final synthetic $nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/db/plan/MbAdDbPlans;",
            "Lcom/transsion/ad/monopoly/model/AdPlans;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

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
    new-instance p1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;-><init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, "getApp(...)"

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v4, :cond_2

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 42
    .line 43
    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v6, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;->getShowedTimes()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :goto_1
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 v1, 0x0

    .line 71
    goto :goto_1

    .line 72
    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowedTimes(Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 76
    .line 77
    sget-object v1, Lci/p;->a:Lci/p;

    .line 78
    .line 79
    invoke-virtual {v1}, Lci/p;->c()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowDate(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 87
    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/MbAdDatabase$m;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/transsion/ad/db/MbAdDatabase;->y0()Luh/a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$mAdPlans:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput v4, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    .line 110
    .line 111
    invoke-interface {p1, v1, p0}, Luh/a;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    :cond_5
    :goto_3
    check-cast p1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    const/4 v1, 0x0

    .line 128
    :goto_4
    iget-object v4, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    sget-object p1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 141
    .line 142
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/MbAdDatabase$m;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/transsion/ad/db/MbAdDatabase;->y0()Luh/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 158
    .line 159
    iput v3, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    .line 160
    .line 161
    invoke-interface {p1, v1, p0}, Luh/a;->g(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v0, :cond_a

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_7
    if-eqz p1, :cond_8

    .line 169
    .line 170
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowedTimes(Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    :cond_8
    if-eqz p1, :cond_9

    .line 180
    .line 181
    iget-object v1, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->$nonAdPlans:Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->setShowDate(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    if-eqz p1, :cond_a

    .line 191
    .line 192
    sget-object v1, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 193
    .line 194
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v3}, Lcom/transsion/ad/db/MbAdDatabase$m;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/transsion/ad/db/MbAdDatabase;->y0()Luh/a;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iput v2, p0, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager$saveShowedTimes$3;->label:I

    .line 210
    .line 211
    invoke-interface {v1, p1, p0}, Luh/a;->g(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-ne p1, v0, :cond_a

    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p1
.end method

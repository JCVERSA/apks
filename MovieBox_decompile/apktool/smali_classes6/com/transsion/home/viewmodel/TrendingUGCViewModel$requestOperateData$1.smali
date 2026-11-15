.class final Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->K()V
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
    c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestOperateData$1"
    f = "TrendingUGCViewModel.kt"
    l = {
        0x76
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

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
    new-instance p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->label:I

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

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
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "trending_operating_version"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->l(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lyk/e;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->label:I

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v9, 0x1

    .line 63
    const/4 v10, 0x0

    .line 64
    move-object v7, p1

    .line 65
    move-object v8, p0

    .line 66
    invoke-static/range {v4 .. v10}, Lyk/e$a;->e(Lyk/e;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v1, v0, :cond_2

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    move-object v0, p1

    .line 74
    move-object p1, v1

    .line 75
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v4, "0"

    .line 82
    .line 83
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/transsion/home/bean/MainOperateData;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-eqz p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v0, v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-lez v0, :cond_4

    .line 135
    .line 136
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "trending_operating_data"

    .line 143
    .line 144
    invoke-virtual {p1, v0, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-class v0, Lcom/transsion/home/bean/MainOperateData;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/transsion/home/bean/MainOperateData;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 158
    .line 159
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->n(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->m(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->z()Landroidx/lifecycle/b0;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;->this$0:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->z()Landroidx/lifecycle/b0;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    .line 189
    return-object p1
.end method

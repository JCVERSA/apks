.class final Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/RankAllViewModel;->n(Z)V
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
    c = "com.transsion.home.viewmodel.RankAllViewModel$startRequest$1"
    f = "RankAllViewModel.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/home/viewmodel/RankAllViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/home/viewmodel/RankAllViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

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
    new-instance p1, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;-><init>(ZLcom/transsion/home/viewmodel/RankAllViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/2addr p1, v2

    .line 41
    :goto_0
    move v7, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->e(Lcom/transsion/home/viewmodel/RankAllViewModel;)Lyk/d;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->b(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->f(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->d(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    iput v2, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->label:I

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    const/16 v11, 0x11

    .line 79
    .line 80
    const/4 v12, 0x0

    .line 81
    move-object v10, p0

    .line 82
    invoke-static/range {v3 .. v12}, Lyk/d$a;->a(Lyk/d;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    :goto_2
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/transsion/home/bean/RankAllData;

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->g(Lcom/transsion/home/viewmodel/RankAllViewModel;Lcom/transsion/home/bean/RankAllData;)V

    .line 100
    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/transsion/home/bean/RankAllData;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/transsion/home/bean/RankAllData;

    .line 128
    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getPage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    add-int/2addr p1, v2

    .line 161
    :goto_3
    invoke-static {v0, p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->h(Lcom/transsion/home/viewmodel/RankAllViewModel;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->j()Landroidx/lifecycle/b0;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 183
    .line 184
    const-class v1, Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v3, "getSimpleName(...)"

    .line 191
    .line 192
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v4, "exceptionHandler "

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v0, v1, p1, v2}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    .line 218
    .line 219
    iget-boolean p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->$isLoadMore:Z

    .line 220
    .line 221
    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->i()Landroidx/lifecycle/b0;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_6
    iget-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;->this$0:Lcom/transsion/home/viewmodel/RankAllViewModel;

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->j()Landroidx/lifecycle/b0;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 244
    .line 245
    return-object p1
.end method

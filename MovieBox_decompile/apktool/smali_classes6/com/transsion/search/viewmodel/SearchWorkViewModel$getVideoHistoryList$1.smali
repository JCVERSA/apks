.class final Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchWorkViewModel;->k(Z)V
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
    c = "com.transsion.search.viewmodel.SearchWorkViewModel$getVideoHistoryList$1"
    f = "SearchWorkViewModel.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isRefreshAll:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/search/viewmodel/SearchWorkViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

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
    new-instance p1, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;-><init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->$isRefreshAll:Z

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->m(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 38
    .line 39
    invoke-static {p1, v3}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->i()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v4, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 64
    .line 65
    invoke-static {v4}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iput v3, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->label:I

    .line 70
    .line 71
    invoke-interface {p1, v1, v4, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 79
    .line 80
    move-object v0, p1

    .line 81
    check-cast v0, Ljava/util/Collection;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ge v0, v1, :cond_6

    .line 103
    .line 104
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 105
    .line 106
    invoke-static {v0, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V

    .line 107
    .line 108
    .line 109
    :cond_6
    const/4 v0, 0x0

    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    check-cast p1, Ljava/lang/Iterable;

    .line 113
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_9

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v3, v2

    .line 134
    check-cast v3, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    move-object v1, v0

    .line 151
    :cond_9
    if-eqz v1, :cond_a

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_a
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->g()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v3, "\u83b7\u53d6\u89c6\u9891\u64ad\u653e\u8bb0\u5f55 \u6570\u91cf\uff1a "

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, "\uff0chasMore:"

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string v0, "SearchWork"

    .line 193
    .line 194
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    if-nez v1, :cond_b

    .line 198
    .line 199
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    return-object p1

    .line 202
    :cond_b
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 203
    .line 204
    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->i()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    add-int/2addr v0, v1

    .line 222
    invoke-virtual {p1, v0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->m(I)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->h()Landroidx/lifecycle/b0;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;->this$0:Lcom/transsion/search/viewmodel/SearchWorkViewModel;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/util/Collection;

    .line 238
    .line 239
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object p1
.end method

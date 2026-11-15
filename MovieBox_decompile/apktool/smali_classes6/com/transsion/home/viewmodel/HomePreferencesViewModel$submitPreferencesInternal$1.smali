.class final Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->K(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;Z)V
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
    c = "com.transsion.home.viewmodel.HomePreferencesViewModel$submitPreferencesInternal$1"
    f = "HomePreferencesViewModel.kt"
    l = {
        0x19a,
        0x19d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $config:Lcom/transsion/home/bean/HomePreferencesConfig;

.field final synthetic $force:Z

.field final synthetic $labelId:Ljava/lang/String;

.field final synthetic $normalized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scene:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/HomePreferencesConfig;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/home/bean/HomePreferencesConfig;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/lang/String;Ljava/util/List;ZLcom/transsion/home/bean/HomePreferencesConfig;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->Z$0:Z

    .line 39
    .line 40
    iget-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 47
    .line 48
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    move-object p1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->this$0:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$normalized:Ljava/util/List;

    .line 65
    .line 66
    iget-boolean v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$force:Z

    .line 67
    .line 68
    iget-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$config:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 69
    .line 70
    :try_start_2
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v6, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    iput-boolean v5, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->Z$0:Z

    .line 81
    .line 82
    iput v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    .line 83
    .line 84
    invoke-virtual {v7, v1, v4, p0}, Lcom/transsion/home/repository/HomePreferencesRepository;->m(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v1, v0, :cond_3

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_3
    move v1, v5

    .line 92
    move-object v3, v6

    .line 93
    :goto_0
    if-nez v1, :cond_5

    .line 94
    .line 95
    invoke-static {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;)Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object p1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v3, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    iput v2, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->label:I

    .line 104
    .line 105
    invoke-virtual {v1, v3, p0}, Lcom/transsion/home/repository/HomePreferencesRepository;->g(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    move-object v1, p1

    .line 113
    move-object v0, v3

    .line 114
    :goto_1
    move-object v3, v0

    .line 115
    move-object p1, v1

    .line 116
    :cond_5
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->isPopStyle()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->getRefreshType()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v1, Lcom/transsion/home/bean/HomePreferencesRefreshType;->NO_REFRESH:Lcom/transsion/home/bean/HomePreferencesRefreshType;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesRefreshType;->getValue()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->x()Landroidx/lifecycle/b0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    goto :goto_3

    .line 152
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :goto_3
    iget-object v0, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$labelId:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/transsion/home/viewmodel/HomePreferencesViewModel$submitPreferencesInternal$1;->$scene:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v4, "submitPreferences error, labelId="

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, ", scene="

    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, ", msg="

    .line 200
    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const/4 v6, 0x4

    .line 212
    const/4 v7, 0x0

    .line 213
    const-string v3, "HomePreferencesViewModel"

    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p1
.end method

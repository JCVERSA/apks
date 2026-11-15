.class final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k()V
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
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.lib_web.download_render.FileDownloadTaskManager$startDownloadExecution$1"
    f = "FileDownloadTaskManager.kt"
    l = {
        0x101
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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
    new-instance p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "<startDownloadExecution> \u8bbe\u7f6e\u4e0b\u8f7d\u72b6\u6001\u4e3afalse"

    .line 10
    .line 11
    const-string v5, "DR_FileDownloadTaskManager"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lkotlinx/coroutines/sync/a;

    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_5

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_1
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 40
    .line 41
    const-string v1, "<startDownloadExecution> \u6267\u884c\u4e0b\u8f7d\u4efb\u52a1"

    .line 42
    .line 43
    invoke-virtual {p1, v5, v1}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->c()Lkotlinx/coroutines/sync/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;->label:I

    .line 53
    .line 54
    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a()Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v7, "<get-entries>(...)"

    .line 70
    .line 71
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    check-cast p1, Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->j0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/util/Map$Entry;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a()Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v7, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Ltl/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    move-object p1, v6

    .line 102
    :goto_2
    :try_start_3
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    if-nez p1, :cond_4

    .line 106
    .line 107
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 108
    .line 109
    const-string v0, "<startDownloadExecution> get fileDownloadTask is null, finish all downlaodTask"

    .line 110
    .line 111
    invoke-virtual {p1, v5, v0}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v5, v4}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/a;->b()V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ltl/a;->c()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :goto_4
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :goto_5
    :try_start_5
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v2, "<startDownloadExecution> fail: "

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, v5, p1}, Lpl/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v5, v4}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1

    .line 167
    :catchall_2
    move-exception p1

    .line 168
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 169
    .line 170
    invoke-virtual {v0, v5, v4}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/a;->b()V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

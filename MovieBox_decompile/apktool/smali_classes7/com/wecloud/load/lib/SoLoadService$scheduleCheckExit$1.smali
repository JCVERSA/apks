.class final Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->z()V
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
    c = "com.wecloud.load.lib.SoLoadService$scheduleCheckExit$1"
    f = "SoLoadService.kt"
    l = {
        0x22e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wecloud/load/lib/SoLoadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

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
    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->label:I

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
    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    move-object v6, p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/o0;->g(Lkotlinx/coroutines/n0;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    :try_start_1
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->c(Lcom/wecloud/load/lib/SoLoadService;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    sget-object p1, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "getApplication(...)"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    invoke-virtual {p1, v3, v4}, Lcom/wecloud/load/lib/DySoLoadManager;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->p(Lcom/wecloud/load/lib/SoLoadService;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string p1, "SoLoadManagerExample"

    .line 84
    .line 85
    const-string v3, "exitProcess \u4e3a false\uff0c\u7ee7\u7eed\u76d1\u63a7"

    .line 86
    .line 87
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->this$0:Lcom/wecloud/load/lib/SoLoadService;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/wecloud/load/lib/SoLoadService;->h(Lcom/wecloud/load/lib/SoLoadService;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    iput-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput v2, p0, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;->label:I

    .line 103
    .line 104
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    if-ne p1, v0, :cond_2

    .line 109
    .line 110
    return-object v0

    .line 111
    :goto_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "\u76d1\u63a7\u4efb\u52a1\u5f02\u5e38: "

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const/16 v8, 0x8

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const-string v4, "SoLoadManagerExample"

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-static/range {v3 .. v9}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 145
    .line 146
    const/4 v7, 0x4

    .line 147
    const/4 v8, 0x0

    .line 148
    const-string v4, "SoLoadManagerExample"

    .line 149
    .line 150
    const-string v5, "\u76d1\u63a7\u4efb\u52a1\u88ab\u53d6\u6d88"

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1
.end method

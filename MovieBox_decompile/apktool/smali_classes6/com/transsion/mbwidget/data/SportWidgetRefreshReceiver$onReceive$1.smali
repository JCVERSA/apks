.class final Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.transsion.mbwidget.data.SportWidgetRefreshReceiver$onReceive$1"
    f = "SportWidgetRefreshReceiver.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$ctx:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

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
    new-instance p1, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string v0, "SportWidget"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    :try_start_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "SportWidgetRefreshReceiver: alarm fired at "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v0, v2, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1$1;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, v3}, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v2, p1, v3}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$ctx:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Landroid/content/ComponentName;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$ctx:Landroid/content/Context;

    .line 58
    .line 59
    const-class v5, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;

    .line 60
    .line 61
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    array-length v4, v3

    .line 72
    const/4 v5, 0x0

    .line 73
    if-nez v4, :cond_0

    .line 74
    .line 75
    move v4, p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v4, v5

    .line 78
    :goto_0
    if-nez v4, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$ctx:Landroid/content/Context;

    .line 81
    .line 82
    array-length v4, v3

    .line 83
    :goto_1
    if-ge v5, v4, :cond_1

    .line 84
    .line 85
    aget v6, v3, v5

    .line 86
    .line 87
    sget-object v7, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider;->a:Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v1, v2, v6, p1}, Lcom/transsion/mbwidget/SportSchedulePreviewWidgetProvider$Companion;->q(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_5

    .line 103
    :catch_0
    move-exception v1

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 106
    .line 107
    array-length v2, v3

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v4, "SportWidgetRefreshReceiver: refreshed "

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " sport widget(s)"

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v0, v2, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const-string v2, "SportWidgetRefreshReceiver: no sport widget instance, skip"

    .line 135
    .line 136
    invoke-virtual {v1, v0, v2, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    :goto_2
    iget-object p1, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :goto_3
    :try_start_1
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 146
    .line 147
    const-string v3, "SportWidget"

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v5, "SportWidgetRefreshReceiver error: "

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    const/16 v7, 0x8

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v6, 0x0

    .line 174
    move-object v2, v9

    .line 175
    move-object v5, v1

    .line 176
    invoke-static/range {v2 .. v8}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v3, "SportWidgetRefreshReceiver FAILED: "

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v9, v0, v1, p1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object p1

    .line 207
    :goto_5
    iget-object v0, p0, Lcom/transsion/mbwidget/data/SportWidgetRefreshReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1
.end method

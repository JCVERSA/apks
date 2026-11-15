.class final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j(Landroid/app/Application;ZZZLqi/i;Ljava/lang/String;)V
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
    c = "com.transsion.lib_web.download_render.FileDownloadTaskManager$init$1"
    f = "FileDownloadTaskManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $api:Lqi/i;

.field final synthetic $athenaIsDebug:Z

.field final synthetic $context:Landroid/app/Application;

.field final synthetic $path:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Application;ZLqi/i;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            "Z",
            "Lqi/i;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lqi/i;

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
    new-instance p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lqi/i;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;-><init>(Ljava/lang/String;Landroid/app/Application;ZLqi/i;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->l(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$athenaIsDebug:Z

    .line 28
    .line 29
    iget-object v3, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$api:Lqi/i;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string p1, "getPackageName(...)"

    .line 36
    .line 37
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 v9, 0xc0

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    const/16 v5, 0x921

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-static/range {v0 .. v10}, Lqi/h;->k(Lqi/h;Landroid/app/Application;ZLqi/i;Ljava/lang/String;IZLjava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/ConfigTask;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/transsion/lib_web/download_render/init/d;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;->$context:Landroid/app/Application;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/transsion/lib_web/download_render/init/d;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lcom/transsion/lib_web/download_render/init/e;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/e;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Lcom/transsion/lib_web/download_render/init/a;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/a;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lcom/transsion/lib_web/download_render/init/b;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/b;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/transsion/lib_web/download_render/init/c;

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/transsion/lib_web/download_render/init/c;->invoke()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    goto :goto_1

    .line 141
    :cond_0
    sget-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :goto_1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "<init> fail:"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v1, "DR_FileDownloadTaskManager"

    .line 167
    .line 168
    invoke-virtual {v0, v1, p1}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 172
    .line 173
    return-object p1

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method

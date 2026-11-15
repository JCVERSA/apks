.class final Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->x(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V
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
    c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$showErrorDialog$1"
    f = "LocalVideoNotExistUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $contextI:Landroid/content/Context;

.field final synthetic $isSeries:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $seriesCollection:Z

.field final synthetic $seriesCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $seriesPosition:I

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    .line 12
    .line 13
    iput p7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->g(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->h(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZII)Lkotlin/Unit;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move/from16 v3, p7

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq v3, v4, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq v3, v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    if-eqz p0, :cond_3

    .line 15
    .line 16
    if-eqz v2, :cond_7

    .line 17
    .line 18
    move-object v0, v2

    .line 19
    check-cast v0, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    if-ge v2, v3, :cond_1

    .line 44
    .line 45
    sget-object v2, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v5, -0x1

    .line 62
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object p0, v2

    .line 68
    move-object p1, v3

    .line 69
    move-object p2, v4

    .line 70
    move p3, v6

    .line 71
    move p4, v5

    .line 72
    move-object p5, v1

    .line 73
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->f(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 78
    .line 79
    const/16 v6, 0x10

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    move-object v1, p2

    .line 84
    move-object v2, p4

    .line 85
    move v3, p5

    .line 86
    move/from16 v4, p6

    .line 87
    .line 88
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->n(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    sget-object v3, Lyg/l;->a:Lyg/l;

    .line 93
    .line 94
    invoke-virtual {v3}, Lyg/l;->e()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 101
    .line 102
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_5
    if-eqz p0, :cond_6

    .line 111
    .line 112
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 113
    .line 114
    const/4 v7, 0x4

    .line 115
    const/4 v8, 0x0

    .line 116
    const-string v4, "LocalVideoNotExistUtil"

    .line 117
    .line 118
    const-string v5, "\u5408\u96c6\u5217\u8868, \u5c55\u793a\u8def\u5f84\u9009\u62e9\u5f39\u7a97"

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object v3, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 125
    .line 126
    invoke-static {v3, p1, p2, p3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->i(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 131
    .line 132
    const/4 v8, 0x4

    .line 133
    const/4 v9, 0x0

    .line 134
    const-string v5, "LocalVideoNotExistUtil"

    .line 135
    .line 136
    const-string v6, "\u5355\u8d44\u6e90, \u5c55\u793a\u8def\u5f84\u9009\u62e9\u5f39\u7a97"

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 143
    .line 144
    new-instance v3, Lcom/transsnet/downloader/util/y;

    .line 145
    .line 146
    move-object v4, p4

    .line 147
    move v5, p5

    .line 148
    move/from16 v6, p6

    .line 149
    .line 150
    invoke-direct {v3, p2, p4, p5, v6}, Lcom/transsnet/downloader/util/y;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 151
    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    invoke-static {v2, p1, p2, v4, v3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->e(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object v0
.end method

.method private static final h(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object p4, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "\u5355\u8d44\u6e90, \u672c\u5730\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5f00\u59cb\u91cd\u65b0\u4e0b\u8f7d, resourceId = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\uff0cpath ="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    const-string v2, "long_video_play"

    .line 30
    .line 31
    invoke-virtual {p4, v2, v0, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    sget-object p4, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 35
    .line 36
    invoke-static {p4, p0, p1, p2, p3}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->g(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
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
    new-instance p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    .line 14
    .line 15
    iget v7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v8, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$contextI:Landroid/content/Context;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollection:Z

    .line 19
    .line 20
    iget-object v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$resourceId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesCollectionList:Ljava/util/List;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$path:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$isSeries:Z

    .line 27
    .line 28
    iget v7, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$showErrorDialog$1;->$seriesPosition:I

    .line 29
    .line 30
    new-instance v9, Lcom/transsnet/downloader/util/x;

    .line 31
    .line 32
    move-object v0, v9

    .line 33
    move-object v2, v8

    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/util/x;-><init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v9}, Lcom/transsnet/downloader/dialog/LocalFileErrorDialog;->v0(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "LocalFileErrorDialog"

    .line 41
    .line 42
    invoke-virtual {p1, v8, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

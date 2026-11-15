.class final Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b(Ljava/lang/String;Ljava/lang/String;IIIIIJZJJ)V
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
    c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportPageDownload$1"
    f = "ReportUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $copyFiles:I

.field final synthetic $costTime:J

.field final synthetic $deleteFiles:I

.field final synthetic $downloadFileSize:J

.field final synthetic $downloadFiles:I

.field final synthetic $downloadedFiles:I

.field final synthetic $isInterceptor:Z

.field final synthetic $totalFileSize:J

.field final synthetic $totalFiles:I

.field final synthetic $url:Ljava/lang/String;

.field final synthetic $versionCode:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIJZIJJLkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIJZIJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$versionCode:Ljava/lang/String;

    .line 7
    .line 8
    move v1, p3

    .line 9
    iput v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$deleteFiles:I

    .line 10
    .line 11
    move v1, p4

    .line 12
    iput v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$copyFiles:I

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFiles:I

    .line 16
    .line 17
    move v1, p6

    .line 18
    iput v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFiles:I

    .line 19
    .line 20
    move-wide v1, p7

    .line 21
    iput-wide v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$costTime:J

    .line 22
    .line 23
    move v1, p9

    .line 24
    iput-boolean v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$isInterceptor:Z

    .line 25
    .line 26
    move v1, p10

    .line 27
    iput v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadedFiles:I

    .line 28
    .line 29
    move-wide v1, p11

    .line 30
    iput-wide v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFileSize:J

    .line 31
    .line 32
    move-wide/from16 v1, p13

    .line 33
    .line 34
    iput-wide v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFileSize:J

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    move-object/from16 v2, p15

    .line 38
    .line 39
    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 18
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v17, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$versionCode:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$deleteFiles:I

    .line 10
    .line 11
    iget v5, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$copyFiles:I

    .line 12
    .line 13
    iget v6, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFiles:I

    .line 14
    .line 15
    iget v7, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFiles:I

    .line 16
    .line 17
    iget-wide v8, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$costTime:J

    .line 18
    .line 19
    iget-boolean v10, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$isInterceptor:Z

    .line 20
    .line 21
    iget v11, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadedFiles:I

    .line 22
    .line 23
    iget-wide v12, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFileSize:J

    .line 24
    .line 25
    iget-wide v14, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFileSize:J

    .line 26
    .line 27
    move-object/from16 v1, v17

    .line 28
    .line 29
    move-object/from16 v16, p2

    .line 30
    .line 31
    invoke-direct/range {v1 .. v16}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIJZIJJLkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    return-object v17
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$url:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$versionCode:Ljava/lang/String;

    .line 21
    .line 22
    iget v4, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$deleteFiles:I

    .line 23
    .line 24
    iget v5, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$copyFiles:I

    .line 25
    .line 26
    iget v6, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFiles:I

    .line 27
    .line 28
    iget v7, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFiles:I

    .line 29
    .line 30
    iget-wide v8, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$costTime:J

    .line 31
    .line 32
    iget-boolean v10, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$isInterceptor:Z

    .line 33
    .line 34
    iget v11, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadedFiles:I

    .line 35
    .line 36
    iget-wide v12, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$totalFileSize:J

    .line 37
    .line 38
    iget-wide v14, v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;->$downloadFileSize:J

    .line 39
    .line 40
    const-string v0, "url"

    .line 41
    .line 42
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v0, "version"

    .line 46
    .line 47
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v0, "rfs"

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v0, "cfs"

    .line 60
    .line 61
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v0, "dfs"

    .line 69
    .line 70
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string v0, "tfs"

    .line 78
    .line 79
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v0, "ct"

    .line 87
    .line 88
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "intercept"

    .line 100
    .line 101
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v0, "dedfs"

    .line 105
    .line 106
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v0, "tfsize"

    .line 114
    .line 115
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v0, "dedfsize"

    .line 123
    .line 124
    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    new-instance v0, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "ext"

    .line 137
    .line 138
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 146
    .line 147
    const-string v2, "files_download"

    .line 148
    .line 149
    const/16 v3, 0x921

    .line 150
    .line 151
    invoke-virtual {v1, v2, v0, v3}, Lqi/h;->g(Ljava/lang/String;Landroid/os/Bundle;I)Z

    .line 152
    .line 153
    .line 154
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

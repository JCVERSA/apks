.class public final Lcom/transsion/lib_web/download_render/utils/ReportUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

.field private static final b:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "newSingleThreadExecutor(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b:Lkotlinx/coroutines/n0;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 7

    .line 1
    const-string v0, "datas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b:Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    new-instance v4, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportManifestDownload$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, v0}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportManifestDownload$1;-><init>(Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IIIIIJZJJ)V
    .locals 18

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "versionCode"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b:Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    new-instance v17, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;

    .line 18
    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    move-object/from16 v1, v17

    .line 22
    .line 23
    move/from16 v4, p3

    .line 24
    .line 25
    move/from16 v5, p4

    .line 26
    .line 27
    move/from16 v6, p5

    .line 28
    .line 29
    move/from16 v7, p6

    .line 30
    .line 31
    move-wide/from16 v8, p8

    .line 32
    .line 33
    move/from16 v10, p10

    .line 34
    .line 35
    move/from16 v11, p7

    .line 36
    .line 37
    move-wide/from16 v12, p11

    .line 38
    .line 39
    move-wide/from16 v14, p13

    .line 40
    .line 41
    invoke-direct/range {v1 .. v16}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportPageDownload$1;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIJZIJJLkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    move-object/from16 p1, v0

    .line 49
    .line 50
    move-object/from16 p2, v3

    .line 51
    .line 52
    move-object/from16 p3, v4

    .line 53
    .line 54
    move-object/from16 p4, v17

    .line 55
    .line 56
    move/from16 p5, v1

    .line 57
    .line 58
    move-object/from16 p6, v2

    .line 59
    .line 60
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final c(Lcom/transsion/lib_web/download_render/utils/RenderStage;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;-><init>(Lcom/transsion/lib_web/download_render/utils/RenderStage;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

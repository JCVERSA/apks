.class final Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/popup/PopupManager;->z(Landroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
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
    c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1"
    f = "PopupManager.kt"
    l = {
        0x183,
        0x1cf
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $checkTransferFailed:Z

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $info:Lyw/b;

.field final synthetic $loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/popup/PopupManager;",
            "Z",
            "Landroid/content/Context;",
            "Lyw/b;",
            "Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

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

.method public static synthetic a(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lyw/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->l(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lyw/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->k(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->j(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->i(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-wide/16 p5, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide p7

    .line 36
    add-long/2addr p5, p7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-wide p5, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 39
    .line 40
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$2$2;

    .line 49
    .line 50
    const/4 p5, 0x0

    .line 51
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$2$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    const/4 p5, 0x3

    .line 55
    const/4 p6, 0x0

    .line 56
    const/4 p2, 0x0

    .line 57
    const/4 p3, 0x0

    .line 58
    move-object p4, p0

    .line 59
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 60
    .line 61
    .line 62
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method private static final j(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;
    .locals 7

    .line 1
    if-eqz p7, :cond_1

    .line 2
    .line 3
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 4
    .line 5
    iget-wide p0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 6
    .line 7
    cmp-long v2, v0, p0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    sub-long/2addr v0, p0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    const-wide/32 v0, 0x19000

    .line 17
    .line 18
    .line 19
    cmp-long p0, p0, v0

    .line 20
    .line 21
    if-gez p0, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-static {p2}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p3}, Lyw/b;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p3}, Lyw/b;->e()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 46
    .line 47
    const/16 v5, 0xc

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v1, ""

    .line 51
    .line 52
    const-string v2, ""

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 61
    .line 62
    const-class p7, Lcom/transsnet/flow/event/FlowEventBus;

    .line 63
    .line 64
    invoke-virtual {p1, p7}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 69
    .line 70
    const-class p7, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 71
    .line 72
    invoke-virtual {p7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p7

    .line 76
    const-string v0, "getName(...)"

    .line 77
    .line 78
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    invoke-virtual {p1, p7, p0, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    .line 95
    .line 96
    move-object v0, p0

    .line 97
    move-object v1, p2

    .line 98
    move-object v2, p3

    .line 99
    move-object v3, p4

    .line 100
    move-object v4, p5

    .line 101
    move v5, p6

    .line 102
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    .line 103
    .line 104
    .line 105
    const/4 p5, 0x3

    .line 106
    const/4 p6, 0x0

    .line 107
    const/4 p2, 0x0

    .line 108
    const/4 p3, 0x0

    .line 109
    move-object p4, p0

    .line 110
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    if-nez p7, :cond_2

    .line 115
    .line 116
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    move-object v0, p0

    .line 128
    move-object v1, p4

    .line 129
    move-object v2, p3

    .line 130
    move-object v3, p5

    .line 131
    move v4, p6

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$2;-><init>(Lkotlin/jvm/functions/Function2;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    const/4 p5, 0x3

    .line 136
    const/4 p6, 0x0

    .line 137
    const/4 p2, 0x0

    .line 138
    const/4 p3, 0x0

    .line 139
    move-object p4, p0

    .line 140
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p0
.end method

.method private static final k(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v9, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$4$1;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v1, v9

    .line 13
    move-object v2, p0

    .line 14
    move-wide v3, p2

    .line 15
    move-object v5, p1

    .line 16
    move-wide v6, p4

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$4$1;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JLcom/transsnet/downloader/popup/PopupManager;JLkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 p4, 0x3

    .line 21
    const/4 p5, 0x0

    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 p2, 0x0

    .line 24
    move-object p0, v0

    .line 25
    move-object p3, v9

    .line 26
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final l(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lyw/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)Lkotlin/Unit;
    .locals 10

    .line 1
    new-instance v7, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 29
    .line 30
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 37
    .line 38
    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "getName(...)"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v9, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$5$1;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v1, v9

    .line 66
    move-object v2, p1

    .line 67
    move v3, p5

    .line 68
    move-object v4, p2

    .line 69
    move-object v5, p0

    .line 70
    move v6, p3

    .line 71
    move-object v7, p4

    .line 72
    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$5$1;-><init>(Lkotlin/jvm/functions/Function2;ZLyw/b;Lcom/transsnet/downloader/popup/PopupManager;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/coroutines/Continuation;)V

    .line 73
    .line 74
    .line 75
    const/4 p4, 0x3

    .line 76
    const/4 p5, 0x0

    .line 77
    const/4 p1, 0x0

    .line 78
    const/4 p2, 0x0

    .line 79
    move-object p0, v0

    .line 80
    move-object p3, v9

    .line 81
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 82
    .line 83
    .line 84
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
    new-instance p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;ZLandroid/content/Context;Lyw/b;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v13

    .line 7
    iget v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const-string v14, "resource_save"

    .line 11
    .line 12
    const/4 v15, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v15, :cond_1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_b

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$3:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/util/Iterator;

    .line 35
    .line 36
    iget-object v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$2:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 39
    .line 40
    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/Map;

    .line 43
    .line 44
    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v11, v0

    .line 52
    move-object v10, v1

    .line 53
    move-object v9, v2

    .line 54
    move-object v8, v3

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-string v2, ", subjectId = "

    .line 71
    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    if-ne v0, v3, :cond_e

    .line 75
    .line 76
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 77
    .line 78
    iget-object v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v6, "\u5267\u96c6\u8f6c\u5b58\u64cd\u4f5c, name = "

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v14, v1, v15}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 125
    .line 126
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 135
    .line 136
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v4, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-boolean v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 145
    .line 146
    const-wide/16 v6, 0x0

    .line 147
    .line 148
    if-eqz v5, :cond_5

    .line 149
    .line 150
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 151
    .line 152
    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_8

    .line 169
    .line 170
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 175
    .line 176
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-ge v9, v3, :cond_3

    .line 181
    .line 182
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_3

    .line 187
    .line 188
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    iget-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 192
    .line 193
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    if-eqz v8, :cond_4

    .line 198
    .line 199
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v16

    .line 203
    goto :goto_1

    .line 204
    :cond_4
    move-wide/from16 v16, v6

    .line 205
    .line 206
    :goto_1
    add-long v9, v9, v16

    .line 207
    .line 208
    iput-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_5
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 212
    .line 213
    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_8

    .line 230
    .line 231
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 236
    .line 237
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-ge v9, v3, :cond_6

    .line 242
    .line 243
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_6

    .line 248
    .line 249
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    iget-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 253
    .line 254
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    if-eqz v8, :cond_7

    .line 259
    .line 260
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 261
    .line 262
    .line 263
    move-result-wide v16

    .line 264
    goto :goto_3

    .line 265
    :cond_7
    move-wide/from16 v16, v6

    .line 266
    .line 267
    :goto_3
    add-long v9, v9, v16

    .line 268
    .line 269
    iput-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_9

    .line 277
    .line 278
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    new-instance v4, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$1;

    .line 287
    .line 288
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 289
    .line 290
    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 291
    .line 292
    iget-boolean v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 293
    .line 294
    const/4 v5, 0x0

    .line 295
    invoke-direct {v4, v0, v2, v3, v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$1;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;ZLkotlin/coroutines/Continuation;)V

    .line 296
    .line 297
    .line 298
    const/4 v5, 0x3

    .line 299
    const/4 v6, 0x0

    .line 300
    const/4 v2, 0x0

    .line 301
    const/4 v3, 0x0

    .line 302
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 303
    .line 304
    .line 305
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 306
    .line 307
    return-object v0

    .line 308
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    move-object v8, v0

    .line 313
    move-object v9, v1

    .line 314
    move-object v10, v2

    .line 315
    move-object v11, v3

    .line 316
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_12

    .line 321
    .line 322
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move-object v7, v0

    .line 327
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 328
    .line 329
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 330
    .line 331
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v4, "save video, epse = "

    .line 345
    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, ",isTransferFailed = "

    .line 353
    .line 354
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v14, v1, v15}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_a

    .line 372
    .line 373
    sget-object v0, Lui/b;->a:Lui/b$a;

    .line 374
    .line 375
    invoke-virtual {v0}, Lui/b$a;->e()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    :goto_5
    move-object/from16 v16, v0

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_a
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    if-nez v0, :cond_b

    .line 387
    .line 388
    sget-object v0, Lui/b;->a:Lui/b$a;

    .line 389
    .line 390
    invoke-virtual {v0}, Lui/b$a;->e()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v7, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_b
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :goto_6
    sget-object v17, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 406
    .line 407
    iget-object v6, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    .line 408
    .line 409
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_c

    .line 414
    .line 415
    move/from16 v18, v15

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_c
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    move/from16 v18, v0

    .line 423
    .line 424
    :goto_7
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 425
    .line 426
    invoke-virtual {v0}, Lyw/b;->b()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v19

    .line 430
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 431
    .line 432
    invoke-virtual {v0}, Lyw/b;->e()I

    .line 433
    .line 434
    .line 435
    move-result v20

    .line 436
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 437
    .line 438
    new-instance v21, Lcom/transsnet/downloader/popup/m;

    .line 439
    .line 440
    move-object/from16 v0, v21

    .line 441
    .line 442
    move-object v1, v9

    .line 443
    move-object v2, v7

    .line 444
    move-object v3, v10

    .line 445
    move-object v4, v8

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/popup/m;-><init>(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V

    .line 447
    .line 448
    .line 449
    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 450
    .line 451
    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 452
    .line 453
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 454
    .line 455
    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 456
    .line 457
    iget-boolean v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 458
    .line 459
    new-instance v22, Lcom/transsnet/downloader/popup/n;

    .line 460
    .line 461
    move-object/from16 v0, v22

    .line 462
    .line 463
    move/from16 v23, v1

    .line 464
    .line 465
    move-object v1, v10

    .line 466
    move-object/from16 v24, v2

    .line 467
    .line 468
    move-object v2, v8

    .line 469
    move-object/from16 v25, v6

    .line 470
    .line 471
    move-object/from16 v6, v24

    .line 472
    .line 473
    move-object/from16 v24, v7

    .line 474
    .line 475
    move/from16 v7, v23

    .line 476
    .line 477
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/popup/n;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)V

    .line 478
    .line 479
    .line 480
    iget-boolean v7, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 481
    .line 482
    iput-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$0:Ljava/lang/Object;

    .line 483
    .line 484
    iput-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$1:Ljava/lang/Object;

    .line 485
    .line 486
    iput-object v10, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$2:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->L$3:Ljava/lang/Object;

    .line 489
    .line 490
    iput v15, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    .line 491
    .line 492
    const/4 v2, 0x0

    .line 493
    move-object/from16 v0, v17

    .line 494
    .line 495
    move-object/from16 v1, v25

    .line 496
    .line 497
    move-object/from16 v3, v24

    .line 498
    .line 499
    move-object/from16 v4, v16

    .line 500
    .line 501
    move/from16 v5, v18

    .line 502
    .line 503
    move-object/from16 v6, v19

    .line 504
    .line 505
    move/from16 v16, v7

    .line 506
    .line 507
    move/from16 v7, v20

    .line 508
    .line 509
    move-object/from16 v17, v8

    .line 510
    .line 511
    move-object/from16 v8, v21

    .line 512
    .line 513
    move-object/from16 v18, v9

    .line 514
    .line 515
    move-object/from16 v9, v22

    .line 516
    .line 517
    move-object/from16 v19, v10

    .line 518
    .line 519
    move/from16 v10, v16

    .line 520
    .line 521
    move-object/from16 v16, v11

    .line 522
    .line 523
    move-object/from16 v11, p0

    .line 524
    .line 525
    invoke-virtual/range {v0 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    if-ne v0, v13, :cond_d

    .line 530
    .line 531
    return-object v13

    .line 532
    :cond_d
    move-object/from16 v11, v16

    .line 533
    .line 534
    move-object/from16 v8, v17

    .line 535
    .line 536
    move-object/from16 v9, v18

    .line 537
    .line 538
    move-object/from16 v10, v19

    .line 539
    .line 540
    goto/16 :goto_4

    .line 541
    .line 542
    :cond_e
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 543
    .line 544
    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 545
    .line 546
    invoke-static {v3}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    iget-object v4, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 555
    .line 556
    invoke-static {v4}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    iget-object v5, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 565
    .line 566
    invoke-static {v5}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    const-string v7, "\u5355\u8d44\u6e90\u8f6c\u5b58\u64cd\u4f5c, name = "

    .line 580
    .line 581
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v2, ",resourceId = "

    .line 594
    .line 595
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual {v0, v14, v2, v15}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 606
    .line 607
    .line 608
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 609
    .line 610
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_f

    .line 619
    .line 620
    sget-object v0, Lui/b;->a:Lui/b$a;

    .line 621
    .line 622
    invoke-virtual {v0}, Lui/b$a;->e()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    :goto_8
    move-object v4, v0

    .line 627
    goto :goto_9

    .line 628
    :cond_f
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 629
    .line 630
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    if-nez v0, :cond_10

    .line 639
    .line 640
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 641
    .line 642
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    sget-object v2, Lui/b;->a:Lui/b$a;

    .line 647
    .line 648
    invoke-virtual {v2}, Lui/b$a;->e()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :cond_10
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 656
    .line 657
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    goto :goto_8

    .line 669
    :goto_9
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 670
    .line 671
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_11

    .line 680
    .line 681
    move v5, v15

    .line 682
    goto :goto_a

    .line 683
    :cond_11
    iget-object v0, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 684
    .line 685
    invoke-static {v0}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    move v5, v0

    .line 694
    :goto_a
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 695
    .line 696
    iget-object v2, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$context:Landroid/content/Context;

    .line 697
    .line 698
    iget-object v3, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 699
    .line 700
    invoke-static {v3}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    iget-object v6, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 705
    .line 706
    invoke-virtual {v6}, Lyw/b;->b()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    iget-object v7, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 711
    .line 712
    invoke-virtual {v7}, Lyw/b;->e()I

    .line 713
    .line 714
    .line 715
    move-result v7

    .line 716
    iget-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 717
    .line 718
    iget-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 719
    .line 720
    new-instance v10, Lcom/transsnet/downloader/popup/o;

    .line 721
    .line 722
    invoke-direct {v10, v8, v9}, Lcom/transsnet/downloader/popup/o;-><init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;)V

    .line 723
    .line 724
    .line 725
    iget-object v15, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    .line 726
    .line 727
    iget-object v8, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    .line 728
    .line 729
    iget-object v9, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$info:Lyw/b;

    .line 730
    .line 731
    iget-boolean v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 732
    .line 733
    iget-object v14, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 734
    .line 735
    new-instance v20, Lcom/transsnet/downloader/popup/p;

    .line 736
    .line 737
    move-object/from16 v19, v14

    .line 738
    .line 739
    move-object/from16 v14, v20

    .line 740
    .line 741
    move-object/from16 v16, v8

    .line 742
    .line 743
    move-object/from16 v17, v9

    .line 744
    .line 745
    move/from16 v18, v11

    .line 746
    .line 747
    invoke-direct/range {v14 .. v19}, Lcom/transsnet/downloader/popup/p;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lkotlin/jvm/functions/Function2;Lyw/b;ZLcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V

    .line 748
    .line 749
    .line 750
    iget-boolean v11, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->$checkTransferFailed:Z

    .line 751
    .line 752
    iput v1, v12, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->label:I

    .line 753
    .line 754
    const/4 v8, 0x0

    .line 755
    move-object v1, v2

    .line 756
    move v2, v8

    .line 757
    move-object v8, v10

    .line 758
    move-object/from16 v9, v20

    .line 759
    .line 760
    move v10, v11

    .line 761
    move-object/from16 v11, p0

    .line 762
    .line 763
    invoke-virtual/range {v0 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    if-ne v0, v13, :cond_12

    .line 768
    .line 769
    return-object v13

    .line 770
    :cond_12
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 771
    .line 772
    return-object v0
.end method

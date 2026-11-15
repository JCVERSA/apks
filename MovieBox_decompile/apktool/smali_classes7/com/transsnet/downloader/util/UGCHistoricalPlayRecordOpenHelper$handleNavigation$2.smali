.class final Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->f(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$handleNavigation$2"
    f = "UGCHistoricalPlayRecordOpenHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $isDownloaded:Z

.field final synthetic $isShortTV:Z

.field final synthetic $ops:Ljava/lang/String;

.field final synthetic $queryVideoId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field final synthetic $ugcVideoType:Ljava/lang/String;

.field final synthetic $videoStyle:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$videoStyle:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isDownloaded:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$queryVideoId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$subjectId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$collectionId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ops:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoType:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p10, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isShortTV:Z

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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
    new-instance p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$videoStyle:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isDownloaded:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$queryVideoId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$subjectId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$collectionId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ops:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoType:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v10, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isShortTV:Z

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move-object v11, p2

    .line 25
    invoke-direct/range {v0 .. v11}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;-><init>(Ljava/lang/String;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$videoStyle:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-boolean v0, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isDownloaded:Z

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoId:Ljava/lang/String;

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$isShortTV:Z

    .line 34
    .line 35
    iget-object v4, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$subjectId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$collectionId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ops:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v8, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoType:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v9, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$videoStyle:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_0
    move-object v5, v1

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 58
    .line 59
    invoke-static {p1, v5, v6, v7, v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->b(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    sget-object v3, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 64
    .line 65
    invoke-static/range {v3 .. v9}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->c(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 p1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoId:Ljava/lang/String;

    .line 74
    .line 75
    if-nez p1, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$queryVideoId:Ljava/lang/String;

    .line 78
    .line 79
    :cond_5
    move-object v2, p1

    .line 80
    sget-object v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$subjectId:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$collectionId:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ops:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v5, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$ugcVideoType:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;->$videoStyle:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->c(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    :goto_2
    return-object p1

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->b(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->u()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 22
    .line 23
    sget p1, Lcom/transsion/subtitle/R$string;->subtitle_download_failed:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    .line 1
    const-string v0, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    const-string p1, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dbBean"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 18
    .line 19
    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/subtitle/d;

    .line 20
    .line 21
    invoke-direct {v1, p2, v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/d;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->u()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->q(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v3, " -------- onSaveDownload\uff0c\u4e0d\u662f\u5f53\u524d\u89c6\u9891\uff0c\u4e0d\u505a\u5904\u7406"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->i(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v4, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

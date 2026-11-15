.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwj/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->c(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lcom/transsnet/downloader/viewmodel/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/k0;->c()Landroidx/lifecycle/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onFail()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> interception() --> onFail() --> \u5931\u8d25\u4e86"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v3, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Lcom/transsnet/downloader/fragment/v2;

    .line 24
    .line 25
    invoke-direct {v4, v1}, Lcom/transsnet/downloader/fragment/v2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0, v2, v4}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

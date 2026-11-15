.class public final Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lij/o;->a:Lij/o;

    .line 14
    .line 15
    invoke-virtual {p1}, Lij/o;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->b0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->n:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->b0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->d0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

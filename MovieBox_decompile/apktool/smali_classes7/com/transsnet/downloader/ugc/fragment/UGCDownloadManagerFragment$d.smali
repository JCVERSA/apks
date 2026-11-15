.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->B0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->b:Z

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lqi/b;->i()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lqi/b;->k(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->g0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->h0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v0, Lij/o;->a:Lij/o;

    .line 53
    .line 54
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->n:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->i0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)Ljava/util/List;

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

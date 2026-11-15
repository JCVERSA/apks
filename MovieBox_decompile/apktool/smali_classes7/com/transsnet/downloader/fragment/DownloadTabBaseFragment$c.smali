.class public final Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->q0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->b:Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->d0(I)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

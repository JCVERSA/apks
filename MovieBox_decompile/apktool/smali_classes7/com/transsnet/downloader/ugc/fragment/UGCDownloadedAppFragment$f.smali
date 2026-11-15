.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->j0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string p1, "TAB_ALL"

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;->m:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$a;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$f;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->j0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Ljava/util/List;

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

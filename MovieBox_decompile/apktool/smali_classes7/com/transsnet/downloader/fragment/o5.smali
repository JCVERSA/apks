.class public final synthetic Lcom/transsnet/downloader/fragment/o5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/o5;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsnet/downloader/fragment/o5;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsnet/downloader/fragment/o5;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/o5;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/o5;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/fragment/o5;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->E0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;ZZLandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

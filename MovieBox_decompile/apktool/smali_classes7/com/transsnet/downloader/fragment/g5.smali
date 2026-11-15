.class public final synthetic Lcom/transsnet/downloader/fragment/g5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/g5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/fragment/g5;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/g5;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/fragment/g5;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->F0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

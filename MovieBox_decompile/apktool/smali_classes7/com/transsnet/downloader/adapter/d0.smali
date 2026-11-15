.class public final synthetic Lcom/transsnet/downloader/adapter/d0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

.field public final synthetic b:I

.field public final synthetic c:Lp6/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/d0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/adapter/d0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/adapter/d0;->c:Lp6/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/d0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/adapter/d0;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/d0;->c:Lp6/a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->m(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

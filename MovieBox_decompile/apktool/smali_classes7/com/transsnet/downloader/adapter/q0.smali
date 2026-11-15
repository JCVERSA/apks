.class public final synthetic Lcom/transsnet/downloader/adapter/q0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lp6/a;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lcom/transsnet/downloader/adapter/DownloadingHolder;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lp6/a;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/adapter/DownloadingHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/q0;->a:Lp6/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/q0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/adapter/q0;->c:Lcom/transsnet/downloader/adapter/DownloadingHolder;

    .line 9
    .line 10
    iput p4, p0, Lcom/transsnet/downloader/adapter/q0;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/q0;->a:Lp6/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/adapter/q0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/q0;->c:Lcom/transsnet/downloader/adapter/DownloadingHolder;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsnet/downloader/adapter/q0;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/adapter/DownloadingHolder;->n(Lp6/a;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/adapter/DownloadingHolder;ILandroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.class public final Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x5

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;->a:Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->b1()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_1
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

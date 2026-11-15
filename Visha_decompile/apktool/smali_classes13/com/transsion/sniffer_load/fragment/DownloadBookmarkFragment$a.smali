.class public Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;->a:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;->a:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->n0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;->a:Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;->m0(Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment;)Lcom/transsion/sniffer_load/adapter/BookmarkAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadBookmarkFragment$a;->a(Ljava/util/List;)V

    return-void
.end method

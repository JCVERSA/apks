.class public Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHeaderTask()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {v2}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->Y0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-virtual {p1, v3}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->editMode(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->U0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    move-result-object p0

    invoke-virtual {p0, v0, v3, p3}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->B(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;ZI)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->i1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :goto_0
    return v3
.end method

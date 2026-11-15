.class public Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


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

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->Z0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->a1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->b1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;J)J

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->c1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->i1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close_button:I

    if-ne p3, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->O0(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_retry:I

    if-ne p0, p2, :cond_6

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_3

    sget p0, Lcom/transsion/sniffer_load/R$string;->net_media_play_network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    invoke-static {p0}, Lty2;->g(Ljava/lang/Throwable;)I

    move-result p0

    const/16 p2, 0x138a

    if-eq p0, p2, :cond_4

    const/16 p2, 0x1450

    if-ne p0, p2, :cond_5

    :cond_4
    sget p0, Lcom/transsion/sniffer_load/R$string;->file_invalid_cannot_download:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_5
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-string p2, "cloud_download_retry"

    invoke-static {p0, p1, p2}, Lcz5;->j(JLjava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

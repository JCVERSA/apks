.class public Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->Z0(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->a1(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->b1(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;J)J

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->c1(Lcom/transsion/cloud/updownload/fragment/UploadingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->i1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_close_button:I

    if-ne p3, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/UploadingFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->O0(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_retry:I

    if-ne p0, p2, :cond_4

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_3

    sget p0, Lcom/transsion/sniffer_load/R$string;->net_media_play_network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_3
    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lri4;->r(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object p0, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const-string p2, "cloud_upload_retry"

    invoke-static {p0, p1, p2}, Lcz5;->j(JLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

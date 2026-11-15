.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemChildClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->U0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_item_more:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0, v0, p3}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/cloudcore/db/CloudTaskEntity;I)V

    :cond_1
    :goto_0
    return-void
.end method

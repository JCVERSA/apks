.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->T0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-virtual {p2, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->editMode(Z)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-virtual {p0, p1, v1, p3}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->j(Lcom/transsion/cloudcore/db/CloudTaskEntity;ZI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;->a:Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :goto_0
    return v1
.end method

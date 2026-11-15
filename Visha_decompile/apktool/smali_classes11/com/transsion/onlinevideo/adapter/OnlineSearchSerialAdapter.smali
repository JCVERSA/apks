.class public Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->item_video_serial:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->p:Z

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->p:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    const-string p2, "..."

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p1, p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialNo()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getPayType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, p0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;)V

    return-void
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->p:Z

    return p0
.end method

.method public h()Z
    .locals 2

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->o:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->p:Z

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->item_variety_show:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/onlinevideo/R$layout;->item_video_serial:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineSearchSerialAdapter;->o:I

    return-void
.end method

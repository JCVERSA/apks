.class public Lcom/transsion/tools/adapter/ThumbFrameAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/tools/beans/ThemeImage;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/tools/R$layout;->item_thumb_frame:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/beans/ThemeImage;)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->iv_selector:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget p0, p0, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->o:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->iv_image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iget p1, p2, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/tools/beans/ThemeImage;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/beans/ThemeImage;)V

    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->o:I

    return p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->o:I

    return-void
.end method

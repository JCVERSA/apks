.class public Lcom/transsion/audio/adapter/FilterItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/adapter/FilterItemAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/audio/adapter/FilterItemAdapter$a;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/audio/R$layout;->item_filter:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/adapter/FilterItemAdapter$a;)V
    .locals 1

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p0, Lcom/transsion/audio/R$id;->tv_filter_title:I

    iget-object v0, p2, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/audio/R$id;->tv_status:I

    iget-object p2, p2, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/FilterItemAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/audio/adapter/FilterItemAdapter$a;)V

    return-void
.end method

.class Lcom/chad/library/adapter/base/BaseViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->access$000(Lcom/chad/library/adapter/base/BaseViewHolder;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemChildClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->access$000(Lcom/chad/library/adapter/base/BaseViewHolder;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->access$000(Lcom/chad/library/adapter/base/BaseViewHolder;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemChildClickListener()Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;

    move-result-object v1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseViewHolder$1;->this$0:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->access$000(Lcom/chad/library/adapter/base/BaseViewHolder;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object p0

    invoke-interface {v1, p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;->onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

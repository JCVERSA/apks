.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDismiss(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-static {v1, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->K1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Z)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v1, v1, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return v0
.end method

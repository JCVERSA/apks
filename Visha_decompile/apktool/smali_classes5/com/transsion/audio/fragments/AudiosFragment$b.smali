.class public Lcom/transsion/audio/fragments/AudiosFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudiosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$b;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x2

    const/16 v0, 0x484

    const/16 v1, 0x18

    const/16 v2, 0x15

    if-eq p2, p1, :cond_3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$b;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget p2, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/audio/fragments/AudiosFragment;->y2(Lcom/transsion/audio/fragments/AudiosFragment;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$b;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->showShuffleBtn()V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_END:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$b;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideShuffleBtn()V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_START:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

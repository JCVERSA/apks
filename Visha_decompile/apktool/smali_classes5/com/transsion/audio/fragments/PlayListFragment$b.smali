.class public Lcom/transsion/audio/fragments/PlayListFragment$b;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->r3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lif7;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragments/PlayListFragment;->Y2(Lcom/transsion/audio/fragments/PlayListFragment;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-boolean p1, p1, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz p1, :cond_2

    invoke-static {}, Ln06;->a()V

    :cond_2
    invoke-virtual {v0, p3}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p1, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    iget p2, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object p3

    invoke-virtual {p3, v0}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p3

    invoke-static {p2, v2, p3}, Lp06;->z(IZZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/transsion/audio/fragments/PlayListFragment;->W2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$b;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->V2(Lcom/transsion/audio/fragments/PlayListFragment;)V

    :goto_0
    return-void
.end method

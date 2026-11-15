.class public Lcom/transsion/playercommon/adapter/AudioStackAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;
    }
.end annotation


# instance fields
.field public o:Landroid/content/Context;

.field public p:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public q:I

.field public r:Ljava/util/ArrayList;

.field public s:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->p:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->q:I

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->s:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_one_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->t:I

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_one_shadow_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->u:I

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_two_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->v:I

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_two_shadow_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->w:I

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_third_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->x:I

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    sget p2, Lcom/transsion/playercommon/R$color;->color_level_third_shadow_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->y:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    if-ltz p2, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;

    iget-object v7, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->p:Landroid/widget/RelativeLayout;

    iget-object v8, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->q:Landroid/widget/FrameLayout;

    iget-object v9, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->t:Lcom/transsion/widgets/BadgeView;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;->u:Landroid/widget/ImageView;

    const/high16 p1, 0x41000000    # 8.0f

    if-nez p2, :cond_2

    iget v1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->t:I

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->u:I

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lro1;->a(Landroid/view/View;IIIIII)V

    const/4 p1, 0x0

    invoke-virtual {v8, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v11, p0}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    invoke-virtual {v11, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$drawable;->shape_drag_num:I

    invoke-virtual {v11, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->requestLayout()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget v1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->v:I

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->w:I

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lro1;->a(Landroid/view/View;IIIIII)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->x:I

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->y:I

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->o:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lro1;->a(Landroid/view/View;IIIIII)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " list size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioStackAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$layout;->item_audio_stack:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/playercommon/adapter/AudioStackAdapter$a;-><init>(Lcom/transsion/playercommon/adapter/AudioStackAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->q:I

    return-void
.end method

.method public s(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public t(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->s:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-void
.end method

.class public Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lkpb$a;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

.field public p:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->layout_video_list_mode_item:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;Lkpb$a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->d(Lkpb$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lkpb$a;)V
    .locals 4

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lvha;->o(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->p:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const v1, 0x3da3d70a    # 0.08f

    invoke-static {v0, v1}, Lr91;->a(IF)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->p:Ljava/lang/Integer;

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Lgsb;

    invoke-direct {v1, p0, p2}, Lgsb;-><init>(Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;Lkpb$a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p2, Lkpb$a;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v3, p2, Lkpb$a;->c:Z

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget v1, p2, Lkpb$a;->b:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p2, Lkpb$a;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/magicvideo/R$color;->os_text_tertiary_xos:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->cl_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p2, Lkpb$a;->c:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->p:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/magicvideo/R$color;->video_sort_mode_bg_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkpb$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lkpb$a;)V

    return-void
.end method

.method public final synthetic d(Lkpb$a;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->o:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p0, p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setOnItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/VideoListModeAdapter;->o:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;

    return-void
.end method

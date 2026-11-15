.class public Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

.field public p:I

.field public q:I

.field public r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$layout;->adapter_video_tag:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->p:I

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->q:I

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->r:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$color;->os_text_secondary_color:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->q:I

    return-void
.end method

.method public static synthetic b([ILcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->t([ILcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    return-void
.end method

.method public static synthetic t([ILcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->isNeedHide()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V
    .locals 5

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_tag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->getTagId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/onlinevideo/R$id;->cl_content:I

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->video_tag_bg:I

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->p:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/onlinevideo/R$id;->cl_content:I

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->video_tag_bg1:I

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->q:I

    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->isSpacialType()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->isHot()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_tag_hot:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->isNew()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/onlinevideo/R$drawable;->ic_tag_new:I

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_1

    :cond_3
    sget p0, Lcom/transsion/onlinevideo/R$id;->label_imageview:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V

    return-void
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->r(I)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lq8c;

    invoke-direct {v2, v1}, Lq8c;-><init>([I)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    aget p0, v1, v0

    return p0
.end method

.method public r(I)Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;->isNeedHide()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    return-object p0
.end method

.method public s()Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    return-object p0
.end method

.method public u(Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/VideoTypeAdapter;->o:Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

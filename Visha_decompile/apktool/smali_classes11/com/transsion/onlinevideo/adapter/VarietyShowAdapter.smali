.class public Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_varietyshow:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_varietyshow_expand:I

    :goto_0
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->c(Landroid/content/Context;Z)V

    .line 3
    iput p3, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 4
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_varietyshow:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/onlinevideo/R$layout;->item_varietyshow_expand:I

    :goto_0
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->c(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V
    .locals 7

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget v3, Lcom/transsion/onlinevideo/R$id;->tv_title:I

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->p:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->o:I

    :goto_1
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/onlinevideo/R$id;->iv_cover:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getCoverX()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    sget v6, Lcom/transsion/onlinevideo/R$drawable;->ic_empty_placeholder:I

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget v4, Lcom/transsion/onlinevideo/R$id;->iv_vip:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getPayType()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v4, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->q:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    sget v5, Lcom/transsion/onlinevideo/R$id;->tv_duration:I

    xor-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v6, Lcom/transsion/onlinevideo/R$id;->tv_date:I

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {p1, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getDuration()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v1, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->q:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/onlinevideo/R$string;->video_onlinevideo_trivia_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialTitle()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, v3, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->lottie_layer_view:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/onlinevideo/R$id;->iv_selected_frame:I

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final c(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color_dark:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->o:I

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->p:I

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    return-void
.end method

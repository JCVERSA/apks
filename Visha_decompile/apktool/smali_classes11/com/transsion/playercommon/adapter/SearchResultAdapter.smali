.class public Lcom/transsion/playercommon/adapter/SearchResultAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/SearchBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static t:Ljava/lang/String;

.field public static u:Lcom/transsion/dbdata/beans/media/MediaItem;


# instance fields
.field public final o:I

.field public final p:I

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    sget v0, Lcom/transsion/playercommon/R$layout;->rv_item_folder_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->o:I

    sget v1, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->p:I

    invoke-virtual {p0, v4, v0}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->addItemType(II)V

    const/4 p1, 0x2

    sget v0, Lcom/transsion/playercommon/R$layout;->rv_item_search_video_list:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->addItemType(II)V

    const/4 p1, 0x3

    sget v0, Lcom/transsion/playercommon/R$layout;->rv_item_search_audio_list:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->addItemType(II)V

    return-void
.end method

.method private getLayoutId(I)I
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->s:Landroid/util/SparseIntArray;

    const/16 v0, -0x194

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private h(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    const-string v0, "."

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->r:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->r:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->o:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    sget-object p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchTextHighlight "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method


# virtual methods
.method public addItemType(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->s:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->s:Landroid/util/SparseIntArray;

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->s:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V
    .locals 2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getItemType()I

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V

    :goto_0
    return-void
.end method

.method public final c(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V
    .locals 0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaBucket()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item:I

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V

    return-void
.end method

.method public final d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V
    .locals 6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v1, Lcom/transsion/playercommon/R$id;->tv_item_name:I

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->h(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->tv_item_artist:I

    iget-object v3, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->tv_item_duration:I

    iget-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v3, v4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->iv_item_more:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_farvorited:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_mv_tag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->t:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sget p2, Lcom/transsion/playercommon/R$id;->lottie_layer_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/MusicLottieAnimationView;

    iget p0, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->o:I

    invoke-static {p2, p0, v3}, Lcom/transsion/widgets/MusicLottieAnimationView;->bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V

    filled-new-array {v2}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final g(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/SearchBean;)V
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item_size:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item:I

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->h(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-wide v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v6, v7}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v2, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_item_more:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$drawable;->main_fragment_placeholder:I

    iget-object v6, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v2, v3, v6}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v6

    invoke-static {v3, v6, v2, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    sget v2, Lcom/transsion/playercommon/R$id;->iv_favorite:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    iget-object v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/SearchBean;->getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    sget-object v2, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->u:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v5

    :goto_1
    sget v2, Lcom/transsion/playercommon/R$id;->lottie_layer:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->q:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/SearchBean;->getItemType()I

    move-result p0

    return p0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->q:Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->r:Ljava/lang/String;

    return-void
.end method

.method public final k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/widget/ImageView;)V
    .locals 5

    sget p0, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_item_more:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {p2}, Llpb;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->o(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    sget p3, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item:I

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {p1, p3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item_size:I

    if-eqz v0, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {p1, p3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p3, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item_duration:I

    if-eqz v0, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    invoke-virtual {p1, p3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v0, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    invoke-direct {p0, p2}, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->getLayoutId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

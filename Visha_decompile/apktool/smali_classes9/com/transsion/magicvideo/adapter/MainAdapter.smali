.class public Lcom/transsion/magicvideo/adapter/MainAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/adapter/MainAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final p:I

.field public final q:I

.field public r:I

.field public final s:Ljava/util/ArrayList;

.field public final t:Ljava/util/ArrayList;

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->t:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->u:I

    sget v0, Lcom/transsion/magicvideo/R$color;->os_text_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->p:I

    sget v0, Lcom/transsion/magicvideo/R$color;->os_text_primary_color_no_select:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->q:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/adapter/MainAdapter;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/adapter/MainAdapter;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/adapter/MainAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/MainAdapter;->h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/adapter/MainAdapter$1;-><init>(Lcom/transsion/magicvideo/adapter/MainAdapter;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->u:I

    return p0
.end method

.method public h(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_count:I

    iget v2, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->u:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget v4, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    if-le v4, v3, :cond_1

    sget v4, Lcom/transsion/magicvideo/R$string;->videos_num:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/transsion/magicvideo/R$string;->video_num:I

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->r:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_list_checkBox:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setChecked(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_main_fragment_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lgpb;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "MainAdapter"

    const-string v0, "isVideoThumbnailFail::::::::::::"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    sget p2, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaBucket;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object p2

    invoke-static {p0, p2, v0, p1}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget p2, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main_list:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    sget p2, Lcom/transsion/magicvideo/R$layout;->recycle_view_item_fragment_main:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->u:I

    return-void
.end method

.method public s(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter;->o:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/magicvideo/adapter/MainAdapter$a;)V
    .locals 0

    return-void
.end method

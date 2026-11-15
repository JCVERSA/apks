.class public Lcom/transsion/audio/adapter/FilterBucketAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_audio_folder_filter:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/audio/adapter/FilterBucketAdapter;->o:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/adapter/FilterBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/adapter/FilterBucketAdapter;->g(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/FilterBucketAdapter;->h(Landroid/widget/ImageView;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic g(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;
    .locals 0

    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/FilterBucketAdapter;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/adapter/FilterBucketAdapter;->o:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic h(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/FilterBucketAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/transsion/audio/R$id;->iv_filter:I

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_filter_folder:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/audio/R$drawable;->ic_no_filter_folder:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$id;->container:I

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$id;->tv_main_fragment_item_title:I

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

    sget v1, Lcom/transsion/audio/R$id;->tv_main_fragment_item_count:I

    iget-object v2, p0, Lcom/transsion/audio/adapter/FilterBucketAdapter;->o:Landroid/content/Context;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    sget v3, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/FilterBucketAdapter;->i(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public i(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 2

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lhv3;

    invoke-direct {v1, p0, p2}, Lhv3;-><init>(Lcom/transsion/audio/adapter/FilterBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->d()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lbn;

    invoke-direct {p2, p1}, Lbn;-><init>(Landroid/widget/ImageView;)V

    new-instance v0, Liv3;

    invoke-direct {v0, p1}, Liv3;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "loadThumb exception:"

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/audio/adapter/FilterBucketAdapter;->o:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    const/16 p1, 0x99

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v2
.end method

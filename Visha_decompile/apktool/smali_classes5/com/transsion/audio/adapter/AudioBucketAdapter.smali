.class public Lcom/transsion/audio/adapter/AudioBucketAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/adapter/AudioBucketAdapter$b;
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
.field public o:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public p:I

.field public q:I

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:Landroid/content/Context;

.field public u:I

.field public v:I

.field public volatile w:Z

.field public x:Ljava/util/concurrent/ConcurrentHashMap;

.field public y:Ljava/util/concurrent/ConcurrentSkipListSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/16 v0, 0x19

    if-ne p2, v0, :cond_0

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_fragment_album_list:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$layout;->rv_item_fragment_audio_folders:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->x:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->y:Ljava/util/concurrent/ConcurrentSkipListSet;

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iput p2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->q:I

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$attr;->os_platform_basic_color:I

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->data:I

    iput p2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->p:I

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p1, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->u:I

    invoke-static {p1, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->v:I

    return-void
.end method

.method private E(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayListFlag()I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->v(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/audio/adapter/AudioBucketAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->u(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic g(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w(Landroid/widget/ImageView;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/audio/adapter/AudioBucketAdapter;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method private synthetic u(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_album_default:I

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static synthetic w(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "loadThumb exception:"

    const-string v1, "AudioBucketAdapter"

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

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

    move-object v3, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v3
.end method

.method public B(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public C(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->E(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final D(Lcom/transsion/widgets/MusicLottieAnimationView;Z)V
    .locals 0

    iget p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->p:I

    invoke-static {p1, p0, p2}, Lcom/transsion/widgets/MusicLottieAnimationView;->bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public bridge synthetic convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->q:I

    return p0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/adapter/AudioBucketAdapter$1;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->q:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2, v1, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/MusicLottieAnimationView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->D(Lcom/transsion/widgets/MusicLottieAnimationView;Z)V

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

    const-string v3, "%d"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->tv_main_fragment_item_count:I

    iget-object v3, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iget v4, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    if-le v4, v2, :cond_2

    sget v2, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->iv_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->z(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    const/16 v0, 0x19

    if-ne p2, v0, :cond_0

    sget p2, Lcom/transsion/audio/R$layout;->rv_item_fragment_album_list:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    sget p2, Lcom/transsion/audio/R$layout;->rv_item_fragment_audio_folders:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget p3, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->q:I

    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2, v0, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result p2

    sget p3, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/MusicLottieAnimationView;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->D(Lcom/transsion/widgets/MusicLottieAnimationView;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2, v0, p3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result p3

    sget v0, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/MusicLottieAnimationView;

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    if-eqz p3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->D(Lcom/transsion/widgets/MusicLottieAnimationView;Z)V

    sget p3, Lcom/transsion/audio/R$id;->tv_main_fragment_item_title:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget v0, Lcom/transsion/audio/R$id;->tv_main_fragment_item_count:I

    iget-object v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    if-le v3, v2, :cond_4

    sget v2, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_0

    :cond_4
    sget v2, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_0
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/transsion/audio/R$id;->iv_cover:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->z(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    :goto_1
    return-void
.end method

.method public s()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public setOnSelectListener(Lcom/transsion/audio/adapter/AudioBucketAdapter$b;)V
    .locals 0

    return-void
.end method

.method public final synthetic t(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/AudioBucketAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic v(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/MediaBucket;)Landroid/graphics/Bitmap;
    .locals 0

    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->A(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 5

    sget v0, Lcom/transsion/audio/R$id;->tv_playlist_name:I

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

    sget v1, Lcom/transsion/audio/R$id;->tv_playlist_count:I

    iget-object v2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    sget v3, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$id;->iv_album_cover:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->y(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->q:I

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result p2

    sget v0, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/MusicLottieAnimationView;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->w:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->D(Lcom/transsion/widgets/MusicLottieAnimationView;Z)V

    return-void
.end method

.method public final y(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 3

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ldn;

    invoke-direct {v1, p0, p2}, Ldn;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Len;

    invoke-direct {v0, p0, p1}, Len;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter$a;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_album_default:I

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioBucketAdapter;->t:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    :goto_2
    return-void
.end method

.method public z(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 2

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lan;

    invoke-direct {v1, p0, p2}, Lan;-><init>(Lcom/transsion/audio/adapter/AudioBucketAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

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

    new-instance v0, Lcn;

    invoke-direct {v0, p1}, Lcn;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

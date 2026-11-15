.class public Lcom/transsion/audio/adapter/ArtistListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/adapter/ArtistListAdapter$a;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_fragment_artist_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->w:Z

    iput-object p1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->p:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->u:I

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->v:I

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/adapter/ArtistListAdapter;->l(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/ArtistListAdapter;->r(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/adapter/ArtistListAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/ArtistListAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/ArtistListAdapter;->s(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/ArtistListAdapter;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/ArtistListAdapter;->t(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic h(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/ArtistListAdapter;->u(Landroid/widget/ImageView;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Integer;)Landroid/util/Pair;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic u(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    sget p1, Lcom/transsion/audio/R$drawable;->ic_bucket_cover_empty:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/ArtistListAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public bridge synthetic convertPayloads(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/ArtistListAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/util/List;)V

    return-void
.end method

.method public i(Lcom/trello/rxlifecycle3/components/support/RxFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lni;

    invoke-direct {v0}, Lni;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Loi;

    invoke-direct {v0, p0}, Loi;-><init>(Lcom/transsion/audio/adapter/ArtistListAdapter;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->q:I

    invoke-virtual {p2, v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/MusicLottieAnimationView;

    iget v2, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->p:I

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->w:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/transsion/widgets/MusicLottieAnimationView;->bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V

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

    iget-object v2, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    iget v4, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    if-le v4, v3, :cond_1

    sget v3, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/ArtistListAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/util/List;)V
    .locals 1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/ArtistListAdapter;->j(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    goto :goto_1

    :cond_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->q:I

    invoke-virtual {p2, p3, v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z

    move-result p2

    sget p3, Lcom/transsion/audio/R$id;->lottie_layer_view:I

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/MusicLottieAnimationView;

    iget p3, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->p:I

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->w:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p3, p0}, Lcom/transsion/widgets/MusicLottieAnimationView;->bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V

    :goto_1
    return-void
.end method

.method public final synthetic r(Landroid/util/Pair;)V
    .locals 1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "ArtistListAdapter"

    const-string v0, "playMediaItem no longer exist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final synthetic s(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/audio/adapter/ArtistListAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setOnSelectListener(Lcom/transsion/audio/adapter/ArtistListAdapter$a;)V
    .locals 0

    return-void
.end method

.method public final synthetic t(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->u:I

    iget v1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->v:I

    invoke-virtual {p2, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object p0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/transsion/audio/R$drawable;->ic_bucket_cover_empty:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$id;->iv_playlist_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget v1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->u:I

    iget v1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->v:I

    invoke-virtual {p2, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object p0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/transsion/audio/R$drawable;->ic_bucket_cover_empty:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->t:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lki;

    invoke-direct {v1, p0, p2}, Lki;-><init>(Lcom/transsion/audio/adapter/ArtistListAdapter;Lcom/transsion/dbdata/beans/media/MediaBucket;)V

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

    new-instance v0, Lli;

    invoke-direct {v0, p0, p1}, Lli;-><init>(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/widget/ImageView;)V

    new-instance p0, Lmi;

    invoke-direct {p0, p1}, Lmi;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto :goto_1

    :cond_2
    const-string p0, "ArtistListAdapter"

    const-string p2, "uri is null"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/audio/R$drawable;->ic_bucket_cover_empty:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->q:I

    return-void
.end method

.method public x(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->o:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/ArtistListAdapter;->y(Lcom/transsion/dbdata/beans/media/AudioItem;)V

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

.method public final y(Lcom/transsion/dbdata/beans/media/AudioItem;)V
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
    iput-boolean v0, p0, Lcom/transsion/audio/adapter/ArtistListAdapter;->w:Z

    return-void
.end method

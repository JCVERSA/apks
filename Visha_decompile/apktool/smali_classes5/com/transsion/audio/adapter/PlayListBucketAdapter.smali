.class public Lcom/transsion/audio/adapter/PlayListBucketAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/database/PlayList;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Z

.field public final p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_fragment_playlist_folders:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->p:I

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->q:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->r:I

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/adapter/PlayListBucketAdapter;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/dbdata/database/PlayList;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->h(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/dbdata/database/PlayList;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->i(Landroid/widget/ImageView;Ljava/lang/Throwable;)V

    return-void
.end method

.method private g(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/PlayList;->mCategory:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i(Landroid/widget/ImageView;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/PlayList;)V

    return-void
.end method

.method public d(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/database/PlayList;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p0, "PlayListBucketAdapter"

    const-string p1, "convert error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->o:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/audio/R$id;->tv_playlist_name:I

    iget v3, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->p:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/audio/R$id;->tv_playlist_count:I

    iget v3, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->p:I

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_2
    iget-object v1, p2, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p2, Lcom/transsion/dbdata/database/PlayList;->uriType:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v3, p2, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget v3, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->q:I

    iget v4, p0, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->r:I

    invoke-virtual {v1, v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/audio/R$drawable;->ic_farvorite_white:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/transsion/audio/R$drawable;->ic_bucket_audio_12dp:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/audio/R$drawable;->ic_bucket_audio_12dp:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/audio/R$id;->iv_playlist_item:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    :cond_4
    sget v1, Lcom/transsion/audio/R$id;->iv_playlist_item:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    sget v0, Lcom/transsion/audio/R$drawable;->ic_bucket_farvorite_12dp:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/transsion/audio/R$drawable;->ic_bucket_audio_12dp:I

    :goto_2
    iget v3, p2, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    const/16 v4, 0x29

    if-ne v3, v4, :cond_6

    sget v0, Lcom/transsion/audio/R$drawable;->ic_bucket_recent_12dp:I

    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    sget v0, Lcom/transsion/audio/R$id;->iv_more:I

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/audio/R$id;->tv_playlist_name:I

    invoke-direct {p0, p2}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->g(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p2, Lcom/transsion/dbdata/database/PlayList;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%d"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->tv_playlist_count:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget v4, p2, Lcom/transsion/dbdata/database/PlayList;->count:I

    if-le v4, v2, :cond_7

    sget v2, Lcom/transsion/audio/R$string;->audio_songs:I

    goto :goto_4

    :cond_7
    sget v2, Lcom/transsion/audio/R$string;->audio_song:I

    :goto_4
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

    iget v0, p2, Lcom/transsion/dbdata/database/PlayList;->count:I

    if-lez v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->j(Landroid/widget/ImageView;Lcom/transsion/dbdata/database/PlayList;)V

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    return-void
.end method

.method public final synthetic h(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/dbdata/database/PlayList;)Landroid/graphics/Bitmap;
    .locals 0

    iget-boolean p2, p1, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public j(Landroid/widget/ImageView;Lcom/transsion/dbdata/database/PlayList;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCover:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p2, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListBucketAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lv38;

    invoke-direct {v1, p0, p2}, Lv38;-><init>(Lcom/transsion/audio/adapter/PlayListBucketAdapter;Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lbn;

    invoke-direct {p2, p1}, Lbn;-><init>(Landroid/widget/ImageView;)V

    new-instance v0, Lw38;

    invoke-direct {v0, p1}, Lw38;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public k(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "loadThumb exception:"

    const-string v1, "PlayListBucketAdapter"

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    const/16 p1, 0x99

    const/16 v2, 0x8e

    invoke-virtual {p0, p1, v2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

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

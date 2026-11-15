.class public Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;
.super Lcom/transsion/preload/OptimizeListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/transsion/preload/OptimizeListAdapter<",
        "TT;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile q:Ljava/util/List;

.field public r:Landroid/graphics/drawable/Drawable;

.field public final s:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->s:Landroid/util/SparseArray;

    sget-object v0, Lrf;->h:Lrf$a;

    invoke-virtual {v0}, Lrf$a;->a()Lrf;

    move-result-object v1

    invoke-virtual {v1}, Lrf;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lrf$a;->a()Lrf;

    move-result-object v0

    invoke-virtual {v0}, Lrf;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$1;-><init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-static {v0, v1, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic j(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->u(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->w(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic u(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    iget p2, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    iget p4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->x(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 5

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$drawable;->main_fragment_placeholder:I

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p2}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestLoadCover"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object v3, v2, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->w(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;-><init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->w(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final w(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lgr;

    invoke-direct {v1, p0, p2, p1}, Lgr;-><init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v0, p1, v1}, Lvk1;->j(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;Ltn$c;)V

    return-void
.end method

.method public x(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ltn;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->y(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final y(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, p1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->s:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainDefaultIconDrawable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

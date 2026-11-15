.class public Lcom/transsion/magicvideo/adapter/BucketDateAdapter;
.super Lcom/transsion/preload/OptimizeListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;,
        Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;,
        Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/preload/OptimizeListAdapter<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Landroid/graphics/drawable/Drawable;

.field public J:Landroid/graphics/drawable/Drawable;

.field public K:Landroid/graphics/drawable/Drawable;

.field public L:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public M:Z

.field public N:Z

.field public O:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;

.field public final q:Landroid/util/LruCache;

.field public r:I

.field public s:Ljava/util/ArrayList;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Landroid/util/Pair;

.field public x:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;

.field public y:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_list:I

    invoke-direct {p0, v0}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    .line 2
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->q:Landroid/util/LruCache;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    .line 5
    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 6
    iput-boolean v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    .line 8
    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->q:Landroid/util/LruCache;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    .line 11
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 12
    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 13
    sget v0, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_list:I

    invoke-direct {p0, v0}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    .line 14
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->q:Landroid/util/LruCache;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    .line 17
    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 18
    iput-boolean v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    .line 19
    sget v1, Lcom/transsion/magicvideo/R$color;->os_text_primary_color_no_select:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->z:I

    .line 20
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->A:I

    const/high16 v0, 0x42c40000    # 98.0f

    .line 23
    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D:I

    const/high16 v0, 0x42d80000    # 108.0f

    .line 24
    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->E:I

    const/high16 v0, 0x43040000    # 132.0f

    .line 25
    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->F:I

    const/high16 v0, 0x41880000    # 17.0f

    .line 26
    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->G:I

    .line 27
    new-instance v0, Landroid/util/Pair;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {p1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->w:Landroid/util/Pair;

    return-void
.end method

.method public static synthetic K(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic L(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    return p0
.end method

.method public static synthetic M(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->J(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;JLandroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N(JLandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->K(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->M(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->K:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public final B()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_others_default_holder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->H:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public C()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public D()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final E()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->J:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_subtitle_defalut_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->J:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Luk0;

    invoke-direct {v0}, Luk0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-gt v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public H(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    invoke-static {}, Lzdc;->f()I

    move-result p0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z0()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lzdc;->a:I

    if-ne p0, p1, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public I()Z
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->o()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    if-eq p0, v1, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic J(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 7

    iget p4, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    goto :goto_0

    :cond_0
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox_grid:I

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    :goto_0
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->x:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;->h(Landroid/view/View;ILcom/transsion/dbdata/beans/media/MediaItem;ZLandroid/view/View;)V

    :cond_1
    return v0
.end method

.method public final synthetic N(JLandroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->q:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lvk0;

    invoke-direct {p0, p3, p1, p2, v0}, Lvk0;-><init>(Landroid/widget/TextView;JLjava/lang/String;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 5

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {p2}, Llpb;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->o(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->q()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    if-eqz p2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    sget p0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item:I

    if-eqz p2, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-virtual {p1, p0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_size:I

    if-eqz p2, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    invoke-virtual {p1, p0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_duration:I

    if-eqz p2, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v1

    :goto_5
    invoke-virtual {p1, p0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz p2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    xor-int/lit8 p0, p2, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public P(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final Q()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/mediationads/beans/AdMediaItem;

    invoke-virtual {v1}, Lcom/transsion/mediationads/beans/AdMediaItem;->release()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseOldAdItems: released "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AdMediaItem(s)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BucketDateAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public R(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->x(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->O:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;->c(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->y:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;->d(Z)V

    :cond_3
    return-void
.end method

.method public S(ZI)V
    .locals 4

    add-int/lit8 p2, p2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->h0(ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->O:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BucketDateAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void
.end method

.method public T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BucketDateAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->S(ZI)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->O:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;

    iget-object p2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public U(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    return-void
.end method

.method public V(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->u:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v:Z

    return-void
.end method

.method public X(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    return-void
.end method

.method public Y(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->L:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method

.method public Z(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->C:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-void
.end method

.method public a0(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->M:Z

    return-void
.end method

.method public c0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public final d0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/mediationads/beans/AdMediaItem;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p2, Lcom/transsion/mediationads/beans/AdMediaItem;->isClosed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/transsion/mediationads/beans/AdMediaItem;->isConsumed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/magicvideo/R$id;->cl_item_ad:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sget v0, Lcom/transsion/magicvideo/R$id;->native_ad_layout:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/transsion/mediationads/beans/AdMediaItem;->bindValues(Landroid/view/View;I)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/transsion/magicvideo/R$id;->cl_item_ad:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error showing ad item at position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BucketDateAdapter"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final e0()Z
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public f0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->C:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v3, v4, :cond_2

    iget-boolean v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->M:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42c40000    # 98.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x430b0000    # 139.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->z(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v3, v4, :cond_3

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->E:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v3, v4, :cond_4

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->F:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->F:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->E:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_6
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->H(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    sget v2, Lcom/transsion/magicvideo/R$id;->lottie_layer_view_grid:I

    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-wide v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v5, v6}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v2, v5, v6}, Lwna;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    iget-object v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v5

    invoke-static {v2, v5, v1, v0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox_grid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcom/transsion/magicvideo/R$id;->iv_more:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v6, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a

    const/4 v7, 0x6

    if-eq v6, v7, :cond_a

    const/16 v7, 0x1d

    if-ne v6, v7, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_4
    sget p0, Lcom/transsion/magicvideo/R$id;->iv_favorite:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/magicvideo/R$id;->iv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    filled-new-array {v5}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public g0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->ll_bucket_fragment_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/RoundFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->w:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->w:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->H(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v5, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->A:I

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->z:I

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lcom/transsion/magicvideo/R$id;->lottie_layer_view:I

    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v2, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const-wide/16 v4, 0x0

    const-string v6, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v9, :cond_3

    const/4 v11, 0x6

    if-ne v2, v11, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_size:I

    iget-boolean v11, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    xor-int/2addr v11, v9

    invoke-virtual {v1, v2, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-wide v12, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v2, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->q:Landroid/util/LruCache;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v14, Ltk0;

    invoke-direct {v14, v0, v12, v13, v11}, Ltk0;-><init>(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;JLandroid/widget/TextView;)V

    invoke-interface {v2, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_3
    :goto_1
    iget-wide v11, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v2, v11, v4

    const/16 v13, 0x64

    if-nez v2, :cond_4

    move v2, v10

    goto :goto_2

    :cond_4
    iget v2, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    mul-int/2addr v2, v13

    int-to-long v14, v2

    div-long/2addr v14, v11

    long-to-int v2, v14

    :goto_2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v11

    iget v12, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-float v12, v12

    iget-wide v14, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    long-to-float v14, v14

    div-float/2addr v12, v14

    float-to-double v14, v12

    invoke-virtual {v11, v14, v15}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    sget v14, Lcom/transsion/magicvideo/R$id;->sb_history:I

    invoke-virtual {v1, v14, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v15

    invoke-virtual {v15, v14, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v14

    sget v15, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_size:I

    if-ge v2, v9, :cond_5

    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v12, Lcom/transsion/magicvideo/R$string;->progress_text_less_format:I

    const-wide v4, 0x3f847ae140000000L    # 0.009999999776482582

    invoke-virtual {v11, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    if-ne v2, v13, :cond_6

    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/magicvideo/R$string;->progress_text_format_complete:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/magicvideo/R$string;->progress_text_format:I

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v14, v15, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v11, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item_more:I

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->e0()Z

    move-result v5

    const/16 v13, 0x8

    if-eqz v5, :cond_7

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_6

    :cond_7
    iget-boolean v4, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->N:Z

    if-eqz v4, :cond_8

    move v4, v10

    goto :goto_5

    :cond_8
    move v4, v13

    :goto_5
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_6
    iget-object v2, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    filled-new-array {v11}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-wide v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-wide v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v3, v4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    iget-wide v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v3, v4}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v6

    :cond_d
    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v3, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v3, v4, v5}, Lwna;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_gradient_cover:I

    invoke-virtual {v1, v2, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->B()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v4

    invoke-virtual {v4, v8}, Ltpb;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_9
    move-object v6, v3

    goto :goto_b

    :cond_e
    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_new:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v4

    invoke-virtual {v4, v8}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_9

    :cond_f
    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v4

    invoke-virtual {v4, v8}, Ltpb;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_9

    :cond_10
    iget-object v2, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    invoke-virtual {v3, v8}, Ltpb;->Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_a
    move-object v6, v2

    goto :goto_b

    :cond_11
    sget v2, Lcom/transsion/magicvideo/R$id;->tv_new:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    invoke-virtual {v3, v8}, Ltpb;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_a

    :goto_b
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lig6;->a(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_c

    :cond_12
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_c

    :cond_13
    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    :goto_c
    iget v2, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    if-ne v2, v9, :cond_14

    invoke-virtual {v1, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    sget v2, Lcom/transsion/magicvideo/R$id;->iv_favorite:I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    iget-object v4, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    iget-boolean v3, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v2, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v2, :cond_15

    const/4 v2, -0x3

    iput v2, v8, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->O(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_16
    iget v0, v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_17

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_converting_remove:I

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    return-void
.end method

.method public getDefItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    iget p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    return p0
.end method

.method public final h0(ZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 1

    if-ltz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2

    const/16 v0, 0x111

    if-ne p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_list:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_date:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    iget p2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    if-ne p2, v0, :cond_3

    sget p2, Lcom/transsion/magicvideo/R$layout;->item_native_ad_layout_list:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/transsion/magicvideo/R$layout;->item_native_ad_layout_grd_list:I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_4
    sget p2, Lcom/transsion/magicvideo/R$layout;->rv_item_fragment_video_grid_list:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setHeaderAndEmpty(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderAndEmpty(Z)V

    iput-boolean p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->B:Z

    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Q()V

    :cond_0
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public setOnDragListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->x:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->O:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;

    return-void
.end method

.method public setOnTitleClickListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->y:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$c;

    return-void
.end method

.method public final t()Z
    .locals 1

    iget p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7

    if-nez p2, :cond_0

    const-string p0, "BucketDateAdapter"

    const-string p1, "convert error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    :try_start_0
    sget v0, Lcom/transsion/magicvideo/R$id;->date_parent_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->G:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget v2, Lcom/transsion/magicvideo/R$id;->space:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Space;

    const/16 v4, 0x8

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->divider:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->B:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_date:I

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-static {v1, v5, v6}, Lwna;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget v2, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->r:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    const/4 v5, 0x6

    if-eq v2, v5, :cond_6

    const/16 v5, 0x1d

    if-ne v2, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_6
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void

    :cond_7
    iget v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    if-ne v0, v1, :cond_8

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-nez v0, :cond_8

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_has_delete:I

    iget-boolean v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    xor-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_8
    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lcom/transsion/mediationads/beans/AdMediaItem;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->d0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/mediationads/beans/AdMediaItem;)V

    goto :goto_7

    :cond_9
    iget v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->g0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_7

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->f0(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :goto_7
    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->x:Lcom/transsion/magicvideo/adapter/BucketDateAdapter$a;

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_b
    return-void
.end method

.method public v(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/View;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    new-instance v0, Landroidx/core/view/DragStartHelper;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lsk0;

    invoke-direct {v2, p0, p1, p2}, Lsk0;-><init>(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/DragStartHelper;-><init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V

    invoke-virtual {v0}, Landroidx/core/view/DragStartHelper;->attach()V

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lrk0;

    invoke-direct {v0}, Lrk0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public y()I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->t:I

    return p0
.end method

.method public final z()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_audio_default_placeholder:I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->I:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

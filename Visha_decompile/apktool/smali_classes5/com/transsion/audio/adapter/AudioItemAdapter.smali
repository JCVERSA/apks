.class public Lcom/transsion/audio/adapter/AudioItemAdapter;
.super Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/adapter/AudioItemAdapter$b;,
        Lcom/transsion/audio/adapter/AudioItemAdapter$d;,
        Lcom/transsion/audio/adapter/AudioItemAdapter$c;,
        Lcom/transsion/audio/adapter/AudioItemAdapter$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/playercommon/adapter/AudioListCoverAdapter<",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public final D:Landroid/util/LruCache;

.field public E:F

.field public F:I

.field public G:Z

.field public H:Lcom/transsion/audio/adapter/AudioItemAdapter$b;

.field public I:Lcom/transsion/audio/adapter/AudioItemAdapter$d;

.field public J:I

.field public K:Z

.field public L:Lcom/transsion/audio/adapter/AudioItemAdapter$c;

.field public M:Lcom/transsion/audio/adapter/AudioItemAdapter$e;

.field public t:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public u:I

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Ljava/util/ArrayList;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_search_audio_list_v2:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;-><init>(ILandroid/content/Context;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->w:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->D:Landroid/util/LruCache;

    iput-boolean v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->K:Z

    sget v1, Lcom/transsion/audio/R$layout;->rv_item_fragment_date:I

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->u:I

    sget v1, Lcom/transsion/audio/R$color;->os_text_primary_color_no_select:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->A:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->C:I

    sget v1, Lcom/transsion/audio/R$color;->os_text_tertiary_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->B:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$dimen;->dp20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->E:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/audio/R$dimen;->dp05:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->F:I

    return-void
.end method

.method public static synthetic A(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/AudioItemAdapter;->J(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->K(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->M(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static I(Ljava/util/List;)Z
    .locals 2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lxq;

    invoke-direct {v0}, Lxq;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "haveMusicVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioItemAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic K(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic M(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    return p0
.end method

.method public static synthetic z(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/audio/adapter/AudioItemAdapter;->L(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public D(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lzdc;->f()I

    move-result v3

    iget-object v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v2, v4}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v2, v4}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lzdc;->b:I

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    sget v4, Lcom/transsion/audio/R$id;->tv_item_name:I

    if-eqz v3, :cond_3

    iget v7, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->C:I

    goto :goto_1

    :cond_3
    iget v7, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->A:I

    :goto_1
    invoke-virtual {v1, v4, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v7, Lcom/transsion/audio/R$id;->tv_name:I

    if-eqz v3, :cond_4

    iget v8, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->C:I

    goto :goto_2

    :cond_4
    iget v8, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->A:I

    :goto_2
    invoke-virtual {v1, v7, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v8, Lcom/transsion/audio/R$id;->tv_item_artist:I

    iget v9, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->B:I

    invoke-virtual {v1, v8, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v9, Lcom/transsion/audio/R$id;->tv_author:I

    iget v10, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->B:I

    invoke-virtual {v1, v9, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v10, Lcom/transsion/audio/R$id;->tv_item_duration:I

    if-eqz v3, :cond_5

    iget v11, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    goto :goto_3

    :cond_5
    iget v11, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->B:I

    :goto_3
    invoke-virtual {v1, v10, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v11, Lcom/transsion/audio/R$id;->tv_has_delete:I

    iget-boolean v12, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    xor-int/2addr v12, v5

    invoke-virtual {v1, v11, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v11, Lcom/transsion/audio/R$id;->iv_playing:I

    invoke-virtual {v1, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    if-eqz v3, :cond_6

    move v13, v6

    goto :goto_4

    :cond_6
    const/16 v13, 0x8

    :goto_4
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    goto :goto_5

    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    :goto_5
    iget-object v14, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v2, v14}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v14

    if-eqz v14, :cond_8

    sget v14, Lcom/transsion/common/R$drawable;->ic_playing_for_list:I

    goto :goto_6

    :cond_8
    sget v14, Lcom/transsion/common/R$drawable;->ic_pause_list_cover:I

    :goto_6
    invoke-static {v13, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_9

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v13, Lcom/transsion/audio/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iget-object v14, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v15, Lcom/transsion/audio/R$id;->iv_item_more:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    instance-of v5, v14, Landroid/widget/TextView;

    if-eqz v5, :cond_a

    move-object v5, v14

    check-cast v5, Landroid/widget/TextView;

    iget v12, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->A:I

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-boolean v5, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->v:Z

    if-eqz v5, :cond_d

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_7

    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    :goto_7
    sget v12, Lcom/transsion/playercommon/R$drawable;->ic_list_checkbox:I

    invoke-static {v5, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    filled-new-array {v13}, [I

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v5, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v5, 0x8

    goto :goto_9

    :cond_d
    iget-boolean v5, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->K:Z

    if-eqz v5, :cond_e

    move v5, v6

    goto :goto_8

    :cond_e
    const/16 v5, 0x8

    :goto_8
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5}, Landroid/view/View;->setAlpha(F)V

    const/16 v5, 0x8

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    if-eqz v3, :cond_f

    iget-object v11, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v11, :cond_f

    invoke-static {}, Lao;->U()Lao;

    move-result-object v11

    iget-object v12, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v12, v12, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v11, v12}, Lao;->p0(I)V

    :cond_f
    sget v11, Lcom/transsion/audio/R$id;->iv_farvorited:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v12

    invoke-virtual {v12, v6, v2}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v11, Lcom/transsion/audio/R$id;->iv_mv_tag:I

    iget-boolean v12, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-virtual {v1, v11, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-nez v3, :cond_10

    invoke-static {}, Lao;->U()Lao;

    move-result-object v11

    invoke-virtual {v11, v2}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    move v11, v6

    :goto_a
    sget v12, Lcom/transsion/audio/R$id;->iv_new:I

    invoke-virtual {v1, v12, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v11, :cond_12

    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget v12, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v12, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->D:Landroid/util/LruCache;

    iget v13, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_11

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v13, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->E:F

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v13, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->F:I

    iget v14, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v12, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v13, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->D:Landroid/util/LruCache;

    iget v14, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->z:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v11, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    iget-object v11, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v7, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    iget-object v7, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    iget-object v7, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v4, v9, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    iget-wide v7, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v7, v8}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v10, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    filled-new-array {v15}, [I

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v4, Lcom/transsion/audio/R$id;->ll_filter_tags:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/audio/adapter/AudioItemAdapter;->N(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/LinearLayout;)V

    sget v4, Lcom/transsion/audio/R$id;->iv_play_cover_icon:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v7}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->x(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->v(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    sget v4, Lcom/transsion/audio/R$id;->tv_item_playcount:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->x:I

    const/16 v7, 0x35

    if-ne v4, v7, :cond_13

    sget v4, Lcom/transsion/audio/R$id;->ll_play_count:I

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->H:Lcom/transsion/audio/adapter/AudioItemAdapter$b;

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->w:Z

    if-nez v4, :cond_14

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->E(Lcom/chad/library/adapter/base/BaseViewHolder;ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_14
    sget v3, Lcom/transsion/audio/R$id;->iv_item_icon:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v7, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->w:Z

    if-eqz v7, :cond_15

    move v12, v6

    goto :goto_b

    :cond_15
    move v12, v5

    :goto_b
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lyq;

    invoke-direct {v4, v0, v1}, Lyq;-><init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v3, Lcom/transsion/audio/R$id;->ll_item:I

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->G:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    filled-new-array {v8, v7, v4, v5}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lzq;

    invoke-direct {v5, v4, v3}, Lzq;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->G:Z

    goto :goto_c

    :cond_16
    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    :goto_c
    iget v3, v0, Lcom/transsion/audio/adapter/AudioItemAdapter;->J:I

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v2, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->Y(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    :cond_17
    return-void
.end method

.method public final E(Lcom/chad/library/adapter/base/BaseViewHolder;ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    new-instance v0, Landroidx/core/view/DragStartHelper;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lar;

    invoke-direct {v2, p0, p1, p3, p2}, Lar;-><init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/DragStartHelper;-><init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V

    invoke-virtual {v0}, Landroidx/core/view/DragStartHelper;->attach()V

    return-void
.end method

.method public F()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method public H()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->I(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final synthetic J(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->M:Lcom/transsion/audio/adapter/AudioItemAdapter$e;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter$e;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic L(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Landroidx/core/view/DragStartHelper;)Z
    .locals 7

    iget-object p5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->H:Lcom/transsion/audio/adapter/AudioItemAdapter$b;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->w:Z

    if-nez p0, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    move-object v3, p2

    move-object v5, p4

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/transsion/audio/adapter/AudioItemAdapter$b;->s(Landroid/view/View;ILcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final N(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/LinearLayout;)V
    .locals 4

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lbr;->b(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public O(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AudioItemAdapter"

    const-string v1, "selectMediaItems.clear exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->L:Lcom/transsion/audio/adapter/AudioItemAdapter$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter$c;->c(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->I:Lcom/transsion/audio/adapter/AudioItemAdapter$d;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter$d;->d(Z)V

    :cond_2
    return-void
.end method

.method public P(Lcom/transsion/dbdata/beans/media/AudioItem;ZI)V
    .locals 3

    const-string v0, "AudioItemAdapter"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p2, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->L:Lcom/transsion/audio/adapter/AudioItemAdapter$c;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter$c;->b(I)V

    :cond_2
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "selectItem, exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public Q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->v:Z

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->x:I

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->w:Z

    return-void
.end method

.method public T(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public U(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->t:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public V(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->y:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public W(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->J:I

    return-void
.end method

.method public X(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->K:Z

    return-void
.end method

.method public final Y(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$id;->shake_view:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/transsion/audio/adapter/AudioItemAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter$a;-><init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->W(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->D(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/audio/R$layout;->rv_item_search_audio_list_v2:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setOnDragListener(Lcom/transsion/audio/adapter/AudioItemAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->H:Lcom/transsion/audio/adapter/AudioItemAdapter$b;

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->L:Lcom/transsion/audio/adapter/AudioItemAdapter$c;

    return-void
.end method

.method public setOnTitleClickListener(Lcom/transsion/audio/adapter/AudioItemAdapter$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->I:Lcom/transsion/audio/adapter/AudioItemAdapter$d;

    return-void
.end method

.method public setOnTouchListener(Lcom/transsion/audio/adapter/AudioItemAdapter$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter;->M:Lcom/transsion/audio/adapter/AudioItemAdapter$e;

    return-void
.end method

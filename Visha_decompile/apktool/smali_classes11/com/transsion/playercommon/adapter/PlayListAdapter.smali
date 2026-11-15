.class public Lcom/transsion/playercommon/adapter/PlayListAdapter;
.super Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/PlayListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/transsion/playercommon/adapter/AudioListCoverAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A:Lcom/transsion/playercommon/adapter/PlayListAdapter$a;

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;-><init>(ILandroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->x:Z

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->y:Z

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->z:Z

    iput-boolean p3, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->w:Z

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v1, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p3, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->t:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/playercommon/R$color;->os_text_primary_color_no_select:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->u:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$color;->os_text_tertiary_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->v:I

    return-void
.end method

.method private synthetic A(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->A:Lcom/transsion/playercommon/adapter/PlayListAdapter$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/adapter/PlayListAdapter$a;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic z(Lcom/transsion/playercommon/adapter/PlayListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->A(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public B(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    sget v1, Lcom/transsion/playercommon/R$color;->white:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->u:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_1

    sget p2, Lcom/transsion/playercommon/R$color;->path_color:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/transsion/playercommon/R$color;->os_text_tertiary_color:I

    :goto_1
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->v:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 7

    sget v0, Lcom/transsion/playercommon/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_main_fragment_item_duration:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$drawable;->main_fragment_placeholder:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lz7c;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    :goto_1
    iget-wide v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v1, v2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget p2, Lcom/transsion/playercommon/R$id;->ll_bucket_fragment_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p2, Lcom/transsion/playercommon/R$id;->ll_list_container:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$dimen;->video_play_list_item_height_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    instance-of v1, p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget v3, Lcom/transsion/playercommon/R$id;->tv_item_play_list_artist:I

    move-object v4, p2

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v4, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->v:I

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    sget v3, Lcom/transsion/playercommon/R$id;->tv_item_play_list_artist:I

    invoke-virtual {p1, v3, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    sget v4, Lcom/transsion/playercommon/R$id;->lottie_layer_view:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/MusicLottieAnimationView;

    iget v5, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->t:I

    invoke-static {v4, v5, v3}, Lcom/transsion/widgets/MusicLottieAnimationView;->bindPlayingIndicator(Lcom/transsion/widgets/MusicLottieAnimationView;IZ)V

    sget v4, Lcom/transsion/playercommon/R$id;->iv_playing:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v3, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_4

    sget v3, Lcom/transsion/playercommon/R$id;->tv_item_play_list_title:I

    iget v4, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->t:I

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_2

    :cond_4
    sget v3, Lcom/transsion/playercommon/R$id;->tv_item_play_list_title:I

    iget v4, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->u:I

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_2
    sget v3, Lcom/transsion/playercommon/R$id;->tv_item_play_list_title:I

    iget-object v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->z:Z

    if-eqz v3, :cond_5

    sget v3, Lcom/transsion/playercommon/R$id;->iv_mv_tag:I

    sget v4, Lcom/transsion/playercommon/R$drawable;->ic_audio_mv_tag_night:I

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_5
    sget v3, Lcom/transsion/playercommon/R$id;->iv_mv_tag:I

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/playercommon/R$id;->icon:I

    iget-boolean v3, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->w:Z

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-boolean v3, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->y:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/transsion/playercommon/R$drawable;->ic_playlist_fit_icon:I

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_6
    iget-boolean v3, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->x:Z

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    sget v1, Lcom/transsion/playercommon/R$id;->rl_icon_cover:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/playercommon/R$id;->ll_list_container:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$dimen;->play_list_item_height_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v1, Lcom/transsion/playercommon/R$id;->iv_play_cover_icon:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2, v2}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->x(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, p2, v1}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->v(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_7
    sget p2, Lcom/transsion/playercommon/R$id;->rl_icon_cover:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    new-instance p2, Ll38;

    invoke-direct {p2, p0, p1}, Ll38;-><init>(Lcom/transsion/playercommon/adapter/PlayListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public setOnTouchListener(Lcom/transsion/playercommon/adapter/PlayListAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->A:Lcom/transsion/playercommon/adapter/PlayListAdapter$a;

    return-void
.end method

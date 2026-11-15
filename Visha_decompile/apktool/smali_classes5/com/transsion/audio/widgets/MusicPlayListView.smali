.class public Lcom/transsion/audio/widgets/MusicPlayListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$c;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayListView"

.field private static final TOUCH_X_THRESHOLD:I = 0x190


# instance fields
.field haveLast:Z

.field isNightType:Z

.field private loopListView:Landroidx/recyclerview/widget/RecyclerView;

.field mAdd:Landroid/widget/ImageView;

.field mAudioViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field private mContext:Landroidx/appcompat/app/AppCompatActivity;

.field mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/playercommon/adapter/PlayListAdapter<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPage:Landroid/view/View;

.field mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field private mCurrentRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

.field private mDefaultTitleColor:I

.field private mIsDragging:Z

.field mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/playercommon/adapter/PlayListAdapter<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field mLastAdd:Landroid/widget/ImageView;

.field mLastNumTv:Landroid/widget/TextView;

.field mLastPage:Landroid/view/View;

.field mLastRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mLastRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

.field mLastTitleTv:Landroid/widget/TextView;

.field private mNestedScrollTemporarilyDisabled:Z

.field mNumTv:Landroid/widget/TextView;

.field private final mOnItemStateChangedListener:Lbf7;

.field mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field mPager:Lcom/transsion/widgets/RtlViewPager;

.field mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field private mPlayListOperateUtils:Lk78;

.field mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

.field private mPreDragTriggered:Z

.field mRootView:Landroid/view/View;

.field mSpotA:Landroid/view/View;

.field mSpotB:Landroid/view/View;

.field mSpotContainer:Landroid/view/View;

.field mTitleTv:Landroid/widget/TextView;

.field private mTouchDownTime:J

.field private final onItemMoveListener:Lze7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    .line 6
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mTouchDownTime:J

    .line 8
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    .line 9
    iput-boolean p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPreDragTriggered:Z

    .line 10
    new-instance p2, Lcom/transsion/audio/widgets/MusicPlayListView$3;

    invoke-direct {p2, p0}, Lcom/transsion/audio/widgets/MusicPlayListView$3;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->onItemMoveListener:Lze7;

    .line 11
    new-instance p2, Lev6;

    invoke-direct {p2, p0}, Lev6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mOnItemStateChangedListener:Lbf7;

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/MusicPlayListView;Lo7a;Lo7a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initCurrentRv$2(Lo7a;Lo7a;I)V

    return-void
.end method

.method private addAll(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListOperateUtils:Lk78;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lk78;->p0()V

    :cond_2
    new-instance p1, Lk78;

    iget-object v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    invoke-direct {p1, v2, v3, v1}, Lk78;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListOperateUtils:Lk78;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListOperateUtils:Lk78;

    invoke-virtual {p0, p1, v0}, Lk78;->o0(Ljava/util/ArrayList;Z)V

    if-eqz v0, :cond_4

    const-string p0, "vd_audio_playqueue_lastplay_addtoplaylist"

    goto :goto_1

    :cond_4
    const-string p0, "vd_audio_playqueue_addtoplaylist"

    :goto_1
    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/MusicPlayListView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initView$9(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/MusicPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$new$5(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/MusicPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initCurrentRv$4(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$observeRepeatChange$11(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$removeClick$10(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/widgets/MusicPlayListView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$onAttachedToWindow$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/audio/widgets/MusicPlayListView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initView$7(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initView$6(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$layout;->dialog_audio_play_filelist:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->observeRepeatChange(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio_play_repeat_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    sget v0, Lcom/transsion/audio/R$id;->pager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/RtlViewPager;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    sget v0, Lcom/transsion/audio/R$id;->spot_1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotA:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->spot:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotContainer:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->spot_2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotB:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->initView(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setPlaylistRepeatImg(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setRepeatTv(ILandroid/view/View;Z)V

    return-void
.end method

.method private initColor()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/audio/R$color;->white:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/audio/R$color;->os_text_primary_color:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mDefaultTitleColor:I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->setTitleStyle()V

    return-void
.end method

.method private initCurrentRv(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->view_audio_play_list_current:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Liv6;

    invoke-direct {v1, p0}, Liv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setSwipeMenuCreator(Lr7a;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v1, Lxu6;

    invoke-direct {v1, p0}, Lxu6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMenuClickListener(Lye7;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->add_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mAdd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mTitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->num:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLongPressDragEnabled(Z)V

    new-instance v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;

    sget v3, Lcom/transsion/audio/R$layout;->item_play_filelist:I

    invoke-direct {v0, v3, p1, v2}, Lcom/transsion/playercommon/adapter/PlayListAdapter;-><init>(ILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iput-boolean v2, v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->x:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v3, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v3, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->onItemMoveListener:Lze7;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMoveListener(Lze7;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mOnItemStateChangedListener:Lbf7;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemStateChangedListener(Lbf7;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v0, Lyu6;

    invoke-direct {v0, p0}, Lyu6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->setOnTouchListener(Lcom/transsion/playercommon/adapter/PlayListAdapter$a;)V

    new-instance p1, Lcom/transsion/audio/widgets/MusicPlayListView$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/MusicPlayListView$1;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->loop_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->loop_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audio/R$drawable;->audio_loop_select_bg_light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$drawable;->audio_loop_select_bg:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/audio/data/AudioSettingItem;

    sget v3, Lcom/transsion/widgetslib/R$string;->os_single_loop:I

    invoke-direct {v0, v2, v3}, Lcom/transsion/audio/data/AudioSettingItem;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/audio/data/AudioSettingItem;

    const/4 v3, 0x2

    sget v5, Lcom/transsion/widgetslib/R$string;->os_List_loop:I

    invoke-direct {v0, v3, v5}, Lcom/transsion/audio/data/AudioSettingItem;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/audio/data/AudioSettingItem;

    sget v3, Lcom/transsion/widgetslib/R$string;->os_shuffle:I

    invoke-direct {v0, v4, v3}, Lcom/transsion/audio/data/AudioSettingItem;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio_play_repeat_mode"

    invoke-static {v0, v3, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/audio/widgets/MusicPlayListView$2;

    iget-boolean v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/transsion/audio/widgets/MusicPlayListView$2;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;Ljava/util/List;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lha1;

    new-instance v1, Lzu6;

    invoke-direct {v1, p0}, Lzu6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-direct {v0, v1}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/widgets/MusicPlayListView;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$onAttachedToWindow$1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/audio/widgets/MusicPlayListView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initView$8(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->addAll(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initCurrentRv$2(Lo7a;Lo7a;I)V
    .locals 2

    new-instance p3, Lt7a;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p3, v0}, Lt7a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/transsion/audio/R$color;->playlist_delete_red:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lt7a;->k(I)Lt7a;

    move-result-object p3

    sget v0, Lcom/transsion/audio/R$drawable;->ic_delete_swiper:I

    invoke-virtual {p3, v0}, Lt7a;->m(I)Lt7a;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$dimen;->swipe_delete_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p3, p0}, Lt7a;->o(I)Lt7a;

    move-result-object p0

    const/4 p3, -0x1

    invoke-virtual {p0, p3}, Lt7a;->l(I)Lt7a;

    move-result-object p0

    invoke-static {}, Lav3;->z()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p0}, Lo7a;->a(Lt7a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lo7a;->a(Lt7a;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initCurrentRv$3(Lq7a;I)V
    .locals 0

    invoke-virtual {p1}, Lq7a;->a()V

    invoke-direct {p0, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->removeClick(I)V

    return-void
.end method

.method private synthetic lambda$initCurrentRv$4(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->M1(Z)V

    :cond_2
    return v0
.end method

.method private synthetic lambda$initView$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->addAll(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initView$7(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/audio/R$id;->remove:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/transsion/audio/widgets/MusicPlayListView;->removeClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$8(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/audio/R$id;->remove:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$9(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio_play_repeat_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setRepeatTv(ILandroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setPlaylistRepeatImg(I)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    if-nez p2, :cond_0

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    const-string p2, "vd_audio_playqueue_subdrag"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "#1D000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    :cond_5
    iget-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic lambda$observeRepeatChange$11(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeatMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MusicPlayListView"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setRepeatTv(ILandroid/view/View;Z)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setPlaylistRepeatImg(I)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setCurrentAdapterData(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndexReal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    sget-object p1, Lrf;->h:Lrf$a;

    invoke-virtual {p1}, Lrf$a;->a()Lrf;

    move-result-object p1

    invoke-virtual {p1}, Lrf;->c()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iput-object p1, v0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$removeClick$10(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/audio/widgets/MusicPlayListView;Lq7a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->lambda$initCurrentRv$3(Lq7a;I)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/audio/widgets/MusicPlayListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/audio/widgets/MusicPlayListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    return p0
.end method

.method private observeRepeatChange(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mAudioViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Ldv6;

    invoke-direct {v2, p0, p1}, Ldv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/audio/widgets/MusicPlayListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPreDragTriggered:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/audio/widgets/MusicPlayListView;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mTouchDownTime:J

    return-wide v0
.end method

.method public static bridge synthetic r(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    return-void
.end method

.method private removeClick(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->clearPlayList()V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V

    const-string p1, ""

    sput-object p1, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v0, p1, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x42e

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    new-instance v1, Lhv6;

    invoke-direct {v1}, Lhv6;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->removeAndReFreshPlayList(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/PlayAudioListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x441

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "vd_audio_playqueue_delete"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/audio/widgets/MusicPlayListView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPreDragTriggered:Z

    return-void
.end method

.method private setCurrentAdapterData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPlaylistRepeatImg(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->updateRepeatMode(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "PlayListDialog"

    const-string p1, "loop is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setRepeatTv(ILandroid/view/View;Z)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1}, Lp10;->b(I)V

    :cond_1
    return-void
.end method

.method private setTitleStyle()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mTitleTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mDefaultTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mDefaultTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mAdd:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_playlist_addall_fold:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/audio/R$drawable;->ic_playlist_addall:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastTitleTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mDefaultTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastNumTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mDefaultTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdd:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/audio/R$drawable;->ic_playlist_addall_fold:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/transsion/audio/R$drawable;->ic_playlist_addall:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/audio/widgets/MusicPlayListView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mTouchDownTime:J

    return-void
.end method

.method private triggerRepeatMode(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-static {v2}, Liz;->d(I)I

    move-result p2

    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->setPlaylistRepeatImg(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->setRepeatTv(ILandroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    new-instance v1, Liz;

    invoke-direct {v1, p2}, Liz;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->k1(Liz;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {p1, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mAudioViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/videomodel/PlayListModel;->r(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v1, 0x421

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->V()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setCurrentAdapterData(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    if-ne v2, p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setCurrentAdapterData(Ljava/util/ArrayList;)V

    :cond_5
    :goto_1
    invoke-static {p2}, Lpy5;->f(I)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->triggerRepeatMode(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public adaptFoldState(Z)Lcom/transsion/audio/widgets/MusicPlayListView;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/audio/R$dimen;->playlist_top:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public fixedPagerHeight(I)Lcom/transsion/audio/widgets/MusicPlayListView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->initCurrentRv(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->view_audio_play_list_current:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastTitleTv:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->last_playlist:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastNumTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->add_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->loop_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;

    sget v2, Lcom/transsion/audio/R$layout;->item_play_filelist:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/transsion/playercommon/adapter/PlayListAdapter;-><init>(ILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->x:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v4, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Lcom/transsion/audio/widgets/MusicPlayListView$4;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/MusicPlayListView$4;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lha1;

    new-instance v4, Lwu6;

    invoke-direct {v4, p0}, Lwu6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-direct {v1, v4}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->haveLastPlayList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->showLast()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Lcom/transsion/audio/widgets/MusicPlayListView$5;

    const/16 v3, 0x4b0

    invoke-direct {v1, p0, v3, v2}, Lcom/transsion/audio/widgets/MusicPlayListView$5;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;IZ)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Lav6;

    invoke-direct {v1, p0}, Lav6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v3, Lcom/transsion/audio/widgets/MusicPlayListView$6;

    invoke-direct {v3, p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView$6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v3, Lbv6;

    invoke-direct {v3, p0}, Lbv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastPage:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    invoke-direct {v1, v0}, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPageAdapter:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v0, Lcom/transsion/audio/widgets/MusicPlayListView$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView$7;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, p1, v2}, Lcom/transsion/audio/widgets/MusicPlayListView;->updateUI(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "audio_switch_repeat_mode"

    invoke-virtual {p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcv6;

    invoke-direct {v1, p0}, Lcv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lfv6;

    invoke-direct {v2, p0}, Lfv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "change_audio_cover"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mContext:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lgv6;

    invoke-direct {v2, p0}, Lgv6;-><init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mAudioViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "change_audio_cover"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPager:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRvSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListOperateUtils:Lk78;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lk78;->p0()V

    :cond_4
    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setCurrentAdapterData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-virtual {v0, v1, p0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public refresh(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio_play_repeat_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setPlaylistRepeatImg(I)V

    .line 4
    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->setRepeatTv(ILandroid/view/View;Z)V

    .line 5
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentPage:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    sget v0, Lcom/transsion/audio/R$id;->loop_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audio/R$drawable;->audio_loop_select_bg_light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$drawable;->audio_loop_select_bg:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->loopListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-virtual {p1, p0}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->notifyByNightType(Z)V

    :cond_4
    return-void
.end method

.method public scrollToPlayIndex()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setBottomMargin(I)Lcom/transsion/audio/widgets/MusicPlayListView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setForceNight()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->z:Z

    return-void
.end method

.method public setListColorFit(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/PlayListAdapter;->y:Z

    :cond_0
    return-void
.end method

.method public setNightType(Z)Lcom/transsion/audio/widgets/MusicPlayListView;
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->isNightType:Z

    invoke-direct {p0}, Lcom/transsion/audio/widgets/MusicPlayListView;->initColor()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->refresh(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNightType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayListView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setTopMargin(I)Lcom/transsion/audio/widgets/MusicPlayListView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public showLast()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateUI(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "ClickableViewAccessibility",
            "DefaultLocale"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNumTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastNumTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastAdapter:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->haveLast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotA:Landroid/view/View;

    if-eqz p2, :cond_2

    sget v0, Lcom/transsion/audio/R$drawable;->ic_page_dot_unselected:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/audio/R$drawable;->ic_page_dot_selected:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mSpotB:Landroid/view/View;

    if-eqz p2, :cond_3

    sget v0, Lcom/transsion/audio/R$drawable;->ic_page_dot_selected:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/transsion/audio/R$drawable;->ic_page_dot_unselected:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mLastRv:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mNestedScrollTemporarilyDisabled:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mIsDragging:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mCurrentRv:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_6
    if-nez p2, :cond_7

    const-string p0, "vd_audio_playqueue_lastplay_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

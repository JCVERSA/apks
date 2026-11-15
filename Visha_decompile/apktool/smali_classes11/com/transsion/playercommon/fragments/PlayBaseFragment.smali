.class public Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lh27$b;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;,
        Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;,
        Lcom/transsion/playercommon/fragments/PlayBaseFragment$c;,
        Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    }
.end annotation


# static fields
.field protected static final HISTORY_LOAD_DATA_DELAY:I = 0x64

.field protected static final LOAD_DATA_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "PlayBaseFragment"


# instance fields
.field protected gridModeItem:Lcom/transsion/playercommon/widgets/SortItem;

.field protected isInEditMode:Z

.field protected listModeItem:Lcom/transsion/playercommon/widgets/SortItem;

.field protected mAddSongIv:Landroid/widget/ImageView;

.field protected mAllCheckBox:Landroid/widget/CheckBox;

.field private mAppBarHeight:I

.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAppBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mAudioSortPoint:Landroid/widget/ImageView;

.field protected mBackIv:Landroid/view/View;

.field protected mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

.field protected mDragAnimationView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected mDragModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$c;

.field protected mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field protected mEmptyPaddingBottom:I

.field protected mEmptyPaddingBottomInMulti:I

.field public mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field protected mFirstClickTime:J

.field protected mIsDialogShowing:Z

.field protected mMenuLayout:Landroid/view/ViewGroup;

.field protected mMenuMore:Landroid/view/View;

.field protected mOrientation:I

.field protected mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field protected mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

.field protected mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field protected mSearchListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

.field protected mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

.field protected mSortIv:Landroid/view/View;

.field protected mSortModeContainer:Landroid/widget/LinearLayout;

.field protected mSortPopupWindow:Landroid/widget/PopupWindow;

.field protected mTitleBarLayout:Landroid/view/ViewGroup;

.field protected mTitleTv:Landroid/widget/TextView;

.field protected mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mToolBarLayoutHeight:I

.field private mToolBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mUpdateDataHandler:Landroid/os/Handler;

.field protected showShuffleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected sortItemCount:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemDate:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemLength:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemName:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemNum:Lcom/transsion/playercommon/widgets/SortItem;

.field protected sortItemSize:Lcom/transsion/playercommon/widgets/SortItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$a;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    new-instance v0, Lw28;

    invoke-direct {v0}, Lw28;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mIsDialogShowing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lx28;

    invoke-direct {v1, p0}, Lx28;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/playercommon/fragments/PlayBaseFragment;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->a0(F)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZLcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->e0(ZZLcom/transsion/playercommon/widgets/SortGroup;II)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->X(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->c0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->Y(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Lcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->d0(Lcom/transsion/playercommon/widgets/SortGroup;II)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(F)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->b0(F)V

    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static synthetic b0(F)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic X(ZLandroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "show_audio_sort_point"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic Y(ZZLandroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "show_audio_sort_point"

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic a0(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayoutHeight:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final synthetic c0(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    :goto_0
    return v0
.end method

.method public convertSelectItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    return-void
.end method

.method public final synthetic d0(Lcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p2, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v2, "video_adapter_grid_type"

    invoke-static {p1, v2, p2}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {p2}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result p2

    if-ne p3, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getListFlag()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x482

    invoke-virtual {p1, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic e0(ZZLcom/transsion/playercommon/widgets/SortGroup;II)V
    .locals 0

    sget-object p4, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {p4}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result p4

    if-ne p5, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/SortGroup;->getSortByNameValue()I

    move-result p5

    invoke-virtual {p3}, Lcom/transsion/playercommon/widgets/SortGroup;->getIsAscending()Z

    move-result p3

    invoke-virtual {p0, p5, p3, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onManualSortRequested(IZZ)V

    :cond_1
    invoke-virtual {p0, p4}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->handleManual(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getListFlag()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const/16 p4, 0x476

    invoke-virtual {p1, p4, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getListFlag()I

    move-result p1

    invoke-static {p1}, Lpz5;->b(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public editMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->changeEditMode(Z)V

    :cond_0
    return-void
.end method

.method public getDeleteIconResId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    return p0
.end method

.method public getDeleteTextResId()I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$string;->delete:I

    return p0
.end method

.method public getDragAnimationView()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mDragAnimationView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getPopupPosition(Landroid/view/View;Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {}, Lav3;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    sub-int/2addr v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v2, p0

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public handleManual(Z)V
    .locals 0

    return-void
.end method

.method public inflateOperationBar()V
    .locals 0

    return-void
.end method

.method public ingoreClickEvent()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PlayBaseFragment"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Loa1;->a()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initEvents()V
    .locals 0

    return-void
.end method

.method public initOverScrollDecor(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_0
    return-void
.end method

.method public initResources()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->main_empty_imgView_marginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->main_empty_imgView_marginBottom_multiWindowMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottomInMulti:I

    return-void
.end method

.method public initSortItem(Z)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v5, "video_pref_sort_name"

    goto :goto_0

    :cond_0
    const-string v5, "audio_pref_sort_name"

    :goto_0
    invoke-static {v4, v5, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemDate:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v6, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemName:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v7, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemLength:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v8, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemSize:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v9, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemCount:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v10, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

    iget-object v11, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemNum:Lcom/transsion/playercommon/widgets/SortItem;

    new-array v12, v2, [Landroid/view/View;

    aput-object v5, v12, v3

    aput-object v6, v12, v1

    const/4 v5, 0x2

    aput-object v7, v12, v5

    const/4 v5, 0x3

    aput-object v8, v12, v5

    const/4 v5, 0x4

    aput-object v9, v12, v5

    const/4 v5, 0x5

    aput-object v10, v12, v5

    const/4 v5, 0x6

    aput-object v11, v12, v5

    sget v5, Lcom/transsion/playercommon/R$string;->by_date:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v5, Lcom/transsion/playercommon/R$string;->by_name:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v5, Lcom/transsion/playercommon/R$string;->duration:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v5, Lcom/transsion/playercommon/R$string;->by_size:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget v5, Lcom/transsion/playercommon/R$string;->by_count:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v5, Lcom/transsion/playercommon/R$string;->manual_sorting:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-ge v3, v2, :cond_3

    if-ne v3, v4, :cond_1

    aget-object v6, v12, v3

    if-eqz v6, :cond_2

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    aget-object v6, v12, v3

    if-eqz v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/transsion/playercommon/R$string;->talkback_unselected:I

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    add-int/2addr v3, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public initSortView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/playercommon/R$id;->iv_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    .line 2
    sget v0, Lcom/transsion/playercommon/R$id;->iv_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    .line 3
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateAudioSortPointVisibility(Z)V

    .line 6
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    new-instance v0, Lb38;

    invoke-direct {v0, p0, p2}, Lb38;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initSortView(Landroid/view/View;ZZ)V
    .locals 1

    .line 7
    sget v0, Lcom/transsion/playercommon/R$id;->iv_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    .line 8
    sget v0, Lcom/transsion/playercommon/R$id;->iv_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    .line 9
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateAudioSortPointVisibility(Z)V

    .line 12
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    new-instance v0, La38;

    invoke-direct {v0, p0, p2, p3}, La38;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZ)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lc38;

    invoke-direct {v1, p0}, Lc38;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->iv_add_song:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/playercommon/R$id;->menu_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    :cond_0
    return-void
.end method

.method public loadData(Z)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public nestedScroll(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarHeight:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setDoubleFriction(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayoutHeight:I

    new-instance v0, Lv28;

    invoke-direct {v0, p0}, Lv28;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOrientation:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOrientation:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lh27;->b(Lh27$b;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lh27;->f(Lh27$b;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    :cond_3
    iput-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mDragAnimationView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d7

    if-eqz p2, :cond_2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->B(Z)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x4de

    if-ne p1, p2, :cond_5

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m0()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x4d6

    if-eq p1, p2, :cond_3

    if-ne p1, v0, :cond_4

    :cond_3
    sget p2, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p2}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_4
    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->B(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onManualSortRequested(IZZ)V
    .locals 0

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {p0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-lt p2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public postDelayLoadData()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x320

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public postDelayLoadDataChange()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x12c

    goto :goto_0

    :cond_1
    const/16 v0, 0x320

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mUpdateDataHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    return-void
.end method

.method public setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;I)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "list_flag"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    return-void
.end method

.method public setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mDragAnimationView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public setDragModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$c;)V
    .locals 0

    return-void
.end method

.method public setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-void
.end method

.method public setMainViewModePlayListOperateMode(Z)V
    .locals 1

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMainViewModelEditFrom(I)V
    .locals 1

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMainViewModelEditMode(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    return-void
.end method

.method public setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initOverScrollDecor(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-interface {p1, p0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_0
    return-void
.end method

.method public setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    return-void
.end method

.method public setSearchListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSearchListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public showRemoveDialog()V
    .locals 0

    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZ)V

    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZZ)V

    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;ZZZ)V
    .locals 8

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laf9;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    const-string p0, "PlayBaseFragment"

    const-string p1, "showSortPopupWindow failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laf9;->d:J

    .line 7
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    .line 8
    sget v1, Lcom/transsion/playercommon/R$style;->popup_anim:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 9
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$dimen;->os_popup_menu_shadow_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 10
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_popup_background:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 12
    sget v1, Lcom/transsion/playercommon/R$layout;->video_sort_item_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 13
    sget v1, Lcom/transsion/playercommon/R$id;->sort_by_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/SortGroup;

    .line 14
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_order_num:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemNum:Lcom/transsion/playercommon/widgets/SortItem;

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-le v3, v4, :cond_2

    if-eqz p4, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemDate:Lcom/transsion/playercommon/widgets/SortItem;

    .line 17
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemName:Lcom/transsion/playercommon/widgets/SortItem;

    .line 18
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_length:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemLength:Lcom/transsion/playercommon/widgets/SortItem;

    .line 19
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_size:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemSize:Lcom/transsion/playercommon/widgets/SortItem;

    .line 20
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemCount:Lcom/transsion/playercommon/widgets/SortItem;

    .line 21
    sget v2, Lcom/transsion/playercommon/R$id;->item_by_manual:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

    .line 22
    sget v2, Lcom/transsion/playercommon/R$id;->ll_mode_item_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortModeContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    .line 23
    sget v3, Lcom/transsion/playercommon/R$id;->mode_by_group:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/widgets/SortGroup;

    .line 24
    sget v4, Lcom/transsion/playercommon/R$id;->tv_list_mode:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->listModeItem:Lcom/transsion/playercommon/widgets/SortItem;

    .line 25
    sget v4, Lcom/transsion/playercommon/R$id;->tv_grid_mode:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/playercommon/widgets/SortItem;

    iput-object v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->gridModeItem:Lcom/transsion/playercommon/widgets/SortItem;

    .line 26
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v7, "video_adapter_grid_type"

    invoke-static {v4, v7, v6}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->gridModeItem:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v4, v2, v6}, Lcom/transsion/playercommon/widgets/SortItem;->setSelected(ZZ)V

    goto :goto_1

    .line 28
    :cond_3
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->listModeItem:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v4, v2, v6}, Lcom/transsion/playercommon/widgets/SortItem;->setSelected(ZZ)V

    .line 29
    :goto_1
    new-instance v4, Ly28;

    invoke-direct {v4, p0}, Ly28;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortGroup;->setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortGroup$b;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 30
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemNum:Lcom/transsion/playercommon/widgets/SortItem;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 31
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemDate:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 32
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemName:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 33
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemLength:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 34
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemSize:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 35
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemCount:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 36
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/widgets/SortItem;->setFrom(I)V

    .line 37
    :cond_5
    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->sortItemManual:Lcom/transsion/playercommon/widgets/SortItem;

    if-nez p2, :cond_7

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    :cond_7
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {v1, p2, p4}, Lcom/transsion/playercommon/widgets/SortGroup;->setIsSortVideo(ZZ)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortItem(Z)V

    .line 40
    new-instance p3, Lz28;

    invoke-direct {p3, p0, p4, p2}, Lz28;-><init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZ)V

    invoke-virtual {v1, p3}, Lcom/transsion/playercommon/widgets/SortGroup;->setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortGroup$b;)V

    .line 41
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 42
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 43
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    const/4 p4, -0x2

    invoke-virtual {p3, p4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 44
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 45
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v6

    .line 48
    :goto_3
    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    instance-of v1, p3, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_9

    .line 49
    check-cast p3, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p3

    goto :goto_4

    :cond_9
    move p3, v6

    .line 50
    :goto_4
    invoke-static {}, Lav3;->z()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_5
    neg-int v1, v1

    goto :goto_6

    :cond_a
    if-eqz p3, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, p4

    sub-int/2addr v1, v3

    goto :goto_5

    :cond_b
    move v1, v6

    .line 51
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, p4

    neg-int p4, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr p4, v3

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/utils/a;->z(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_f

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/transsion/utils/a;->y(Landroid/content/Context;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz p2, :cond_c

    .line 55
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getPopupPosition(Landroid/view/View;Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/Point;

    move-result-object p2

    .line 56
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v6, p3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7

    .line 57
    :cond_c
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, v1, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_7

    .line 58
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    if-eqz p4, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->isFinishing()Z

    move-result p4

    if-nez p4, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->isDestroyed()Z

    move-result p4

    if-nez p4, :cond_f

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/transsion/utils/a;->y(Landroid/content/Context;Landroid/view/View;)Z

    move-result p4

    if-nez p4, :cond_e

    if-eqz p2, :cond_e

    .line 60
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getPopupPosition(Landroid/view/View;Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/Point;

    move-result-object p2

    .line 61
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v6, p3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_7

    .line 62
    :cond_e
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, v1, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_f
    :goto_7
    return-void
.end method

.method public startDragMode(ZIZ)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startDragMode: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startEditMode(ZIZ)V
    .locals 0

    return-void
.end method

.method public updateAppBarLayoutBehavior(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public updateAudioSortPointVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "show_audio_sort_point"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAudioSortPoint showPoint:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PlayBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateBackIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

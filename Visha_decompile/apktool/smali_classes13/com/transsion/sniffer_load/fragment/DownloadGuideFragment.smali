.class public Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final G:[Ljava/lang/Integer;

.field public static final H:[Ljava/lang/Integer;

.field public static final I:[Ljava/lang/Integer;


# instance fields
.field public A:Landroid/widget/LinearLayout$LayoutParams;

.field public B:Landroid/widget/LinearLayout$LayoutParams;

.field public C:Landroid/widget/LinearLayout$LayoutParams;

.field public D:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final E:Landroidx/lifecycle/Observer;

.field public F:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public l:Landroidx/viewpager2/widget/ViewPager2;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/LinearLayout;

.field public o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

.field public p:Z

.field public q:Ljava/util/List;

.field public r:I

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/Button;

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/Boolean;

.field public y:Landroid/widget/LinearLayout$LayoutParams;

.field public z:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_fold_1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_fold_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_fold_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->G:[Ljava/lang/Integer;

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_open1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_open2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_open3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->H:[Ljava/lang/Integer;

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_tablet_1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_tablet_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_download_image_tablet_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->I:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->q:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->v:Z

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->x:Ljava/lang/Boolean;

    new-instance v0, Lhz2;

    invoke-direct {v0, p0}, Lhz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->E:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$a;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->F:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->e0(Lwoc;)V

    return-void
.end method

.method public static bridge synthetic R(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->m:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    return p0
.end method

.method public static bridge synthetic W(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    return-void
.end method

.method public static synthetic X(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    return-object p0
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->D:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->E:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->D:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static f0(Landroid/os/Bundle;)Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method


# virtual methods
.method public final Y()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->w:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final Z()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v4, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->d0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-boolean v5, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->p:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v7, 0x42d80000    # 108.0f

    invoke-static {v6, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v6

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->c0()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lolb;->l0()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    neg-int v6, v6

    :goto_2
    int-to-float v6, v6

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_11

    :cond_5
    move v6, v4

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    iget-boolean v5, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->p:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->I:[Ljava/lang/Integer;

    invoke-virtual {p0, v5}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->b0([Ljava/lang/Integer;)V

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    sget-object v5, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->G:[Ljava/lang/Integer;

    goto :goto_4

    :cond_8
    sget-object v5, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->H:[Ljava/lang/Integer;

    :goto_4
    invoke-virtual {p0, v5}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->b0([Ljava/lang/Integer;)V

    :goto_5
    const/high16 v5, 0x41c00000    # 24.0f

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43580000    # 216.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->C:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    move v2, v4

    goto :goto_6

    :cond_9
    const/high16 v2, 0x41c80000    # 25.0f

    :goto_6
    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42480000    # 50.0f

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    move v4, v2

    :goto_7
    invoke-static {v1, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->z:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_10

    :cond_b
    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v6, 0x41500000    # 13.0f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x42440000    # 49.0f

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->p:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    instance-of v10, v0, Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz v10, :cond_c

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    const/16 v10, 0x2e

    invoke-virtual {v0, v10}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_d

    move v5, v9

    :cond_d
    invoke-static {v10, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_e

    move v7, v8

    :cond_e
    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    const/high16 v7, 0x43760000    # 246.0f

    goto :goto_8

    :cond_f
    const/high16 v7, 0x430d0000    # 141.0f

    :goto_8
    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_10

    move v3, v4

    goto :goto_a

    :cond_10
    if-eqz v2, :cond_11

    const/16 v3, 0xac

    goto :goto_9

    :cond_11
    const/16 v3, 0x168

    :goto_9
    int-to-float v3, v3

    :goto_a
    invoke-static {v5, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->C:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_12

    goto :goto_b

    :cond_12
    move v4, v6

    :goto_b
    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->z:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_10

    :cond_13
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_14

    move v5, v9

    :cond_14
    invoke-static {v10, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_15

    move v7, v8

    :cond_15
    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_16

    const/high16 v7, 0x43b00000    # 352.0f

    goto :goto_c

    :cond_16
    const/high16 v7, 0x43990000    # 306.0f

    :goto_c
    invoke-static {v5, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_18

    if-eqz v3, :cond_17

    goto :goto_d

    :cond_17
    const/high16 v3, 0x428c0000    # 70.0f

    goto :goto_e

    :cond_18
    :goto_d
    move v3, v4

    :goto_e
    invoke-static {v5, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->C:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_19

    goto :goto_f

    :cond_19
    move v4, v6

    :goto_f
    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->z:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_10
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->A:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->C:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->z:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->A:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initGuideLayoutRes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadGuideFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public a0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->ic_page_dot:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->q:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b0([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->F:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    new-instance v0, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;->d(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->F:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public c0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    instance-of p0, p0, Lcom/transsion/sniffer_load/DownloadGuideActivity;

    return p0
.end method

.method public final d0()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSplitScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final synthetic e0(Lwoc;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lwoc;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Y()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->x:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Z()V

    :goto_2
    return-void
.end method

.method public final g0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v0, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lgz2;

    invoke-direct {v2, p0}, Lgz2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "guide_dl_lp_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadGuideFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->w:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Y()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->tv_skip:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    add-int/2addr p0, v1

    invoke-static {p0}, Lp06;->o(I)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->btn_guide:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v1

    iget v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->r:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lp06;->p(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Z()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment$2;-><init>(Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->p:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->F:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "skip_download_guide"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "show_full_screen_guide"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->D:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->E:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Z()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_guide_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_guide:I

    :goto_0
    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Z()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->vp_guide_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    sget p2, Lcom/transsion/sniffer_load/R$id;->ll_page_dots:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_skip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_guide_hint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->s:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->btn_guide:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    sget p2, Lcom/transsion/sniffer_load/R$id;->guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->n:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->z:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->B:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->y:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->C:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->A:Landroid/widget/LinearLayout$LayoutParams;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->u:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->Z()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->a0()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->addBottomBarShowStateObserver()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->g0()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "show_full_screen_guide"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->o:Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;

    invoke-virtual {p2}, Lcom/transsion/sniffer_load/adapter/GuideImageViewPagerAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "need_guide"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/DownloadGuideFragment;->v:Z

    :cond_0
    return-void
.end method

.method public setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

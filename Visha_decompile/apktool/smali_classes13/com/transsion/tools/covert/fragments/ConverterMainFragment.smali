.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;
.implements Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;


# instance fields
.field public A:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public B:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public C:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public final D:Landroidx/lifecycle/Observer;

.field public E:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field public F:Landroidx/activity/result/ActivityResultLauncher;

.field public l:Landroid/widget/Button;

.field public m:Ljava/util/List;

.field public n:Lcom/transsion/widgets/RtlViewPager;

.field public o:Lcom/transsion/widgets/CustomTabLayout;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Ljava/util/ArrayList;

.field public v:I

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->y:Z

    iput-boolean v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->z:Z

    new-instance v0, Lyi1;

    invoke-direct {v0, p0}, Lyi1;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->D:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;

    invoke-direct {v0, p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$f;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->E:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lzi1;

    invoke-direct {v1}, Lzi1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->F:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private B0(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private C0(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s:Landroid/view/View;

    sget v2, Lcom/transsion/tools/R$id;->activity_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    sget v2, Lcom/transsion/tools/R$id;->lottie_no_videos_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget v3, Lcom/transsion/tools/R$id;->text_no_videos:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    sget v4, Lcom/transsion/tools/R$id;->add_video_tv:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/tools/R$string;->file_empty:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v4, Lpp3;->t:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/transsion/magicvideo/R$string;->permission_all_file_1_pre:I

    goto :goto_0

    :cond_2
    sget v4, Lcom/transsion/magicvideo/R$string;->permission_all_file_1:I

    goto :goto_0

    :cond_3
    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/transsion/magicvideo/R$string;->permission_write_extenal_1_pre:I

    goto :goto_0

    :cond_4
    sget v4, Lcom/transsion/magicvideo/R$string;->permission_write_extenal_1:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/magicvideo/R$string;->permission_go:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lwi1;

    invoke-direct {v0, p0}, Lwi1;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    const/16 v1, 0x8

    if-eqz p1, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->t:Landroid/view/View;

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->w:Landroid/view/View;

    if-eqz p0, :cond_9

    if-eqz p1, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private D0()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    iget v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->v:I

    invoke-static {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->G2(I)Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->E:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v1, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$c;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setMenuShowListener(Lcom/transsion/playercommon/fragments/BaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->E:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->video_convert_menu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->v:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    iget v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->v:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->E0()V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->S0(I)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    new-instance v1, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$d;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic G0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lt08;->l(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic I0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic J0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic M0(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static O0(I)Lcom/transsion/tools/covert/fragments/ConverterMainFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video_to_mp3_item_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private R0(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setCanScroll(Z)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initShow(Z)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v3, Lui1;

    invoke-direct {v3, p0}, Lui1;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;

    invoke-direct {v3, p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$e;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->p:Landroid/view/View;

    if-eqz p1, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->q:Landroid/view/View;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_6

    const v3, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o:Lcom/transsion/widgets/CustomTabLayout;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/widgets/CustomTabLayout;->setTabChildEnable(Z)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$string;->convert_to_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->B0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->C:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_9
    return-void
.end method

.method private T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->C:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->D:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->C:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->G0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->H0()V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->I0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->N0()V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->F0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->J0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->L0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->M0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->K0()V

    return-void
.end method

.method public static bridge synthetic o0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic p0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/widgets/RtlViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    return-object p0
.end method

.method public static bridge synthetic q0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic r0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->B0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->Q0(Z)V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->R0(Z)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic v0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public A0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcj1;

    invoke-direct {v1}, Lcj1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->i(Ljava/util/Set;)V

    const-string p1, "vd_mul_cancel_filt_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->k(Ljava/util/Set;)V

    const-string p1, "vd_mul_filt_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x455

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final E0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    new-instance v1, Lxi1;

    invoke-direct {v1, p0}, Lxi1;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic H0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic K0()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->R0(Z)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->refresh()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic N0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    return-void
.end method

.method public P0(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v1, Laj1;

    invoke-direct {v1, p0}, Laj1;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setOperateFinishListener(Lcom/transsion/playercommon/widgets/AppFootActionBar$c;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    const/16 v4, 0x1f

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-direct {p1, v3, v5, v4, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v2, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, p0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    const-string p0, "vd_mul_del_cl"

    const-wide v1, 0xd91af27328L

    invoke-static {v0, p0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lbj1;

    invoke-direct {v0}, Lbj1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "data_list_ids"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "list_flag"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->B:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->e(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->f(Ljava/util/ArrayList;)V

    const-string p1, "from_list_more_icon"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->F:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->A0(Z)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preShare(Z)V

    const-string p0, "vd_mul_share_cl"

    const-wide v1, 0xd91af27329L

    invoke-static {v0, p0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public final Q0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final S0(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o:Lcom/transsion/widgets/CustomTabLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgets/CustomTabLayout;->showBadgeView(IZ)V

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgets/CustomTabLayout;->updateBadgeView(II)V

    :cond_1
    return-void
.end method

.method public final U0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/view/OSBigButton;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/widgetslib/view/OSBigButton;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSBigButton;->setMinButtonHeightDp(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;

    invoke-direct {v1, p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$a;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->S0(I)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x439

    if-eq p1, v0, :cond_7

    const/16 v0, 0x450

    if-eq p1, v0, :cond_6

    const/16 v0, 0x43d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x43e

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_8

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->y:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->z:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->C0(Z)V

    goto :goto_2

    :cond_3
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->z:Z

    iget-boolean p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->y:Z

    if-nez p2, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->C0(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->E0()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->T0()V

    :cond_8
    :goto_2
    return-void
.end method

.method public inflateOperationBar()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->bottom_convert_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v1, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$g;

    const-string v2, "ConverterMainFragment"

    invoke-direct {v1, p0, v2}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$g;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x43e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x43d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/tools/R$id;->title_bar_close_multiple_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->p:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$string;->convert_to_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->p:Landroid/view/View;

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$b;-><init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConverterMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const/high16 p1, 0x42700000    # 60.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyPaddingBottomWithNav(Landroid/view/View;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->R0(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->select_and_convert:I

    if-ne p1, v0, :cond_1

    invoke-static {}, Llpb;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-direct {p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->U0()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "video_to_mp3_item_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->v:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setInConvertPage(Z)V

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->B:Lcom/transsion/playercommon/videomodel/PlayListModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s:Landroid/view/View;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p1

    const-string p2, "ConverterMainFragment"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->L(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->s:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v1

    const-string v2, "ConverterMainFragment"

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->G(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->setInConvertPage(Z)V

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_3
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onFinishRequestPermission(IZ)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->cast(Landroidx/fragment/app/Fragment;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFinishRequestPermission(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onItemClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->r:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->P0(I)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/tools/R$layout;->converter_main_manager_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$layout;->converter_main_manager:I

    :goto_0
    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->T0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    sget p2, Lcom/transsion/tools/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/transsion/tools/R$id;->container_ll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->x:Landroid/view/View;

    sget p2, Lcom/transsion/tools/R$id;->select_and_convert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    sget p2, Lcom/transsion/tools/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/RtlViewPager;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->n:Lcom/transsion/widgets/RtlViewPager;

    sget p2, Lcom/transsion/tools/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomTabLayout;

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->o:Lcom/transsion/widgets/CustomTabLayout;

    sget p2, Lcom/transsion/tools/R$id;->tab_ll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->t:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->l:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->U0()V

    :cond_0
    sget p2, Lcom/transsion/tools/R$id;->audio_convert_sort:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->q:Landroid/view/View;

    new-instance v0, Lvi1;

    invoke-direct {v0}, Lvi1;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->initTitleBar(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->D0()V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

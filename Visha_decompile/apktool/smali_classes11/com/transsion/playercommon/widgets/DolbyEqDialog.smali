.class public Lcom/transsion/playercommon/widgets/DolbyEqDialog;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;


# instance fields
.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field public P:Lcom/transsion/widgets/InterceptLinearLayout;

.field public Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

.field public R:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public S:Lcom/transsion/widgets/DisableDragLinearLayout;

.field public T:Lcom/transsion/playercommon/widgets/HeadsetHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->T:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    return-void
.end method

.method public static synthetic f0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->j0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g0(Lcom/transsion/playercommon/widgets/DolbyEqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    return-object p0
.end method

.method public static bridge synthetic h0(Lcom/transsion/playercommon/widgets/DolbyEqDialog;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->setBandProgress(II)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 8
    sget v0, Lcom/transsion/playercommon/R$id;->ll_cannot_drag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/DisableDragLinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->S:Lcom/transsion/widgets/DisableDragLinearLayout;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/widgets/DisableDragLinearLayout;->setCanDrag(Z)V

    .line 10
    sget v0, Lcom/transsion/playercommon/R$id;->rv_style:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/playercommon/R$id;->seekbar1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aput-object v2, v0, v1

    .line 12
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/playercommon/R$id;->seekbar2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 13
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/playercommon/R$id;->seekbar3:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 14
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/playercommon/R$id;->seekbar4:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 15
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/playercommon/R$id;->seekbar5:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 16
    sget v0, Lcom/transsion/playercommon/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    .line 17
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 18
    new-instance v4, Lnw2;

    invoke-direct {v4}, Lnw2;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->tv_go:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;-><init>(Lcom/transsion/playercommon/widgets/DolbyEqDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static showEqDialog(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object p0

    invoke-static {p0}, Llw2;->l(Llw2;)V

    invoke-static {}, Lmw2;->d()Llw2;

    return-void
.end method

.method public final i0()V
    .locals 3

    invoke-static {}, Llc3;->h()V

    invoke-static {p0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lmw2;->c:Z

    sget v0, Lcom/transsion/playercommon/R$id;->ll_dolby_set:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v2, Lmw2;->c:Z

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    if-eqz v0, :cond_3

    sget-boolean v2, Lmw2;->c:Z

    if-nez v2, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final initClickable()V
    .locals 2

    sget-boolean v0, Lmw2;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->P:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    :goto_0
    return-void
.end method

.method public final initValue(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$array;->dolby_preset_array:I

    sget v1, Lcom/transsion/playercommon/R$layout;->os_spinner_item_layout:I

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->R:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$array;->dolby_band_array:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-direct {v2, p1}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    new-instance v0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;-><init>(Lcom/transsion/playercommon/widgets/DolbyEqDialog;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :goto_0
    invoke-static {}, Lmw2;->b()I

    move-result p1

    if-ge v1, p1, :cond_1

    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object p1

    iget p1, p1, Llw2;->a:I

    invoke-static {p1, v1}, Lmw2;->c(II)I

    move-result p1

    invoke-static {p1}, Llw2;->g(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->setBandProgress(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->setValues()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->audio_dolby_eq_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    .line 4
    invoke-static {}, Llc3;->h()V

    .line 5
    invoke-static {p0}, Llc3;->c(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lmw2;->c:Z

    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->initView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method public k(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;)V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$id;->ll_dolby_set:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->OUT:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->IN:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    if-ne p1, v1, :cond_2

    invoke-static {}, Llc3;->h()V

    invoke-static {p0}, Llc3;->c(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lmw2;->c:Z

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper;-><init>(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->T:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->T:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->T:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->T:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->i0()V

    return-void
.end method

.method public final setBandProgress(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->O:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object p0, p0, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    return-void
.end method

.method public final setValues()V
    .locals 4

    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object v0

    iget v0, v0, Llw2;->a:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {v1}, Lmw2;->g(I)V

    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object v0

    invoke-static {v0}, Llw2;->l(Llw2;)V

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lmw2;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v0, v2}, Lmw2;->c(II)I

    move-result v3

    invoke-static {v3}, Llw2;->g(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->setBandProgress(II)V

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->Q:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->R:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->initClickable()V

    return-void
.end method
